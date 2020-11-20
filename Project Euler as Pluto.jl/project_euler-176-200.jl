### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22df1410-2b5d-11eb-2197-4566fc4e60e9
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22df1410-2b5d-11eb-230d-b1e602807296
html"""
<h2>Problem 176: Right-angled triangles that share a cathetus</h2>
<p>The four right-angled triangles with sides (9,12,15), (12,16,20), (5,12,13) and (12,35,37) all have one of the shorter sides (catheti) equal to 12. It can be shown that no other integer sided right-angled triangle exists with one of the catheti equal to 12.</p>
<p>Find the smallest integer that can be the length of a cathetus of exactly 47547 different integer sided right-angled triangles.</p>
"""

# ╔═╡ 22df1410-2b5d-11eb-0a03-459fbb3d03bf
begin
    submit_answer(nothing; prob_num=176)
end

# ╔═╡ 22df1410-2b5d-11eb-18f5-852e00dd1b68
html"""
<h2>Problem 177: Integer angled Quadrilaterals</h2>
<p>Let ABCD be a convex quadrilateral, with diagonals AC and BD. At each vertex the diagonal makes an angle with each of the two sides, creating eight corner angles.</p>
<p style="text-align:center;"><img src="project/images/p177_quad.gif" class="dark_img" alt="" /></p>
<p>For example, at vertex A, the two angles are CAD, CAB.</p>
<p>We call such a quadrilateral for which all eight corner angles have integer values when measured in degrees an "integer angled quadrilateral". An example of an integer angled quadrilateral is a square, where all eight corner angles are 45°. Another example is given by DAC = 20°, BAC = 60°, ABD = 50°, CBD = 30°, BCA = 40°, DCA = 30°, CDB = 80°, ADB = 50°.</p>
<p>What is the total number of non-similar integer angled quadrilaterals?</p>
<p>Note: In your calculations you may assume that a calculated angle is integral if it is within a tolerance of 10<sup>-9</sup> of an integer value.</p>
"""

# ╔═╡ 22df1410-2b5d-11eb-15bb-9bec78dcfc9a
begin
    submit_answer(nothing; prob_num=177)
end

# ╔═╡ 22df1410-2b5d-11eb-0a75-1df6ccc35627
html"""
<h2>Problem 178: Step Numbers</h2>
Consider the number 45656. <br />
It can be seen that each pair of consecutive digits of 45656 has a difference of one.<br />
A number for which every pair of consecutive digits has a difference of one is called a step number.<br />
A pandigital number  contains every decimal digit from 0 to 9 at least once.<br />

How many pandigital step numbers less than 10<sup>40</sup> are there?
"""

# ╔═╡ 22df1410-2b5d-11eb-1d3b-d56e96735c11
begin
    submit_answer(nothing; prob_num=178)
end

# ╔═╡ 22df1410-2b5d-11eb-3e9d-6f98c9743b6a
html"""
<h2>Problem 179: Consecutive positive divisors</h2>
<p>Find the number of integers 1 &lt; n &lt; 10<sup>7</sup>, for which <var>n</var> and <var>n</var> + 1 have the same number of positive divisors. For example, 14 has the positive divisors 1, 2, 7, 14 while 15 has 1, 3, 5, 15.</p>
"""

# ╔═╡ 22df1410-2b5d-11eb-34e0-fb612f6f7b91
begin
    submit_answer(nothing; prob_num=179)
end

# ╔═╡ 22df1410-2b5d-11eb-3b5c-bfc6ab314256
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

# ╔═╡ 22df1410-2b5d-11eb-0c03-0b51d97e4d1b
begin
    submit_answer(nothing; prob_num=180)
end

# ╔═╡ 22df1410-2b5d-11eb-01cb-617bb2d0cd19
html"""
<h2>Problem 181: Investigating in how many ways objects of two different colours can be grouped</h2>
<p>Having three black objects B and one white object W they can be grouped in 7 ways like this:</p>
<table cellpadding="10" align="center"><tr><td>(BBBW)</td><td>(B,BBW)</td><td>(B,B,BW)</td><td>(B,B,B,W)</td>
<td>(B,BB,W)</td><td>(BBB,W)</td><td>(BB,BW)</td>
</tr></table><p>In how many ways can sixty black objects B and forty white objects W be  thus grouped?</p>
"""

# ╔═╡ 22df1410-2b5d-11eb-35e3-4b6240756705
begin
    submit_answer(nothing; prob_num=181)
end

# ╔═╡ 22df1410-2b5d-11eb-3114-9343e3b33b13
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

# ╔═╡ 22df1410-2b5d-11eb-0833-35df467f1021
begin
    submit_answer(nothing; prob_num=182)
end

# ╔═╡ 22df1410-2b5d-11eb-34b2-5925ad970bda
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

# ╔═╡ 22df1410-2b5d-11eb-1628-2f788feea8a2
begin
    submit_answer(nothing; prob_num=183)
end

# ╔═╡ 22df3b20-2b5d-11eb-27ca-d9cefbc36036
html"""
<h2>Problem 184: Triangles containing the origin</h2>
<p>Consider the set <var>I<sub>r</sub></var> of points (<var>x</var>,<var>y</var>) with integer co-ordinates in the interior of the circle with radius <var>r</var>, centered at the origin, i.e. <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> &lt; <var>r</var><sup>2</sup>.</p>
<p>For a radius of 2, <var>I</var><sub>2</sub> contains the nine points (0,0), (1,0), (1,1), (0,1), (-1,1), (-1,0), (-1,-1), (0,-1) and (1,-1). There are eight triangles having all three vertices in <var>I</var><sub>2</sub> which contain the origin in the interior. Two of them are shown below, the others are obtained from these by rotation.</p>
<p class="center"><img src="project/images/p184.gif" class="dark_img" alt="" /></p>

<p>For a radius of 3, there are 360 triangles containing the origin in the interior and having all vertices in <var>I</var><sub>3</sub> and for <var>I</var><sub>5</sub> the number is 10600.</p>

<p>How many triangles are there containing the origin in the interior and having all three vertices in <var>I</var><sub>105</sub>?</p>
"""

# ╔═╡ 22df3b20-2b5d-11eb-25c7-f505101c397a
begin
    submit_answer(nothing; prob_num=184)
end

# ╔═╡ 22df3b20-2b5d-11eb-0868-7db30340d584
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

# ╔═╡ 22df3b20-2b5d-11eb-338c-a92fe2a930f0
begin
    submit_answer(nothing; prob_num=185)
end

# ╔═╡ 22df3b20-2b5d-11eb-2632-cb7c01dddf1f
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

# ╔═╡ 22df3b20-2b5d-11eb-1f5f-7fb83ce02077
begin
    submit_answer(nothing; prob_num=186)
end

# ╔═╡ 22df3b20-2b5d-11eb-1b77-01bac1c17e77
html"""
<h2>Problem 187: Semiprimes</h2>
<p>A composite is a number containing at least two prime factors. For example, 15 = 3 × 5; 9 = 3 × 3; 12 = 2 × 2 × 3.</p>

<p>There are ten composites below thirty containing precisely two, not necessarily distinct, prime factors:
4, 6, 9, 10, 14, 15, 21, 22, 25, 26.</p>

<p>How many composite integers, <var>n</var> &lt; 10<sup>8</sup>, have precisely two, not necessarily distinct, prime factors?</p>
"""

# ╔═╡ 22df3b20-2b5d-11eb-1f2b-d5e81a874851
begin
    submit_answer(nothing; prob_num=187)
end

# ╔═╡ 22df3b20-2b5d-11eb-3cbe-67d24ec44e4d
html"""
<h2>Problem 188: The hyperexponentiation of a number</h2>
<p>The <span style="font-style:italic;">hyperexponentiation</span> or <span style="font-style:italic;">tetration</span> of a number a by a positive integer b, denoted by a↑↑b or <sup>b</sup>a, is recursively defined by:<br /><br />
a↑↑1 = a,<br />
a↑↑(k+1) = a<sup>(a↑↑k)</sup>.</p>
<p>
Thus we have e.g. 3↑↑2 = 3<sup>3</sup> = 27, hence 3↑↑3 = 3<sup>27</sup> = 7625597484987 and 3↑↑4 is roughly 10<sup>3.6383346400240996*10^12</sup>.</p>
<p>Find the last 8 digits of 1777↑↑1855.</p>
"""

# ╔═╡ 22df3b20-2b5d-11eb-2f75-d3d063748735
begin
    submit_answer(nothing; prob_num=188)
end

# ╔═╡ 22df3b20-2b5d-11eb-30b9-772856e4674b
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

# ╔═╡ 22df3b20-2b5d-11eb-385a-09bbe20f2cbf
begin
    submit_answer(nothing; prob_num=189)
end

# ╔═╡ 22df3b20-2b5d-11eb-05e9-256beb06445e
html"""
<h2>Problem 190: Maximising a weighted product</h2>
<p>Let S<sub>m</sub> = (x<sub>1</sub>, x<sub>2</sub>, ... , x<sub>m</sub>) be the m-tuple of positive real numbers with x<sub>1</sub> + x<sub>2</sub> + ... + x<sub>m</sub> = m for which P<sub>m</sub> = x<sub>1</sub> * x<sub>2</sub><sup>2</sup> * ... * x<sub>m</sub><sup>m</sup> is maximised.</p>

<p>For example, it can be verified that [P<sub>10</sub>] = 4112 ([ ] is the integer part function).</p>

<p>Find Σ[P<sub>m</sub>] for 2 ≤ m ≤ 15.</p>
"""

# ╔═╡ 22df3b20-2b5d-11eb-1e15-971da0e2453f
begin
    submit_answer(nothing; prob_num=190)
end

# ╔═╡ 22df3b20-2b5d-11eb-2513-2bdcc33c3723
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

# ╔═╡ 22df3b20-2b5d-11eb-3bda-dd875c5938a2
begin
    submit_answer(nothing; prob_num=191)
end

# ╔═╡ 22df3b20-2b5d-11eb-2f3f-af88b73e0c3a
html"""
<h2>Problem 192: Best Approximations</h2>
<p>Let $x$ be a real number.<br />
A <b>best approximation</b> to $x$ for the <b>denominator bound</b> $d$ is a rational number $\frac r s $  in<b> reduced form</b>, with $s \le d$, such that any rational number which is closer to $x$ than $\frac r s$ has a denominator larger than $d$:</p>

<div class="center"> $|\frac p q -x | &lt; |\frac r s -x| \Rightarrow q &gt; d$
</div>

<p>For example, the best approximation to $\sqrt {13}$ for the denominator bound 20 is $\frac {18} 5$ and the best approximation to $\sqrt {13}$ for the denominator bound 30 is $\frac {101}{28}$.</p>

<p>Find the sum of all denominators of the best approximations to $\sqrt n$ for the denominator bound $10^{12}$, where $n$ is not a perfect square and $ 1 &lt; n \le 100000$. </p>
"""

# ╔═╡ 22df3b20-2b5d-11eb-1002-5de37df0c625
begin
    submit_answer(nothing; prob_num=192)
end

# ╔═╡ 22df6230-2b5d-11eb-1a15-4d30ab3a6c50
html"""
<h2>Problem 193: Squarefree Numbers</h2>
<p>A positive integer <var>n</var> is called squarefree, if no square of a prime divides <var>n</var>, thus 1, 2, 3, 5, 6, 7, 10, 11 are squarefree, but not 4, 8, 9, 12.</p>

<p>How many squarefree numbers are there below 2<sup>50</sup>?</p>
"""

# ╔═╡ 22df6230-2b5d-11eb-05d6-390c2b87c115
begin
    submit_answer(nothing; prob_num=193)
end

# ╔═╡ 22df6230-2b5d-11eb-2365-432479aef901
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

# ╔═╡ 22df6230-2b5d-11eb-25d0-9de9bdbf72c1
begin
    submit_answer(nothing; prob_num=194)
end

# ╔═╡ 22df6230-2b5d-11eb-1a23-d5d0355ccae7
html"""
<h2>Problem 195: Inscribed circles of triangles with one angle of 60 degrees</h2>
<p>Let's call an integer sided triangle with exactly one angle of 60 degrees a 60-degree triangle.<br />
Let <var>r</var> be the radius of the inscribed circle of such a 60-degree triangle.</p>
<p>There are 1234 60-degree triangles for which <var>r</var> ≤ 100.
<br />Let T(<var>n</var>) be the number of 60-degree triangles for which <var>r</var> ≤ <var>n</var>, so<br />
 T(100) = 1234,  T(1000) = 22767, and  T(10000) = 359912.</p>

<p>Find T(1053779).</p>
"""

# ╔═╡ 22df6230-2b5d-11eb-3486-ff6571c252f3
begin
    submit_answer(nothing; prob_num=195)
end

# ╔═╡ 22df6230-2b5d-11eb-3b5d-dba3adc0424d
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

# ╔═╡ 22df6230-2b5d-11eb-361f-012fa621a848
begin
    submit_answer(nothing; prob_num=196)
end

# ╔═╡ 22df6230-2b5d-11eb-06ed-f75d73af1e20
html"""
<h2>Problem 197: Investigating the behaviour of a recursively defined sequence</h2>
<p>Given is the function <var>f</var>(<var>x</var>) = ⌊2<sup>30.403243784-<var>x</var><sup>2</sup></sup>⌋ × 10<sup>-9</sup> ( ⌊ ⌋ is the floor-function),<br />
the sequence <var>u<sub>n</sub></var> is defined by <var>u</var><sub>0</sub> = -1 and <var>u</var><sub><var>n</var>+1</sub> = <var>f</var>(<var>u<sub>n</sub></var>).</p>

<p>Find <var>u<sub>n</sub></var> + <var>u</var><sub><var>n</var>+1</sub> for <var>n</var> = 10<sup>12</sup>.<br />
Give your answer with 9 digits after the decimal point.</p>
"""

# ╔═╡ 22df6230-2b5d-11eb-2fa8-e71fddd87269
begin
    submit_answer(nothing; prob_num=197)
end

# ╔═╡ 22df6230-2b5d-11eb-184c-05b841cf650a
html"""
<h2>Problem 198: Ambiguous Numbers</h2>
<p>A best approximation to a real number $x$ for the denominator bound $d$ is a rational number $\frac r s$ (in reduced form) with $s \le d$, so that any rational number $\frac p q$ which is closer to $x$ than $\frac r s$ has $q &gt; d$.</p>

<p>Usually the best approximation to a real number is uniquely determined for all denominator bounds. However, there are some exceptions, e.g. $\frac 9 {40}$ has the two best approximations $\frac 1 4$ and $\frac 1 5$ for the denominator bound $6$.
We shall call a real number $x$ <i>ambiguous</i>, if there is at least one denominator bound for which $x$ possesses two best approximations. Clearly, an ambiguous number is necessarily rational.</p>

<p>How many ambiguous numbers $x=\frac p q, 0 &lt; x &lt; \frac 1 {100}$, are there whose denominator $q$ does not exceed $10^8$?</p>
"""

# ╔═╡ 22df6230-2b5d-11eb-3f73-83d97a98271e
begin
    submit_answer(nothing; prob_num=198)
end

# ╔═╡ 22df8940-2b5d-11eb-2542-df8ba5107b34
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

# ╔═╡ 22df8940-2b5d-11eb-300e-c59153af2e7b
begin
    submit_answer(nothing; prob_num=199)
end

# ╔═╡ 22df8940-2b5d-11eb-2433-25dee9c66d45
html"""
<h2>Problem 200: Find the 200th prime-proof sqube containing the contiguous sub-string "200"</h2>
<p>We shall define a sqube to be a number of the form, <var>p</var><sup>2</sup><var>q</var><sup>3</sup>, where <var>p</var> and <var>q</var> are distinct primes.<br />
For example, 200 = 5<sup>2</sup>2<sup>3</sup> or 120072949 = 23<sup>2</sup>61<sup>3</sup>.</p>

<p>The first five squbes are 72, 108, 200, 392, and 500.</p>

<p>Interestingly, 200 is also the first number for which you cannot change any single digit to make a prime; we shall call such numbers, prime-proof. The next prime-proof sqube which contains the contiguous sub-string "200" is 1992008.</p>

<p>Find the 200th prime-proof sqube containing the contiguous sub-string "200".</p>
"""

# ╔═╡ 22df8940-2b5d-11eb-0c6e-57c847695159
begin
    submit_answer(nothing; prob_num=200)
end

# ╔═╡ Cell order:
# ╠═22d63a70-2b5d-11eb-2e8b-6196c236bb71
# ╟─22d63a70-2b5d-11eb-1913-ab2b23661965
# ╠═22d63a70-2b5d-11eb-0198-5d9ac07245bf
# ╟─22d63a70-2b5d-11eb-2d5f-1ffbf1a3b055
# ╠═22d63a70-2b5d-11eb-3902-6bb8565913a8
# ╟─22d63a70-2b5d-11eb-3ec5-1fdc1c354ee6
# ╠═22d63a70-2b5d-11eb-2c9c-d5b39f9c1433
# ╟─22d63a70-2b5d-11eb-03d1-458e51340ac1
# ╠═22d63a70-2b5d-11eb-24f1-35a3c5a2eca3
# ╟─22d63a70-2b5d-11eb-37d4-4506a74fe1cd
# ╠═22d63a70-2b5d-11eb-3742-378d98971561
# ╟─22d63a70-2b5d-11eb-322f-870a60d45ebd
# ╠═22d63a70-2b5d-11eb-0de3-fde56aea3ece
# ╟─22d63a70-2b5d-11eb-14df-1592b95f5ec3
# ╠═22d63a70-2b5d-11eb-2600-93c4c715c39f
# ╟─22d63a70-2b5d-11eb-10bf-6b21e93c1e04
# ╠═22d63a70-2b5d-11eb-36dd-23b7e6296e0b
# ╟─22d63a70-2b5d-11eb-27d9-f3beecfbb997
# ╠═22d63a70-2b5d-11eb-1404-0f40d76c150b
# ╟─22d63a70-2b5d-11eb-1b96-a9e051b9d357
# ╠═22d63a70-2b5d-11eb-1655-c13d647bdddb
# ╟─22d63a70-2b5d-11eb-2170-21b6cb46ff99
# ╠═22d63a70-2b5d-11eb-2551-153c259280a1
# ╟─22d66180-2b5d-11eb-2a1e-071a3f4af3f1
# ╠═22d66180-2b5d-11eb-28f0-119daeb4e6a7
# ╟─22d66180-2b5d-11eb-364d-a988509f2cdf
# ╠═22d66180-2b5d-11eb-3bc9-071156392d00
# ╟─22d66180-2b5d-11eb-22b2-81ee1b00fc1c
# ╠═22d66180-2b5d-11eb-0899-23156623ac08
# ╟─22d66180-2b5d-11eb-3dc4-33a3df504ca7
# ╠═22d66180-2b5d-11eb-31da-8b0c39df7978
# ╟─22d66180-2b5d-11eb-3e4f-c3e0bb17306e
# ╠═22d66180-2b5d-11eb-33a6-352555a4aad9
# ╟─22d66180-2b5d-11eb-31f5-83848d79f423
# ╠═22d66180-2b5d-11eb-201f-f17a35a144d7
# ╟─22d66180-2b5d-11eb-3a1a-f3959830cc8e
# ╠═22d66180-2b5d-11eb-25ed-bdf6de2fccd2
# ╟─22d66180-2b5d-11eb-0a15-934c213e0f22
# ╠═22d66180-2b5d-11eb-0bd9-4b1ef9fe15b9
# ╟─22d66180-2b5d-11eb-37cc-b1292c6669cc
# ╠═22d66180-2b5d-11eb-0c01-1bcfe2f6a159
# ╟─22d66180-2b5d-11eb-29cf-dbe72444dfda
# ╠═22d66180-2b5d-11eb-3b38-8978884b05e9
# ╟─22d66180-2b5d-11eb-2c2e-e1919d6036a9
# ╠═22d66180-2b5d-11eb-22c0-4ddd0999aa85
# ╟─22d66180-2b5d-11eb-2821-99663d0c2665
# ╠═22d66180-2b5d-11eb-2148-8d9b03ddd307
# ╟─22d66180-2b5d-11eb-0308-0570fec6a43c
# ╠═22d66180-2b5d-11eb-272a-c1448f148b65
# ╟─22d66180-2b5d-11eb-15db-8b916e041535
# ╠═22d66180-2b5d-11eb-0a8d-05c85b95d392
# ╠═22d6afa0-2b5d-11eb-0272-0962421e9959
# ╟─22d6afa0-2b5d-11eb-260b-0f0de64ed159
# ╠═22d6afa0-2b5d-11eb-2411-57e979080520
# ╟─22d6afa0-2b5d-11eb-29e6-e73353fecc00
# ╠═22d6afa0-2b5d-11eb-32bc-a5f693a49c7e
# ╟─22d6afa0-2b5d-11eb-3c6a-b5d9709205cd
# ╠═22d6afa0-2b5d-11eb-1e3d-45725d492bb0
# ╟─22d6afa0-2b5d-11eb-0be3-15b20a834d15
# ╠═22d6afa0-2b5d-11eb-0808-5bc161cbe348
# ╟─22d6afa0-2b5d-11eb-0a1f-d3610f3f580b
# ╠═22d6afa0-2b5d-11eb-1297-b5c34a2ddc57
# ╟─22d6afa0-2b5d-11eb-2daf-8bea4c059c13
# ╠═22d6afa0-2b5d-11eb-0173-39ce32ca6718
# ╟─22d6afa0-2b5d-11eb-2da4-ad2c5e67b437
# ╠═22d6afa0-2b5d-11eb-22a8-710b480a831a
# ╟─22d6afa0-2b5d-11eb-380e-65b543e5f52d
# ╠═22d6afa0-2b5d-11eb-1663-3509fd716957
# ╟─22d6afa0-2b5d-11eb-1d51-b79f72c2a285
# ╠═22d6afa0-2b5d-11eb-0792-6dac2475b581
# ╟─22d6d6b0-2b5d-11eb-1e82-29c01274408f
# ╠═22d6d6b0-2b5d-11eb-34dd-4132d6d9ad28
# ╟─22d6d6b0-2b5d-11eb-061b-353f778d93d3
# ╠═22d6d6b0-2b5d-11eb-0522-4b51fd545bdd
# ╟─22d6d6b0-2b5d-11eb-0318-7962338df662
# ╠═22d6d6b0-2b5d-11eb-04c4-f7d79194d579
# ╟─22d6d6b0-2b5d-11eb-35eb-b16ddd3fbb95
# ╠═22d6d6b0-2b5d-11eb-28cb-abe50c40952d
# ╟─22d6d6b0-2b5d-11eb-0afe-cb7b61785ec5
# ╠═22d6d6b0-2b5d-11eb-1f19-81201198f701
# ╟─22d6d6b0-2b5d-11eb-28fa-39ea046d3184
# ╠═22d6d6b0-2b5d-11eb-34f7-8f1b02c8455d
# ╟─22d6d6b0-2b5d-11eb-19c4-9bc20280aa09
# ╠═22d6d6b0-2b5d-11eb-1872-0d5c3a61ac32
# ╟─22d6d6b0-2b5d-11eb-1a6c-e9982826eca8
# ╠═22d6d6b0-2b5d-11eb-1dd1-89e3d9af45b5
# ╟─22d6d6b0-2b5d-11eb-1162-ad1958551780
# ╠═22d6d6b0-2b5d-11eb-37b4-ed0f5f8da844
# ╟─22d6d6b0-2b5d-11eb-3c9a-cd964c677a8a
# ╠═22d6d6b0-2b5d-11eb-1534-cf69a58a258b
# ╟─22d6d6b0-2b5d-11eb-031a-ab6d5c72efee
# ╠═22d6d6b0-2b5d-11eb-3446-db53d7c85482
# ╟─22d6d6b0-2b5d-11eb-2fb7-512dd9c6c02d
# ╠═22d6d6b0-2b5d-11eb-3f9a-6d6edae23019
# ╟─22d6d6b0-2b5d-11eb-39e0-4558f23ba553
# ╠═22d6d6b0-2b5d-11eb-19d8-85454cdb8be0
# ╟─22d6d6b0-2b5d-11eb-31ee-fb7d90f35834
# ╠═22d6d6b0-2b5d-11eb-3b8e-979de0ee226b
# ╟─22d6fdc2-2b5d-11eb-073e-394d7042e914
# ╠═22d6fdc2-2b5d-11eb-2c39-657173080699
# ╟─22d6fdc2-2b5d-11eb-1915-5367ccf405b8
# ╠═22d6fdc2-2b5d-11eb-3994-c3745f13a3bf
# ╠═22d74be0-2b5d-11eb-2b08-bbc84c05432a
# ╟─22d74be0-2b5d-11eb-3127-fba5802a7eac
# ╠═22d74be0-2b5d-11eb-1971-3b1f407589a4
# ╟─22d772ee-2b5d-11eb-2fc5-1fcff93afe36
# ╠═22d772ee-2b5d-11eb-3190-ef808230bb83
# ╟─22d772ee-2b5d-11eb-1dc8-bb7caa325b54
# ╠═22d772ee-2b5d-11eb-373e-abae5fd00727
# ╟─22d772ee-2b5d-11eb-044a-a795552eb729
# ╠═22d772ee-2b5d-11eb-2a5c-81ae0cdf493b
# ╟─22d772ee-2b5d-11eb-1c62-49edee1d8b63
# ╠═22d772ee-2b5d-11eb-1fe3-b7cb9ec93970
# ╟─22d772ee-2b5d-11eb-3d0e-13080802ca02
# ╠═22d772ee-2b5d-11eb-1727-2f1cda3aa831
# ╟─22d772ee-2b5d-11eb-25ee-ebeda2e0dd11
# ╠═22d772ee-2b5d-11eb-107f-e10031dcd71f
# ╟─22d772ee-2b5d-11eb-314a-d7abea3a9843
# ╠═22d772ee-2b5d-11eb-0cff-270d6b6fb4f4
# ╟─22d772ee-2b5d-11eb-2b83-2f6fd882fd5c
# ╠═22d772ee-2b5d-11eb-1619-a12325227235
# ╟─22d772ee-2b5d-11eb-0612-83c713223dfe
# ╠═22d772ee-2b5d-11eb-19af-adfc8acc72e9
# ╟─22d772ee-2b5d-11eb-3ec2-f910f528c500
# ╠═22d772ee-2b5d-11eb-277d-c96e72b7d6df
# ╟─22d772ee-2b5d-11eb-023f-11f5dacabddb
# ╠═22d772ee-2b5d-11eb-0ab0-b908af06c318
# ╟─22d79a00-2b5d-11eb-2cf1-991d5951761a
# ╠═22d79a00-2b5d-11eb-0a11-7b7a25922faf
# ╟─22d79a00-2b5d-11eb-0f00-f162c0ae8387
# ╠═22d79a00-2b5d-11eb-2053-e31c419aff9e
# ╟─22d79a00-2b5d-11eb-18bb-2783dd485a6c
# ╠═22d79a00-2b5d-11eb-0b32-33c05881c7dd
# ╟─22d79a00-2b5d-11eb-28e3-636c0a8bf7a6
# ╠═22d79a00-2b5d-11eb-3442-d973c8e57e86
# ╟─22d79a00-2b5d-11eb-39c4-a501c25e4750
# ╠═22d79a00-2b5d-11eb-33e2-536700ebfc1b
# ╟─22d79a00-2b5d-11eb-2ba7-ad0dcd47aa3b
# ╠═22d79a00-2b5d-11eb-0691-5b2f606c8c89
# ╟─22d79a00-2b5d-11eb-06ad-9dc3dfd40d6c
# ╠═22d79a00-2b5d-11eb-36b4-8f798afb9ae2
# ╟─22d79a00-2b5d-11eb-1ae9-632576c75728
# ╠═22d79a00-2b5d-11eb-06bd-c30f043137fa
# ╟─22d79a00-2b5d-11eb-28ad-f9bb288b42ce
# ╠═22d79a00-2b5d-11eb-1b78-5b956e542b91
# ╟─22d79a00-2b5d-11eb-0a96-7d8f4658c2b3
# ╠═22d79a00-2b5d-11eb-0753-bf4c0dfb4e11
# ╟─22d79a00-2b5d-11eb-052e-4f3eb6b439de
# ╠═22d79a00-2b5d-11eb-2170-e30f1c155d51
# ╟─22d79a00-2b5d-11eb-3102-0bdb596e1c64
# ╠═22d79a00-2b5d-11eb-02e6-0507fe3fd1fe
# ╟─22d7c110-2b5d-11eb-2b65-b9d2819c69ea
# ╠═22d7c110-2b5d-11eb-2eab-3d8cce0f645a
# ╠═22d85d50-2b5d-11eb-395f-b378b9562e8f
# ╟─22d85d50-2b5d-11eb-25a6-d7c22c69d216
# ╠═22d85d50-2b5d-11eb-3e38-23ceca7da45f
# ╟─22d85d50-2b5d-11eb-2ac7-a5b03e3bfb20
# ╠═22d85d50-2b5d-11eb-3a11-8503dce849dc
# ╟─22d85d50-2b5d-11eb-05e5-bf77d28faec5
# ╠═22d85d50-2b5d-11eb-216a-5f036b7d9104
# ╟─22d85d50-2b5d-11eb-08c3-45921d818d85
# ╠═22d85d50-2b5d-11eb-1d59-a332133f8255
# ╟─22d85d50-2b5d-11eb-2390-1dbcf0ce2cfa
# ╠═22d85d50-2b5d-11eb-1759-6d05d9cc81c6
# ╟─22d85d50-2b5d-11eb-3f9d-07190b42e303
# ╠═22d85d50-2b5d-11eb-1366-83ddbe9e525b
# ╟─22d85d50-2b5d-11eb-2ab7-b5e950b2d66a
# ╠═22d85d50-2b5d-11eb-135a-775b2e2392a8
# ╟─22d85d50-2b5d-11eb-31dc-4f4cc74db907
# ╠═22d85d50-2b5d-11eb-301b-c1a0e5f3325c
# ╟─22d85d50-2b5d-11eb-0cc0-213a4613c85e
# ╠═22d85d50-2b5d-11eb-107b-df2fcf5ff767
# ╟─22d85d50-2b5d-11eb-32bc-25fd056f32aa
# ╠═22d85d50-2b5d-11eb-31b1-ffeba88afa72
# ╟─22d85d50-2b5d-11eb-2a38-89d467470a71
# ╠═22d85d50-2b5d-11eb-1ad0-0b8c9f259ae5
# ╟─22d85d50-2b5d-11eb-12ec-3d883777fdb6
# ╠═22d85d50-2b5d-11eb-00c3-17383368357b
# ╟─22d85d50-2b5d-11eb-1926-85ca553c7513
# ╠═22d85d50-2b5d-11eb-08d1-7fc531a5800f
# ╟─22d88460-2b5d-11eb-184c-ad49b271fae6
# ╠═22d88460-2b5d-11eb-3acc-87223a7344f9
# ╟─22d88460-2b5d-11eb-3728-77d4d233a288
# ╠═22d88460-2b5d-11eb-3666-9b405756f2b9
# ╟─22d88460-2b5d-11eb-3701-8bc7fe3b3fa2
# ╠═22d88460-2b5d-11eb-145f-858a4cddffa9
# ╟─22d88460-2b5d-11eb-3f2b-9b96907938f7
# ╠═22d88460-2b5d-11eb-2b09-6151444ed754
# ╟─22d88460-2b5d-11eb-36f3-6b6d150dd4a6
# ╠═22d88460-2b5d-11eb-3d23-65c0c12517da
# ╟─22d88460-2b5d-11eb-08de-55336e57dbfb
# ╠═22d88460-2b5d-11eb-3d4b-71b00427ba56
# ╟─22d88460-2b5d-11eb-11ef-c9d6d1de11fa
# ╠═22d88460-2b5d-11eb-27e4-f9687eb41a18
# ╟─22d88460-2b5d-11eb-0904-c585cd0453ec
# ╠═22d88460-2b5d-11eb-07b9-af1440b37cd8
# ╟─22d88460-2b5d-11eb-146d-9f635e20312e
# ╠═22d88460-2b5d-11eb-0715-23a310edd602
# ╟─22d88460-2b5d-11eb-2677-57e806ca3b2f
# ╠═22d88460-2b5d-11eb-081b-ade8aacd1e66
# ╟─22d88460-2b5d-11eb-3a5d-11d684ba8cfe
# ╠═22d88460-2b5d-11eb-0303-07834e6e128b
# ╟─22d8ab70-2b5d-11eb-199f-1f5febe896fc
# ╠═22d8ab70-2b5d-11eb-067b-73ebd9d5f93e
# ╠═22daf55e-2b5d-11eb-30d8-37ebf8b743df
# ╟─22daf55e-2b5d-11eb-1ddc-2712297f83f0
# ╠═22daf55e-2b5d-11eb-30ea-c524f8abe832
# ╟─22db1c70-2b5d-11eb-0ca6-2d861f34bebd
# ╠═22db1c70-2b5d-11eb-169a-ededcc267fff
# ╟─22db1c70-2b5d-11eb-0b2e-1bc9b670a0f0
# ╠═22db1c70-2b5d-11eb-25ea-a3884a88124d
# ╟─22db1c70-2b5d-11eb-3ffc-29ea34e51a14
# ╠═22db1c70-2b5d-11eb-2306-914b31901c93
# ╟─22db1c70-2b5d-11eb-15b7-3d1cc4844a06
# ╠═22db1c70-2b5d-11eb-2e51-9965c2eedd07
# ╟─22db1c70-2b5d-11eb-29c2-81482f2cdd8c
# ╠═22db1c70-2b5d-11eb-0b16-c32615ef3087
# ╟─22db1c70-2b5d-11eb-0af7-45991c379e05
# ╠═22db1c70-2b5d-11eb-3efa-a3eac52f5570
# ╟─22db1c70-2b5d-11eb-0cfd-7d28ea4fe0d9
# ╠═22db1c70-2b5d-11eb-11b7-e5ab73cbfded
# ╟─22db1c70-2b5d-11eb-189b-31d52341a103
# ╠═22db1c70-2b5d-11eb-377a-c32afebb1f8b
# ╟─22db1c70-2b5d-11eb-0cad-5157a11d291a
# ╠═22db4380-2b5d-11eb-19b6-55ab5f4443b0
# ╟─22db4380-2b5d-11eb-0d09-75bb07b6a35a
# ╠═22db4380-2b5d-11eb-2b79-2988049ddfdc
# ╟─22db4380-2b5d-11eb-3309-2d8fe89a8fa9
# ╠═22db4380-2b5d-11eb-3ebe-d75a04759d22
# ╟─22db4380-2b5d-11eb-26dd-11031ee94cf3
# ╠═22db4380-2b5d-11eb-140f-d19cd379626c
# ╟─22db4380-2b5d-11eb-0c4c-d5ef72cc6b99
# ╠═22db4380-2b5d-11eb-2686-f77c767ac761
# ╟─22db4380-2b5d-11eb-3292-2bf727ad2761
# ╠═22db4380-2b5d-11eb-119a-a329f5d4dc7a
# ╟─22db4380-2b5d-11eb-38b0-6b581cd1c2cd
# ╠═22db4380-2b5d-11eb-22bd-3f05d4174609
# ╟─22db4380-2b5d-11eb-275e-cb2456de6021
# ╠═22db4380-2b5d-11eb-3773-b5fd88743144
# ╟─22db4380-2b5d-11eb-35ba-27d49cd3f1ea
# ╠═22db4380-2b5d-11eb-280a-8f18ee2b7693
# ╟─22db4380-2b5d-11eb-1eb4-5ddd9568b660
# ╠═22db4380-2b5d-11eb-00e8-17a108293be3
# ╟─22db4380-2b5d-11eb-0db9-3f918af1afc3
# ╠═22db4380-2b5d-11eb-22aa-63194e44998c
# ╟─22db4380-2b5d-11eb-0af2-57e8d8bea25d
# ╠═22db4380-2b5d-11eb-29e4-6bec319f630a
# ╟─22db6a90-2b5d-11eb-013d-71ba7b9b763e
# ╠═22db6a90-2b5d-11eb-270d-ef47c19d799c
# ╟─22db6a90-2b5d-11eb-2d30-d3d05d122b4a
# ╠═22db6a90-2b5d-11eb-173c-f934437bcc9b
# ╟─22db6a90-2b5d-11eb-0c86-351311f199b1
# ╠═22db6a90-2b5d-11eb-2ee8-09f0d3421069
# ╟─22db6a90-2b5d-11eb-297d-f7e3651d40e4
# ╠═22db6a90-2b5d-11eb-080a-0137037025f4
# ╠═22dc2de0-2b5d-11eb-1727-ad72593c7c94
# ╟─22dc2de0-2b5d-11eb-3e10-8fcb3c79352c
# ╠═22dc2de0-2b5d-11eb-0205-e9baba9b4630
# ╟─22dc2de0-2b5d-11eb-0caf-cd253d36063b
# ╠═22dc2de0-2b5d-11eb-18eb-a97aa92e5632
# ╟─22dc2de0-2b5d-11eb-33aa-c72e0eb9035d
# ╠═22dc2de0-2b5d-11eb-142b-2725beafb9e0
# ╟─22dc54f0-2b5d-11eb-1a48-9734cb528172
# ╠═22dc54f0-2b5d-11eb-0d78-e99ec2b363bd
# ╟─22dc54f0-2b5d-11eb-160c-9f03249f5707
# ╠═22dc54f0-2b5d-11eb-09bb-1bf289d31422
# ╟─22dc54f0-2b5d-11eb-3df9-81ec99781ffd
# ╠═22dc54f0-2b5d-11eb-19e7-1911a414dc6e
# ╟─22dc54f0-2b5d-11eb-1e32-e98647522efb
# ╠═22dc54f0-2b5d-11eb-0a39-f385e03e152a
# ╟─22dc54f0-2b5d-11eb-396b-f55998f544f6
# ╠═22dc54f0-2b5d-11eb-0eb7-23adab35ce08
# ╟─22dc54f0-2b5d-11eb-11c1-df272cccdf13
# ╠═22dc54f0-2b5d-11eb-0edf-450fd114b9f0
# ╟─22dc54f0-2b5d-11eb-2660-13f587c321ba
# ╠═22dc54f0-2b5d-11eb-1c06-ab2f1d85120b
# ╟─22dc54f0-2b5d-11eb-2952-15f5a02b2971
# ╠═22dc54f0-2b5d-11eb-05fa-55401c160df8
# ╟─22dc54f0-2b5d-11eb-2e92-29780c9ff182
# ╠═22dc54f0-2b5d-11eb-2d09-f1f5088b05d4
# ╟─22dc54f0-2b5d-11eb-3b32-83515e42ed1f
# ╠═22dc54f0-2b5d-11eb-05bb-c38562f7ba53
# ╟─22dc54f0-2b5d-11eb-3f79-8ffb74b35249
# ╠═22dc54f0-2b5d-11eb-2e6d-97d75c70c45f
# ╟─22dc54f0-2b5d-11eb-3e8a-a51d131063b7
# ╠═22dc54f0-2b5d-11eb-1d4f-d3cddf936994
# ╟─22dc54f0-2b5d-11eb-02ca-2fd032bb2ba1
# ╠═22dc54f0-2b5d-11eb-07ca-b9632e6a3301
# ╟─22dc7c02-2b5d-11eb-2d14-41d385ede412
# ╠═22dc7c02-2b5d-11eb-3c38-1b8ce8429d7b
# ╟─22dc7c02-2b5d-11eb-09ce-11dbefe66f3e
# ╠═22dc7c02-2b5d-11eb-3de2-23258ebaafc4
# ╟─22dc7c02-2b5d-11eb-2182-93d464bdd10d
# ╠═22dc7c02-2b5d-11eb-2e69-75ef0ecf2eae
# ╟─22dc7c02-2b5d-11eb-0016-0b80fc32c3f7
# ╠═22dc7c02-2b5d-11eb-2d96-31ad56cb46f9
# ╟─22dc7c02-2b5d-11eb-0820-d5ab79f035ba
# ╠═22dc7c02-2b5d-11eb-3d2c-15b77f941362
# ╟─22dc7c02-2b5d-11eb-3918-0b60801deda3
# ╠═22dc7c02-2b5d-11eb-2525-f1b87fdd77a6
# ╟─22dc7c02-2b5d-11eb-028e-65ef8bc3f396
# ╠═22dc7c02-2b5d-11eb-0d3d-577e55fe882a
# ╟─22dc7c02-2b5d-11eb-256a-6378d5cd2388
# ╠═22dc7c02-2b5d-11eb-35d9-17df002ec5cf
# ╟─22dc7c02-2b5d-11eb-14b5-09b1dd43a62a
# ╠═22dc7c02-2b5d-11eb-1815-4de50a53e477
# ╠═22dd8d70-2b5d-11eb-30ce-abe36c910402
# ╟─22dd8d70-2b5d-11eb-0f31-49efe5189204
# ╠═22dd8d70-2b5d-11eb-36e4-019b48eb74dc
# ╟─22dd8d70-2b5d-11eb-15ae-9fda689f028a
# ╠═22dd8d70-2b5d-11eb-0dfb-099111b6e1b3
# ╟─22dd8d70-2b5d-11eb-3030-7d566c1d797e
# ╠═22dd8d70-2b5d-11eb-0ea4-8dca50acb401
# ╟─22dd8d70-2b5d-11eb-0e35-23ca6474cf7d
# ╠═22dd8d70-2b5d-11eb-3280-a73c54387b57
# ╟─22dd8d70-2b5d-11eb-2464-ed9537689590
# ╠═22dd8d70-2b5d-11eb-2943-ffd94cccc575
# ╟─22dd8d70-2b5d-11eb-080f-7dc3133ad27f
# ╠═22dd8d70-2b5d-11eb-1429-31bbbb7d6cc5
# ╟─22dd8d70-2b5d-11eb-098e-c91b8b3d5312
# ╠═22dd8d70-2b5d-11eb-280f-dbc00e4d7de8
# ╟─22dd8d70-2b5d-11eb-1d42-d383f63aa63f
# ╠═22dd8d70-2b5d-11eb-35a7-4f6e8928908c
# ╟─22ddb480-2b5d-11eb-05c5-77cfdef309c4
# ╠═22ddb480-2b5d-11eb-2112-d9bb1d1c1625
# ╟─22ddb480-2b5d-11eb-1d1c-73bf387370a3
# ╠═22ddb480-2b5d-11eb-3947-bb0ca2a1f03d
# ╟─22ddb480-2b5d-11eb-3b87-3d5a1b38560e
# ╠═22ddb480-2b5d-11eb-1262-5bf7ca3414cf
# ╟─22ddb480-2b5d-11eb-3535-7fde9361bab7
# ╠═22ddb480-2b5d-11eb-21ae-d108a7dc578d
# ╟─22ddb480-2b5d-11eb-1fe8-ad308462499c
# ╠═22ddb480-2b5d-11eb-0212-6d80024258f2
# ╟─22dddb90-2b5d-11eb-058f-6f845677e37f
# ╠═22dddb90-2b5d-11eb-3536-496c908adf90
# ╟─22dddb90-2b5d-11eb-3481-0f838562460f
# ╠═22dddb90-2b5d-11eb-3bfe-5d4097e11f99
# ╟─22dddb90-2b5d-11eb-10a5-e3553bd61029
# ╠═22dddb90-2b5d-11eb-2841-05e67cca846f
# ╟─22dddb90-2b5d-11eb-011d-d7df6eefef7e
# ╠═22dddb90-2b5d-11eb-3e7b-e761cb8814f3
# ╟─22dddb90-2b5d-11eb-36ac-81ff7582544e
# ╠═22dddb90-2b5d-11eb-19e7-5d14a377fdd6
# ╟─22dddb90-2b5d-11eb-3fb2-ed04fca6b68a
# ╠═22dddb90-2b5d-11eb-1bcb-f3e1fc9ff082
# ╟─22dddb90-2b5d-11eb-06a4-b58f3b5f9a78
# ╠═22dddb90-2b5d-11eb-2e46-d7297d25806c
# ╟─22dddb90-2b5d-11eb-181d-b176931a71ec
# ╠═22dddb90-2b5d-11eb-0f42-b78a1e2e1cb9
# ╟─22de02a2-2b5d-11eb-1902-6f659fc2252a
# ╠═22de02a2-2b5d-11eb-14a5-73c17eae0db6
# ╟─22de02a2-2b5d-11eb-2aec-25a1323bf505
# ╠═22de02a2-2b5d-11eb-0fef-9dc7906a8dcd
# ╟─22de02a2-2b5d-11eb-1fc3-bd420e708ee5
# ╠═22de02a2-2b5d-11eb-259f-a3bda9a06c17
# ╟─22de02a2-2b5d-11eb-08e2-a3aabeec274f
# ╠═22de02a2-2b5d-11eb-0eed-27b312234036
# ╠═22df1410-2b5d-11eb-2197-4566fc4e60e9
# ╟─22df1410-2b5d-11eb-230d-b1e602807296
# ╠═22df1410-2b5d-11eb-0a03-459fbb3d03bf
# ╟─22df1410-2b5d-11eb-18f5-852e00dd1b68
# ╠═22df1410-2b5d-11eb-15bb-9bec78dcfc9a
# ╟─22df1410-2b5d-11eb-0a75-1df6ccc35627
# ╠═22df1410-2b5d-11eb-1d3b-d56e96735c11
# ╟─22df1410-2b5d-11eb-3e9d-6f98c9743b6a
# ╠═22df1410-2b5d-11eb-34e0-fb612f6f7b91
# ╟─22df1410-2b5d-11eb-3b5c-bfc6ab314256
# ╠═22df1410-2b5d-11eb-0c03-0b51d97e4d1b
# ╟─22df1410-2b5d-11eb-01cb-617bb2d0cd19
# ╠═22df1410-2b5d-11eb-35e3-4b6240756705
# ╟─22df1410-2b5d-11eb-3114-9343e3b33b13
# ╠═22df1410-2b5d-11eb-0833-35df467f1021
# ╟─22df1410-2b5d-11eb-34b2-5925ad970bda
# ╠═22df1410-2b5d-11eb-1628-2f788feea8a2
# ╟─22df3b20-2b5d-11eb-27ca-d9cefbc36036
# ╠═22df3b20-2b5d-11eb-25c7-f505101c397a
# ╟─22df3b20-2b5d-11eb-0868-7db30340d584
# ╠═22df3b20-2b5d-11eb-338c-a92fe2a930f0
# ╟─22df3b20-2b5d-11eb-2632-cb7c01dddf1f
# ╠═22df3b20-2b5d-11eb-1f5f-7fb83ce02077
# ╟─22df3b20-2b5d-11eb-1b77-01bac1c17e77
# ╠═22df3b20-2b5d-11eb-1f2b-d5e81a874851
# ╟─22df3b20-2b5d-11eb-3cbe-67d24ec44e4d
# ╠═22df3b20-2b5d-11eb-2f75-d3d063748735
# ╟─22df3b20-2b5d-11eb-30b9-772856e4674b
# ╠═22df3b20-2b5d-11eb-385a-09bbe20f2cbf
# ╟─22df3b20-2b5d-11eb-05e9-256beb06445e
# ╠═22df3b20-2b5d-11eb-1e15-971da0e2453f
# ╟─22df3b20-2b5d-11eb-2513-2bdcc33c3723
# ╠═22df3b20-2b5d-11eb-3bda-dd875c5938a2
# ╟─22df3b20-2b5d-11eb-2f3f-af88b73e0c3a
# ╠═22df3b20-2b5d-11eb-1002-5de37df0c625
# ╟─22df6230-2b5d-11eb-1a15-4d30ab3a6c50
# ╠═22df6230-2b5d-11eb-05d6-390c2b87c115
# ╟─22df6230-2b5d-11eb-2365-432479aef901
# ╠═22df6230-2b5d-11eb-25d0-9de9bdbf72c1
# ╟─22df6230-2b5d-11eb-1a23-d5d0355ccae7
# ╠═22df6230-2b5d-11eb-3486-ff6571c252f3
# ╟─22df6230-2b5d-11eb-3b5d-dba3adc0424d
# ╠═22df6230-2b5d-11eb-361f-012fa621a848
# ╟─22df6230-2b5d-11eb-06ed-f75d73af1e20
# ╠═22df6230-2b5d-11eb-2fa8-e71fddd87269
# ╟─22df6230-2b5d-11eb-184c-05b841cf650a
# ╠═22df6230-2b5d-11eb-3f73-83d97a98271e
# ╟─22df8940-2b5d-11eb-2542-df8ba5107b34
# ╠═22df8940-2b5d-11eb-300e-c59153af2e7b
# ╟─22df8940-2b5d-11eb-2433-25dee9c66d45
# ╠═22df8940-2b5d-11eb-0c6e-57c847695159