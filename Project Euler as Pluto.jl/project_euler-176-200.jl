### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1abfdf90-84a3-11eb-09ad-21593c48c36d
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1abfdf90-84a3-11eb-0643-83c1ef1d06e5
html"""
<h2>Problem 176: Right-angled triangles that share a cathetus</h2>
<p>The four right-angled triangles with sides (9,12,15), (12,16,20), (5,12,13) and (12,35,37) all have one of the shorter sides (catheti) equal to 12. It can be shown that no other integer sided right-angled triangle exists with one of the catheti equal to 12.</p>
<p>Find the smallest integer that can be the length of a cathetus of exactly 47547 different integer sided right-angled triangles.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-28ce-1515130668dd
begin
    submit_answer(nothing; prob_num=176)
end

# ╔═╡ 1abfdf90-84a3-11eb-24f7-db19b400c06a
html"""
<h2>Problem 177: Integer angled Quadrilaterals</h2>
<p>Let ABCD be a convex quadrilateral, with diagonals AC and BD. At each vertex the diagonal makes an angle with each of the two sides, creating eight corner angles.</p>
<p style="text-align:center;"><img src="project/images/p177_quad.gif" class="dark_img" alt="" /></p>
<p>For example, at vertex A, the two angles are CAD, CAB.</p>
<p>We call such a quadrilateral for which all eight corner angles have integer values when measured in degrees an "integer angled quadrilateral". An example of an integer angled quadrilateral is a square, where all eight corner angles are 45°. Another example is given by DAC = 20°, BAC = 60°, ABD = 50°, CBD = 30°, BCA = 40°, DCA = 30°, CDB = 80°, ADB = 50°.</p>
<p>What is the total number of non-similar integer angled quadrilaterals?</p>
<p>Note: In your calculations you may assume that a calculated angle is integral if it is within a tolerance of 10<sup>-9</sup> of an integer value.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-2f4d-639ba7a673df
begin
    submit_answer(nothing; prob_num=177)
end

# ╔═╡ 1abfdf90-84a3-11eb-01cc-6f9700baee11
html"""
<h2>Problem 178: Step Numbers</h2>
Consider the number 45656. <br />
It can be seen that each pair of consecutive digits of 45656 has a difference of one.<br />
A number for which every pair of consecutive digits has a difference of one is called a step number.<br />
A pandigital number  contains every decimal digit from 0 to 9 at least once.<br />

How many pandigital step numbers less than 10<sup>40</sup> are there?
"""

# ╔═╡ 1abfdf90-84a3-11eb-2b76-c1154ab541a1
begin
    submit_answer(nothing; prob_num=178)
end

# ╔═╡ 1abfdf90-84a3-11eb-0b26-51381ecda2d6
html"""
<h2>Problem 179: Consecutive positive divisors</h2>
<p>Find the number of integers 1 &lt; n &lt; 10<sup>7</sup>, for which <var>n</var> and <var>n</var> + 1 have the same number of positive divisors. For example, 14 has the positive divisors 1, 2, 7, 14 while 15 has 1, 3, 5, 15.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-1478-4d8d3bbf552f
begin
    submit_answer(nothing; prob_num=179)
end

# ╔═╡ 1abfdf90-84a3-11eb-3602-1d031bb57eb5
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

# ╔═╡ 1abfdf90-84a3-11eb-1959-87da14c62f0b
begin
    submit_answer(nothing; prob_num=180)
end

# ╔═╡ 1abfdf90-84a3-11eb-3fca-7d88d9f5052c
html"""
<h2>Problem 181: Investigating in how many ways objects of two different colours can be grouped</h2>
<p>Having three black objects B and one white object W they can be grouped in 7 ways like this:</p>
<table cellpadding="10" align="center"><tr><td>(BBBW)</td><td>(B,BBW)</td><td>(B,B,BW)</td><td>(B,B,B,W)</td>
<td>(B,BB,W)</td><td>(BBB,W)</td><td>(BB,BW)</td>
</tr></table><p>In how many ways can sixty black objects B and forty white objects W be  thus grouped?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-1c8e-a5125dbf51a6
begin
    submit_answer(nothing; prob_num=181)
end

# ╔═╡ 1abfdf90-84a3-11eb-0fce-8395551ee3fe
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

# ╔═╡ 1abfdf90-84a3-11eb-0a2e-e57b12d185d4
begin
    submit_answer(nothing; prob_num=182)
end

# ╔═╡ 1abfdf90-84a3-11eb-00be-2512d067dc87
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

# ╔═╡ 1abfdf90-84a3-11eb-1daa-e5385034e50f
begin
    submit_answer(nothing; prob_num=183)
end

# ╔═╡ 1abfdf90-84a3-11eb-27f5-b97939074312
html"""
<h2>Problem 184: Triangles containing the origin</h2>
<p>Consider the set <var>I<sub>r</sub></var> of points (<var>x</var>,<var>y</var>) with integer co-ordinates in the interior of the circle with radius <var>r</var>, centered at the origin, i.e. <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> &lt; <var>r</var><sup>2</sup>.</p>
<p>For a radius of 2, <var>I</var><sub>2</sub> contains the nine points (0,0), (1,0), (1,1), (0,1), (-1,1), (-1,0), (-1,-1), (0,-1) and (1,-1). There are eight triangles having all three vertices in <var>I</var><sub>2</sub> which contain the origin in the interior. Two of them are shown below, the others are obtained from these by rotation.</p>
<p class="center"><img src="project/images/p184.gif" class="dark_img" alt="" /></p>

<p>For a radius of 3, there are 360 triangles containing the origin in the interior and having all vertices in <var>I</var><sub>3</sub> and for <var>I</var><sub>5</sub> the number is 10600.</p>

<p>How many triangles are there containing the origin in the interior and having all three vertices in <var>I</var><sub>105</sub>?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-0c05-c980b55ebe7c
begin
    submit_answer(nothing; prob_num=184)
end

# ╔═╡ 1abfdf90-84a3-11eb-17a5-7fb4464cb541
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

# ╔═╡ 1abfdf90-84a3-11eb-3c4a-f3203901169e
begin
    submit_answer(nothing; prob_num=185)
end

# ╔═╡ 1abfdf90-84a3-11eb-3e2d-4751145da4f4
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

# ╔═╡ 1abfdf90-84a3-11eb-3f25-f78a15c7bdb0
begin
    submit_answer(nothing; prob_num=186)
end

# ╔═╡ 1abfdf90-84a3-11eb-0f39-db7174b57984
html"""
<h2>Problem 187: Semiprimes</h2>
<p>A composite is a number containing at least two prime factors. For example, 15 = 3 × 5; 9 = 3 × 3; 12 = 2 × 2 × 3.</p>

<p>There are ten composites below thirty containing precisely two, not necessarily distinct, prime factors:
4, 6, 9, 10, 14, 15, 21, 22, 25, 26.</p>

<p>How many composite integers, <var>n</var> &lt; 10<sup>8</sup>, have precisely two, not necessarily distinct, prime factors?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-2751-6bbe122bc389
begin
    submit_answer(nothing; prob_num=187)
end

# ╔═╡ 1abfdf90-84a3-11eb-13b6-8b745399cd4e
html"""
<h2>Problem 188: The hyperexponentiation of a number</h2>
<p>The <span style="font-style:italic;">hyperexponentiation</span> or <span style="font-style:italic;">tetration</span> of a number a by a positive integer b, denoted by a↑↑b or <sup>b</sup>a, is recursively defined by:<br /><br />
a↑↑1 = a,<br />
a↑↑(k+1) = a<sup>(a↑↑k)</sup>.</p>
<p>
Thus we have e.g. 3↑↑2 = 3<sup>3</sup> = 27, hence 3↑↑3 = 3<sup>27</sup> = 7625597484987 and 3↑↑4 is roughly 10<sup>3.6383346400240996*10^12</sup>.</p>
<p>Find the last 8 digits of 1777↑↑1855.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-2a28-219c5d14b18d
begin
    submit_answer(nothing; prob_num=188)
end

# ╔═╡ 1abfdf90-84a3-11eb-0fd3-0351f0931a90
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

# ╔═╡ 1abfdf90-84a3-11eb-380f-cda39b83826b
begin
    submit_answer(nothing; prob_num=189)
end

# ╔═╡ 1abfdf90-84a3-11eb-3bac-9b890ea210c9
html"""
<h2>Problem 190: Maximising a weighted product</h2>
<p>Let S<sub>m</sub> = (x<sub>1</sub>, x<sub>2</sub>, ... , x<sub>m</sub>) be the m-tuple of positive real numbers with x<sub>1</sub> + x<sub>2</sub> + ... + x<sub>m</sub> = m for which P<sub>m</sub> = x<sub>1</sub> * x<sub>2</sub><sup>2</sup> * ... * x<sub>m</sub><sup>m</sup> is maximised.</p>

<p>For example, it can be verified that [P<sub>10</sub>] = 4112 ([ ] is the integer part function).</p>

<p>Find Σ[P<sub>m</sub>] for 2 ≤ m ≤ 15.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-0905-f52f24613baa
begin
    submit_answer(nothing; prob_num=190)
end

# ╔═╡ 1abfdf90-84a3-11eb-295e-73617d23081b
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

# ╔═╡ 1abfdf90-84a3-11eb-0309-55ee632549fb
begin
    submit_answer(nothing; prob_num=191)
end

# ╔═╡ 1abfdf90-84a3-11eb-3bcf-79e66b5a2764
html"""
<h2>Problem 192: Best Approximations</h2>
<p>Let $x$ be a real number.<br />
A <b>best approximation</b> to $x$ for the <b>denominator bound</b> $d$ is a rational number $\frac r s $  in<b> reduced form</b>, with $s \le d$, such that any rational number which is closer to $x$ than $\frac r s$ has a denominator larger than $d$:</p>

<div class="center"> $|\frac p q -x | &lt; |\frac r s -x| \Rightarrow q &gt; d$
</div>

<p>For example, the best approximation to $\sqrt {13}$ for the denominator bound 20 is $\frac {18} 5$ and the best approximation to $\sqrt {13}$ for the denominator bound 30 is $\frac {101}{28}$.</p>

<p>Find the sum of all denominators of the best approximations to $\sqrt n$ for the denominator bound $10^{12}$, where $n$ is not a perfect square and $ 1 &lt; n \le 100000$. </p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-269a-d592c1018132
begin
    submit_answer(nothing; prob_num=192)
end

# ╔═╡ 1abfdf90-84a3-11eb-098a-99488ca05f2b
html"""
<h2>Problem 193: Squarefree Numbers</h2>
<p>A positive integer <var>n</var> is called squarefree, if no square of a prime divides <var>n</var>, thus 1, 2, 3, 5, 6, 7, 10, 11 are squarefree, but not 4, 8, 9, 12.</p>

<p>How many squarefree numbers are there below 2<sup>50</sup>?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-01af-a938f3a23741
begin
    submit_answer(nothing; prob_num=193)
end

# ╔═╡ 1abfdf90-84a3-11eb-07bc-ad59f57d3175
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

# ╔═╡ 1abfdf90-84a3-11eb-0078-cbe571d194bc
begin
    submit_answer(nothing; prob_num=194)
end

# ╔═╡ 1abfdf90-84a3-11eb-20cd-6de77bddc461
html"""
<h2>Problem 195: Inscribed circles of triangles with one angle of 60 degrees</h2>
<p>Let's call an integer sided triangle with exactly one angle of 60 degrees a 60-degree triangle.<br />
Let <var>r</var> be the radius of the inscribed circle of such a 60-degree triangle.</p>
<p>There are 1234 60-degree triangles for which <var>r</var> ≤ 100.
<br />Let T(<var>n</var>) be the number of 60-degree triangles for which <var>r</var> ≤ <var>n</var>, so<br />
 T(100) = 1234,  T(1000) = 22767, and  T(10000) = 359912.</p>

<p>Find T(1053779).</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-0c85-a73079b637cf
begin
    submit_answer(nothing; prob_num=195)
end

# ╔═╡ 1abfdf90-84a3-11eb-189a-49079e9c6dc1
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

# ╔═╡ 1abfdf90-84a3-11eb-31d5-3980be49e37e
begin
    submit_answer(nothing; prob_num=196)
end

# ╔═╡ 1abfdf90-84a3-11eb-137e-ef8501d64174
html"""
<h2>Problem 197: Investigating the behaviour of a recursively defined sequence</h2>
<p>Given is the function <var>f</var>(<var>x</var>) = ⌊2<sup>30.403243784-<var>x</var><sup>2</sup></sup>⌋ × 10<sup>-9</sup> ( ⌊ ⌋ is the floor-function),<br />
the sequence <var>u<sub>n</sub></var> is defined by <var>u</var><sub>0</sub> = -1 and <var>u</var><sub><var>n</var>+1</sub> = <var>f</var>(<var>u<sub>n</sub></var>).</p>

<p>Find <var>u<sub>n</sub></var> + <var>u</var><sub><var>n</var>+1</sub> for <var>n</var> = 10<sup>12</sup>.<br />
Give your answer with 9 digits after the decimal point.</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-2286-11bc32ae610a
begin
    submit_answer(nothing; prob_num=197)
end

# ╔═╡ 1abfdf90-84a3-11eb-171a-9bd463a9351e
html"""
<h2>Problem 198: Ambiguous Numbers</h2>
<p>A best approximation to a real number $x$ for the denominator bound $d$ is a rational number $\frac r s$ (in reduced form) with $s \le d$, so that any rational number $\frac p q$ which is closer to $x$ than $\frac r s$ has $q &gt; d$.</p>

<p>Usually the best approximation to a real number is uniquely determined for all denominator bounds. However, there are some exceptions, e.g. $\frac 9 {40}$ has the two best approximations $\frac 1 4$ and $\frac 1 5$ for the denominator bound $6$.
We shall call a real number $x$ <i>ambiguous</i>, if there is at least one denominator bound for which $x$ possesses two best approximations. Clearly, an ambiguous number is necessarily rational.</p>

<p>How many ambiguous numbers $x=\frac p q, 0 &lt; x &lt; \frac 1 {100}$, are there whose denominator $q$ does not exceed $10^8$?</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-3c5f-235a1c51f851
begin
    submit_answer(nothing; prob_num=198)
end

# ╔═╡ 1abfdf90-84a3-11eb-035a-2f6064dce813
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

# ╔═╡ 1abfdf90-84a3-11eb-112c-cb270179ed9d
begin
    submit_answer(nothing; prob_num=199)
end

# ╔═╡ 1abfdf90-84a3-11eb-232c-2b388b8f5370
html"""
<h2>Problem 200: Find the 200th prime-proof sqube containing the contiguous sub-string "200"</h2>
<p>We shall define a sqube to be a number of the form, <var>p</var><sup>2</sup><var>q</var><sup>3</sup>, where <var>p</var> and <var>q</var> are distinct primes.<br />
For example, 200 = 5<sup>2</sup>2<sup>3</sup> or 120072949 = 23<sup>2</sup>61<sup>3</sup>.</p>

<p>The first five squbes are 72, 108, 200, 392, and 500.</p>

<p>Interestingly, 200 is also the first number for which you cannot change any single digit to make a prime; we shall call such numbers, prime-proof. The next prime-proof sqube which contains the contiguous sub-string "200" is 1992008.</p>

<p>Find the 200th prime-proof sqube containing the contiguous sub-string "200".</p>
"""

# ╔═╡ 1abfdf90-84a3-11eb-398f-e185fda3a469
begin
    submit_answer(nothing; prob_num=200)
end

# ╔═╡ Cell order:
# ╠═1abfdf90-84a3-11eb-09ad-21593c48c36d
# ╟─1abfdf90-84a3-11eb-0643-83c1ef1d06e5
# ╠═1abfdf90-84a3-11eb-28ce-1515130668dd
# ╟─1abfdf90-84a3-11eb-24f7-db19b400c06a
# ╠═1abfdf90-84a3-11eb-2f4d-639ba7a673df
# ╟─1abfdf90-84a3-11eb-01cc-6f9700baee11
# ╠═1abfdf90-84a3-11eb-2b76-c1154ab541a1
# ╟─1abfdf90-84a3-11eb-0b26-51381ecda2d6
# ╠═1abfdf90-84a3-11eb-1478-4d8d3bbf552f
# ╟─1abfdf90-84a3-11eb-3602-1d031bb57eb5
# ╠═1abfdf90-84a3-11eb-1959-87da14c62f0b
# ╟─1abfdf90-84a3-11eb-3fca-7d88d9f5052c
# ╠═1abfdf90-84a3-11eb-1c8e-a5125dbf51a6
# ╟─1abfdf90-84a3-11eb-0fce-8395551ee3fe
# ╠═1abfdf90-84a3-11eb-0a2e-e57b12d185d4
# ╟─1abfdf90-84a3-11eb-00be-2512d067dc87
# ╠═1abfdf90-84a3-11eb-1daa-e5385034e50f
# ╟─1abfdf90-84a3-11eb-27f5-b97939074312
# ╠═1abfdf90-84a3-11eb-0c05-c980b55ebe7c
# ╟─1abfdf90-84a3-11eb-17a5-7fb4464cb541
# ╠═1abfdf90-84a3-11eb-3c4a-f3203901169e
# ╟─1abfdf90-84a3-11eb-3e2d-4751145da4f4
# ╠═1abfdf90-84a3-11eb-3f25-f78a15c7bdb0
# ╟─1abfdf90-84a3-11eb-0f39-db7174b57984
# ╠═1abfdf90-84a3-11eb-2751-6bbe122bc389
# ╟─1abfdf90-84a3-11eb-13b6-8b745399cd4e
# ╠═1abfdf90-84a3-11eb-2a28-219c5d14b18d
# ╟─1abfdf90-84a3-11eb-0fd3-0351f0931a90
# ╠═1abfdf90-84a3-11eb-380f-cda39b83826b
# ╟─1abfdf90-84a3-11eb-3bac-9b890ea210c9
# ╠═1abfdf90-84a3-11eb-0905-f52f24613baa
# ╟─1abfdf90-84a3-11eb-295e-73617d23081b
# ╠═1abfdf90-84a3-11eb-0309-55ee632549fb
# ╟─1abfdf90-84a3-11eb-3bcf-79e66b5a2764
# ╠═1abfdf90-84a3-11eb-269a-d592c1018132
# ╟─1abfdf90-84a3-11eb-098a-99488ca05f2b
# ╠═1abfdf90-84a3-11eb-01af-a938f3a23741
# ╟─1abfdf90-84a3-11eb-07bc-ad59f57d3175
# ╠═1abfdf90-84a3-11eb-0078-cbe571d194bc
# ╟─1abfdf90-84a3-11eb-20cd-6de77bddc461
# ╠═1abfdf90-84a3-11eb-0c85-a73079b637cf
# ╟─1abfdf90-84a3-11eb-189a-49079e9c6dc1
# ╠═1abfdf90-84a3-11eb-31d5-3980be49e37e
# ╟─1abfdf90-84a3-11eb-137e-ef8501d64174
# ╠═1abfdf90-84a3-11eb-2286-11bc32ae610a
# ╟─1abfdf90-84a3-11eb-171a-9bd463a9351e
# ╠═1abfdf90-84a3-11eb-3c5f-235a1c51f851
# ╟─1abfdf90-84a3-11eb-035a-2f6064dce813
# ╠═1abfdf90-84a3-11eb-112c-cb270179ed9d
# ╟─1abfdf90-84a3-11eb-232c-2b388b8f5370
# ╠═1abfdf90-84a3-11eb-398f-e185fda3a469