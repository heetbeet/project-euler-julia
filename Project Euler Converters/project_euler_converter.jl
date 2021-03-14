#=
This is a quick and dirty script to
- download the project Puzzle html sources
- download dependent images and files
- edit the source to fit as Literate.jl markdown
- download puzzle solutions and create a solution checker
- compile all of this into 25 puzzles per page
- export everyting as Literate.jl, Pluto.jl, and Jupyter

dependencies:
] add Glob
] add Literate
=#

#using Gumbo, Cascadia, HTTP
using Glob
using Markdown
using Literate
using UUIDs
using SHA


url = "https://projecteuler.net/"
output_dir = abspath(tempdir()*"/project_euler-julia-scraper-output")
puzzle_output = joinpath(output_dir, "puzzles-html")
mkpath(puzzle_output)

get_html_txt(url) = read(download(url), String)

puzzle_url(puzzle_number::Int) = "https://projecteuler.net/problem=$puzzle_number"

puzzle_name(puzzle_text::String) =first(eachmatch(r"(<h2>.*</h2>)", puzzle_text)).captures[1]


function do_hash(x::Number)
    sha1(reinterpret(UInt8, [Float64(x)])) |> join
end


function do_hash(x)
    sha1(x) |> join
end


function puzzle_content(puzzle_text::String)
    first(eachmatch(
        r"<div\s*class=\"problem_content\"\s*role=\"problem\">(.*)</div>\s*<br>\s*<br>\s*<\/div>\s*<!--end_content-->"s,
        puzzle_text
    )).captures[1]
end


puzzle_source(puzzle_number::Int) = begin
    web_text = get_html_txt(puzzle_url(puzzle_number))
    title = strip(replace(puzzle_name(web_text), "<h2>"=>"<h2>Problem $(puzzle_number): "))
    content = strip(puzzle_content(web_text))
    return title*"\n"*content
end


function download_euler_puzzle(puzzle_number::Int)
    num = lpad(puzzle_number, 4, "0")
    fname = joinpath(puzzle_output, "puzzle-$(num).html")
    println(fname)
    open(fname, "w") do io
        write(io, puzzle_source(puzzle_number))
    end
end


function download_all_euler_puzzles()
    newest = parse(Int,
          match(r"problems 1 to (\d+)\.",
                 get_html_txt("https://projecteuler.net/archives")
                  ).captures[1])

    Threads.@threads for i in 1:newest
        download_euler_puzzle(i)
    end

    # sometime the end is a bit farther
    while(true)
        web_text = get_html_txt(puzzle_url(newest+1))
        if contains(web_text, "class=\"problem_content\"")
            download_euler_puzzle(newest+1)
        else
            break
        end
        newest += 1
    end
end


function replace_online_content_with_offline_content(fname)
    txt = read(fname, String)
    txt_original = txt
    for reg in [r"href\s*=\s*\"(.*)\"", r"src\s*=\s*\"(.*)\""]
        for i in eachmatch(reg, txt)
            capture = split(i.captures[1], "\"")[1]
            if startswith(capture, "htt") || contains(capture, "about=")
                continue
            elseif match(r"problem=\d+", capture) === nothing

                fileout = joinpath(output_dir, "puzzles-html", capture)
                println(fileout)
                mkpath(dirname(fileout))
                download("https://projecteuler.net/$capture", fileout)
            else
                txt = replace(txt, capture => "https://projecteuler.net/$capture")
            end
        end
    end


    if txt != txt_original
        open(fname, "w") do f
            write(f, txt)
        end
    end
end


function fix_all_online_dependancies()
    Threads.@threads for i in glob("*.html", puzzle_output)
        replace_online_content_with_offline_content(i)
    end
end


function fix_spacer_location()
    if isfile(joinpath(puzzle_output, "images/spacer.gif"))
        mv(joinpath(puzzle_output, "images/spacer.gif"), joinpath(puzzle_output, "project/images/spacer.gif"); force=true)
    end

    for i in glob("*.html", puzzle_output)
        txt = read(i, String)
        txt = replace(txt, "\"images/spacer.gif\"" => "\"project/images/spacer.gif\"")

        open(i, "w") do f
            write(f, txt)
        end
    end
end


pluto_header = """
### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils
"""
function convert_to_pluto(pluto_output)
    files = glob("*.html", puzzle_output)

    subfiles = []
    for i = 1:25:length(files)
        push!(subfiles, files[i:min(end,i+25-1)])
    end

    function get_uuid()
        io = IOBuffer()
        print(io, uuid1())
        String(take!(io))
    end


    puzzle_nr = 0
    for (count, section) in enumerate(subfiles)
        open_close = []
        txt = pluto_header

        uuid_header = get_uuid()
        txt = txt * "\n# ╔═╡ $(uuid_header)\ninclude((@__DIR__)*\"/shared.jl\");\n"
        push!(open_close, "# ╠═$(uuid_header)")

        for i in section
            puzzle_nr+=1
            uuid_puzzle = get_uuid()
            uuid_code = get_uuid()
            txt = txt * "\n# ╔═╡ $(uuid_puzzle)\nhtml\"\"\"\n" * strip(read(i, String)) * "\n\"\"\"\n"
            txt = txt * "\n# ╔═╡ $(uuid_code)\nbegin\n    submit_answer(nothing; prob_num=$puzzle_nr)\nend\n"
            push!(open_close, "# ╟─$(uuid_puzzle)")
            push!(open_close, "# ╠═$(uuid_code)")
        end

        txt = txt * "\n# ╔═╡ Cell order:"
        for line in open_close
            txt = txt * "\n$(line)"
        end

         fname = joinpath(pluto_output, "project_euler-$(lpad((count-1)*25+1, 3, "0"))-$(lpad(min(length(files),count*25), 3, "0")).jl")
         open(fname, "w") do io
             write(io, txt)
         end
    end
end

function convert_to_literate()
    files = glob("*.html", puzzle_output)
    subfiles = []
    for i = 1:25:length(files)
        push!(subfiles, files[i:min(end,i+25-1)])
    end

    puzzle_nr = 0
    for (count, section) in enumerate(subfiles)
        txt = "include((@__DIR__)*\"/shared.jl\");\n"
        for i in section
            puzzle_nr+=1
            txt = txt * "\n#=\n" * strip(read(i, String)) * "\n=#\n"
            txt = txt * "\nsubmit_answer(nothing; prob_num=$puzzle_nr)\n"
        end

         fname = joinpath(puzzle_output, "project_euler_$(lpad((count-1)*25+1, 3, "0"))_$(lpad(min(length(files),count*25), 3, "0")).jl")
         open(fname, "w") do io
             write(io, txt)
         end
    end
end


function find_all_class_types()
    all_vals = Set()
    for i in glob("*.html", puzzle_output)
        for j in eachmatch(r"\s+class=\"(.*)\">", read(i, String))
            if !(split(j.captures[1], "\"") in all_vals)
                println(i, " ", split(j.captures[1], "\"")[1])
            end
            push!(all_vals, split(j.captures[1], "\"")[1])
        end
    end
    all_vals
end


style_replace = Dict{Regex, String}(
    r"class=\"red\"" => "style=\"color:#ff0000;\"",
    r"class=\"red strong\"" => "style=\"color:#ff0000;\"",
    r"class=\"monospace\"" => "style=\"font-family:'courier new';font-size:10pt;\"",
    r"class=\"monospace center\"" => "style=\"font-family:'courier new';text-align:center;font-size:10pt;\"",
    r"class=\"center monospace\"" => "style=\"font-family:'courier new';text-align:center;font-size:10pt;\"",
    r"class=\"center smaller\"" => "style=\"text-align:center;\"",
    r"class=\"center smaller\"" => "style=\"text-align:center;\""
)

function replace_class_type(fname)
    text = read(fname, String)
    for i in style_replace
        text = replace(text, i)
    end

    open(fname, "w") do f
        write(f, text)
    end
end


function replace_all_classes()
    for i in glob("*.html", puzzle_output)
        replace_class_type(i)
    end
end


header = """
using Markdown
using SHA

hashed_answers = Dict{Int64, String}()

function do_hash(x::Number)
    sha1(reinterpret(UInt8, [Float64(x)])) |> join
end

function do_hash(x)
    sha1(x) |> join
end

function submit_answer(answer; prob_num=nothing)
    prob_num =  floor(Int, prob_num)

    if !(prob_num in keys(hashed_answers))
        return md"⚠️ Answer \$(string(prob_num)) was not yet public knowledge during the creation of this code ⚠️"
    elseif answer === nothing || prob_num === nothing
        return md"📃 No answer yet."
    elseif hashed_answers[prob_num] == do_hash(answer)
        clipboard(answer)
        return md"🚀 Your answer is correct and added to your clipboard! 🥳"
    else
        return md"⚠️ Oops, wrong answer!"
    end
end

"""
function make_shared_jl()
    html = get_html_txt("https://raw.githubusercontent.com/luckytoilet/projecteuler-solutions/master/Solutions.md")
    txt = header
    for i in split(html, "\n")
        i = strip(i)
        m = match(r"(\d+)\.\s+(\S+)", i)
        if m === nothing continue end

        puzzle, answer = match(r"(\d+)\.\s+(.*)", i).captures
        try
            txt = txt * """hashed_answers[$puzzle] = "$(do_hash(parse(Float64, answer)))" \n"""
        catch
            txt = txt * """hashed_answers[$puzzle] = "$(do_hash(answer))" # as string \n"""
        end
    end

    open(joinpath(puzzle_output, "shared.jl"), "w") do f
        write(f, txt)
    end
end


function export_to_all_types_of_notebooks()
    literate_path = (@__DIR__)*"/../Project Euler as Literate.jl"
    jupyter_path = (@__DIR__)*"/../Project Euler as Jupyter"
    pluto_path = (@__DIR__)*"/../Project Euler as Pluto.jl"


    for path in [literate_path jupyter_path pluto_path]

        ispath(path) && rm(path; force=true, recursive=true)
        mkpath(path)

        cp(joinpath(puzzle_output, "project"), joinpath(path, "project"); force=true)
        cp(joinpath(puzzle_output, "shared.jl"), joinpath(path, "shared.jl"); force=true)
    end

    convert_to_pluto(pluto_path)

    for i in glob("project_euler*.jl", puzzle_output)
        Literate.notebook(i, jupyter_path, execute=false)
        cp(i, joinpath(literate_path, basename(i)))
    end
end


download_all_euler_puzzles()
replace_all_classes()
fix_all_online_dependancies()
fix_spacer_location()

make_shared_jl()
convert_to_literate()
export_to_all_types_of_notebooks()
