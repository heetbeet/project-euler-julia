### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ae0d50e-84a3-11eb-1b4a-f7d4f683c420
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ae0d50e-84a3-11eb-1604-cf4868b4c958
html"""
<h2>Problem 501: Eight Divisors</h2>
<p>The eight divisors of 24 are 1, 2, 3, 4, 6, 8, 12 and 24.
The ten numbers not exceeding 100 having exactly eight divisors are 24, 30, 40, 42, 54, 56, 66, 70, 78 and 88.
Let <var>f</var>(<var>n</var>) be the count of numbers not exceeding <var>n</var> with exactly eight divisors.<br />
You are given <var>f</var>(100) = 10, <var>f</var>(1000) = 180 and <var>f</var>(10<sup>6</sup>) = 224427.<br />
Find <var>f</var>(10<sup>12</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-1d68-a161a3ca056d
begin
    submit_answer(nothing; prob_num=501)
end

# ╔═╡ 1ae0d50e-84a3-11eb-13db-09a137772bb9
html"""
<h2>Problem 502: Counting Castles</h2>
<p>We define a <i>block</i> to be a rectangle with a height of 1 and an integer-valued length. Let a <i>castle</i> be a configuration of stacked blocks.</p>

<p>Given a game grid that is <var>w</var> units wide and <var>h</var> units tall, a castle is generated according to the following rules:</p>


<ol><li>Blocks can be placed on top of other blocks as long as nothing sticks out past the edges or hangs out over open space.</li>
<li>All blocks are aligned/snapped to the grid.</li>
<li>Any two neighboring blocks on the same row have at least one unit of space between them.</li>
<li>The bottom row is occupied by a block of length <var>w</var>.</li>
<li>The maximum achieved height of the entire castle is exactly <var>h</var>.</li>
<li>The castle is made from an even number of blocks.</li>
</ol><p>The following is a sample castle for <var>w</var>=8 and <var>h</var>=5:</p>

<p align="center"><img src="project/images/p502_castles.png" alt="p502_castles.png" /></p>

<p>Let F(<var>w</var>,<var>h</var>) represent the number of valid castles, given grid parameters <var>w</var> and <var>h</var>.</p>

<p>For example, F(4,2) = 10, F(13,10) = 3729050610636, F(10,13) = 37959702514, and F(100,100) mod 1 000 000 007 = 841913936.</p>

<p>Find (F(10<sup>12</sup>,100) + F(10000,10000) + F(100,10<sup>12</sup>)) mod 1 000 000 007.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-1ca6-03735ca64681
begin
    submit_answer(nothing; prob_num=502)
end

# ╔═╡ 1ae0d50e-84a3-11eb-19c5-13a20f84bd81
html"""
<h2>Problem 503: Compromise or persist</h2>
<p>Alice is playing a game with <var>n</var> cards numbered 1 to <var>n</var>.</p>

<p>A game consists of iterations of the following steps.<br />
(1) Alice picks one of the cards at random.<br />
(2) Alice cannot see the number on it. Instead, Bob, one of her friends, sees the number and tells Alice how many previously-seen numbers are bigger than the number which he is seeing.<br />
(3) Alice can end or continue the game. If she decides to end, the number becomes her score. If she decides to continue, the card is removed from the game and she returns to (1). If there is no card left, she is forced to end the game.<br /></p>

<p>Let F(<var>n</var>) be the Alice's expected score if she takes the optimized strategy to <b>minimize</b> her score.</p>

<p>For example, F(3) = 5/3. At the first iteration, she should continue the game. At the second iteration, she should end the game if Bob says that one previously-seen number is bigger than the number which he is seeing, otherwise she should continue the game.</p>

<p>We can also verify that F(4) = 15/8 and F(10) ≈ 2.5579365079.</p>

<p>Find F(10<sup>6</sup>). Give your answer rounded to 10 decimal places behind the decimal point.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2402-fb3b2a8c9c81
begin
    submit_answer(nothing; prob_num=503)
end

# ╔═╡ 1ae0d50e-84a3-11eb-0d8d-915efef75733
html"""
<h2>Problem 504: Square on the Inside</h2>
<p>Let <var>ABCD</var> be a quadrilateral whose vertices are lattice points lying on the coordinate axes as follows:</p>

<p><var>A</var>(<var>a</var>, 0), <var>B</var>(0, <var>b</var>), <var>C</var>(<var>−c</var>, 0), <var>D</var>(0, <var>−d</var>), where 1 ≤ <var>a</var>, <var>b</var>, <var>c</var>, <var>d</var> ≤ <var>m</var> and <var>a</var>, <var>b</var>, <var>c</var>, <var>d</var>, <var>m</var> are integers.</p>

<p>It can be shown that for <var>m</var> = 4 there are exactly 256 valid ways to construct <var>ABCD</var>. Of these 256 quadrilaterals, 42 of them <u>strictly</u> contain a square number of lattice points.</p>

<p>How many quadrilaterals <var>ABCD</var> strictly contain a square number of lattice points for <var>m</var> = 100?</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-1dcd-b72026b34e3a
begin
    submit_answer(nothing; prob_num=504)
end

# ╔═╡ 1ae0d50e-84a3-11eb-31cf-1d562e1f52d0
html"""
<h2>Problem 505: Bidirectional Recurrence</h2>
<p>Let:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(0)&amp;=0 \\ x(1)&amp;=1 \\ x(2k)&amp;=(3x(k)+2x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \text {, where } \lfloor \text { } \rfloor \text { is the floor function} \\ x(2k+1)&amp;=(2x(k)+3x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \\ y_n(k)&amp;=\left\{{\begin{array}{lc} x(k) &amp;&amp; \text{if } k \ge n \\ 2^{60} - 1 - max(y_n(2k),y_n(2k+1)) &amp;&amp; \text{if } k &lt; n \end{array}} \right. \\ A(n)&amp;=y_n(1) \end{array}$</p>
<p>You are given:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(2)&amp;=3 \\ x(3)&amp;=2 \\ x(4)&amp;=11 \\ y_4(4)&amp;=11 \\ y_4(3)&amp;=2^{60}-9\\ y_4(2)&amp;=2^{60}-12 \\ y_4(1)&amp;=A(4)=8 \\ A(10)&amp;=2^{60}-34\\ A(10^3)&amp;=101881 \end{array}$</p>
Find $A(10^{12})$.
"""

# ╔═╡ 1ae0d50e-84a3-11eb-219d-099aec88c0cf
begin
    submit_answer(nothing; prob_num=505)
end

# ╔═╡ 1ae0d50e-84a3-11eb-15e9-7ba068b5aa06
html"""
<h2>Problem 506: Clock sequence</h2>
<p>Consider the infinite repeating sequence of digits:<br />
1234321234321234321...</p>
<p>Amazingly, you can break this sequence of digits into a sequence of integers such that the sum of the digits in the <var>n</var>'th value is <var>n</var>.</p>
<p>The sequence goes as follows:<br />
1, 2, 3, 4, 32, 123, 43, 2123, 432, 1234, 32123, ...</p>
<p>Let <var>v<sub>n</sub></var> be the <var>n</var>'th value in this sequence. For example, <var>v</var><sub>2</sub> = 2, <var>v</var><sub>5</sub> = 32 and <var>v</var><sub>11</sub> = 32123.</p>
<p>Let <var>S</var>(<var>n</var>) be <var>v</var><sub>1</sub> + <var>v</var><sub>2</sub> + ... + <var>v<sub>n</sub></var>. For example, <var>S</var>(11) = 36120, and <var>S</var>(1000) mod 123454321 = 18232686.</p>
<p>Find <var>S</var>(10<sup>14</sup>) mod 123454321.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-232d-4b94ad1ec305
begin
    submit_answer(nothing; prob_num=506)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1e46-33400130b9e4
html"""
<h2>Problem 507: Shortest Lattice Vector</h2>
<p>
Let $t_n$ be the <b>tribonacci numbers</b> defined as:<br />
$t_0 = t_1 = 0$;<br />
$t_2 = 1$;<br />
$t_n = t_{n-1} + t_{n-2} + t_{n-3}$ for $n \ge 3$<br />
and let $r_n = t_n \text{ mod } 10^7$.
</p>
<p>
For each pair of Vectors $V_n=(v_1,v_2,v_3)$ and $W_n=(w_1,w_2,w_3)$ with $v_1=r_{12n-11}-r_{12n-10}, v_2=r_{12n-9}+r_{12n-8}, v_3=r_{12n-7} \cdot r_{12n-6}$  and <br /> $w_1=r_{12n-5}-r_{12n-4}, w_2=r_{12n-3}+r_{12n-2}, w_3=r_{12n-1} \cdot r_{12n}$
<br />

we define $S(n)$ as the minimal value of the manhattan length of the vector $D=k \cdot V_n+l \cdot W_n$ measured as $|k \cdot v_1+l \cdot w_1|+|k \cdot v_2+l \cdot w_2|+|k \cdot v_3+l \cdot w_3|$
 for any integers $k$ and $l$ with $(k,l)\neq (0,0)$.
</p><p>
The first vector pair  is (-1, 3, 28), (-11, 125, 40826).<br />
You are given that $S(1)=32$ and $\sum_{n=1}^{10} S(n)=130762273722$.
</p>
<p>
Find $\sum_{n=1}^{20000000} S(n)$.
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3433-79a7cc1f5ecb
begin
    submit_answer(nothing; prob_num=507)
end

# ╔═╡ 1ae0d50e-84a3-11eb-109f-9337d75b4762
html"""
<h2>Problem 508: Integers in base i-1</h2>
<p>Consider the Gaussian integer i-1. A <b>base i-1 representation</b> of a Gaussian integer <var>a</var>+<var>b</var>i is a finite sequence of digits <var>d</var><sub><var>n</var>-1</sub><var>d</var><sub><var>n</var>-2</sub>...<var>d</var><sub>1</sub><var>d</var><sub>0</sub> such that:</p>

<ul><li><var>a</var>+<var>b</var>i = <var>d</var><sub><var>n</var>-1</sub>(i-1)<sup><var>n</var>-1</sup> + <var>d</var><sub><var>n</var>-2</sub>(i-1)<sup><var>n</var>-2</sup> + ... + <var>d</var><sub>1</sub>(i-1) + <var>d</var><sub>0</sub></li>
<li>Each <var>d</var><sub><var>k</var></sub> is in {0,1}</li>
<li>There are no leading zeroes, i.e. <var>d</var><sub>n-1</sub> ≠ 0, unless <var>a</var>+<var>b</var>i is itself 0</li>
</ul><p>Here are base i-1 representations of a few Gaussian integers:<br /><br />
11+24i → 111010110001101<br />
24-11i → 110010110011<br />
8+0i → 111000000<br />
-5+0i → 11001101<br />
0+0i → 0</p>

Remarkably, every Gaussian integer has a unique base i-1 representation!<br /><br />

Define <var>f</var>(<var>a</var>+<var>b</var>i) as the number of 1s in the unique base i-1 representation of <var>a</var>+<var>b</var>i. For example, <var>f</var>(11+24i) = 9 and <var>f</var>(24-11i) = 7.<br /><br />

Define <var>B</var>(<var>L</var>) as the sum of <var>f</var>(<var>a</var>+<var>b</var>i) for all integers <var>a</var>, <var>b</var> such that |<var>a</var>| ≤ <var>L</var> and |<var>b</var>| ≤ <var>L</var>. For example, <var>B</var>(500) = 10795060.<br /><br />

Find <var>B</var>(10<sup>15</sup>) mod 1 000 000 007.
"""

# ╔═╡ 1ae0d50e-84a3-11eb-208d-076e3d9ba9c4
begin
    submit_answer(nothing; prob_num=508)
end

# ╔═╡ 1ae0d50e-84a3-11eb-39e0-c3f759f832ac
html"""
<h2>Problem 509: Divisor Nim</h2>
<p>
Anton and Bertrand love to play three pile Nim.<br />
However, after a lot of games of Nim they got bored and changed the rules somewhat.<br />
They may only take a number of stones from a pile that is a <dfn title="a proper divisor of n is a divisor of n smaller than n">proper divisor</dfn> of the number of stones present in the pile.<br /> E.g. if a pile at a certain moment contains 24 stones they may take only 1,2,3,4,6,8 or 12 stones from that pile.<br />
So if a pile contains one stone they can't take the last stone from it as 1 isn't a proper divisor of 1.<br />
The first player that can't make a valid move loses the game.<br />
Of course both Anton and Bertrand play optimally.</p>
<p>
The triple (<var>a</var>,<var>b</var>,<var>c</var>) indicates the number of stones in the three piles.<br />
Let <var>S</var>(<var>n</var>) be the number of winning positions for the next player for 1 ≤ <var>a</var>, <var>b</var>, <var>c</var> ≤ <var>n</var>.<br /><var>S</var>(10) = 692 and <var>S</var>(100) = 735494.</p>
<p>
Find <var>S</var>(123456787654321) modulo 1234567890.
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-00d0-974d64271487
begin
    submit_answer(nothing; prob_num=509)
end

# ╔═╡ 1ae0d50e-84a3-11eb-3a38-85f98d2f4ad0
html"""
<h2>Problem 510: Tangent Circles</h2>
<p>Circles A and B are tangent to each other and to line L at three distinct points.<br />
Circle C is inside the space between A, B and L, and tangent to all three.<br />
Let <var>r</var><sub>A</sub>, <var>r</var><sub>B</sub> and <var>r</var><sub>C</sub> be the radii of A, B and C respectively.<br /></p><div align="center"><img src="project/images/p510_tangent_circles.png" alt="p510_tangent_circles.png" /></div>
<p>Let <var>S</var>(<var>n</var>) = <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>r</var><sub>A</sub> + <var>r</var><sub>B</sub> + <var>r</var><sub>C</sub>, for 0 &lt; <var>r</var><sub>A</sub> ≤ <var>r</var><sub>B</sub> ≤ <var>n</var> where <var>r</var><sub>A</sub>, <var>r</var><sub>B</sub> and <var>r</var><sub>C</sub> are integers.
The only solution for 0 &lt; <var>r</var><sub>A</sub> ≤ <var>r</var><sub>B</sub> ≤ 5 is <var>r</var><sub>A</sub> = 4, <var>r</var><sub>B</sub> = 4 and <var>r</var><sub>C</sub> = 1, so <var>S</var>(5) = 4 + 4 + 1 = 9.
You are also given <var>S</var>(100) = 3072.</p>
<p>Find <var>S</var>(10<sup>9</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-0b00-a3afada267bf
begin
    submit_answer(nothing; prob_num=510)
end

# ╔═╡ 1ae0d50e-84a3-11eb-3a0c-ad5837f208ed
html"""
<h2>Problem 511: Sequences with nice divisibility properties</h2>
<p>Let <var>Seq</var>(<var>n</var>,<var>k</var>) be the number of positive-integer sequences {<var>a<sub>i</sub></var>}<sub>1≤i≤<var>n</var></sub> of length <var>n</var> such that:</p>
<ul style="list-style-type:disc;"><li><var>n</var> is divisible by <var>a<sub>i</sub></var> for 1 ≤ <var>i</var> ≤ <var>n</var>, and</li>
  <li><var>n</var> + <var>a</var><sub>1</sub> + <var>a</var><sub>2</sub> + ... + <var>a<sub>n</sub></var> is divisible by <var>k</var>.</li>
</ul><p>Examples:</p>
<p><var>Seq</var>(3,4) = 4, and the 4 sequences are:<br />
{1, 1, 3}<br />
{1, 3, 1}<br />
{3, 1, 1}<br />
{3, 3, 3}</p>
<p><var>Seq</var>(4,11) = 8, and the 8 sequences are:<br />
{1, 1, 1, 4}<br />
{1, 1, 4, 1}<br />
{1, 4, 1, 1}<br />
{4, 1, 1, 1}<br />
{2, 2, 2, 1}<br />
{2, 2, 1, 2}<br />
{2, 1, 2, 2}<br />
{1, 2, 2, 2}</p>
<p>The last nine digits of <var>Seq</var>(1111,24) are 840643584.</p>
<p>Find the last nine digits of <var>Seq</var>(1234567898765,4321).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-005b-4d1031415bd1
begin
    submit_answer(nothing; prob_num=511)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1695-17fed18ffab9
html"""
<h2>Problem 512: Sums of totients of powers</h2>
<p>Let $\varphi(n)$ be Euler's totient function.</p><p>
Let $f(n)=(\sum_{i=1}^{n}\varphi(n^i)) \text{ mod } (n+1)$.</p><p>
Let $g(n)=\sum_{i=1}^{n} f(i)$.</p><p>
$g(100)=2007$.
</p>
<p>
Find $g(5 \times 10^8)$.
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2dd9-790a21473b38
begin
    submit_answer(nothing; prob_num=512)
end

# ╔═╡ 1ae34610-84a3-11eb-1a1d-331a94de16e7
html"""
<h2>Problem 513: Integral median</h2>
<p>
ABC is an integral sided triangle with sides a≤b≤c.<br />
m<sub>c</sub> is the median connecting C and the midpoint of AB. <br />
F(n) is the number of such triangles with  c≤n for which m<sub>c</sub> has integral length as well.<br />
F(10)=3 and F(50)=165.</p>
<p>
Find F(100000).
</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-332c-c527c4733bef
begin
    submit_answer(nothing; prob_num=513)
end

# ╔═╡ 1ae34610-84a3-11eb-3dab-c5ca43011a41
html"""
<h2>Problem 514: Geoboard Shapes</h2>
<p>A <b>geoboard</b> (of order <var>N</var>) is a square board with equally-spaced pins protruding from the surface, representing an integer point lattice for coordinates 0 ≤ <var>x</var>,<var>y</var> ≤ <var>N</var>.</p>

<p>John begins with a pinless geoboard. Each position on the board is a hole that can be filled with a pin. John decides to generate a random integer between 1 and <var>N</var>+1 (inclusive) for each hole in the geoboard. If the random integer is equal to 1 for a given hole, then a pin is placed in that hole.</p>

<p>After John is finished generating numbers for all (<var>N</var>+1)<sup>2</sup> holes and placing any/all corresponding pins, he wraps a tight rubberband around the entire group of pins protruding from the board. Let <var>S</var> represent the shape that is formed. <var>S</var> can also be defined as the smallest convex shape that contains all the pins.</p>

<div align="center"><img src="project/images/p514_geoboard.png" alt="p514_geoboard.png" /></div>

<p>The above image depicts a sample layout for <var>N</var> = 4. The green markers indicate positions where pins have been placed, and the blue lines collectively represent the rubberband. For this particular arrangement, <var>S</var> has an area of 6. If there are fewer than three pins on the board (or if all pins are collinear), <var>S</var> can be assumed to have zero area.</p>

<p>Let E(<var>N</var>) be the expected area of <var>S</var> given a geoboard of order <var>N</var>. For example, E(1) = 0.18750, E(2) = 0.94335, and E(10) = 55.03013 when rounded to five decimal places each.</p>

<p>Calculate E(100) rounded to five decimal places.</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-26dc-1f9bd6ac1224
begin
    submit_answer(nothing; prob_num=514)
end

# ╔═╡ 1ae34610-84a3-11eb-39f0-196eefeea164
html"""
<h2>Problem 515: Dissonant Numbers</h2>
<p>Let <var>d</var>(<var>p</var>,<var>n</var>,0) be the multiplicative inverse of <var>n</var> modulo prime <var>p</var>, defined as <var>n</var> × <var>d</var>(<var>p</var>,<var>n</var>,0) = 1 mod <var>p</var>.<br />
Let <var>d</var>(<var>p</var>,<var>n</var>,<var>k</var>) = $\sum_{i=1}^n$<var>d</var>(<var>p</var>,<var>i</var>,<var>k</var>−1) for <var>k</var> ≥ 1.<br />
Let <var>D</var>(<var>a</var>,<var>b</var>,<var>k</var>) = $\sum$(<var>d</var>(<var>p</var>,<var>p</var>-1,<var>k</var>) mod <var>p</var>) for all primes <var>a</var> ≤ <var>p</var> &lt; <var>a</var> + <var>b</var>.</p>
<p>You are given:</p>
<ul><li><var>D</var>(101,1,10) = 45</li>
<li><var>D</var>(10<sup>3</sup>,10<sup>2</sup>,10<sup>2</sup>) = 8334</li>
<li><var>D</var>(10<sup>6</sup>,10<sup>3</sup>,10<sup>3</sup>) = 38162302</li></ul><p>Find <var>D</var>(10<sup>9</sup>,10<sup>5</sup>,10<sup>5</sup>).</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-0dbe-ebd38d580d16
begin
    submit_answer(nothing; prob_num=515)
end

# ╔═╡ 1ae34610-84a3-11eb-2248-5d87a0f66999
html"""
<h2>Problem 516: 5-smooth totients</h2>
<p>
5-smooth numbers are numbers whose largest prime factor doesn't exceed 5.<br />
5-smooth numbers are also called Hamming numbers.<br />
Let S(L) be the sum of the numbers n not exceeding L such that Euler's totient function φ(n) is a Hamming number.<br />
S(100)=3728.
</p>
<p>
Find S(10<sup>12</sup>). Give your answer modulo 2<sup>32</sup>.
</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-1d42-e153a4780528
begin
    submit_answer(nothing; prob_num=516)
end

# ╔═╡ 1ae34610-84a3-11eb-2356-099690fb496f
html"""
<h2>Problem 517: A real recursion</h2>
<p>
For every real number $a \gt 1$ is given the sequence $g_a$ by:<br />
$g_{a}(x)=1$ for $x \lt a$<br />
$g_{a}(x)=g_{a}(x-1)+g_a(x-a)$ for $x \ge a$<br />

$G(n)=g_{\sqrt {n}}(n)$<br />
$G(90)=7564511$.</p>
<p>
Find $\sum G(p)$ for $p$ prime and $10000000 \lt p \lt 10010000$<br />
Give your answer modulo 1000000007.
</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-3f81-87b95eed8d0b
begin
    submit_answer(nothing; prob_num=517)
end

# ╔═╡ 1ae34610-84a3-11eb-1a39-e3cafe6f9c2b
html"""
<h2>Problem 518: Prime triples and geometric sequences</h2>
<p>Let S(<var>n</var>) = Σ <var>a</var>+<var>b</var>+<var>c</var> over all triples (<var>a</var>,<var>b</var>,<var>c</var>) such that:</p>

<ul style="list-style-type:disc;"><li><var>a</var>, <var>b</var>, and <var>c</var> are prime numbers.</li>
<li><var>a</var> &lt; <var>b</var> &lt; <var>c</var> &lt; <var>n</var>.</li>
<li><var>a</var>+1, <var>b</var>+1, and <var>c</var>+1 form a <b>geometric sequence</b>.</li>
</ul><p>For example, S(100) = 1035 with the following triples: </p>

<p>(2, 5, 11), (2, 11, 47), (5, 11, 23), (5, 17, 53), (7, 11, 17), (7, 23, 71), (11, 23, 47), (17, 23, 31), (17, 41, 97), (31, 47, 71), (71, 83, 97)</p>

<p>Find S(10<sup>8</sup>).</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-2a26-f9ed0ffce4f4
begin
    submit_answer(nothing; prob_num=518)
end

# ╔═╡ 1ae34610-84a3-11eb-131a-330e50d705af
html"""
<h2>Problem 519: Tricoloured Coin Fountains</h2>
<p>An arrangement of coins in one or more rows with the bottom row being a block without gaps and every coin in a higher row touching exactly two coins in the row below is called a <b>fountain</b> of coins. Let <var>f</var>(<var>n</var>) be the number of possible fountains with <var>n</var> coins. For 4 coins there are three possible arrangements:</p>
<div align="center"><img src="project/images/p519_coin_fountain.png" alt="p519_coin_fountain.png" /></div>
<p>Therefore <var>f</var>(4) = 3 while <var>f</var>(10) = 78.</p>
<p>Let <var>T</var>(<var>n</var>) be the number of all possible colourings with three colours for all <var>f</var>(<var>n</var>) different fountains with <var>n</var> coins, given the condition that no two touching coins have the same colour. Below you see the possible colourings for one of the three valid fountains for 4 coins:</p>
<div align="center"><img src="project/images/p519_tricolored_coin_fountain.png" alt="p519_tricolored_coin_fountain.png" /></div>
<p>You are given that <var>T</var>(4) = 48 and <var>T</var>(10) = 17760.</p>
<p>Find the last 9 digits of <var>T</var>(20000).</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-1b98-b37576d87016
begin
    submit_answer(nothing; prob_num=519)
end

# ╔═╡ 1ae34610-84a3-11eb-1f4f-3dd84a7c581a
html"""
<h2>Problem 520: Simbers</h2>
<p>We define a <i>simber</i> to be a positive integer in which any odd digit, if present, occurs an odd number of times, and any even digit, if present, occurs an even number of times.</p>

<p>For example, 141221242 is a 9-digit simber because it has three 1's, four 2's and two 4's. </p>

<p>Let Q(<var>n</var>) be the count of all simbers with at most <var>n</var> digits.</p> 

<p>You are given Q(7) = 287975 and Q(100) mod 1 000 000 123 = 123864868.</p>

<p>Find (<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span><sub>1≤<var>u</var>≤39</sub> Q(2<sup><var>u</var></sup>)) mod 1 000 000 123.</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-3378-370725283bae
begin
    submit_answer(nothing; prob_num=520)
end

# ╔═╡ 1ae34610-84a3-11eb-3049-534039111739
html"""
<h2>Problem 521: Smallest prime factor</h2>
<p>
Let smpf(<var>n</var>) be the smallest prime factor of <var>n</var>.<br />
smpf(91)=7 because 91=7×13 and smpf(45)=3 because 45=3×3×5.<br />
Let S(<var>n</var>) be the sum of smpf(<var>i</var>) for 2 ≤ <var>i</var> ≤ <var>n</var>.<br />
E.g. S(100)=1257.
</p>

<p>
Find S(10<sup>12</sup>) mod 10<sup>9</sup>.
</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-18c5-8d61d8d2c1be
begin
    submit_answer(nothing; prob_num=521)
end

# ╔═╡ 1ae34610-84a3-11eb-0d7d-57217f6f6b3b
html"""
<h2>Problem 522: Hilbert's Blackout</h2>
<p>Despite the popularity of Hilbert's infinite hotel, Hilbert decided to try managing extremely large finite hotels, instead.</p> 

<p>To cut costs, Hilbert wished to power the new hotel with his own special generator. Each floor would send power to the floor above it, with the top floor sending power back down to the bottom floor. That way, Hilbert could have the generator placed on any given floor (as he likes having the option) and have electricity flow freely throughout the entire hotel.</p>

<p>Unfortunately, the contractors misinterpreted the schematics when they built the hotel. They informed Hilbert that each floor sends power to another floor at random, instead. This may compromise Hilbert's freedom to have the generator placed anywhere, since blackouts could occur on certain floors.</p>

<p>For example, consider a sample flow diagram for a three-story hotel:</p>

<p align="center"><img src="project/images/p522_hilberts_blackout.png" alt="p522_hilberts_blackout.png" /></p>

<p>If the generator were placed on the first floor, then every floor would receive power. But if it were placed on the second or third floors instead, then there would be a blackout on the first floor. Note that while a given floor can <i>receive</i> power from many other floors at once, it can only <i>send</i> power to one other floor.</p>

<p>To resolve the blackout concerns, Hilbert decided to have a minimal number of floors rewired. To rewire a floor is to change the floor it sends power to. In the sample diagram above, all possible blackouts can be avoided by rewiring the second floor to send power to the first floor instead of the third floor.</p>

<p>Let F(<var>n</var>) be the sum of the minimum number of floor rewirings needed over all possible power-flow arrangements in a hotel of <var>n</var> floors. For example, F(3) = 6, F(8) = 16276736, and F(100) mod 135707531 = 84326147.</p>

<p>Find F(12344321) mod 135707531.</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-0ca4-3503bd49665d
begin
    submit_answer(nothing; prob_num=522)
end

# ╔═╡ 1ae34610-84a3-11eb-2b89-37008ebcdda2
html"""
<h2>Problem 523: First Sort I</h2>
<p>Consider the following algorithm for sorting a list:</p>
<ul style="list-style-type:none;"><li>1. Starting from the beginning of the list, check each pair of adjacent elements in turn.</li>
<li>2. If the elements are out of order:
<ul style="list-style-type:none;"><li>a. Move the smallest element of the pair at the beginning of the list.</li>
<li>b. Restart the process from step 1.</li></ul></li>
<li>3. If all pairs are in order, stop.</li></ul>
<p>For example, the list { 4 1 3 2 } is sorted as follows:</p>
<ul style="list-style-type:none;"><li><u>4 1</u> 3 2  (4 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 <u>4 3</u> 2  (4 and 3 are out of order so move 3 to the front of the list)</li>
<li><u>3 1</u> 4 2  (3 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 3 <u>4 2</u>  (4 and 2 are out of order so move 2 to the front of the list)</li>
<li><u>2 1</u> 3 4  (2 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 2 3 4  (The list is now sorted)</li></ul>

<p>Let <var>F</var>(<var>L</var>) be the number of times step 2a is executed to sort list <var>L</var>. For example, <var>F</var>({ 4 1 3 2 }) = 5.</p>

<p>Let <var>E</var>(<var>n</var>) be the <b>expected value</b> of <var>F</var>(<var>P</var>) over all permutations <var>P</var> of the integers {1, 2, ..., <var>n</var>}.<br />
You are given <var>E</var>(4) = 3.25 and <var>E</var>(10) = 115.725.</p>

<p>Find <var>E</var>(30). Give your answer rounded to two digits after the decimal point.</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-2dff-e545c4a951dd
begin
    submit_answer(nothing; prob_num=523)
end

# ╔═╡ 1ae34610-84a3-11eb-1c78-75f77b8a40cb
html"""
<h2>Problem 524: First Sort II</h2>
<p>Consider the following algorithm for sorting a list:</p>
<ul style="list-style-type:none;"><li>1. Starting from the beginning of the list, check each pair of adjacent elements in turn.</li>
<li>2. If the elements are out of order:
<ul style="list-style-type:none;"><li>a. Move the smallest element of the pair at the beginning of the list.</li>
<li>b. Restart the process from step 1.</li></ul></li>
<li>3. If all pairs are in order, stop.</li></ul>
<p>For example, the list { 4 1 3 2 } is sorted as follows:</p>
<ul style="list-style-type:none;"><li><u>4 1</u> 3 2  (4 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 <u>4 3</u> 2  (4 and 3 are out of order so move 3 to the front of the list)</li>
<li><u>3 1</u> 4 2  (3 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 3 <u>4 2</u>  (4 and 2 are out of order so move 2 to the front of the list)</li>
<li><u>2 1</u> 3 4  (2 and 1 are out of order so move 1 to the front of the list)</li>
<li>1 2 3 4  (The list is now sorted)</li></ul>

<p>Let <var>F</var>(<var>L</var>) be the number of times step 2a is executed to sort list <var>L</var>. For example, <var>F</var>({ 4 1 3 2 }) = 5.</p>

<p>We can list all permutations <var>P</var> of the integers {1, 2, ..., <var>n</var>} in <b>lexicographical order</b>, and assign to each permutation an index <var>I</var><sub><var>n</var></sub>(<var>P</var>) from 1 to <var>n</var>! corresponding to its position in the list.

</p><p>Let <var>Q</var>(<var>n</var>, <var>k</var>) = min(<var>I</var><sub><var>n</var></sub>(<var>P</var>)) for <var>F</var>(<var>P</var>) = <var>k</var>, the index of the first permutation requiring exactly <var>k</var> steps to sort with First Sort. If there is no permutation for which <var>F</var>(<var>P</var>) = <var>k</var>, then <var>Q</var>(<var>n</var>, <var>k</var>) is undefined.</p>

<p>For <var>n</var> = 4 we have:</p>

<p></p><table border="1" style="text-align:left;">
<tr><th><var>P</var></th><th><var>I</var><sub>4</sub>(<var>P</var>)</th><th><var>F</var>(<var>P</var>)</th><th></th></tr>
<tr><td>{1, 2, 3, 4}</td><td>1</td><td>0</td><td>Q(4, 0) = 1</td></tr>
<tr><td>{1, 2, 4, 3}</td><td>2</td><td>4</td><td>Q(4, 4) = 2</td></tr>
<tr><td>{1, 3, 2, 4}</td><td>3</td><td>2</td><td>Q(4, 2) = 3</td></tr>
<tr><td>{1, 3, 4, 2}</td><td>4</td><td>2</td><td></td></tr>
<tr><td>{1, 4, 2, 3}</td><td>5</td><td>6</td><td>Q(4, 6) = 5</td></tr>
<tr><td>{1, 4, 3, 2}</td><td>6</td><td>4</td><td></td></tr>
<tr><td>{2, 1, 3, 4}</td><td>7</td><td>1</td><td>Q(4, 1) = 7</td></tr>
<tr><td>{2, 1, 4, 3}</td><td>8</td><td>5</td><td>Q(4, 5) = 8</td></tr>
<tr><td>{2, 3, 1, 4}</td><td>9</td><td>1</td><td></td></tr>
<tr><td>{2, 3, 4, 1}</td><td>10</td><td>1</td><td></td></tr>
<tr><td>{2, 4, 1, 3}</td><td>11</td><td>5</td><td></td></tr>
<tr><td>{2, 4, 3, 1}</td><td>12</td><td>3</td><td>Q(4, 3) = 12</td></tr>
<tr><td>{3, 1, 2, 4}</td><td>13</td><td>3</td><td></td></tr>
<tr><td>{3, 1, 4, 2}</td><td>14</td><td>3</td><td></td></tr>
<tr><td>{3, 2, 1, 4}</td><td>15</td><td>2</td><td></td></tr>
<tr><td>{3, 2, 4, 1}</td><td>16</td><td>2</td><td></td></tr>
<tr><td>{3, 4, 1, 2}</td><td>17</td><td>3</td><td></td></tr>
<tr><td>{3, 4, 2, 1}</td><td>18</td><td>2</td><td></td></tr>
<tr><td>{4, 1, 2, 3}</td><td>19</td><td>7</td><td>Q(4, 7) = 19</td></tr>
<tr><td>{4, 1, 3, 2}</td><td>20</td><td>5</td><td></td></tr>
<tr><td>{4, 2, 1, 3}</td><td>21</td><td>6</td><td></td></tr>
<tr><td>{4, 2, 3, 1}</td><td>22</td><td>4</td><td></td></tr>
<tr><td>{4, 3, 1, 2}</td><td>23</td><td>4</td><td></td></tr>
<tr><td>{4, 3, 2, 1}</td><td>24</td><td>3</td><td></td></tr>
</table>

<p>Let <var>R</var>(<var>k</var>) = min(<var>Q</var>(<var>n</var>, <var>k</var>)) over all <var>n</var> for which <var>Q</var>(<var>n</var>, <var>k</var>) is defined.</p>

<p>Find <var>R</var>(12<sup>12</sup>).</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-1027-39f5878ecf2b
begin
    submit_answer(nothing; prob_num=524)
end

# ╔═╡ 1ae34610-84a3-11eb-3994-6d6690f49b57
html"""
<h2>Problem 525: Rolling Ellipse</h2>
<p>An ellipse <var>E</var>(<var>a</var>, <var>b</var>) is given at its initial position by equation:<br />
$\frac {x^2} {a^2} + \frac {(y - b)^2} {b^2} = 1$</p>

<p>The ellipse rolls without slipping along the <var>x</var> axis for one complete turn. Interestingly, the length of the curve generated by a focus is independent from the size of the minor axis:<br />
$F(a,b) =  2 \pi \text{ } max(a,b)$</p>

<div align="center"><img src="project/images/p525-rolling-ellipse-1.gif" alt="p525-rolling-ellipse-1.gif" /></div>

<p>This is not true for the curve generated by the ellipse center. Let <var>C</var>(<var>a</var>,<var>b</var>) be the length of the curve generated by the center of the ellipse as it rolls without slipping for one turn.</p>

<div align="center"><img src="project/images/p525-rolling-ellipse-2.gif" alt="p525-rolling-ellipse-2.gif" /></div>

<p>You are given <var>C</var>(2, 4) ~ 21.38816906.</p>

<p>Find <var>C</var>(1, 4) + <var>C</var>(3, 4). Give your answer rounded to 8 digits behind the decimal point in the form <i>ab.cdefghij</i>.</p>
"""

# ╔═╡ 1ae34610-84a3-11eb-0bcf-2902c17b455c
begin
    submit_answer(nothing; prob_num=525)
end

# ╔═╡ Cell order:
# ╠═1ae0d50e-84a3-11eb-1b4a-f7d4f683c420
# ╟─1ae0d50e-84a3-11eb-1604-cf4868b4c958
# ╠═1ae0d50e-84a3-11eb-1d68-a161a3ca056d
# ╟─1ae0d50e-84a3-11eb-13db-09a137772bb9
# ╠═1ae0d50e-84a3-11eb-1ca6-03735ca64681
# ╟─1ae0d50e-84a3-11eb-19c5-13a20f84bd81
# ╠═1ae0d50e-84a3-11eb-2402-fb3b2a8c9c81
# ╟─1ae0d50e-84a3-11eb-0d8d-915efef75733
# ╠═1ae0d50e-84a3-11eb-1dcd-b72026b34e3a
# ╟─1ae0d50e-84a3-11eb-31cf-1d562e1f52d0
# ╠═1ae0d50e-84a3-11eb-219d-099aec88c0cf
# ╟─1ae0d50e-84a3-11eb-15e9-7ba068b5aa06
# ╠═1ae0d50e-84a3-11eb-232d-4b94ad1ec305
# ╟─1ae0d50e-84a3-11eb-1e46-33400130b9e4
# ╠═1ae0d50e-84a3-11eb-3433-79a7cc1f5ecb
# ╟─1ae0d50e-84a3-11eb-109f-9337d75b4762
# ╠═1ae0d50e-84a3-11eb-208d-076e3d9ba9c4
# ╟─1ae0d50e-84a3-11eb-39e0-c3f759f832ac
# ╠═1ae0d50e-84a3-11eb-00d0-974d64271487
# ╟─1ae0d50e-84a3-11eb-3a38-85f98d2f4ad0
# ╠═1ae0d50e-84a3-11eb-0b00-a3afada267bf
# ╟─1ae0d50e-84a3-11eb-3a0c-ad5837f208ed
# ╠═1ae0d50e-84a3-11eb-005b-4d1031415bd1
# ╟─1ae0d50e-84a3-11eb-1695-17fed18ffab9
# ╠═1ae0d50e-84a3-11eb-2dd9-790a21473b38
# ╟─1ae34610-84a3-11eb-1a1d-331a94de16e7
# ╠═1ae34610-84a3-11eb-332c-c527c4733bef
# ╟─1ae34610-84a3-11eb-3dab-c5ca43011a41
# ╠═1ae34610-84a3-11eb-26dc-1f9bd6ac1224
# ╟─1ae34610-84a3-11eb-39f0-196eefeea164
# ╠═1ae34610-84a3-11eb-0dbe-ebd38d580d16
# ╟─1ae34610-84a3-11eb-2248-5d87a0f66999
# ╠═1ae34610-84a3-11eb-1d42-e153a4780528
# ╟─1ae34610-84a3-11eb-2356-099690fb496f
# ╠═1ae34610-84a3-11eb-3f81-87b95eed8d0b
# ╟─1ae34610-84a3-11eb-1a39-e3cafe6f9c2b
# ╠═1ae34610-84a3-11eb-2a26-f9ed0ffce4f4
# ╟─1ae34610-84a3-11eb-131a-330e50d705af
# ╠═1ae34610-84a3-11eb-1b98-b37576d87016
# ╟─1ae34610-84a3-11eb-1f4f-3dd84a7c581a
# ╠═1ae34610-84a3-11eb-3378-370725283bae
# ╟─1ae34610-84a3-11eb-3049-534039111739
# ╠═1ae34610-84a3-11eb-18c5-8d61d8d2c1be
# ╟─1ae34610-84a3-11eb-0d7d-57217f6f6b3b
# ╠═1ae34610-84a3-11eb-0ca4-3503bd49665d
# ╟─1ae34610-84a3-11eb-2b89-37008ebcdda2
# ╠═1ae34610-84a3-11eb-2dff-e545c4a951dd
# ╟─1ae34610-84a3-11eb-1c78-75f77b8a40cb
# ╠═1ae34610-84a3-11eb-1027-39f5878ecf2b
# ╟─1ae34610-84a3-11eb-3994-6d6690f49b57
# ╠═1ae34610-84a3-11eb-0bcf-2902c17b455c