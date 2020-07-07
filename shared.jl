##################################################################
# Feel free to add helpfull functions to be used with your puzzles
##################################################################
using PyCall
using IJulia

imp = pyimport("imp")
euleranswers = imp.load_source("euleranswers", abspath(@__DIR__)*"/files/euleranswers.py")

function submit_answer(answer; prob_num=nothing)
    if euleranswers.test_answer(answer; prob_num=1)
        IJulia.display(IJulia.HTML("<font color=#0acc2d size=\"7\">&#x2713;</font>"*string(answer)))
    else
        IJulia.display(IJulia.HTML("<font color=#cc0a0a size=\"7\">&#x2717;</font>"*string(answer)))
    end
end
