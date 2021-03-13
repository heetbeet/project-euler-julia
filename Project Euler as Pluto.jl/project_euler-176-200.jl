### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4426d1e0-8435-11eb-295f-11617958fdd1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4426d1e0-8435-11eb-2bf1-a5b6fd177a0f
html"""
<h2>Problem 176: Right-angled triangles that share a cathetus</h2>
<p>The four right-angled triangles with sides (9,12,15), (12,16,20), (5,12,13) and (12,35,37) all have one of the shorter sides (catheti) equal to 12. It can be shown that no other integer sided right-angled triangle exists with one of the catheti equal to 12.</p>
<p>Find the smallest integer that can be the length of a cathetus of exactly 47547 different integer sided right-angled triangles.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-3077-0fd9c58e8801
begin
    submit_answer(nothing; prob_num=176)
end

# ╔═╡ 4426d1e0-8435-11eb-0d70-51d8d7766ce3
html"""
<h2>Problem 177: Integer angled Quadrilaterals</h2>
<p>Let ABCD be a convex quadrilateral, with diagonals AC and BD. At each vertex the diagonal makes an angle with each of the two sides, creating eight corner angles.</p>
<p style="text-align:center;"><img src="project/images/p177_quad.gif" class="dark_img" alt="" /></p>
<p>For example, at vertex A, the two angles are CAD, CAB.</p>
<p>We call such a quadrilateral for which all eight corner angles have integer values when measured in degrees an "integer angled quadrilateral". An example of an integer angled quadrilateral is a square, where all eight corner angles are 45°. Another example is given by DAC = 20°, BAC = 60°, ABD = 50°, CBD = 30°, BCA = 40°, DCA = 30°, CDB = 80°, ADB = 50°.</p>
<p>What is the total number of non-similar integer angled quadrilaterals?</p>
<p>Note: In your calculations you may assume that a calculated angle is integral if it is within a tolerance of 10<sup>-9</sup> of an integer value.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-1af5-2f9fee4b538e
begin
    submit_answer(nothing; prob_num=177)
end

# ╔═╡ 4426d1e0-8435-11eb-1de7-5b9a0d5a6f66
html"""
<h2>Problem 178: Step Numbers</h2>
Consider the number 45656. <br />
It can be seen that each pair of consecutive digits of 45656 has a difference of one.<br />
A number for which every pair of consecutive digits has a difference of one is called a step number.<br />
A pandigital number  contains every decimal digit from 0 to 9 at least once.<br />

How many pandigital step numbers less than 10<sup>40</sup> are there?
"""

# ╔═╡ 4426d1e0-8435-11eb-0b08-65580e0d4bd6
begin
    submit_answer(nothing; prob_num=178)
end

# ╔═╡ 4426d1e0-8435-11eb-1abd-a59beaaa7103
html"""
<h2>Problem 179: Consecutive positive divisors</h2>
<p>Find the number of integers 1 &lt; n &lt; 10<sup>7</sup>, for which <var>n</var> and <var>n</var> + 1 have the same number of positive divisors. For example, 14 has the positive divisors 1, 2, 7, 14 while 15 has 1, 3, 5, 15.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-3270-a7ffd2be61f9
begin
    submit_answer(nothing; prob_num=179)
end

# ╔═╡ 4426d1e0-8435-11eb-1c59-29a0ccf5975c
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

# ╔═╡ 4426d1e0-8435-11eb-05fb-5fc57cb3f191
begin
    submit_answer(nothing; prob_num=180)
end

# ╔═╡ 4426d1e0-8435-11eb-09da-e5f404dc7cc6
html"""
<h2>Problem 181: Investigating in how many ways objects of two different colours can be grouped</h2>
<p>Having three black objects B and one white object W they can be grouped in 7 ways like this:</p>
<table cellpadding="10" align="center"><tr><td>(BBBW)</td><td>(B,BBW)</td><td>(B,B,BW)</td><td>(B,B,B,W)</td>
<td>(B,BB,W)</td><td>(BBB,W)</td><td>(BB,BW)</td>
</tr></table><p>In how many ways can sixty black objects B and forty white objects W be  thus grouped?</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-15e3-cfadf7eb7f97
begin
    submit_answer(nothing; prob_num=181)
end

# ╔═╡ 4426d1e0-8435-11eb-1b7f-5d9d1cc214c1
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

# ╔═╡ 4426d1e0-8435-11eb-0daa-677c4a0c2324
begin
    submit_answer(nothing; prob_num=182)
end

# ╔═╡ 4426d1e0-8435-11eb-2341-516a964c3b68
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

# ╔═╡ 4426d1e0-8435-11eb-1987-af8155f3bfbc
begin
    submit_answer(nothing; prob_num=183)
end

# ╔═╡ 4426d1e0-8435-11eb-2de8-e59f25c1adfb
html"""
<h2>Problem 184: Triangles containing the origin</h2>
<p>Consider the set <var>I<sub>r</sub></var> of points (<var>x</var>,<var>y</var>) with integer co-ordinates in the interior of the circle with radius <var>r</var>, centered at the origin, i.e. <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> &lt; <var>r</var><sup>2</sup>.</p>
<p>For a radius of 2, <var>I</var><sub>2</sub> contains the nine points (0,0), (1,0), (1,1), (0,1), (-1,1), (-1,0), (-1,-1), (0,-1) and (1,-1). There are eight triangles having all three vertices in <var>I</var><sub>2</sub> which contain the origin in the interior. Two of them are shown below, the others are obtained from these by rotation.</p>
<p class="center"><img src="project/images/p184.gif" class="dark_img" alt="" /></p>

<p>For a radius of 3, there are 360 triangles containing the origin in the interior and having all vertices in <var>I</var><sub>3</sub> and for <var>I</var><sub>5</sub> the number is 10600.</p>

<p>How many triangles are there containing the origin in the interior and having all three vertices in <var>I</var><sub>105</sub>?</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-1fb5-cd68a8c8b420
begin
    submit_answer(nothing; prob_num=184)
end

# ╔═╡ 4426d1e0-8435-11eb-2f5f-a34c8da67d76
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

# ╔═╡ 4426d1e0-8435-11eb-3980-ed1f1e17b6a4
begin
    submit_answer(nothing; prob_num=185)
end

# ╔═╡ 4426d1e0-8435-11eb-1396-93bdcbe913ca
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

# ╔═╡ 4426d1e0-8435-11eb-019a-972bd607bd5b
begin
    submit_answer(nothing; prob_num=186)
end

# ╔═╡ 4426d1e0-8435-11eb-3c71-03ad1dacf268
html"""
<h2>Problem 187: Semiprimes</h2>
<p>A composite is a number containing at least two prime factors. For example, 15 = 3 × 5; 9 = 3 × 3; 12 = 2 × 2 × 3.</p>

<p>There are ten composites below thirty containing precisely two, not necessarily distinct, prime factors:
4, 6, 9, 10, 14, 15, 21, 22, 25, 26.</p>

<p>How many composite integers, <var>n</var> &lt; 10<sup>8</sup>, have precisely two, not necessarily distinct, prime factors?</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-0cff-7b09fd02771e
begin
    submit_answer(nothing; prob_num=187)
end

# ╔═╡ 4426d1e0-8435-11eb-31c1-1f8806e6b0ef
html"""
<h2>Problem 188: The hyperexponentiation of a number</h2>
<p>The <span style="font-style:italic;">hyperexponentiation</span> or <span style="font-style:italic;">tetration</span> of a number a by a positive integer b, denoted by a↑↑b or <sup>b</sup>a, is recursively defined by:<br /><br />
a↑↑1 = a,<br />
a↑↑(k+1) = a<sup>(a↑↑k)</sup>.</p>
<p>
Thus we have e.g. 3↑↑2 = 3<sup>3</sup> = 27, hence 3↑↑3 = 3<sup>27</sup> = 7625597484987 and 3↑↑4 is roughly 10<sup>3.6383346400240996*10^12</sup>.</p>
<p>Find the last 8 digits of 1777↑↑1855.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-17fa-b9d2ba803798
begin
    submit_answer(nothing; prob_num=188)
end

# ╔═╡ 4426d1e0-8435-11eb-18ae-39dfd6753876
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

# ╔═╡ 4426d1e0-8435-11eb-08b0-45abb7a59869
begin
    submit_answer(nothing; prob_num=189)
end

# ╔═╡ 4426d1e0-8435-11eb-35c4-47f0c4414a34
html"""
<h2>Problem 190: Maximising a weighted product</h2>
<p>Let S<sub>m</sub> = (x<sub>1</sub>, x<sub>2</sub>, ... , x<sub>m</sub>) be the m-tuple of positive real numbers with x<sub>1</sub> + x<sub>2</sub> + ... + x<sub>m</sub> = m for which P<sub>m</sub> = x<sub>1</sub> * x<sub>2</sub><sup>2</sup> * ... * x<sub>m</sub><sup>m</sup> is maximised.</p>

<p>For example, it can be verified that [P<sub>10</sub>] = 4112 ([ ] is the integer part function).</p>

<p>Find Σ[P<sub>m</sub>] for 2 ≤ m ≤ 15.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-15e4-0d414f31c707
begin
    submit_answer(nothing; prob_num=190)
end

# ╔═╡ 4426d1e0-8435-11eb-01be-4f8e59d1e4f8
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

# ╔═╡ 4426d1e0-8435-11eb-2952-431f10cca613
begin
    submit_answer(nothing; prob_num=191)
end

# ╔═╡ 4426d1e0-8435-11eb-171c-d7d6fd49ab84
html"""
<h2>Problem 192: Best Approximations</h2>
<p>Let $x$ be a real number.<br />
A <b>best approximation</b> to $x$ for the <b>denominator bound</b> $d$ is a rational number $\frac r s $  in<b> reduced form</b>, with $s \le d$, such that any rational number which is closer to $x$ than $\frac r s$ has a denominator larger than $d$:</p>

<div class="center"> $|\frac p q -x | &lt; |\frac r s -x| \Rightarrow q &gt; d$
</div>

<p>For example, the best approximation to $\sqrt {13}$ for the denominator bound 20 is $\frac {18} 5$ and the best approximation to $\sqrt {13}$ for the denominator bound 30 is $\frac {101}{28}$.</p>

<p>Find the sum of all denominators of the best approximations to $\sqrt n$ for the denominator bound $10^{12}$, where $n$ is not a perfect square and $ 1 &lt; n \le 100000$. </p>
"""

# ╔═╡ 4426d1e0-8435-11eb-2f51-f5921255b315
begin
    submit_answer(nothing; prob_num=192)
end

# ╔═╡ 4426d1e0-8435-11eb-1d65-193bc1f20055
html"""
<h2>Problem 193: Squarefree Numbers</h2>
<p>A positive integer <var>n</var> is called squarefree, if no square of a prime divides <var>n</var>, thus 1, 2, 3, 5, 6, 7, 10, 11 are squarefree, but not 4, 8, 9, 12.</p>

<p>How many squarefree numbers are there below 2<sup>50</sup>?</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-0d29-a1935534d50f
begin
    submit_answer(nothing; prob_num=193)
end

# ╔═╡ 4426d1e0-8435-11eb-29d1-750072666316
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

# ╔═╡ 4426d1e0-8435-11eb-1f92-4976c6eca60b
begin
    submit_answer(nothing; prob_num=194)
end

# ╔═╡ 4426d1e0-8435-11eb-08ca-272522e283a1
html"""
<h2>Problem 195: Inscribed circles of triangles with one angle of 60 degrees</h2>
<p>Let's call an integer sided triangle with exactly one angle of 60 degrees a 60-degree triangle.<br />
Let <var>r</var> be the radius of the inscribed circle of such a 60-degree triangle.</p>
<p>There are 1234 60-degree triangles for which <var>r</var> ≤ 100.
<br />Let T(<var>n</var>) be the number of 60-degree triangles for which <var>r</var> ≤ <var>n</var>, so<br />
 T(100) = 1234,  T(1000) = 22767, and  T(10000) = 359912.</p>

<p>Find T(1053779).</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-2346-6da75cd814c5
begin
    submit_answer(nothing; prob_num=195)
end

# ╔═╡ 4426d1e0-8435-11eb-085d-75cc4de7721e
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

# ╔═╡ 4426d1e0-8435-11eb-36b7-cf560af5e929
begin
    submit_answer(nothing; prob_num=196)
end

# ╔═╡ 4426d1e0-8435-11eb-1b66-01a4d5613291
html"""
<h2>Problem 197: Investigating the behaviour of a recursively defined sequence</h2>
<p>Given is the function <var>f</var>(<var>x</var>) = ⌊2<sup>30.403243784-<var>x</var><sup>2</sup></sup>⌋ × 10<sup>-9</sup> ( ⌊ ⌋ is the floor-function),<br />
the sequence <var>u<sub>n</sub></var> is defined by <var>u</var><sub>0</sub> = -1 and <var>u</var><sub><var>n</var>+1</sub> = <var>f</var>(<var>u<sub>n</sub></var>).</p>

<p>Find <var>u<sub>n</sub></var> + <var>u</var><sub><var>n</var>+1</sub> for <var>n</var> = 10<sup>12</sup>.<br />
Give your answer with 9 digits after the decimal point.</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-3285-2bdf3fa8c613
begin
    submit_answer(nothing; prob_num=197)
end

# ╔═╡ 4426d1e0-8435-11eb-2fd4-57eb8932040b
html"""
<h2>Problem 198: Ambiguous Numbers</h2>
<p>A best approximation to a real number $x$ for the denominator bound $d$ is a rational number $\frac r s$ (in reduced form) with $s \le d$, so that any rational number $\frac p q$ which is closer to $x$ than $\frac r s$ has $q &gt; d$.</p>

<p>Usually the best approximation to a real number is uniquely determined for all denominator bounds. However, there are some exceptions, e.g. $\frac 9 {40}$ has the two best approximations $\frac 1 4$ and $\frac 1 5$ for the denominator bound $6$.
We shall call a real number $x$ <i>ambiguous</i>, if there is at least one denominator bound for which $x$ possesses two best approximations. Clearly, an ambiguous number is necessarily rational.</p>

<p>How many ambiguous numbers $x=\frac p q, 0 &lt; x &lt; \frac 1 {100}$, are there whose denominator $q$ does not exceed $10^8$?</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-3e47-c7a33a3e184c
begin
    submit_answer(nothing; prob_num=198)
end

# ╔═╡ 4426d1e0-8435-11eb-1940-ef26366d214a
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

# ╔═╡ 4426d1e0-8435-11eb-18e7-7903865e636d
begin
    submit_answer(nothing; prob_num=199)
end

# ╔═╡ 4426d1e0-8435-11eb-19ae-dbe483119371
html"""
<h2>Problem 200: Find the 200th prime-proof sqube containing the contiguous sub-string "200"</h2>
<p>We shall define a sqube to be a number of the form, <var>p</var><sup>2</sup><var>q</var><sup>3</sup>, where <var>p</var> and <var>q</var> are distinct primes.<br />
For example, 200 = 5<sup>2</sup>2<sup>3</sup> or 120072949 = 23<sup>2</sup>61<sup>3</sup>.</p>

<p>The first five squbes are 72, 108, 200, 392, and 500.</p>

<p>Interestingly, 200 is also the first number for which you cannot change any single digit to make a prime; we shall call such numbers, prime-proof. The next prime-proof sqube which contains the contiguous sub-string "200" is 1992008.</p>

<p>Find the 200th prime-proof sqube containing the contiguous sub-string "200".</p>
"""

# ╔═╡ 4426d1e0-8435-11eb-14cf-87c757665dba
begin
    submit_answer(nothing; prob_num=200)
end

# ╔═╡ Cell order:
# ╠═44151ea0-8435-11eb-2947-8de07d4c52d1
# ╟─44151ea0-8435-11eb-3e9d-43f32388d5d8
# ╠═44151ea0-8435-11eb-1ca3-0556f53296db
# ╟─44151ea0-8435-11eb-3412-6dafe99e4ece
# ╠═44151ea0-8435-11eb-2924-fd75f001623b
# ╟─44151ea0-8435-11eb-264c-c9f4a9f1c332
# ╠═44151ea0-8435-11eb-0e1d-11a6d68e3cb0
# ╟─44151ea0-8435-11eb-2151-25d67e496edf
# ╠═44151ea0-8435-11eb-042d-ef47838b86d6
# ╟─44151ea0-8435-11eb-3782-99d22634db43
# ╠═44151ea0-8435-11eb-3bc7-43f5ca2e0bb1
# ╟─44151ea0-8435-11eb-3a28-d7803c1e31d3
# ╠═44151ea0-8435-11eb-2fd4-e519f97e17af
# ╟─44151ea0-8435-11eb-20e5-8b4355e1eb26
# ╠═44151ea0-8435-11eb-305a-050fd16e1f4d
# ╟─44151ea0-8435-11eb-3add-b7f70faac00a
# ╠═44151ea0-8435-11eb-2484-23612943b891
# ╟─44151ea0-8435-11eb-02a5-ab8c7c3ef650
# ╠═44151ea0-8435-11eb-13e8-2dcd7e66cf7a
# ╟─44151ea0-8435-11eb-12d6-6de9980d1819
# ╠═44151ea0-8435-11eb-3c48-f74e00f1604c
# ╟─44151ea0-8435-11eb-1654-65d873271d94
# ╠═44151ea0-8435-11eb-3838-039a81c6d7d5
# ╟─44151ea0-8435-11eb-3e77-db5d2e7287b1
# ╠═44151ea0-8435-11eb-3363-7b275855f661
# ╟─44151ea0-8435-11eb-2453-5d5c969b5752
# ╠═44151ea0-8435-11eb-127f-2f3727a45041
# ╟─44151ea0-8435-11eb-24ce-4b6806926dba
# ╠═44151ea0-8435-11eb-3252-b52621cbd6b6
# ╟─44151ea0-8435-11eb-2c7e-67a1bd42e7c4
# ╠═44151ea0-8435-11eb-1d94-ef77e19bb629
# ╟─44151ea0-8435-11eb-21e4-65ffcfc99514
# ╠═44151ea0-8435-11eb-19d4-2d46d66fa81f
# ╟─44151ea0-8435-11eb-3a7b-03fd26ee8222
# ╠═44151ea0-8435-11eb-29bd-2552e3971570
# ╟─44151ea0-8435-11eb-3c6a-33b1c95545f1
# ╠═44151ea0-8435-11eb-1cab-f7fd224c528c
# ╟─44151ea0-8435-11eb-0d59-5f96750aa552
# ╠═44151ea0-8435-11eb-1842-1d4ac82351d0
# ╟─44151ea0-8435-11eb-2691-1d485c60c1e0
# ╠═44151ea0-8435-11eb-1a2b-71660c736435
# ╟─44151ea0-8435-11eb-21ca-7790f42a6e46
# ╠═44151ea0-8435-11eb-0c10-d1441fea2120
# ╟─44151ea0-8435-11eb-2ff9-8f5b40ade524
# ╠═44151ea0-8435-11eb-3a14-c52c29e6ca22
# ╟─44151ea0-8435-11eb-1044-efe2f66c1028
# ╠═44151ea0-8435-11eb-0bd0-47efe2c28f19
# ╟─44151ea0-8435-11eb-308d-7dd174fc10a7
# ╠═44151ea0-8435-11eb-1713-9385dc606ac5
# ╟─44151ea0-8435-11eb-25a2-65d690db3c2f
# ╠═44151ea0-8435-11eb-3496-798e82f7532c
# ╠═44178fa0-8435-11eb-0d6c-03fe9e4d5e2d
# ╟─44178fa0-8435-11eb-3b4d-2113499fdb5e
# ╠═44178fa0-8435-11eb-30bf-c18fa40452e4
# ╟─44178fa0-8435-11eb-2c32-334d606e7f4c
# ╠═44178fa0-8435-11eb-1e88-a1ed02ee8b73
# ╟─44178fa0-8435-11eb-0485-394c3f60fc11
# ╠═44178fa0-8435-11eb-09cc-a7129e9570f5
# ╟─441a00a0-8435-11eb-14fd-21b75d447d80
# ╠═441a00a0-8435-11eb-0fc0-0db8a923c10b
# ╟─441a00a0-8435-11eb-2585-ffbb262b8aad
# ╠═441a00a0-8435-11eb-210f-8781bd460274
# ╟─441a00a0-8435-11eb-0cab-1f0fc78547fe
# ╠═441a00a0-8435-11eb-24ca-89ff2bb18d6d
# ╟─441a00a0-8435-11eb-069f-edac8b17e3f1
# ╠═441a00a0-8435-11eb-1f1e-194c47d13f58
# ╟─441a00a0-8435-11eb-36b0-51434e1903c9
# ╠═441a00a0-8435-11eb-2547-c73e5adb166d
# ╟─441a00a0-8435-11eb-1042-e7a08a741b92
# ╠═441a00a0-8435-11eb-361b-bb5afa8a85a1
# ╟─441a00a0-8435-11eb-1a4d-6bf0feb2e29a
# ╠═441a00a0-8435-11eb-21fe-7bf927240f77
# ╟─441a00a0-8435-11eb-37fa-dbc08e1e2690
# ╠═441a00a0-8435-11eb-29e9-69e3fad3b545
# ╟─441a00a0-8435-11eb-2b60-7195a82e845e
# ╠═441a00a0-8435-11eb-28f3-1b2d172289c4
# ╟─441a00a0-8435-11eb-17b0-f757bc2f6053
# ╠═441a00a0-8435-11eb-37be-99930c22a0bb
# ╟─441a00a0-8435-11eb-04a2-7309d6277c3f
# ╠═441a00a0-8435-11eb-2200-335f11d65973
# ╟─441a00a0-8435-11eb-1ac1-cf445fe95589
# ╠═441a00a0-8435-11eb-04f6-1586d558072a
# ╟─441a00a0-8435-11eb-27cb-37e8139b6afb
# ╠═441a00a0-8435-11eb-24f2-3d3dd74c304a
# ╟─441a00a0-8435-11eb-17f1-19010971efb9
# ╠═441a00a0-8435-11eb-0aab-fbc374054088
# ╟─441a00a0-8435-11eb-37fa-ab20b1d3dbc0
# ╠═441a00a0-8435-11eb-04c4-3fb0eff9296a
# ╟─441a00a0-8435-11eb-08ad-f937b7defdb9
# ╠═441a00a0-8435-11eb-0abf-51714a58c28e
# ╟─441a00a0-8435-11eb-115c-6f707e0fca46
# ╠═441a00a0-8435-11eb-1377-4d87a3da74c2
# ╟─441a00a0-8435-11eb-21c8-2915704888e5
# ╠═441a00a0-8435-11eb-1cf3-6384a2bcb47d
# ╟─441a00a0-8435-11eb-25ec-25b51361aed6
# ╠═441a00a0-8435-11eb-2d2f-71927064203f
# ╟─441a00a0-8435-11eb-2de3-392e72b4d3da
# ╠═441a00a0-8435-11eb-2a7b-e5d1c2c00214
# ╟─441a00a0-8435-11eb-3cdc-6bb62f71d59e
# ╠═441a00a0-8435-11eb-10fa-573fbd45f0b6
# ╟─441a00a0-8435-11eb-13f6-69563b5385e4
# ╠═441a00a0-8435-11eb-0d1b-a75fe2a9fed4
# ╠═441c4a90-8435-11eb-2cce-4d480d45000f
# ╟─441c4a90-8435-11eb-2438-5fe85a035bc8
# ╠═441c4a90-8435-11eb-1e60-f71ba9b7fa8a
# ╟─441c4a90-8435-11eb-21cc-03113ee545a7
# ╠═441c4a90-8435-11eb-1754-bb71c39f9067
# ╟─441c4a90-8435-11eb-1db1-91fd5e9f447f
# ╠═441c4a90-8435-11eb-27e1-7d9c3d98cfff
# ╟─441c4a90-8435-11eb-226f-d16f03c4479c
# ╠═441c4a90-8435-11eb-0828-03f1b96deaf3
# ╟─441c4a90-8435-11eb-177d-c92a52717007
# ╠═441c4a90-8435-11eb-3ce8-ab7df646f33e
# ╟─441c4a90-8435-11eb-225d-f5217a0f14aa
# ╠═441c4a90-8435-11eb-344f-d3d39b053538
# ╟─441c4a90-8435-11eb-08c3-9b399bd28619
# ╠═441c4a90-8435-11eb-322d-0df62e5f9928
# ╟─441c4a90-8435-11eb-0e2f-299cb81824bd
# ╠═441c4a90-8435-11eb-1c1d-17172f57b0ff
# ╟─441c4a90-8435-11eb-1bb5-17b8545f449b
# ╠═441c4a90-8435-11eb-29f3-4b460ee0314b
# ╟─441c4a90-8435-11eb-38de-87bb5d05add4
# ╠═441c4a90-8435-11eb-2457-a171c722d640
# ╟─441c4a90-8435-11eb-1fc9-9b0d8ffe7f43
# ╠═441c4a90-8435-11eb-1eef-df1cc5f61d32
# ╟─441c4a90-8435-11eb-00e9-3b8c171c234d
# ╠═441c4a90-8435-11eb-03bb-33117739ec95
# ╟─441c4a90-8435-11eb-3194-395347a99fd3
# ╠═441c4a90-8435-11eb-2f65-8b822361000a
# ╟─441c4a90-8435-11eb-1fa6-f104db79d760
# ╠═441c4a90-8435-11eb-1b52-85eb8444ae77
# ╟─441c4a90-8435-11eb-3e30-5311d257a5af
# ╠═441c4a90-8435-11eb-2cc0-05f7e9da5bd9
# ╟─441c4a90-8435-11eb-280d-214a2205d258
# ╠═441c4a90-8435-11eb-1591-65d56586db31
# ╟─441c4a90-8435-11eb-1b96-bfa0b0b4ff6e
# ╠═441c4a90-8435-11eb-01ab-bbe66a02aef1
# ╟─441c4a90-8435-11eb-00a7-e158ca52bae5
# ╠═441c4a90-8435-11eb-2768-fd26dc93dd5e
# ╟─441c4a90-8435-11eb-05b9-f5ae513be9a2
# ╠═441c4a90-8435-11eb-3806-29ff7370c60e
# ╟─441c4a90-8435-11eb-3f8b-21dcd9ff94ee
# ╠═441c4a90-8435-11eb-1b48-1b99e3f2d1c6
# ╟─441c4a90-8435-11eb-14fe-271f7e8e5719
# ╠═441c4a90-8435-11eb-1f24-ed2a22ebde60
# ╟─441c4a90-8435-11eb-1c18-8122de898166
# ╠═441c4a90-8435-11eb-24cf-2721638d27da
# ╟─441c4a90-8435-11eb-13b0-4fd8e453c71f
# ╠═441c4a90-8435-11eb-0b5e-f109910b9b9c
# ╟─441c4a90-8435-11eb-2095-6f09df6c7e7e
# ╠═441c4a90-8435-11eb-334b-7f86e9ff583c
# ╟─441c4a90-8435-11eb-3487-810a873a2315
# ╠═441c4a90-8435-11eb-0e34-9fffbbf2938b
# ╠═441ee2a2-8435-11eb-32a6-7d64e3eea3f1
# ╟─441ee2a2-8435-11eb-1648-6fbabc682b5d
# ╠═441ee2a2-8435-11eb-35d7-f527031e7816
# ╟─441ee2a2-8435-11eb-3766-0dea1f5341a2
# ╠═441ee2a2-8435-11eb-3f91-b720aaa75567
# ╟─441ee2a2-8435-11eb-0019-6374c04e5c35
# ╠═441ee2a2-8435-11eb-2cbb-8b9e4d9726e0
# ╟─441ee2a2-8435-11eb-2008-0d2eba461833
# ╠═441ee2a2-8435-11eb-1da1-6f05c1eb7c41
# ╟─441ee2a2-8435-11eb-32fe-e19ed32be291
# ╠═441ee2a2-8435-11eb-2452-f7b48a340f8e
# ╟─441ee2a2-8435-11eb-110e-9b1b9c2d8029
# ╠═441ee2a2-8435-11eb-3bab-67cc4fe449b8
# ╟─441ee2a2-8435-11eb-3018-59f5d9d4370b
# ╠═441ee2a2-8435-11eb-1e4a-e732a3677e00
# ╟─441ee2a2-8435-11eb-0c66-f99bf24f89ba
# ╠═441ee2a2-8435-11eb-0f0b-59c3df9685c1
# ╟─441ee2a2-8435-11eb-0a6b-7fa004246ecb
# ╠═441ee2a2-8435-11eb-0a22-b156875c14b5
# ╟─441ee2a2-8435-11eb-24e1-f7f478775435
# ╠═441ee2a2-8435-11eb-1afd-07afff530813
# ╟─441ee2a2-8435-11eb-095b-bf3d9e9fdd23
# ╠═441ee2a2-8435-11eb-382b-5dbf20470438
# ╟─441ee2a2-8435-11eb-21fc-f559922c7a91
# ╠═441ee2a2-8435-11eb-3980-016370e9aff4
# ╟─441ee2a2-8435-11eb-3789-695b77bad400
# ╠═441ee2a2-8435-11eb-219a-2fbc7736fd4c
# ╟─441ee2a2-8435-11eb-0b1d-1955279de28d
# ╠═441ee2a2-8435-11eb-28b9-5bed72ffb0ce
# ╟─441ee2a2-8435-11eb-3f28-5d8bc61c4265
# ╠═441ee2a2-8435-11eb-1970-bf00b5ebea65
# ╟─441ee2a2-8435-11eb-3b8b-3da2c66e506a
# ╠═441ee2a2-8435-11eb-138d-dbb986dc32bc
# ╟─441ee2a2-8435-11eb-22d3-4d283cd5ee98
# ╠═441ee2a2-8435-11eb-1d59-bf26ad2ef1f5
# ╟─441ee2a2-8435-11eb-362f-7f26add2390a
# ╠═441ee2a2-8435-11eb-2473-3f979efcb236
# ╟─441ee2a2-8435-11eb-0743-15935c3510bf
# ╠═441ee2a2-8435-11eb-01b0-75e98ded21fb
# ╟─441ee2a2-8435-11eb-2052-59fa4a67baea
# ╠═441ee2a2-8435-11eb-0c83-87169d3f3451
# ╟─441ee2a2-8435-11eb-1577-59a3524d30e6
# ╠═441ee2a2-8435-11eb-2c98-1db9f963e257
# ╟─441ee2a2-8435-11eb-3a1b-b322807b3424
# ╠═441ee2a2-8435-11eb-393a-b30f6be0b9bc
# ╟─441ee2a2-8435-11eb-0f31-1fbf9841cddd
# ╠═441ee2a2-8435-11eb-1a53-71cd3be339e8
# ╟─441ee2a2-8435-11eb-2cd2-e5d0e4c18adc
# ╠═441ee2a2-8435-11eb-2021-73cd51874872
# ╟─441ee2a2-8435-11eb-3d3b-7ffed2a8a9ba
# ╠═441ee2a2-8435-11eb-2520-4b08154d8321
# ╠═44212c90-8435-11eb-3918-6fb6a1b06d76
# ╟─44212c90-8435-11eb-0982-35841fefd564
# ╠═44212c90-8435-11eb-2db9-8d35bf4c7d97
# ╟─44212c90-8435-11eb-261d-9569a0daaed9
# ╠═44212c90-8435-11eb-2828-917469e24b10
# ╟─44212c90-8435-11eb-2912-19733cce522e
# ╠═44212c90-8435-11eb-2e79-b7e46a37c028
# ╟─44212c90-8435-11eb-0214-839af99d6348
# ╠═44212c90-8435-11eb-0e9e-31917ee3bca7
# ╟─44212c90-8435-11eb-39ec-cdc09a0a65d1
# ╠═44212c90-8435-11eb-23fc-dfc8fefacc42
# ╟─44212c90-8435-11eb-2875-1fe75f6ae15f
# ╠═44212c90-8435-11eb-2c4a-e740a1f3cfab
# ╟─44212c90-8435-11eb-16e8-a5b0623b1717
# ╠═44212c90-8435-11eb-0971-8f50d75cb779
# ╟─44212c90-8435-11eb-2b0a-9b3a991627d4
# ╠═44212c90-8435-11eb-1598-6d2f2c1f0bc5
# ╟─44212c90-8435-11eb-35cf-fb4cc3414077
# ╠═44212c90-8435-11eb-21ff-0b0508bc266b
# ╟─44212c90-8435-11eb-3df7-c9b104af49a9
# ╠═44212c90-8435-11eb-2c64-a58b5ab4e8ac
# ╟─44212c90-8435-11eb-24d7-fb4cd17c0f7a
# ╠═44212c90-8435-11eb-19eb-8f4d4a77ca7a
# ╟─44212c90-8435-11eb-3456-cbd6f3c02839
# ╠═44212c90-8435-11eb-02d1-b1a2037dd91e
# ╟─44212c90-8435-11eb-16e4-ef201aafbf6c
# ╠═44212c90-8435-11eb-29c8-65d0e8f52e2a
# ╟─44212c90-8435-11eb-3baf-0513d156eb1a
# ╠═44212c90-8435-11eb-15df-e93dec2d7580
# ╟─44212c90-8435-11eb-3905-a716d617eb3d
# ╠═44212c90-8435-11eb-3dc3-57a5fd9d5fec
# ╟─44212c90-8435-11eb-1614-11b13b8130ff
# ╠═44212c90-8435-11eb-1087-bd7ab57082ad
# ╟─44212c90-8435-11eb-0170-95f0340a18a5
# ╠═44212c90-8435-11eb-252b-b1e7dd9c18b2
# ╟─44212c90-8435-11eb-0f65-7dca40d7fe67
# ╠═44212c90-8435-11eb-3a9f-2f9864a7e194
# ╟─44212c90-8435-11eb-170a-1f3158428056
# ╠═44212c90-8435-11eb-30d5-2fcb5debe38a
# ╟─44212c90-8435-11eb-3d60-79b9669c04a5
# ╠═44212c90-8435-11eb-276f-61b5312c3700
# ╟─44212c90-8435-11eb-1f22-4ff67e89bbe3
# ╠═44212c90-8435-11eb-36c8-253c5c33226d
# ╟─44212c90-8435-11eb-2c21-e54ab4de6eed
# ╠═44212c90-8435-11eb-16a5-2d9d5e10c037
# ╟─44212c90-8435-11eb-3d8b-890137e46eed
# ╠═44212c90-8435-11eb-07bb-b9994d4b4a31
# ╟─44212c90-8435-11eb-3ec5-1b2ff53a4d1b
# ╠═44212c90-8435-11eb-0577-71347b008ef5
# ╟─44212c90-8435-11eb-074f-4113aa700feb
# ╠═44212c90-8435-11eb-309e-2bd9cd86efe1
# ╠═44212c90-8435-11eb-3fdf-e9445d6c552e
# ╟─44212c90-8435-11eb-27e2-57b1de17dcee
# ╠═44212c90-8435-11eb-29cf-edb59940be3f
# ╟─44212c90-8435-11eb-0b5c-4756706a5591
# ╠═44212c90-8435-11eb-32fc-8365fa9c013b
# ╟─44212c90-8435-11eb-2357-35dd0af2083e
# ╠═44212c90-8435-11eb-379c-8d6b95ee011b
# ╟─44212c90-8435-11eb-3c7a-fdd3b37a53d0
# ╠═44212c90-8435-11eb-0e97-8fcda40ea9b5
# ╟─44212c90-8435-11eb-113a-bd37bef9468b
# ╠═44212c90-8435-11eb-196d-91f5790245e8
# ╟─44212c90-8435-11eb-0207-3542d33e3ab8
# ╠═44212c90-8435-11eb-0f20-5725f118358f
# ╟─44212c90-8435-11eb-3fb4-e1176df31f87
# ╠═44212c90-8435-11eb-2b3b-41bd702346a1
# ╟─44212c90-8435-11eb-32cd-a3c0afc99006
# ╠═44212c90-8435-11eb-186c-b380b83cebaf
# ╟─44212c90-8435-11eb-2ef9-85e9809a81e2
# ╠═44212c90-8435-11eb-069c-779f44cb188c
# ╟─44212c90-8435-11eb-1c0e-5d33203277f6
# ╠═44212c90-8435-11eb-2f94-5b22e2e11d35
# ╟─44212c90-8435-11eb-02f9-0bfe1d083d34
# ╠═44212c90-8435-11eb-1ce5-ad542542c1b1
# ╟─44212c90-8435-11eb-3842-cd3ae077dcae
# ╠═44212c90-8435-11eb-2596-7b2c3d8d5fbd
# ╟─44212c90-8435-11eb-14a3-07fc0c50b2e4
# ╠═44212c90-8435-11eb-34af-8f1a0c436543
# ╟─44212c90-8435-11eb-3c88-67e8898a5998
# ╠═44212c90-8435-11eb-12c8-61708d7a6159
# ╟─44212c90-8435-11eb-2e40-fb055b75751f
# ╠═44212c90-8435-11eb-288d-439f684354e3
# ╟─44212c90-8435-11eb-16da-15be4aab828c
# ╠═44212c90-8435-11eb-02e7-8d96b0260917
# ╟─44212c90-8435-11eb-1b1e-27657b30053f
# ╠═44212c90-8435-11eb-1152-53111c2e9f1b
# ╟─44212c90-8435-11eb-3d90-09c6bbd34518
# ╠═44212c90-8435-11eb-2028-61285347371c
# ╟─44212c90-8435-11eb-0d84-274cde3a7174
# ╠═44212c90-8435-11eb-2128-7f32ba9b6c66
# ╟─44212c90-8435-11eb-00a3-6b45332fa845
# ╠═44212c90-8435-11eb-18e8-79674f49563d
# ╟─44212c90-8435-11eb-1622-015ae15b8ca1
# ╠═44212c90-8435-11eb-1159-7be7eeb3af59
# ╟─44212c90-8435-11eb-1903-45ec69924fdc
# ╠═44212c90-8435-11eb-1173-a11cfba99e58
# ╟─44212c90-8435-11eb-13af-3937eb2aa8bd
# ╠═44212c90-8435-11eb-1f81-5b7a412c4896
# ╟─44212c90-8435-11eb-2ffc-dd2edb7d3e4f
# ╠═44212c90-8435-11eb-13ee-f930e22ba0d1
# ╟─44212c90-8435-11eb-196b-672fda0550d4
# ╠═44212c90-8435-11eb-14d5-ab5d2863ed1a
# ╠═44237680-8435-11eb-135b-19327a245789
# ╟─44237680-8435-11eb-3bcd-afb42e469ae3
# ╠═44237680-8435-11eb-0f2b-f12db7136caf
# ╟─44237680-8435-11eb-13f4-858eb6852fc9
# ╠═44237680-8435-11eb-1e80-51fca3d68a98
# ╟─44237680-8435-11eb-3e44-495ef5f74b0e
# ╠═44237680-8435-11eb-2848-bb1111e25363
# ╟─442487f0-8435-11eb-20b2-5727a3aa0023
# ╠═442487f0-8435-11eb-0e96-59bfb1990dba
# ╟─442487f0-8435-11eb-2f23-6b2d9596fd45
# ╠═442487f0-8435-11eb-15d3-2ba1ebf8ddac
# ╟─442487f0-8435-11eb-064c-fd2705b3107f
# ╠═442487f0-8435-11eb-39d2-8de8cb6757e2
# ╟─442487f0-8435-11eb-26d2-d39743799f85
# ╠═442487f0-8435-11eb-3e7a-3bbcded31a41
# ╟─442487f0-8435-11eb-2dc0-09a1dad5a77f
# ╠═442487f0-8435-11eb-1f56-e9b0dba1cf41
# ╟─442487f0-8435-11eb-3561-f9c16dead153
# ╠═442487f0-8435-11eb-0675-e98e0e1b5150
# ╟─442487f0-8435-11eb-0c8f-d526eca21eec
# ╠═442487f0-8435-11eb-2c08-f31eb883d147
# ╟─442487f0-8435-11eb-1f0a-75f4e1bc175b
# ╠═442487f0-8435-11eb-0bc4-c5db4ae9a010
# ╟─442487f0-8435-11eb-156d-e567ef033dc9
# ╠═442487f0-8435-11eb-2dd6-83e052ecdc6e
# ╟─442487f0-8435-11eb-3358-1ba0297cdde3
# ╠═442487f0-8435-11eb-26b5-07b263e19a35
# ╟─442487f0-8435-11eb-198c-4f3571827cf3
# ╠═442487f0-8435-11eb-023e-154d3913e6fd
# ╟─442487f0-8435-11eb-37e0-a3b4e1b6db38
# ╠═442487f0-8435-11eb-0860-97994c8f4bff
# ╟─442487f0-8435-11eb-11a4-153b49c99f3b
# ╠═442487f0-8435-11eb-2e5d-33530b49f906
# ╟─442487f0-8435-11eb-3699-0591d3e325c7
# ╠═442487f0-8435-11eb-0aef-8d914e0b52cc
# ╟─442487f0-8435-11eb-0681-8dca8a272fe6
# ╠═442487f0-8435-11eb-23c0-8da908bcd7f4
# ╟─442487f0-8435-11eb-0601-a53676b64119
# ╠═442487f0-8435-11eb-2c1e-db16fa4d5bb5
# ╟─442487f0-8435-11eb-1bca-e119a24c410c
# ╠═442487f0-8435-11eb-061d-6566ec0a6f45
# ╟─442487f0-8435-11eb-14a6-9dae49adaa95
# ╠═442487f0-8435-11eb-268d-29357b327335
# ╟─442487f0-8435-11eb-0c71-a1f418d12248
# ╠═442487f0-8435-11eb-3df5-3f0c97e2d6c5
# ╟─442487f0-8435-11eb-0ad9-e372967a97ff
# ╠═442487f0-8435-11eb-3617-2b065bd5b48a
# ╟─442487f0-8435-11eb-0edc-9f1d7b075086
# ╠═442487f0-8435-11eb-108c-45c64002788c
# ╟─442487f0-8435-11eb-07ba-f72fda7f1a17
# ╠═442487f0-8435-11eb-3e3b-15ee0d19b297
# ╠═4426d1e0-8435-11eb-295f-11617958fdd1
# ╟─4426d1e0-8435-11eb-2bf1-a5b6fd177a0f
# ╠═4426d1e0-8435-11eb-3077-0fd9c58e8801
# ╟─4426d1e0-8435-11eb-0d70-51d8d7766ce3
# ╠═4426d1e0-8435-11eb-1af5-2f9fee4b538e
# ╟─4426d1e0-8435-11eb-1de7-5b9a0d5a6f66
# ╠═4426d1e0-8435-11eb-0b08-65580e0d4bd6
# ╟─4426d1e0-8435-11eb-1abd-a59beaaa7103
# ╠═4426d1e0-8435-11eb-3270-a7ffd2be61f9
# ╟─4426d1e0-8435-11eb-1c59-29a0ccf5975c
# ╠═4426d1e0-8435-11eb-05fb-5fc57cb3f191
# ╟─4426d1e0-8435-11eb-09da-e5f404dc7cc6
# ╠═4426d1e0-8435-11eb-15e3-cfadf7eb7f97
# ╟─4426d1e0-8435-11eb-1b7f-5d9d1cc214c1
# ╠═4426d1e0-8435-11eb-0daa-677c4a0c2324
# ╟─4426d1e0-8435-11eb-2341-516a964c3b68
# ╠═4426d1e0-8435-11eb-1987-af8155f3bfbc
# ╟─4426d1e0-8435-11eb-2de8-e59f25c1adfb
# ╠═4426d1e0-8435-11eb-1fb5-cd68a8c8b420
# ╟─4426d1e0-8435-11eb-2f5f-a34c8da67d76
# ╠═4426d1e0-8435-11eb-3980-ed1f1e17b6a4
# ╟─4426d1e0-8435-11eb-1396-93bdcbe913ca
# ╠═4426d1e0-8435-11eb-019a-972bd607bd5b
# ╟─4426d1e0-8435-11eb-3c71-03ad1dacf268
# ╠═4426d1e0-8435-11eb-0cff-7b09fd02771e
# ╟─4426d1e0-8435-11eb-31c1-1f8806e6b0ef
# ╠═4426d1e0-8435-11eb-17fa-b9d2ba803798
# ╟─4426d1e0-8435-11eb-18ae-39dfd6753876
# ╠═4426d1e0-8435-11eb-08b0-45abb7a59869
# ╟─4426d1e0-8435-11eb-35c4-47f0c4414a34
# ╠═4426d1e0-8435-11eb-15e4-0d414f31c707
# ╟─4426d1e0-8435-11eb-01be-4f8e59d1e4f8
# ╠═4426d1e0-8435-11eb-2952-431f10cca613
# ╟─4426d1e0-8435-11eb-171c-d7d6fd49ab84
# ╠═4426d1e0-8435-11eb-2f51-f5921255b315
# ╟─4426d1e0-8435-11eb-1d65-193bc1f20055
# ╠═4426d1e0-8435-11eb-0d29-a1935534d50f
# ╟─4426d1e0-8435-11eb-29d1-750072666316
# ╠═4426d1e0-8435-11eb-1f92-4976c6eca60b
# ╟─4426d1e0-8435-11eb-08ca-272522e283a1
# ╠═4426d1e0-8435-11eb-2346-6da75cd814c5
# ╟─4426d1e0-8435-11eb-085d-75cc4de7721e
# ╠═4426d1e0-8435-11eb-36b7-cf560af5e929
# ╟─4426d1e0-8435-11eb-1b66-01a4d5613291
# ╠═4426d1e0-8435-11eb-3285-2bdf3fa8c613
# ╟─4426d1e0-8435-11eb-2fd4-57eb8932040b
# ╠═4426d1e0-8435-11eb-3e47-c7a33a3e184c
# ╟─4426d1e0-8435-11eb-1940-ef26366d214a
# ╠═4426d1e0-8435-11eb-18e7-7903865e636d
# ╟─4426d1e0-8435-11eb-19ae-dbe483119371
# ╠═4426d1e0-8435-11eb-14cf-87c757665dba