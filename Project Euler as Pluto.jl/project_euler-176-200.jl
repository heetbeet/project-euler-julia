### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 458bdda0-2b34-11eb-2a6b-f5e41400b72e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 458bdda0-2b34-11eb-1ee3-35ea3cb36202
html"""
<h2>Problem 176: Right-angled triangles that share a cathetus</h2>
<p>The four right-angled triangles with sides (9,12,15), (12,16,20), (5,12,13) and (12,35,37) all have one of the shorter sides (catheti) equal to 12. It can be shown that no other integer sided right-angled triangle exists with one of the catheti equal to 12.</p>
<p>Find the smallest integer that can be the length of a cathetus of exactly 47547 different integer sided right-angled triangles.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-2138-53167ee52e0c
begin
    submit_answer(nothing; prob_num=183)
end

# ╔═╡ 458bdda0-2b34-11eb-181f-2f2f7c9cd94f
html"""
<h2>Problem 177: Integer angled Quadrilaterals</h2>
<p>Let ABCD be a convex quadrilateral, with diagonals AC and BD. At each vertex the diagonal makes an angle with each of the two sides, creating eight corner angles.</p>
<p style="text-align:center;"><img src="project/images/p177_quad.gif" class="dark_img" alt="" /></p>
<p>For example, at vertex A, the two angles are CAD, CAB.</p>
<p>We call such a quadrilateral for which all eight corner angles have integer values when measured in degrees an "integer angled quadrilateral". An example of an integer angled quadrilateral is a square, where all eight corner angles are 45°. Another example is given by DAC = 20°, BAC = 60°, ABD = 50°, CBD = 30°, BCA = 40°, DCA = 30°, CDB = 80°, ADB = 50°.</p>
<p>What is the total number of non-similar integer angled quadrilaterals?</p>
<p>Note: In your calculations you may assume that a calculated angle is integral if it is within a tolerance of 10<sup>-9</sup> of an integer value.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-05f4-eb4e4f227bfa
begin
    submit_answer(nothing; prob_num=184)
end

# ╔═╡ 458bdda0-2b34-11eb-1ef5-b941bf5d1f11
html"""
<h2>Problem 178: Step Numbers</h2>
Consider the number 45656. <br />
It can be seen that each pair of consecutive digits of 45656 has a difference of one.<br />
A number for which every pair of consecutive digits has a difference of one is called a step number.<br />
A pandigital number  contains every decimal digit from 0 to 9 at least once.<br />

How many pandigital step numbers less than 10<sup>40</sup> are there?
"""

# ╔═╡ 458bdda0-2b34-11eb-3556-51293065efdb
begin
    submit_answer(nothing; prob_num=185)
end

# ╔═╡ 458bdda0-2b34-11eb-0a36-3bff77d19ff6
html"""
<h2>Problem 179: Consecutive positive divisors</h2>
<p>Find the number of integers 1 &lt; n &lt; 10<sup>7</sup>, for which <var>n</var> and <var>n</var> + 1 have the same number of positive divisors. For example, 14 has the positive divisors 1, 2, 7, 14 while 15 has 1, 3, 5, 15.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-17de-c36d32222cef
begin
    submit_answer(nothing; prob_num=186)
end

# ╔═╡ 458bdda0-2b34-11eb-237f-1faeabf66bde
html"""
<h2>Problem 180: Rational zeros of a function of three variables</h2>
<p>For any integer <var>n</var>, consider the three functions</p>
<p class="margin_left"><var>f</var><sub>1,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) = <var>x</var><sup><var>n</var>+1</sup> + <var>y</var><sup><var>n</var>+1</sup> − <var>z</var><sup><var>n</var>+1</sup><br /><var>f</var><sub>2,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) = (<var>xy</var> + <var>yz</var> + <var>zx</var>)*(<var>x</var><sup><var>n</var>-1</sup> + <var>y</var><sup><var>n</var>-1</sup> − <var>z</var><sup><var>n</var>-1</sup>)<br /><var>f</var><sub>3,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) = <var>xyz</var>*(<var>x</var><sup><var>n</var>-2</sup> + <var>y</var><sup><var>n</var>-2</sup> − <var>z</var><sup><var>n</var>-2</sup>)</p>
<p>and their combination</p>
<p class="margin_left"><var>f</var><sub><var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) = <var>f</var><sub>1,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) + <var>f</var><sub>2,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) − <var>f</var><sub>3,<var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>)</p>
<p>We call (<var>x</var>,<var>y</var>,<var>z</var>) a golden triple of order <var>k</var> if <var>x</var>, <var>y</var>, and <var>z</var> are all rational numbers of the form <var>a</var> / <var>b</var> with<br />
0 &lt; <var>a</var> &lt; <var>b</var> ≤ <var>k</var> and there is (at least) one integer <var>n</var>, so that <var>f</var><sub><var>n</var></sub>(<var>x</var>,<var>y</var>,<var>z</var>) = 0.</p>
<p>Let <var>s</var>(<var>x</var>,<var>y</var>,<var>z</var>) = <var>x</var> + <var>y</var> + <var>z</var>.<br />
Let <var>t</var> = <var>u</var> / <var>v</var> be the sum of all distinct <var>s</var>(<var>x</var>,<var>y</var>,<var>z</var>) for all golden triples (<var>x</var>,<var>y</var>,<var>z</var>) of order 35.<br /> All the <var>s</var>(<var>x</var>,<var>y</var>,<var>z</var>) and <var>t</var>  must be in reduced form.</p>
<p>Find <var>u</var> + <var>v</var>.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-3fc3-6f7ddf77ef76
begin
    submit_answer(nothing; prob_num=187)
end

# ╔═╡ 458bdda0-2b34-11eb-30a4-ebfb300ee92a
html"""
<h2>Problem 181: Investigating in how many ways objects of two different colours can be grouped</h2>
<p>Having three black objects B and one white object W they can be grouped in 7 ways like this:</p>
<table cellpadding="10" align="center"><tr><td>(BBBW)</td><td>(B,BBW)</td><td>(B,B,BW)</td><td>(B,B,B,W)</td>
<td>(B,BB,W)</td><td>(BBB,W)</td><td>(BB,BW)</td>
</tr></table><p>In how many ways can sixty black objects B and forty white objects W be  thus grouped?</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-010b-f5a45ff4f077
begin
    submit_answer(nothing; prob_num=188)
end

# ╔═╡ 458bdda0-2b34-11eb-21f2-d5223b8f3099
html"""
<h2>Problem 182: RSA encryption</h2>
<p>The RSA encryption is based on the following procedure:</p>
<p>Generate two distinct primes <var>p</var> and <var>q</var>.<br />Compute <var>n=pq</var> and φ=(<var>p</var>-1)(<var>q</var>-1).<br />
Find an integer <var>e</var>, 1&lt;<var>e</var>&lt;φ, such that gcd(<var>e</var>,φ)=1.</p>
<p>A message in this system is a number in the interval [0,<var>n</var>-1].<br />
A text to be encrypted is then somehow converted to messages (numbers in the interval [0,<var>n</var>-1]).<br />
To encrypt the text,  for each message, <var>m</var>, <var>c</var>=<var>m</var><sup><var>e</var></sup> mod <var>n</var> is calculated.</p>
<p>To decrypt the text, the following procedure is needed: calculate <var>d</var> such that <var>ed</var>=1 mod φ, then for each encrypted message, <var>c</var>, calculate <var>m=c<sup>d</sup></var> mod <var>n</var>.</p>
<p>There exist values of <var>e</var> and <var>m</var>  such that <var>m<sup>e</sup></var> mod <var>n=m</var>.<br />We call messages <var>m</var> for which <var>m<sup>e</sup></var> mod <var>n=m</var> unconcealed messages.</p>
<p>An issue when choosing <var>e</var> is that there should not be too many unconcealed messages.  <br />For instance, let <var>p</var>=19 and <var>q</var>=37.<br />
Then <var>n</var>=19*37=703 and φ=18*36=648.<br />
If we choose <var>e</var>=181, then, although gcd(181,648)=1 it turns out that all possible messages<br /><var>m</var> (0≤<var>m</var>≤<var>n</var>-1) are unconcealed when calculating <var>m<sup>e</sup></var> mod <var>n</var>.<br />
For any valid choice of <var>e</var> there exist some unconcealed messages.<br />
It's important that the number of unconcealed messages is at a minimum.</p>
<p>Choose <var>p</var>=1009 and <var>q</var>=3643.<br />
Find the sum of all values of <var>e</var>, 1&lt;<var>e</var>&lt;φ(1009,3643) and gcd(<var>e</var>,φ)=1, so that the number of unconcealed messages for this value of <var>e</var> is at a minimum.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-143a-71fe0c41c7f0
begin
    submit_answer(nothing; prob_num=189)
end

# ╔═╡ 458bdda0-2b34-11eb-166d-31935bbb0368
html"""
<h2>Problem 183: Maximum product of parts</h2>
<p>Let N be a positive integer and let N be split into <var>k</var> equal parts, <var>r</var> = N/<var>k</var>, so that N = <var>r</var> + <var>r</var> + ... + <var>r</var>.<br />
Let P be the product of these parts, P = <var>r</var> × <var>r</var> × ... × <var>r</var> = <var>r</var><sup><var>k</var></sup>.</p>

<p>For example, if 11 is split into five equal parts, 11 = 2.2 + 2.2 + 2.2 + 2.2 + 2.2, then P = 2.2<sup>5</sup> = 51.53632.</p>

<p>Let M(N) = P<sub>max</sub> for a given value of N.</p>

<p>It turns out that the maximum for N = 11 is found by splitting eleven into four equal parts which leads to P<sub>max</sub> = (11/4)<sup>4</sup>; that is, M(11) = 14641/256 = 57.19140625, which is a terminating decimal.</p>

<p>However, for N = 8 the maximum is achieved by splitting it into three equal parts, so M(8) = 512/27, which is a non-terminating decimal.</p>

<p>Let D(N) = N if M(N) is a non-terminating decimal and D(N) = -N if M(N) is a terminating decimal.</p>

<p>For example, <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> D(N) for 5 ≤ N ≤ 100 is 2438.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> D(N) for 5 ≤ N ≤ 10000.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-1cf1-a718f46bd647
begin
    submit_answer(nothing; prob_num=190)
end

# ╔═╡ 458bdda0-2b34-11eb-0aa3-6d8b3cb39fa9
html"""
<h2>Problem 184: Triangles containing the origin</h2>
<p>Consider the set <var>I<sub>r</sub></var> of points (<var>x</var>,<var>y</var>) with integer co-ordinates in the interior of the circle with radius <var>r</var>, centered at the origin, i.e. <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> &lt; <var>r</var><sup>2</sup>.</p>
<p>For a radius of 2, <var>I</var><sub>2</sub> contains the nine points (0,0), (1,0), (1,1), (0,1), (-1,1), (-1,0), (-1,-1), (0,-1) and (1,-1). There are eight triangles having all three vertices in <var>I</var><sub>2</sub> which contain the origin in the interior. Two of them are shown below, the others are obtained from these by rotation.</p>
<p class="center"><img src="project/images/p184.gif" class="dark_img" alt="" /></p>

<p>For a radius of 3, there are 360 triangles containing the origin in the interior and having all vertices in <var>I</var><sub>3</sub> and for <var>I</var><sub>5</sub> the number is 10600.</p>

<p>How many triangles are there containing the origin in the interior and having all three vertices in <var>I</var><sub>105</sub>?</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-37a8-bf254ab7e5fd
begin
    submit_answer(nothing; prob_num=191)
end

# ╔═╡ 458bdda0-2b34-11eb-1b16-7fbaad046cd6
html"""
<h2>Problem 185: Number Mind</h2>
<p>The game Number Mind is a variant of the well known game Master Mind.</p>
<p>Instead of coloured pegs, you have to guess a secret sequence of digits. After each guess you're only told in how many places you've guessed the correct digit. So, if the sequence was 1234 and you guessed 2036, you'd be told that you have one correct digit; however, you would NOT be told that you also have another digit in the wrong place.</p>

<p>For instance, given the following guesses for a 5-digit secret sequence,</p>
<p class="margin_left">90342 ;2 correct<br />
70794 ;0 correct<br />
39458 ;2 correct<br />
34109 ;1 correct<br />
51545 ;2 correct<br />
12531 ;1 correct</p>
<p>The correct sequence 39542 is unique.</p>

<p>Based on the following guesses,</p>

<p class="margin_left">5616185650518293 ;2 correct<br />
3847439647293047 ;1 correct<br />
5855462940810587 ;3 correct<br />
9742855507068353 ;3 correct<br />
4296849643607543 ;3 correct<br />
3174248439465858 ;1 correct<br />
4513559094146117 ;2 correct<br />
7890971548908067 ;3 correct<br />
8157356344118483 ;1 correct<br />
2615250744386899 ;2 correct<br />
8690095851526254 ;3 correct<br />
6375711915077050 ;1 correct<br />
6913859173121360 ;1 correct<br />
6442889055042768 ;2 correct<br />
2321386104303845 ;0 correct<br />
2326509471271448 ;2 correct<br />
5251583379644322 ;2 correct<br />
1748270476758276 ;3 correct<br />
4895722652190306 ;1 correct<br />
3041631117224635 ;3 correct<br />
1841236454324589 ;3 correct<br />
2659862637316867 ;2 correct</p>

<p>Find the unique 16-digit secret sequence.</p>
"""

# ╔═╡ 458bdda0-2b34-11eb-0e20-afa75431d3a2
begin
    submit_answer(nothing; prob_num=192)
end

# ╔═╡ 458c04b0-2b34-11eb-11e8-2ba10d1c7f9d
html"""
<h2>Problem 186: Connectedness of a network</h2>
<p>Here are the records from a busy telephone system with one million users:</p>
<div class="center">
<table class="grid" style="margin:0 auto;"><tr><th>RecNr</th><th width="60" align="center">Caller</th><th width="60" align="center">Called</th></tr>
<tr><td align="center">1</td><td align="center">200007</td><td align="center">100053</td></tr><tr><td align="center">2</td><td align="center">600183</td><td align="center">500439</td></tr><tr><td align="center">3</td><td align="center">600863</td><td align="center">701497</td></tr><tr><td align="center">...</td><td align="center">...</td><td align="center">...</td></tr></table></div>
<p>The telephone number of the caller and the called number in record n are Caller(n) = S<sub>2n-1</sub> and Called(n) = S<sub>2n</sub> where S<sub>1,2,3,...</sub> come from the "Lagged Fibonacci Generator":</p>

<p>For 1 ≤ k ≤ 55, S<sub>k</sub> = [100003 - 200003k + 300007k<sup>3</sup>] (modulo 1000000)<br />
For 56 ≤ k, S<sub>k</sub> = [S<sub>k-24</sub> + S<sub>k-55</sub>] (modulo 1000000)</p>

<p>If Caller(n) = Called(n) then the user is assumed to have misdialled and the call fails; otherwise the call is successful.</p>

<p>From the start of the records, we say that any pair of users X and Y are friends if X calls Y or vice-versa. Similarly, X is a friend of a friend of Z if X is a friend of Y and Y is a friend of Z; and so on for longer chains.</p>

<p>The Prime Minister's phone number is 524287. After how many successful calls, not counting misdials, will 99% of the users (including the PM) be a friend, or a friend of a friend etc., of the Prime Minister?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-0032-e7166d23c38a
begin
    submit_answer(nothing; prob_num=193)
end

# ╔═╡ 458c04b0-2b34-11eb-382f-c3ab8a3ffe5e
html"""
<h2>Problem 187: Semiprimes</h2>
<p>A composite is a number containing at least two prime factors. For example, 15 = 3 × 5; 9 = 3 × 3; 12 = 2 × 2 × 3.</p>

<p>There are ten composites below thirty containing precisely two, not necessarily distinct, prime factors:
4, 6, 9, 10, 14, 15, 21, 22, 25, 26.</p>

<p>How many composite integers, <var>n</var> &lt; 10<sup>8</sup>, have precisely two, not necessarily distinct, prime factors?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-2899-cfb118bc80da
begin
    submit_answer(nothing; prob_num=194)
end

# ╔═╡ 458c04b0-2b34-11eb-2717-7976ba3355c9
html"""
<h2>Problem 188: The hyperexponentiation of a number</h2>
<p>The <span style="font-style:italic;">hyperexponentiation</span> or <span style="font-style:italic;">tetration</span> of a number a by a positive integer b, denoted by a↑↑b or <sup>b</sup>a, is recursively defined by:<br /><br />
a↑↑1 = a,<br />
a↑↑(k+1) = a<sup>(a↑↑k)</sup>.</p>
<p>
Thus we have e.g. 3↑↑2 = 3<sup>3</sup> = 27, hence 3↑↑3 = 3<sup>27</sup> = 7625597484987 and 3↑↑4 is roughly 10<sup>3.6383346400240996*10^12</sup>.</p>
<p>Find the last 8 digits of 1777↑↑1855.</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-0dbb-bbcef9cbfaee
begin
    submit_answer(nothing; prob_num=195)
end

# ╔═╡ 458c04b0-2b34-11eb-05df-1d378be870fe
html"""
<h2>Problem 189: Tri-colouring a triangular grid</h2>
<p>Consider the following configuration of 64 triangles:</p>

<div class="center"><img src="project/images/p189_grid.gif" class="dark_img" alt="" /></div>

<p>We wish to colour the interior of each triangle with one of three colours: red, green or blue, so that no two neighbouring triangles have the same colour. Such a colouring shall be called valid. Here, two triangles are said to be neighbouring if they share an edge.<br />
Note: if they only share a vertex, then they are not neighbours.</p> 

<p>For example, here is a valid colouring of the above grid:</p>
<div class="center"><img src="project/images/p189_colours.gif" class="dark_img" alt="" /></div>

<p>A colouring C' which is obtained from a colouring C by rotation or reflection is considered <i>distinct</i> from C unless the two are identical.</p>

<p>How many distinct valid colourings are there for the above configuration?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1b01-6b4457bd59d6
begin
    submit_answer(nothing; prob_num=196)
end

# ╔═╡ 458c04b0-2b34-11eb-20b5-bdf41d304b71
html"""
<h2>Problem 190: Maximising a weighted product</h2>
<p>Let S<sub>m</sub> = (x<sub>1</sub>, x<sub>2</sub>, ... , x<sub>m</sub>) be the m-tuple of positive real numbers with x<sub>1</sub> + x<sub>2</sub> + ... + x<sub>m</sub> = m for which P<sub>m</sub> = x<sub>1</sub> * x<sub>2</sub><sup>2</sup> * ... * x<sub>m</sub><sup>m</sup> is maximised.</p>

<p>For example, it can be verified that [P<sub>10</sub>] = 4112 ([ ] is the integer part function).</p>

<p>Find Σ[P<sub>m</sub>] for 2 ≤ m ≤ 15.</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1892-a342f23dd8c7
begin
    submit_answer(nothing; prob_num=197)
end

# ╔═╡ 458c04b0-2b34-11eb-10d9-e9a90671763e
html"""
<h2>Problem 191: Prize Strings</h2>
<p>A particular school offers cash rewards to children with good attendance and punctuality. If they are absent for three consecutive days or late on more than one occasion then they forfeit their prize.</p>

<p>During an n-day period a trinary string is formed for each child consisting of L's (late), O's (on time), and A's (absent).</p>

<p>Although there are eighty-one trinary strings for a 4-day period that can be formed, exactly forty-three strings would lead to a prize:</p>

<p style="margin-left:50px;font-family:'Courier New', monospace;">OOOO OOOA OOOL OOAO OOAA OOAL OOLO OOLA OAOO OAOA<br />
OAOL OAAO OAAL OALO OALA OLOO OLOA OLAO OLAA AOOO<br />
AOOA AOOL AOAO AOAA AOAL AOLO AOLA AAOO AAOA AAOL<br />
AALO AALA ALOO ALOA ALAO ALAA LOOO LOOA LOAO LOAA<br />
LAOO LAOA LAAO</p>

<p>How many "prize" strings exist over a 30-day period?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-244f-cdd7cf91bd03
begin
    submit_answer(nothing; prob_num=198)
end

# ╔═╡ 458c04b0-2b34-11eb-3612-73ee77640757
html"""
<h2>Problem 192: Best Approximations</h2>
<p>Let $x$ be a real number.<br />
A <b>best approximation</b> to $x$ for the <b>denominator bound</b> $d$ is a rational number $\frac r s $  in<b> reduced form</b>, with $s \le d$, such that any rational number which is closer to $x$ than $\frac r s$ has a denominator larger than $d$:</p>

<div class="center"> $|\frac p q -x | &lt; |\frac r s -x| \Rightarrow q &gt; d$
</div>

<p>For example, the best approximation to $\sqrt {13}$ for the denominator bound 20 is $\frac {18} 5$ and the best approximation to $\sqrt {13}$ for the denominator bound 30 is $\frac {101}{28}$.</p>

<p>Find the sum of all denominators of the best approximations to $\sqrt n$ for the denominator bound $10^{12}$, where $n$ is not a perfect square and $ 1 &lt; n \le 100000$. </p>
"""

# ╔═╡ 458c04b0-2b34-11eb-08f7-ab2007d7d3bf
begin
    submit_answer(nothing; prob_num=199)
end

# ╔═╡ 458c04b0-2b34-11eb-2239-6bf26bae62e9
html"""
<h2>Problem 193: Squarefree Numbers</h2>
<p>A positive integer <var>n</var> is called squarefree, if no square of a prime divides <var>n</var>, thus 1, 2, 3, 5, 6, 7, 10, 11 are squarefree, but not 4, 8, 9, 12.</p>

<p>How many squarefree numbers are there below 2<sup>50</sup>?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1583-11a0ddeabc57
begin
    submit_answer(nothing; prob_num=200)
end

# ╔═╡ 458c04b0-2b34-11eb-0f11-2331f2d80818
html"""
<h2>Problem 194: Coloured Configurations</h2>
<p>Consider graphs built with the units A: <img src="project/images/p194_GraphA.png" style="vertical-align:middle;" class="dark_img" alt="" />
and B: <img src="project/images/p194_GraphB.png" style="vertical-align:middle;" class="dark_img" alt="" />, where the units are glued along
the vertical edges as in the graph <img src="project/images/p194_Fig.png" class="dark_img" style="vertical-align:middle;" alt="" />.</p>

<p>A configuration of type (<var>a</var>,<var>b</var>,<var>c</var>) is a graph thus built of <var>a</var> units A and <var>b</var> units B, where the graph's vertices are coloured using up to <var>c</var> colours, so that no two adjacent vertices have the same colour.<br />
The compound graph above is an example of a configuration of type (2,2,6), in fact of type (2,2,<var>c</var>) for all <var>c</var> ≥ 4.</p>

<p>Let N(<var>a</var>,<var>b</var>,<var>c</var>) be the number of configurations of type (<var>a</var>,<var>b</var>,<var>c</var>).<br />
For example, N(1,0,3) = 24, N(0,2,4) = 92928 and N(2,2,3) = 20736.</p>

<p>Find the last 8 digits of N(25,75,1984).</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1a91-79a06ec22c6c
begin
    submit_answer(nothing; prob_num=201)
end

# ╔═╡ 458c04b0-2b34-11eb-087f-6b61f8fd6dbb
html"""
<h2>Problem 195: Inscribed circles of triangles with one angle of 60 degrees</h2>
<p>Let's call an integer sided triangle with exactly one angle of 60 degrees a 60-degree triangle.<br />
Let <var>r</var> be the radius of the inscribed circle of such a 60-degree triangle.</p>
<p>There are 1234 60-degree triangles for which <var>r</var> ≤ 100.
<br />Let T(<var>n</var>) be the number of 60-degree triangles for which <var>r</var> ≤ <var>n</var>, so<br />
 T(100) = 1234,  T(1000) = 22767, and  T(10000) = 359912.</p>

<p>Find T(1053779).</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1ff1-31ba57ab928c
begin
    submit_answer(nothing; prob_num=202)
end

# ╔═╡ 458c04b0-2b34-11eb-3686-3f252f75daf0
html"""
<h2>Problem 196: Prime triplets</h2>
<p>Build a triangle from all positive integers in the following way:</p>

<p style="font-family:'courier new', monospace;font-weight:bold;margin-left:50px;"> 1<br />
 <span style="color:#FF0000;">2</span>  <span style="color:#FF0000;">3</span><br />
 4  <span style="color:#FF0000;">5</span>  6<br />
 <span style="color:#FF0000;">7</span>  8  9 10<br /><span style="color:#FF0000;">11</span> 12 <span style="color:#FF0000;">13</span> 14 15<br />
16 <span style="color:#FF0000;">17</span> 18 <span style="color:#FF0000;">19</span> 20 21<br />
22 <span style="color:#FF0000;">23</span> 24 25 26 27 28<br /><span style="color:#FF0000;">29</span> 30 <span style="color:#FF0000;">31</span> 32 33 34 35 36<br /><span style="color:#FF0000;">37</span> 38 39 40 <span style="color:#FF0000;">41</span> 42 <span style="color:#FF0000;">43</span> 44 45<br />
46 <span style="color:#FF0000;">47</span> 48 49 50 51 52 <span style="color:#FF0000;">53</span> 54 55<br />
56 57 58 <span style="color:#FF0000;">59</span> 60 <span style="color:#FF0000;">61</span> 62 63 64 65 66<br />
. . .</p>

<p>Each positive integer has up to eight neighbours in the triangle.</p>

<p>A set of three primes is called a <i>prime triplet</i> if one of the three primes has the other two as neighbours in the triangle.</p>

<p>For example, in the second row, the prime numbers 2 and 3 are elements of some prime triplet.</p>

<p>If row 8 is considered, it contains two primes which are elements of some prime triplet, i.e. 29 and 31.<br />
If row 9 is considered, it contains only one prime which is an element of some prime triplet: 37.</p>

<p>Define S(<var>n</var>) as the sum of the primes in row <var>n</var> which are elements of any prime triplet.<br />
Then S(8)=60 and S(9)=37.</p>

<p>You are given that S(10000)=950007619.</p>

<p>Find  S(5678027) + S(7208785).</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-24ee-9d7ae94c0c59
begin
    submit_answer(nothing; prob_num=203)
end

# ╔═╡ 458c04b0-2b34-11eb-3b2e-6f14467ab2ee
html"""
<h2>Problem 197: Investigating the behaviour of a recursively defined sequence</h2>
<p>Given is the function <var>f</var>(<var>x</var>) = ⌊2<sup>30.403243784-<var>x</var><sup>2</sup></sup>⌋ × 10<sup>-9</sup> ( ⌊ ⌋ is the floor-function),<br />
the sequence <var>u<sub>n</sub></var> is defined by <var>u</var><sub>0</sub> = -1 and <var>u</var><sub><var>n</var>+1</sub> = <var>f</var>(<var>u<sub>n</sub></var>).</p>

<p>Find <var>u<sub>n</sub></var> + <var>u</var><sub><var>n</var>+1</sub> for <var>n</var> = 10<sup>12</sup>.<br />
Give your answer with 9 digits after the decimal point.</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1f77-296248f389ce
begin
    submit_answer(nothing; prob_num=204)
end

# ╔═╡ 458c04b0-2b34-11eb-3ab0-c9dfcc4fa73e
html"""
<h2>Problem 198: Ambiguous Numbers</h2>
<p>A best approximation to a real number $x$ for the denominator bound $d$ is a rational number $\frac r s$ (in reduced form) with $s \le d$, so that any rational number $\frac p q$ which is closer to $x$ than $\frac r s$ has $q &gt; d$.</p>

<p>Usually the best approximation to a real number is uniquely determined for all denominator bounds. However, there are some exceptions, e.g. $\frac 9 {40}$ has the two best approximations $\frac 1 4$ and $\frac 1 5$ for the denominator bound $6$.
We shall call a real number $x$ <i>ambiguous</i>, if there is at least one denominator bound for which $x$ possesses two best approximations. Clearly, an ambiguous number is necessarily rational.</p>

<p>How many ambiguous numbers $x=\frac p q, 0 &lt; x &lt; \frac 1 {100}$, are there whose denominator $q$ does not exceed $10^8$?</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-1127-254821ce74a9
begin
    submit_answer(nothing; prob_num=205)
end

# ╔═╡ 458c04b0-2b34-11eb-2c9b-bbee447e5796
html"""
<h2>Problem 199: Iterative Circle Packing</h2>
<p>Three circles of equal radius are placed inside a larger circle such that each pair of circles is tangent to one another and the inner circles do not overlap. There are four uncovered "gaps" which are to be filled iteratively with more tangent circles.</p>
<div class="center">
<img src="project/images/p199_circles_in_circles.gif" class="dark_img" alt="" /></div>
<p>
At each iteration, a maximally sized circle is placed in each gap, which creates more gaps for the next iteration. After 3 iterations (pictured), there are 108 gaps and the fraction of the area which is not covered by circles is 0.06790342, rounded to eight decimal places.
</p>
<p>
What fraction of the area is not covered by circles after 10 iterations?<br />
Give your answer rounded to eight decimal places using the format x.xxxxxxxx .
</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-186a-dba6bf73b5b8
begin
    submit_answer(nothing; prob_num=206)
end

# ╔═╡ 458c04b0-2b34-11eb-27de-9ba19645734c
html"""
<h2>Problem 200: Find the 200th prime-proof sqube containing the contiguous sub-string "200"</h2>
<p>We shall define a sqube to be a number of the form, <var>p</var><sup>2</sup><var>q</var><sup>3</sup>, where <var>p</var> and <var>q</var> are distinct primes.<br />
For example, 200 = 5<sup>2</sup>2<sup>3</sup> or 120072949 = 23<sup>2</sup>61<sup>3</sup>.</p>

<p>The first five squbes are 72, 108, 200, 392, and 500.</p>

<p>Interestingly, 200 is also the first number for which you cannot change any single digit to make a prime; we shall call such numbers, prime-proof. The next prime-proof sqube which contains the contiguous sub-string "200" is 1992008.</p>

<p>Find the 200th prime-proof sqube containing the contiguous sub-string "200".</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-13b3-f5c3ba76b0a8
begin
    submit_answer(nothing; prob_num=207)
end

# ╔═╡ 458c04b0-2b34-11eb-37aa-73418af5badf
html"""
<h2>Problem 201: Subsets with a unique sum</h2>
<p>For any set A of numbers, let sum(A) be the sum of the elements of A.<br />
Consider the set B = {1,3,6,8,10,11}.<br /> There are 20 subsets of B containing three elements, and their sums are:</p>

<p style="margin-left:100px;">
sum({1,3,6}) = 10,<br />
sum({1,3,8}) = 12,<br />
sum({1,3,10}) = 14,<br />
sum({1,3,11}) = 15,<br />
sum({1,6,8}) = 15,<br />
sum({1,6,10}) = 17,<br />
sum({1,6,11}) = 18,<br />
sum({1,8,10}) = 19,<br />
sum({1,8,11}) = 20,<br />
sum({1,10,11}) = 22,<br />
sum({3,6,8}) = 17,<br />
sum({3,6,10}) = 19,<br />
sum({3,6,11}) = 20,<br />
sum({3,8,10}) = 21,<br />
sum({3,8,11}) = 22,<br />
sum({3,10,11}) = 24,<br />
sum({6,8,10}) = 24,<br />
sum({6,8,11}) = 25,<br />
sum({6,10,11}) = 27,<br />
sum({8,10,11}) = 29.</p>

<p>Some of these sums occur more than once, others are unique.<br />
For a set A, let U(A,k) be the set of unique sums of k-element subsets of A, in our example we find U(B,3) = {10,12,14,18,21,25,27,29} and sum(U(B,3)) = 156.</p>

<p>Now consider the 100-element set S = {1<sup>2</sup>, 2<sup>2</sup>, ... , 100<sup>2</sup>}.<br />
S has 100891344545564193334812497256 50-element subsets.</p>

<p>Determine the sum of all integers which are the sum of exactly one of the 50-element subsets of S, i.e. find sum(U(S,50)).</p>
"""

# ╔═╡ 458c04b0-2b34-11eb-2bc6-c9290cea5a92
begin
    submit_answer(nothing; prob_num=208)
end

# ╔═╡ Cell order:
# ╠═45843c80-2b34-11eb-2369-c713b7a63e7a
# ╟─45843c80-2b34-11eb-32d3-71c637d415f0
# ╠═45843c80-2b34-11eb-061b-c7b5d3693455
# ╟─45846390-2b34-11eb-3ffa-d3e332c1f6d0
# ╠═45846390-2b34-11eb-0fd5-7b7b44d24a3c
# ╟─45846390-2b34-11eb-0d0c-1355f63cdee9
# ╠═45846390-2b34-11eb-35ab-3545e5deaaef
# ╟─45846390-2b34-11eb-1872-fb6ed450ef38
# ╠═45846390-2b34-11eb-04de-19b476d08d11
# ╟─45846390-2b34-11eb-2354-8fdce7f4714e
# ╠═45846390-2b34-11eb-1c2d-4d74e28a9f9a
# ╟─45846390-2b34-11eb-3bab-6533fe7ce16c
# ╠═45846390-2b34-11eb-243e-2fe4591e61d4
# ╟─45846390-2b34-11eb-3016-e37a3b931d5f
# ╠═45846390-2b34-11eb-32b9-87f9b15c5cf6
# ╟─45846390-2b34-11eb-0895-5dd2d03b70f8
# ╠═45846390-2b34-11eb-1fb2-a18e29cb0a08
# ╟─45846390-2b34-11eb-1952-0f3925ebb491
# ╠═45846390-2b34-11eb-1f56-7b231cc4c1b5
# ╟─45846390-2b34-11eb-14a1-21e9029185f8
# ╠═45846390-2b34-11eb-1dae-b7869c3d2f9f
# ╟─45846390-2b34-11eb-0c05-2dd46ce2bf58
# ╠═45846390-2b34-11eb-0b38-6d1740762f8b
# ╟─45846390-2b34-11eb-24ba-0b45f28cb981
# ╠═45846390-2b34-11eb-1942-41b493b7a5bc
# ╟─45846390-2b34-11eb-1dbd-03877f8ddd08
# ╠═45846390-2b34-11eb-3039-c15bbad163c2
# ╟─45846390-2b34-11eb-3239-4949be8f9d30
# ╠═45846390-2b34-11eb-3f62-db97efc1f945
# ╟─45846390-2b34-11eb-2ed7-f5b1644dd1be
# ╠═45846390-2b34-11eb-2b36-df378cce205d
# ╟─45846390-2b34-11eb-3ae9-6512c44d2847
# ╠═45846390-2b34-11eb-2175-19d546b2ad2b
# ╟─45846390-2b34-11eb-179a-859f8f79aada
# ╠═45846390-2b34-11eb-2648-b9ab18c44ca7
# ╟─45846390-2b34-11eb-0fc6-010fcf78cff5
# ╠═45846390-2b34-11eb-2827-1511f84c72d3
# ╟─45846390-2b34-11eb-127b-c98d3c3bde08
# ╠═45846390-2b34-11eb-31c4-8badeb42f33b
# ╟─45846390-2b34-11eb-17a5-3974e6454ce5
# ╠═45846390-2b34-11eb-223b-27f6f10bec0b
# ╟─45848aa0-2b34-11eb-394f-594c9fd716fb
# ╠═45848aa0-2b34-11eb-3c37-c5d123ee2f27
# ╟─45848aa0-2b34-11eb-0702-8d5cdc29ebf3
# ╠═45848aa0-2b34-11eb-260f-eb26082aa5ca
# ╟─45848aa0-2b34-11eb-2fb2-1de59b157503
# ╠═45848aa0-2b34-11eb-2a84-c581844b06ac
# ╟─45848aa0-2b34-11eb-1033-75aa4e7f9e44
# ╠═45848aa0-2b34-11eb-29cd-6fcbba0713ff
# ╟─45848aa0-2b34-11eb-1cd9-830acf5e5fcf
# ╠═45848aa0-2b34-11eb-3043-ab658f85c94d
# ╟─45848aa0-2b34-11eb-3e1d-0f5d3d148e42
# ╠═45848aa0-2b34-11eb-3c32-734d71c1fadc
# ╠═4584b1b0-2b34-11eb-3d73-794c51f4dcc0
# ╟─4584b1b0-2b34-11eb-2ecd-e9706728c72e
# ╠═4584b1b0-2b34-11eb-1bdb-8baeb5a52b60
# ╟─4584b1b0-2b34-11eb-3379-198501c2205c
# ╠═4584b1b0-2b34-11eb-1cf8-c30c61b77c3a
# ╟─4584b1b0-2b34-11eb-00c1-277681afb6b4
# ╠═4584b1b0-2b34-11eb-259d-3d9bab0abd74
# ╟─4584b1b0-2b34-11eb-3696-335f6ed40fc0
# ╠═4584b1b0-2b34-11eb-305a-49281fe95b03
# ╟─4584b1b0-2b34-11eb-29a7-4d904e6f40dc
# ╠═4584b1b0-2b34-11eb-232c-dd5820138cb1
# ╟─4584d8c0-2b34-11eb-1857-33cbf335ee1f
# ╠═4584d8c0-2b34-11eb-1cc1-33dbad53b168
# ╟─4584d8c0-2b34-11eb-2c30-85585d54fb35
# ╠═4584d8c0-2b34-11eb-27a2-1ffe81481057
# ╟─4584d8c0-2b34-11eb-2961-5fad152a99e2
# ╠═4584d8c0-2b34-11eb-37d4-a7287e0f9cc4
# ╟─4584d8c0-2b34-11eb-0c39-79b5ca1d770c
# ╠═4584d8c0-2b34-11eb-04d6-fbac2c1a540e
# ╟─4584d8c0-2b34-11eb-0390-315120b085fd
# ╠═4584d8c0-2b34-11eb-108f-bfe5cb24b7c8
# ╟─4584d8c0-2b34-11eb-0499-a35a34352249
# ╠═4584d8c0-2b34-11eb-11aa-4522b36abfd8
# ╟─4584d8c0-2b34-11eb-0a25-83fc388d5dc3
# ╠═4584d8c0-2b34-11eb-1693-c121d9f6d810
# ╟─4584d8c0-2b34-11eb-2c8a-d9327be1e156
# ╠═4584d8c0-2b34-11eb-001f-39a92cb43cda
# ╟─4584d8c0-2b34-11eb-0548-fded48c67d42
# ╠═4584d8c0-2b34-11eb-3cf1-c53ca73b90c0
# ╟─4584d8c0-2b34-11eb-1981-9d89b05e70bf
# ╠═4584d8c0-2b34-11eb-09ac-8db37b56c058
# ╟─4584d8c0-2b34-11eb-0a5d-5b32a5918f03
# ╠═4584d8c0-2b34-11eb-115c-9b231b996eb8
# ╟─4584d8c0-2b34-11eb-1aa0-6546d5d2c48c
# ╠═4584d8c0-2b34-11eb-049e-15d150e76bc9
# ╟─4584d8c0-2b34-11eb-2b2a-5b1ff01958ab
# ╠═4584d8c0-2b34-11eb-1474-034a27af722a
# ╟─4584d8c0-2b34-11eb-3cee-ff4009b50573
# ╠═4584d8c0-2b34-11eb-18a4-9d6696c1b4a4
# ╟─4584d8c0-2b34-11eb-1847-81471b85e942
# ╠═4584d8c0-2b34-11eb-12fb-dd8e9b5403d2
# ╟─4584d8c0-2b34-11eb-0721-75da6b335ea7
# ╠═4584d8c0-2b34-11eb-3139-bfc6ca38a29c
# ╟─4584d8c0-2b34-11eb-1b93-f572c7b160bf
# ╠═4584d8c0-2b34-11eb-0461-2f5325205d5f
# ╟─4584d8c0-2b34-11eb-0e95-6d4f2736d8b9
# ╠═4584d8c0-2b34-11eb-3e99-e384ea5c74f4
# ╟─4584d8c0-2b34-11eb-2e0c-4d3774cf5ae3
# ╠═4584d8c0-2b34-11eb-3155-fd9587bc317c
# ╟─4584d8c0-2b34-11eb-059e-bdab7b27adb4
# ╠═4584d8c0-2b34-11eb-281d-85f98ce6b4fb
# ╟─4584d8c0-2b34-11eb-0722-75ddc3f3d25f
# ╠═4584d8c0-2b34-11eb-2c78-1f7e09a10517
# ╠═45865f60-2b34-11eb-22dd-4d63a3d739fa
# ╟─45868670-2b34-11eb-195c-c57121a0669a
# ╠═45868670-2b34-11eb-03cd-13db0bb65d06
# ╟─45868670-2b34-11eb-1b6e-27336c120538
# ╠═45868670-2b34-11eb-3321-ed7759f52640
# ╟─45868670-2b34-11eb-0b77-ab42079645b0
# ╠═45868670-2b34-11eb-2d4f-13afa2ea9024
# ╟─45868670-2b34-11eb-305e-21ec71b47b83
# ╠═45868670-2b34-11eb-391e-ef5f4b17166e
# ╟─45868670-2b34-11eb-3581-5dc283d7cd52
# ╠═45868670-2b34-11eb-0b08-17817b613c55
# ╟─45868670-2b34-11eb-2376-e16927b95c62
# ╠═45868670-2b34-11eb-2484-d156e73d6149
# ╟─45868670-2b34-11eb-0faf-23350d52f291
# ╠═45868670-2b34-11eb-2f22-79b3e9911a17
# ╟─45868670-2b34-11eb-304c-cfdd57d86c36
# ╠═45868670-2b34-11eb-18bf-57a2f4f57854
# ╟─45868670-2b34-11eb-015c-4b15130da0ca
# ╠═45868670-2b34-11eb-148e-3d0f4d5d6d9b
# ╟─45868670-2b34-11eb-061f-cfe12c3f0ada
# ╠═45868670-2b34-11eb-33fa-55bfa5f06326
# ╟─45868670-2b34-11eb-38d3-d15762063938
# ╠═45868670-2b34-11eb-2f52-577e5a0b0c94
# ╟─45868670-2b34-11eb-02fb-e9354bed71b7
# ╠═45868670-2b34-11eb-1411-25b119f22c3d
# ╟─45868670-2b34-11eb-2ac3-57b0cefe05bf
# ╠═45868670-2b34-11eb-2db3-8f29173836da
# ╟─45868670-2b34-11eb-3124-c9b5ab614b0e
# ╠═45868670-2b34-11eb-19b7-f34abda96ed2
# ╟─45868670-2b34-11eb-013f-a16e7f8d4e17
# ╠═45868670-2b34-11eb-07b6-79143107e56e
# ╟─45868670-2b34-11eb-0105-4d2b5e9f15c8
# ╠═45868670-2b34-11eb-0169-ffa6140879c1
# ╟─45868670-2b34-11eb-38a5-57f553e511e0
# ╠═45868670-2b34-11eb-06a7-e12c66b467b9
# ╟─45868670-2b34-11eb-2f3b-c3c935d8be4f
# ╠═45868670-2b34-11eb-30a4-cd5f9bf43613
# ╟─45868670-2b34-11eb-3764-f5761a06a25f
# ╠═45868670-2b34-11eb-07d2-9fe9a8371a5d
# ╟─45868670-2b34-11eb-138b-89faa6b79190
# ╠═45868670-2b34-11eb-0e8a-992f8b8cd01a
# ╟─4586ad80-2b34-11eb-1252-a1390f3bc3ed
# ╠═4586ad80-2b34-11eb-32c7-61eb0a91a1f0
# ╟─4586ad80-2b34-11eb-0681-49dff9f16864
# ╠═4586ad80-2b34-11eb-0f09-dd4d5ef31591
# ╟─4586ad80-2b34-11eb-21f6-2baa9c4b2ebf
# ╠═4586ad80-2b34-11eb-3c6d-2da6b94fa467
# ╟─4586ad80-2b34-11eb-1cd4-1378eaf5cad6
# ╠═4586ad80-2b34-11eb-1caf-a51d23c55259
# ╟─4586ad80-2b34-11eb-1b03-81275be040ae
# ╠═4586ad80-2b34-11eb-0c95-059743358c76
# ╟─4586ad80-2b34-11eb-34f7-917aca7769cd
# ╠═4586ad80-2b34-11eb-243c-f9083b34abde
# ╠═4586d492-2b34-11eb-168a-9dc48e368345
# ╟─4586d492-2b34-11eb-1034-099450f73c45
# ╠═4586d492-2b34-11eb-2e41-1199d4f721bb
# ╟─4586d492-2b34-11eb-3251-bbecfe088731
# ╠═4586d492-2b34-11eb-1871-436f7d90e24a
# ╟─4586fba0-2b34-11eb-305f-0d8714e51959
# ╠═4586fba0-2b34-11eb-0733-092c90f19116
# ╟─4586fba0-2b34-11eb-0172-c7290380876a
# ╠═4586fba0-2b34-11eb-38a3-039a8aac81fd
# ╟─4586fba0-2b34-11eb-3eb5-99e44275b742
# ╠═4586fba0-2b34-11eb-0ff6-9155f98afc69
# ╟─4586fba0-2b34-11eb-0028-316d360162eb
# ╠═4586fba0-2b34-11eb-0794-61d5590ff491
# ╟─4586fba0-2b34-11eb-0381-df67c6eb615a
# ╠═4586fba0-2b34-11eb-187a-eb5a56d68e87
# ╟─4586fba0-2b34-11eb-0758-f1f23e86d19b
# ╠═4586fba0-2b34-11eb-3c82-8d1e96e7402e
# ╟─4586fba0-2b34-11eb-1885-7f8194ef1a71
# ╠═4586fba0-2b34-11eb-3cca-3d23c7567cdb
# ╟─4586fba0-2b34-11eb-195a-dff4628218e9
# ╠═4586fba0-2b34-11eb-03bf-0b0f1ed11e0c
# ╟─4586fba0-2b34-11eb-1e88-b10d227d1d2b
# ╠═4586fba0-2b34-11eb-16d2-b7202315f8b8
# ╟─4586fba0-2b34-11eb-2096-551515ebcbf7
# ╠═4586fba0-2b34-11eb-0df2-f96faaba81e0
# ╟─4586fba0-2b34-11eb-2dc7-e58db8a0493d
# ╠═4586fba0-2b34-11eb-15e0-1532be3594bf
# ╟─4586fba0-2b34-11eb-0c63-8d8c402a2120
# ╠═4586fba0-2b34-11eb-3e6e-f90ba85d4aa4
# ╟─4586fba0-2b34-11eb-0fac-057b1179d9cd
# ╠═4586fba0-2b34-11eb-05dc-37ad9dbf7bee
# ╟─4586fba0-2b34-11eb-22e2-610ec08c0aad
# ╠═4586fba0-2b34-11eb-0522-4fe3a27ba5b7
# ╟─4586fba0-2b34-11eb-3c63-1555d0526c76
# ╠═4586fba0-2b34-11eb-247e-4d2207ffe12e
# ╟─4586fba0-2b34-11eb-35a7-b5e9b3c08727
# ╠═4586fba0-2b34-11eb-3b76-6f23e6ac2198
# ╟─4586fba0-2b34-11eb-2f68-4705433797ea
# ╠═4586fba0-2b34-11eb-16e5-d5d694c1f6bd
# ╟─4586fba0-2b34-11eb-2fa2-dd79f31a21e5
# ╠═4586fba0-2b34-11eb-162e-61c4d1246ca1
# ╟─4586fba0-2b34-11eb-3270-07ff8cee9d8f
# ╠═4586fba0-2b34-11eb-24b3-ef73d123a83b
# ╟─4586fba0-2b34-11eb-026b-47b880df625a
# ╠═4586fba0-2b34-11eb-10fe-1f970c6a61a4
# ╟─4586fba0-2b34-11eb-2ad3-6f1c1e369689
# ╠═4586fba0-2b34-11eb-017c-d9e30d2de037
# ╟─4586fba0-2b34-11eb-2436-89866e7c5b1b
# ╠═4586fba0-2b34-11eb-0da0-c10046b78a43
# ╟─458722b0-2b34-11eb-2156-bb4f4db32715
# ╠═458722b0-2b34-11eb-09fc-07508d4b9fd6
# ╟─458722b0-2b34-11eb-1133-f96203033837
# ╠═458722b0-2b34-11eb-3a90-813af4820c60
# ╠═458749be-2b34-11eb-26d2-4b464dc96032
# ╟─458749be-2b34-11eb-0574-310a3ec01105
# ╠═458749be-2b34-11eb-2e13-0d272024432e
# ╟─458770d0-2b34-11eb-36ca-c16797d56784
# ╠═458770d0-2b34-11eb-20bf-199186b41d5b
# ╟─458770d0-2b34-11eb-32bc-b9280f098660
# ╠═458770d0-2b34-11eb-1860-e9b0c050b4e8
# ╟─458770d0-2b34-11eb-2d9c-93bbba051ddf
# ╠═458770d0-2b34-11eb-0648-0b3007815e76
# ╟─458770d0-2b34-11eb-37e8-952f84d54017
# ╠═458770d0-2b34-11eb-3053-415dd402c042
# ╟─458770d0-2b34-11eb-29b3-63188d8e8654
# ╠═458770d0-2b34-11eb-39ad-35c04057c3c2
# ╟─458770d0-2b34-11eb-3006-97a18f9a0670
# ╠═458770d0-2b34-11eb-1a07-b3c4c09a23f0
# ╟─458770d0-2b34-11eb-22d4-b9a242dcf440
# ╠═458770d0-2b34-11eb-1923-b1f557aba8d7
# ╟─458770d0-2b34-11eb-2c45-3797cbc68d18
# ╠═458770d0-2b34-11eb-34a2-05b3077aec28
# ╟─458770d0-2b34-11eb-3214-0b0d88e1252e
# ╠═458770d0-2b34-11eb-0dec-b9f0fc98443c
# ╟─458770d0-2b34-11eb-1ff2-336f7ede7f3c
# ╠═458770d0-2b34-11eb-3072-4f628674f119
# ╟─458770d0-2b34-11eb-240f-ade6da015b4a
# ╠═458770d0-2b34-11eb-086b-a3920b7e144b
# ╟─458770d0-2b34-11eb-13b4-3dade159659d
# ╠═458770d0-2b34-11eb-1d4e-771646612eab
# ╟─458770d0-2b34-11eb-2229-d9ba73da8a67
# ╠═458770d0-2b34-11eb-28f7-affa622ef2b4
# ╟─458770d0-2b34-11eb-28fe-116d165624cf
# ╠═458770d0-2b34-11eb-35a6-2f24e23d0829
# ╟─458770d0-2b34-11eb-1270-cbda74a30a56
# ╠═458770d0-2b34-11eb-0e8c-a3fca847b437
# ╟─458770d0-2b34-11eb-3d4f-fb6ee4ecd31c
# ╠═458770d0-2b34-11eb-01d5-cd03d1404f41
# ╟─458770d0-2b34-11eb-071f-175f4d47faf9
# ╠═458770d0-2b34-11eb-1096-e553e62f8587
# ╟─458770d0-2b34-11eb-27e5-3332a140e10f
# ╠═458770d0-2b34-11eb-0062-2114df03e831
# ╟─458770d0-2b34-11eb-0dfc-0bbc6d611669
# ╠═458770d0-2b34-11eb-1a00-813b3aa7bd85
# ╟─458770d0-2b34-11eb-190e-b55a10a7da3b
# ╠═458770d0-2b34-11eb-172b-d74289ceeee2
# ╟─458770d0-2b34-11eb-1858-3560be612704
# ╠═458770d0-2b34-11eb-39af-9916fbebb8c8
# ╟─458770d0-2b34-11eb-00b2-8338214ebc55
# ╠═458770d0-2b34-11eb-2f3f-75c2113111ff
# ╟─458797e0-2b34-11eb-0ae1-65a6962614a9
# ╠═458797e0-2b34-11eb-0d52-490c63fec10d
# ╟─458797e0-2b34-11eb-2324-8f4731590999
# ╠═458797e0-2b34-11eb-3732-57aea6cb0718
# ╟─458797e0-2b34-11eb-28fc-2bc759d8271f
# ╠═458797e0-2b34-11eb-262a-113464356a7b
# ╠═4587e600-2b34-11eb-2349-49238d8ed37e
# ╟─4587e600-2b34-11eb-215c-65567e7723de
# ╠═4587e600-2b34-11eb-130b-fde7b5eb0535
# ╟─4587e600-2b34-11eb-359b-31cc429a8bb1
# ╠═4587e600-2b34-11eb-0bbd-736d5ba4f68c
# ╟─4587e600-2b34-11eb-0966-c9a3ed106c67
# ╠═4587e600-2b34-11eb-0a5b-450855dea6b6
# ╟─4587e600-2b34-11eb-0dc8-f1e55e21eaf2
# ╠═4587e600-2b34-11eb-0990-35217addd5cd
# ╟─4587e600-2b34-11eb-2e3f-6b87c02cd161
# ╠═4587e600-2b34-11eb-08dd-e9cd3893fe50
# ╟─4587e600-2b34-11eb-1ff4-9788a69be311
# ╠═4587e600-2b34-11eb-2d24-c9758fa1d652
# ╟─45880d10-2b34-11eb-1395-75435cf6ad46
# ╠═45880d10-2b34-11eb-0098-2bfb5bf663a2
# ╟─45880d10-2b34-11eb-2ea9-43e3d4ca6a9e
# ╠═45880d10-2b34-11eb-1cf5-9980627e1a62
# ╟─45880d10-2b34-11eb-2258-01972eb025af
# ╠═45880d10-2b34-11eb-0626-a92b17469052
# ╟─45880d10-2b34-11eb-2296-09c06efc21cc
# ╠═45880d10-2b34-11eb-2b5d-b332f79dbbd0
# ╟─45880d10-2b34-11eb-391d-631e76eac96a
# ╠═45880d10-2b34-11eb-3263-3b2e75455379
# ╟─45880d10-2b34-11eb-3e82-2d19ef5ac7c0
# ╠═45880d10-2b34-11eb-1f5a-f5fed279b32d
# ╟─45880d10-2b34-11eb-34e9-a92ae00c786f
# ╠═45880d10-2b34-11eb-0203-d5254a1b6331
# ╟─45880d10-2b34-11eb-0905-21c59d35213c
# ╠═45880d10-2b34-11eb-03a4-55cad53da3d2
# ╟─45880d10-2b34-11eb-02f7-f387723ea7b0
# ╠═45880d10-2b34-11eb-10e2-4940b10ec753
# ╟─45880d10-2b34-11eb-2550-ef78ffaefb6d
# ╠═45880d10-2b34-11eb-2564-e113014e5fc9
# ╟─45880d10-2b34-11eb-3396-cbbec430d3b4
# ╠═45880d10-2b34-11eb-1c8f-27791f812eb3
# ╟─45880d10-2b34-11eb-1a36-e1ec7fa308b0
# ╠═45880d10-2b34-11eb-2030-f537e8fe3aae
# ╟─45880d10-2b34-11eb-0761-158bd16a6933
# ╠═45880d10-2b34-11eb-06ae-1f31b1b77c7f
# ╟─45880d10-2b34-11eb-3103-dd60d33efa71
# ╠═45880d10-2b34-11eb-1a62-cbc5237f8960
# ╟─45880d10-2b34-11eb-3e78-c1ad4c29d007
# ╠═45880d10-2b34-11eb-3d06-ff0a6ec495e8
# ╟─45880d10-2b34-11eb-0030-31c1874099ca
# ╠═45880d10-2b34-11eb-16e9-1d54061d1d8f
# ╟─45880d10-2b34-11eb-0de6-b9cb19f5c286
# ╠═45880d10-2b34-11eb-0e1d-2d539b5c4eb2
# ╟─45880d10-2b34-11eb-0e40-15bd1b85a996
# ╠═45880d10-2b34-11eb-39f8-f5e21e2d0209
# ╟─45880d10-2b34-11eb-142c-eb6fdc323fba
# ╠═45880d10-2b34-11eb-3e37-3d8b8b0e0354
# ╟─45880d10-2b34-11eb-2c60-ebd28448014c
# ╠═45880d10-2b34-11eb-2087-ab3db1ce733b
# ╠═4588d062-2b34-11eb-2e36-db911f413707
# ╟─4588d062-2b34-11eb-31e3-cfd7893a7384
# ╠═4588d062-2b34-11eb-1726-93b2ba0882eb
# ╟─4588d062-2b34-11eb-2147-531fc82e3cc6
# ╠═4588d062-2b34-11eb-316f-8d2ad4ea684e
# ╟─4588d062-2b34-11eb-1558-6532eefe7010
# ╠═4588d062-2b34-11eb-2e32-73d4dddfc888
# ╟─4588d062-2b34-11eb-0614-3702855082c4
# ╠═4588d062-2b34-11eb-0cf0-6f5c66fda5ca
# ╟─4588d062-2b34-11eb-20aa-3ff4c30a102e
# ╠═4588d062-2b34-11eb-1f23-c12b175e105d
# ╟─4588d062-2b34-11eb-1e07-293129af0422
# ╠═4588d062-2b34-11eb-075e-e9d19fc7fc0c
# ╟─4588d062-2b34-11eb-00b6-13b28de1fa1e
# ╠═4588d062-2b34-11eb-11ea-ddb1eeae0770
# ╟─4588d062-2b34-11eb-21bc-45dd966d8e22
# ╠═4588d062-2b34-11eb-2376-6b79475cd76b
# ╟─4588f770-2b34-11eb-1a6a-0973636b838d
# ╠═4588f770-2b34-11eb-0c89-fb491a65926b
# ╟─4588f770-2b34-11eb-2820-153768066e94
# ╠═4588f770-2b34-11eb-088b-4d1e34247696
# ╟─4588f770-2b34-11eb-2965-cf0fc1c46aa4
# ╠═4588f770-2b34-11eb-000b-ebdbb65d43db
# ╟─4588f770-2b34-11eb-2824-8d03ae680423
# ╠═4588f770-2b34-11eb-14be-3f643cda1c1d
# ╟─4588f770-2b34-11eb-1ddf-c78704c02de5
# ╠═4588f770-2b34-11eb-3d31-c3c68dad0739
# ╟─4588f770-2b34-11eb-28ec-a39a47cba00b
# ╠═4588f770-2b34-11eb-3fd7-8dcea98121d0
# ╟─4588f770-2b34-11eb-2805-19dfbc845310
# ╠═4588f770-2b34-11eb-1306-673f82296b32
# ╟─4588f770-2b34-11eb-1104-3d8595c9e62f
# ╠═4588f770-2b34-11eb-3020-57e7da902ad4
# ╟─4588f770-2b34-11eb-2135-dfbb0ba8007f
# ╠═4588f770-2b34-11eb-1cda-0188c464dfeb
# ╟─4588f770-2b34-11eb-17c3-5bc32d7c7974
# ╠═4588f770-2b34-11eb-3efd-9f586282e1d0
# ╟─4588f770-2b34-11eb-103c-cd0441611041
# ╠═4588f770-2b34-11eb-0c57-6f1dcdad0c72
# ╟─4588f770-2b34-11eb-0d8f-5f15661cd6bb
# ╠═4588f770-2b34-11eb-153b-654d6adc1964
# ╟─4588f770-2b34-11eb-0f04-cf4706e870b7
# ╠═4588f770-2b34-11eb-1595-5dffb3eb00bf
# ╟─4588f770-2b34-11eb-1b6e-07beec380cb1
# ╠═4588f770-2b34-11eb-2f76-ff3e9a1834bf
# ╟─4588f770-2b34-11eb-0dae-fbcc9922a7e6
# ╠═4588f770-2b34-11eb-357f-7dd9fb37ce3e
# ╟─4588f770-2b34-11eb-1c97-d327ae637b1a
# ╠═4588f770-2b34-11eb-3a07-4dad7cc05839
# ╟─45891e80-2b34-11eb-0271-dd82efa40220
# ╠═45891e80-2b34-11eb-1c49-9dd1cc9b87af
# ╟─45891e80-2b34-11eb-135a-a94b0817553c
# ╠═45891e80-2b34-11eb-074b-7ba799eddfbb
# ╠═458bdda0-2b34-11eb-2a6b-f5e41400b72e
# ╟─458bdda0-2b34-11eb-1ee3-35ea3cb36202
# ╠═458bdda0-2b34-11eb-2138-53167ee52e0c
# ╟─458bdda0-2b34-11eb-181f-2f2f7c9cd94f
# ╠═458bdda0-2b34-11eb-05f4-eb4e4f227bfa
# ╟─458bdda0-2b34-11eb-1ef5-b941bf5d1f11
# ╠═458bdda0-2b34-11eb-3556-51293065efdb
# ╟─458bdda0-2b34-11eb-0a36-3bff77d19ff6
# ╠═458bdda0-2b34-11eb-17de-c36d32222cef
# ╟─458bdda0-2b34-11eb-237f-1faeabf66bde
# ╠═458bdda0-2b34-11eb-3fc3-6f7ddf77ef76
# ╟─458bdda0-2b34-11eb-30a4-ebfb300ee92a
# ╠═458bdda0-2b34-11eb-010b-f5a45ff4f077
# ╟─458bdda0-2b34-11eb-21f2-d5223b8f3099
# ╠═458bdda0-2b34-11eb-143a-71fe0c41c7f0
# ╟─458bdda0-2b34-11eb-166d-31935bbb0368
# ╠═458bdda0-2b34-11eb-1cf1-a718f46bd647
# ╟─458bdda0-2b34-11eb-0aa3-6d8b3cb39fa9
# ╠═458bdda0-2b34-11eb-37a8-bf254ab7e5fd
# ╟─458bdda0-2b34-11eb-1b16-7fbaad046cd6
# ╠═458bdda0-2b34-11eb-0e20-afa75431d3a2
# ╟─458c04b0-2b34-11eb-11e8-2ba10d1c7f9d
# ╠═458c04b0-2b34-11eb-0032-e7166d23c38a
# ╟─458c04b0-2b34-11eb-382f-c3ab8a3ffe5e
# ╠═458c04b0-2b34-11eb-2899-cfb118bc80da
# ╟─458c04b0-2b34-11eb-2717-7976ba3355c9
# ╠═458c04b0-2b34-11eb-0dbb-bbcef9cbfaee
# ╟─458c04b0-2b34-11eb-05df-1d378be870fe
# ╠═458c04b0-2b34-11eb-1b01-6b4457bd59d6
# ╟─458c04b0-2b34-11eb-20b5-bdf41d304b71
# ╠═458c04b0-2b34-11eb-1892-a342f23dd8c7
# ╟─458c04b0-2b34-11eb-10d9-e9a90671763e
# ╠═458c04b0-2b34-11eb-244f-cdd7cf91bd03
# ╟─458c04b0-2b34-11eb-3612-73ee77640757
# ╠═458c04b0-2b34-11eb-08f7-ab2007d7d3bf
# ╟─458c04b0-2b34-11eb-2239-6bf26bae62e9
# ╠═458c04b0-2b34-11eb-1583-11a0ddeabc57
# ╟─458c04b0-2b34-11eb-0f11-2331f2d80818
# ╠═458c04b0-2b34-11eb-1a91-79a06ec22c6c
# ╟─458c04b0-2b34-11eb-087f-6b61f8fd6dbb
# ╠═458c04b0-2b34-11eb-1ff1-31ba57ab928c
# ╟─458c04b0-2b34-11eb-3686-3f252f75daf0
# ╠═458c04b0-2b34-11eb-24ee-9d7ae94c0c59
# ╟─458c04b0-2b34-11eb-3b2e-6f14467ab2ee
# ╠═458c04b0-2b34-11eb-1f77-296248f389ce
# ╟─458c04b0-2b34-11eb-3ab0-c9dfcc4fa73e
# ╠═458c04b0-2b34-11eb-1127-254821ce74a9
# ╟─458c04b0-2b34-11eb-2c9b-bbee447e5796
# ╠═458c04b0-2b34-11eb-186a-dba6bf73b5b8
# ╟─458c04b0-2b34-11eb-27de-9ba19645734c
# ╠═458c04b0-2b34-11eb-13b3-f5c3ba76b0a8
# ╟─458c04b0-2b34-11eb-37aa-73418af5badf
# ╠═458c04b0-2b34-11eb-2bc6-c9290cea5a92