### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 230e6170-2b5d-11eb-19e7-2d7a7028fd1a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 230e6170-2b5d-11eb-0740-f7875bec5c12
html"""
<h2>Problem 501: Eight Divisors</h2>
<p>The eight divisors of 24 are 1, 2, 3, 4, 6, 8, 12 and 24.
The ten numbers not exceeding 100 having exactly eight divisors are 24, 30, 40, 42, 54, 56, 66, 70, 78 and 88.
Let <var>f</var>(<var>n</var>) be the count of numbers not exceeding <var>n</var> with exactly eight divisors.<br />
You are given <var>f</var>(100) = 10, <var>f</var>(1000) = 180 and <var>f</var>(10<sup>6</sup>) = 224427.<br />
Find <var>f</var>(10<sup>12</sup>).</p>
"""

# ╔═╡ 230e6170-2b5d-11eb-21c6-752d37f5b046
begin
    submit_answer(nothing; prob_num=501)
end

# ╔═╡ 230e8880-2b5d-11eb-2747-99d896b234a7
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

# ╔═╡ 230e8880-2b5d-11eb-32e3-e569e66cae2b
begin
    submit_answer(nothing; prob_num=502)
end

# ╔═╡ 230e8880-2b5d-11eb-1857-0dfc8a401c4d
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

# ╔═╡ 230e8880-2b5d-11eb-2048-7fbb7b706037
begin
    submit_answer(nothing; prob_num=503)
end

# ╔═╡ 230e8880-2b5d-11eb-1021-99557fe1804a
html"""
<h2>Problem 504: Square on the Inside</h2>
<p>Let <var>ABCD</var> be a quadrilateral whose vertices are lattice points lying on the coordinate axes as follows:</p>

<p><var>A</var>(<var>a</var>, 0), <var>B</var>(0, <var>b</var>), <var>C</var>(<var>−c</var>, 0), <var>D</var>(0, <var>−d</var>), where 1 ≤ <var>a</var>, <var>b</var>, <var>c</var>, <var>d</var> ≤ <var>m</var> and <var>a</var>, <var>b</var>, <var>c</var>, <var>d</var>, <var>m</var> are integers.</p>

<p>It can be shown that for <var>m</var> = 4 there are exactly 256 valid ways to construct <var>ABCD</var>. Of these 256 quadrilaterals, 42 of them <u>strictly</u> contain a square number of lattice points.</p>

<p>How many quadrilaterals <var>ABCD</var> strictly contain a square number of lattice points for <var>m</var> = 100?</p>
"""

# ╔═╡ 230e8880-2b5d-11eb-3555-bf7fb782843b
begin
    submit_answer(nothing; prob_num=504)
end

# ╔═╡ 230e8880-2b5d-11eb-0e7e-a340ac0498dd
html"""
<h2>Problem 505: Bidirectional Recurrence</h2>
<p>Let:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(0)&amp;=0 \\ x(1)&amp;=1 \\ x(2k)&amp;=(3x(k)+2x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \text {, where } \lfloor \text { } \rfloor \text { is the floor function} \\ x(2k+1)&amp;=(2x(k)+3x(\lfloor \frac k 2 \rfloor)) \text{ mod } 2^{60} \text{ for } k \ge 1 \\ y_n(k)&amp;=\left\{{\begin{array}{lc} x(k) &amp;&amp; \text{if } k \ge n \\ 2^{60} - 1 - max(y_n(2k),y_n(2k+1)) &amp;&amp; \text{if } k &lt; n \end{array}} \right. \\ A(n)&amp;=y_n(1) \end{array}$</p>
<p>You are given:</p>
<p style="margin-left:32px;">$\begin{array}{ll} x(2)&amp;=3 \\ x(3)&amp;=2 \\ x(4)&amp;=11 \\ y_4(4)&amp;=11 \\ y_4(3)&amp;=2^{60}-9\\ y_4(2)&amp;=2^{60}-12 \\ y_4(1)&amp;=A(4)=8 \\ A(10)&amp;=2^{60}-34\\ A(10^3)&amp;=101881 \end{array}$</p>
Find $A(10^{12})$.
"""

# ╔═╡ 230e8880-2b5d-11eb-17df-27ba1d60d226
begin
    submit_answer(nothing; prob_num=505)
end

# ╔═╡ 230e8880-2b5d-11eb-0d9e-799b838049b3
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

# ╔═╡ 230e8880-2b5d-11eb-242b-bb0ced44bca6
begin
    submit_answer(nothing; prob_num=506)
end

# ╔═╡ 230e8880-2b5d-11eb-35cf-490e3dc779bf
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

# ╔═╡ 230e8880-2b5d-11eb-1c66-2be8e7b2299b
begin
    submit_answer(nothing; prob_num=507)
end

# ╔═╡ 230e8880-2b5d-11eb-1c48-b7a553c77565
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

# ╔═╡ 230e8880-2b5d-11eb-1ced-596c0bdb7ecc
begin
    submit_answer(nothing; prob_num=508)
end

# ╔═╡ 230e8880-2b5d-11eb-3707-6729de11bad2
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

# ╔═╡ 230e8880-2b5d-11eb-1eec-7150e51f722c
begin
    submit_answer(nothing; prob_num=509)
end

# ╔═╡ 230e8880-2b5d-11eb-2098-95101d65284f
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

# ╔═╡ 230e8880-2b5d-11eb-18cb-9d8c85a62a72
begin
    submit_answer(nothing; prob_num=510)
end

# ╔═╡ 230e8880-2b5d-11eb-0dcd-332d684e4f7c
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

# ╔═╡ 230e8880-2b5d-11eb-03f2-4dcc643328b6
begin
    submit_answer(nothing; prob_num=511)
end

# ╔═╡ 230e8880-2b5d-11eb-11d6-330a571a324e
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

# ╔═╡ 230e8880-2b5d-11eb-2cc7-1d7541272662
begin
    submit_answer(nothing; prob_num=512)
end

# ╔═╡ 230e8880-2b5d-11eb-00be-5514f41c25b5
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

# ╔═╡ 230e8880-2b5d-11eb-2975-ed206c4f2d55
begin
    submit_answer(nothing; prob_num=513)
end

# ╔═╡ 230eaf92-2b5d-11eb-3985-df4c9a3aff71
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

# ╔═╡ 230eaf92-2b5d-11eb-1716-334412af0871
begin
    submit_answer(nothing; prob_num=514)
end

# ╔═╡ 230eaf92-2b5d-11eb-1a2c-7775250f7720
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

# ╔═╡ 230eaf92-2b5d-11eb-15c7-b33e30fe2dd8
begin
    submit_answer(nothing; prob_num=515)
end

# ╔═╡ 230eaf92-2b5d-11eb-1bed-a3568bc01d4f
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

# ╔═╡ 230eaf92-2b5d-11eb-1dc5-8168614cfd96
begin
    submit_answer(nothing; prob_num=516)
end

# ╔═╡ 230eaf92-2b5d-11eb-005f-e908580be4e6
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

# ╔═╡ 230eaf92-2b5d-11eb-22a8-01fae9e9d4d6
begin
    submit_answer(nothing; prob_num=517)
end

# ╔═╡ 230eaf92-2b5d-11eb-3cf7-5984a7dab110
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

# ╔═╡ 230eaf92-2b5d-11eb-0b63-eb69ba51ca74
begin
    submit_answer(nothing; prob_num=518)
end

# ╔═╡ 230eaf92-2b5d-11eb-17b6-c3e3626fdef4
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

# ╔═╡ 230eaf92-2b5d-11eb-2e8a-5176e495d899
begin
    submit_answer(nothing; prob_num=519)
end

# ╔═╡ 230eaf92-2b5d-11eb-13af-37e95f3efec0
html"""
<h2>Problem 520: Simbers</h2>
<p>We define a <i>simber</i> to be a positive integer in which any odd digit, if present, occurs an odd number of times, and any even digit, if present, occurs an even number of times.</p>

<p>For example, 141221242 is a 9-digit simber because it has three 1's, four 2's and two 4's. </p>

<p>Let Q(<var>n</var>) be the count of all simbers with at most <var>n</var> digits.</p> 

<p>You are given Q(7) = 287975 and Q(100) mod 1 000 000 123 = 123864868.</p>

<p>Find (<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span><sub>1≤<var>u</var>≤39</sub> Q(2<sup><var>u</var></sup>)) mod 1 000 000 123.</p>
"""

# ╔═╡ 230eaf92-2b5d-11eb-3205-895390a80e55
begin
    submit_answer(nothing; prob_num=520)
end

# ╔═╡ 230eaf92-2b5d-11eb-1a93-03326470af48
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

# ╔═╡ 230eaf92-2b5d-11eb-1db3-d9d0eb20c710
begin
    submit_answer(nothing; prob_num=521)
end

# ╔═╡ 230eaf92-2b5d-11eb-27cc-439cf1833140
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

# ╔═╡ 230eaf92-2b5d-11eb-2bc4-39cdf620f269
begin
    submit_answer(nothing; prob_num=522)
end

# ╔═╡ 230eaf92-2b5d-11eb-2710-079fc1aa62da
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

# ╔═╡ 230eaf92-2b5d-11eb-035c-53d137c43a23
begin
    submit_answer(nothing; prob_num=523)
end

# ╔═╡ 230eaf92-2b5d-11eb-29c7-491e62d407ab
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

# ╔═╡ 230eaf92-2b5d-11eb-0b56-1be7917d3057
begin
    submit_answer(nothing; prob_num=524)
end

# ╔═╡ 230eaf92-2b5d-11eb-33f7-9123931f1cd1
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

# ╔═╡ 230eaf92-2b5d-11eb-1079-6d5b885395c1
begin
    submit_answer(nothing; prob_num=525)
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
# ╠═22e26f70-2b5d-11eb-1e2b-190de2fee4cf
# ╟─22e26f70-2b5d-11eb-2022-9780eae916d3
# ╠═22e26f70-2b5d-11eb-0a6a-cb8b8348c07d
# ╟─22e29680-2b5d-11eb-2d39-b7b2230f8fa2
# ╠═22e29680-2b5d-11eb-3ea0-a761248a90f4
# ╟─22e29680-2b5d-11eb-116e-81405e1fb749
# ╠═22e29680-2b5d-11eb-192d-1525a6fb74bf
# ╟─22e29680-2b5d-11eb-1079-69eacaf4860c
# ╠═22e29680-2b5d-11eb-3fd7-d53b79113799
# ╟─22e29680-2b5d-11eb-04ee-25f8dfe9e367
# ╠═22e29680-2b5d-11eb-3cbf-97a643d05628
# ╟─22e29680-2b5d-11eb-04b4-5b44696ed582
# ╠═22e29680-2b5d-11eb-388a-a18caaf7f19d
# ╟─22e29680-2b5d-11eb-0d0a-1fedb4597ac2
# ╠═22e29680-2b5d-11eb-2da9-19f4e0cbfb44
# ╟─22e29680-2b5d-11eb-19bd-c9c6b474ed3b
# ╠═22e29680-2b5d-11eb-2860-bb47fa205692
# ╟─22e29680-2b5d-11eb-3605-a5e78f9ab1ee
# ╠═22e29680-2b5d-11eb-2762-174bbd15c3e4
# ╟─22e29680-2b5d-11eb-3dc0-f72bc76bc61a
# ╠═22e29680-2b5d-11eb-1506-d1e2f1a013e6
# ╟─22e29680-2b5d-11eb-1db1-0d7540012e0c
# ╠═22e29680-2b5d-11eb-044b-e3194ecff776
# ╟─22e29680-2b5d-11eb-2a4a-abb5a170e148
# ╠═22e29680-2b5d-11eb-181a-9539922cde66
# ╟─22e2bd90-2b5d-11eb-0ea1-8f56ac409673
# ╠═22e2bd90-2b5d-11eb-28e0-e5cb3ad1ce33
# ╟─22e2bd90-2b5d-11eb-1289-b94465758128
# ╠═22e2bd90-2b5d-11eb-1fa6-bd1ae5a44dc5
# ╟─22e2bd90-2b5d-11eb-38db-29be13293161
# ╠═22e2bd90-2b5d-11eb-3a66-dfbba8a2a934
# ╟─22e2bd90-2b5d-11eb-0098-f5f5e50fb778
# ╠═22e2bd90-2b5d-11eb-29c9-67d07af6a073
# ╟─22e2bd90-2b5d-11eb-1d88-8f0f05f69212
# ╠═22e2bd90-2b5d-11eb-38db-69cb14696107
# ╟─22e2bd90-2b5d-11eb-2053-a75a97762fd8
# ╠═22e2bd90-2b5d-11eb-0a5c-43eca718ef56
# ╟─22e2bd90-2b5d-11eb-3262-4fc715a4a1c6
# ╠═22e2bd90-2b5d-11eb-1db1-b1e56386ebb8
# ╟─22e2bd90-2b5d-11eb-1361-41bd4e7940e6
# ╠═22e2bd90-2b5d-11eb-38ba-b7c81dc61a85
# ╟─22e2bd90-2b5d-11eb-068f-d36f4e600684
# ╠═22e2bd90-2b5d-11eb-0f35-13b546782f04
# ╟─22e2bd90-2b5d-11eb-1810-3d5a39cb8004
# ╠═22e2bd90-2b5d-11eb-3378-3da1fffbf133
# ╟─22e2bd90-2b5d-11eb-12a9-afeb7aae9e36
# ╠═22e2bd90-2b5d-11eb-1bcb-616eb36ff032
# ╟─22e2bd90-2b5d-11eb-0257-17468ecc6e71
# ╠═22e2bd90-2b5d-11eb-35e9-31593fdebb15
# ╟─22e2bd90-2b5d-11eb-2dd8-053709c20895
# ╠═22e2bd90-2b5d-11eb-12c1-6fde18c56bb0
# ╠═22e3f610-2b5d-11eb-136f-6732c6179af1
# ╟─22e3f610-2b5d-11eb-028c-8b6b87282d2a
# ╠═22e3f610-2b5d-11eb-3db3-2ff8bfdf5585
# ╟─22e3f610-2b5d-11eb-381d-7f1950b0bb00
# ╠═22e3f610-2b5d-11eb-0bfc-11b0ba263537
# ╟─22e41d20-2b5d-11eb-2494-c380c3b3a50a
# ╠═22e41d20-2b5d-11eb-1215-3f8b6facc1b8
# ╟─22e41d20-2b5d-11eb-3707-e1ab6a4841fc
# ╠═22e41d20-2b5d-11eb-0d7a-017f5afb8dd9
# ╟─22e41d20-2b5d-11eb-2abf-93d72fad9d6b
# ╠═22e41d20-2b5d-11eb-3c97-d7e687894145
# ╟─22e41d20-2b5d-11eb-37aa-cbe7efb1bd9a
# ╠═22e41d20-2b5d-11eb-0939-c1831698c8cc
# ╟─22e41d20-2b5d-11eb-3d17-59ecb1ff2bc9
# ╠═22e41d20-2b5d-11eb-3a62-1be450e46139
# ╟─22e41d20-2b5d-11eb-20d5-5944cf9ebe00
# ╠═22e41d20-2b5d-11eb-2a21-b7298072410e
# ╟─22e41d20-2b5d-11eb-00e4-99e8b28a94ee
# ╠═22e41d20-2b5d-11eb-1503-cb0cd5d30f5b
# ╟─22e41d20-2b5d-11eb-060f-f50eaf916224
# ╠═22e41d20-2b5d-11eb-362d-0de577794da6
# ╟─22e41d20-2b5d-11eb-39d4-15b044c678d8
# ╠═22e41d20-2b5d-11eb-2164-97643a75b7e9
# ╟─22e44430-2b5d-11eb-1332-43472461f067
# ╠═22e44430-2b5d-11eb-2bb5-9f08a172d151
# ╟─22e44430-2b5d-11eb-00e6-89af964a74a2
# ╠═22e44430-2b5d-11eb-3e8d-7923f8210c51
# ╟─22e44430-2b5d-11eb-1e23-6faab01bdf96
# ╠═22e44430-2b5d-11eb-3de6-99ff5d9b6f39
# ╟─22e44430-2b5d-11eb-2421-776704f35067
# ╠═22e44430-2b5d-11eb-0170-1f9933bed32f
# ╟─22e44430-2b5d-11eb-214a-0f8b06563f47
# ╠═22e44430-2b5d-11eb-0234-1340e58fbd64
# ╟─22e44430-2b5d-11eb-0b3f-4dca3eb68993
# ╠═22e44430-2b5d-11eb-3fcd-51c229d0ed5f
# ╟─22e44430-2b5d-11eb-1785-1f82aba72e07
# ╠═22e44430-2b5d-11eb-0328-15f7dbf8650e
# ╟─22e44430-2b5d-11eb-075e-0fbc3e60a1cd
# ╠═22e44430-2b5d-11eb-17a2-3f8c8c3a379f
# ╟─22e44430-2b5d-11eb-2123-e9e5f935206d
# ╠═22e44430-2b5d-11eb-15ea-b1d38c67f073
# ╟─22e44430-2b5d-11eb-1a6c-634b890267f2
# ╠═22e44430-2b5d-11eb-3a4d-b5e873db1dba
# ╟─22e44430-2b5d-11eb-1505-3f7dbd756ceb
# ╠═22e44430-2b5d-11eb-2274-573c546d4e32
# ╟─22e46b40-2b5d-11eb-29ca-37e9f3decfd5
# ╠═22e46b40-2b5d-11eb-3b0e-b771da38f5ab
# ╟─22e46b40-2b5d-11eb-12ac-3f6b604b7457
# ╠═22e46b40-2b5d-11eb-1fbd-97a64312d694
# ╟─22e46b40-2b5d-11eb-344e-993f3ea7480e
# ╠═22e46b40-2b5d-11eb-0079-07c8a2dfcb08
# ╠═22e6b530-2b5d-11eb-13b9-03a8d61528cd
# ╟─22e6b530-2b5d-11eb-24e9-bf62980df24c
# ╠═22e6b530-2b5d-11eb-3bc2-dd70c8aa3806
# ╟─22e6b530-2b5d-11eb-30aa-275a98f40c9f
# ╠═22e6b530-2b5d-11eb-2407-93c5840886a9
# ╟─22e6b530-2b5d-11eb-35a8-73d0fdd2cdcc
# ╠═22e6b530-2b5d-11eb-3638-e3e5a18eb93f
# ╟─22e6b530-2b5d-11eb-17c8-51033798208b
# ╠═22e6b530-2b5d-11eb-1451-c1feeab421d3
# ╟─22e6b530-2b5d-11eb-3309-83802c034dab
# ╠═22e6b530-2b5d-11eb-158b-89ebbf6e37a0
# ╟─22e6b530-2b5d-11eb-0087-032e0d3d2655
# ╠═22e6b530-2b5d-11eb-1157-210876d7f98c
# ╟─22e6b530-2b5d-11eb-1325-099d912d6a4a
# ╠═22e6b530-2b5d-11eb-0df0-c338c55360ff
# ╟─22e6b530-2b5d-11eb-34ce-a77db849940f
# ╠═22e6b530-2b5d-11eb-3aa5-db78fbc6e530
# ╟─22e6dc40-2b5d-11eb-2d02-87d333656509
# ╠═22e6dc40-2b5d-11eb-146e-9195b0082115
# ╟─22e6dc40-2b5d-11eb-01e2-6b09f727d2e0
# ╠═22e6dc40-2b5d-11eb-2243-7d3db8578030
# ╟─22e6dc40-2b5d-11eb-079b-e30b376b2181
# ╠═22e6dc40-2b5d-11eb-2dbb-97350278452f
# ╟─22e6dc40-2b5d-11eb-086a-6fe0915d32a4
# ╠═22e6dc40-2b5d-11eb-0f01-2f614bf9366d
# ╟─22e6dc40-2b5d-11eb-2669-231fe76b0228
# ╠═22e6dc40-2b5d-11eb-0eb1-79cc0f48a853
# ╟─22e6dc40-2b5d-11eb-19eb-9510ae92d6a9
# ╠═22e6dc40-2b5d-11eb-29fd-73ba751ce445
# ╟─22e6dc40-2b5d-11eb-02ae-670a4645c990
# ╠═22e6dc40-2b5d-11eb-3114-37b06dd38068
# ╟─22e6dc40-2b5d-11eb-07a8-bd7d4475eec7
# ╠═22e6dc40-2b5d-11eb-298c-2ba31aa7feda
# ╟─22e6dc40-2b5d-11eb-3951-ff0e3847a617
# ╠═22e6dc40-2b5d-11eb-294c-89993e5b7fc1
# ╟─22e6dc40-2b5d-11eb-3407-23310a3ca41d
# ╠═22e6dc40-2b5d-11eb-26af-5b3b1028569d
# ╟─22e6dc40-2b5d-11eb-2594-930eacb79df1
# ╠═22e6dc40-2b5d-11eb-1791-7508fc2602a7
# ╟─22e6dc40-2b5d-11eb-0a17-79b42b7fefcd
# ╠═22e6dc40-2b5d-11eb-058d-195d24e9d562
# ╟─22e6dc40-2b5d-11eb-0225-af9983eebc81
# ╠═22e6dc40-2b5d-11eb-1143-53ce5d5bff24
# ╟─22e7034e-2b5d-11eb-3f89-fba77f961adb
# ╠═22e7034e-2b5d-11eb-0493-415e09b7ffb8
# ╟─22e7034e-2b5d-11eb-3889-dbcce468a48c
# ╠═22e7034e-2b5d-11eb-3e07-d302f885b917
# ╟─22e7034e-2b5d-11eb-399e-616c8f3f3a7e
# ╠═22e7034e-2b5d-11eb-2134-df64ceb3db14
# ╟─22e7034e-2b5d-11eb-1a4d-c7c528c9926a
# ╠═22e7034e-2b5d-11eb-2bd6-bdb40a785cde
# ╠═22e7edb0-2b5d-11eb-2e2b-6b2295156a33
# ╟─22e7edb0-2b5d-11eb-04e1-03d5e012e590
# ╠═22e7edb0-2b5d-11eb-0277-9304b1f2f44e
# ╟─22e7edb0-2b5d-11eb-0db9-9536bf795892
# ╠═22e7edb0-2b5d-11eb-0f3b-b3909391103b
# ╟─22e7edb0-2b5d-11eb-2c65-b5d03d0bdeb8
# ╠═22e7edb0-2b5d-11eb-1152-a1b9b6c7cb31
# ╟─22e7edb0-2b5d-11eb-1eac-4989362cd6d4
# ╠═22e7edb0-2b5d-11eb-39d6-1b3bca046ecc
# ╟─22e7edb0-2b5d-11eb-2e11-edf2fc01e07b
# ╠═22e7edb0-2b5d-11eb-2bb9-1bcf4b75f473
# ╟─22e814c0-2b5d-11eb-1602-53af70befcdd
# ╠═22e814c0-2b5d-11eb-34db-831baf8770cb
# ╟─22e814c0-2b5d-11eb-06bf-3da39d6ff73c
# ╠═22e814c0-2b5d-11eb-16da-b39400161cbd
# ╟─22e814c0-2b5d-11eb-1769-41edcb0b9c4c
# ╠═22e814c0-2b5d-11eb-3169-ad9d78efaa7a
# ╟─22e814c0-2b5d-11eb-0487-4b6514e9a2a0
# ╠═22e814c0-2b5d-11eb-17de-9da7c8ffe6fd
# ╟─22e814c0-2b5d-11eb-19bf-2b3fdf5f3929
# ╠═22e814c0-2b5d-11eb-23c2-cf1ca9d64209
# ╟─22e814c0-2b5d-11eb-19af-f5da9439e40a
# ╠═22e814c0-2b5d-11eb-1866-d5cb5bde6a61
# ╟─22e814c0-2b5d-11eb-332b-b97d4d02f9cb
# ╠═22e814c0-2b5d-11eb-3c31-b3e6e5b14ac5
# ╟─22e814c0-2b5d-11eb-2562-1f5e46f27936
# ╠═22e814c0-2b5d-11eb-0394-eb819328e726
# ╟─22e814c0-2b5d-11eb-0537-7bb418b9d000
# ╠═22e814c0-2b5d-11eb-2d60-7f2f608be981
# ╟─22e814c0-2b5d-11eb-2a46-356d43185378
# ╠═22e814c0-2b5d-11eb-186b-b7262b7ea932
# ╟─22e814c0-2b5d-11eb-0721-d396341215cf
# ╠═22e814c0-2b5d-11eb-0274-99854e0cd0e6
# ╟─22e814c0-2b5d-11eb-0077-3dbf7080694c
# ╠═22e814c0-2b5d-11eb-003e-4bfaa6418496
# ╟─22e814c0-2b5d-11eb-29f6-e1171775db09
# ╠═22e814c0-2b5d-11eb-39f2-7be324ccc639
# ╟─22e814c0-2b5d-11eb-3e4d-a76ae866ff06
# ╠═22e814c0-2b5d-11eb-38d4-f79cd5a1c929
# ╟─22e814c0-2b5d-11eb-359b-e5e749bae0ee
# ╠═22e814c0-2b5d-11eb-1563-e9936ce902dd
# ╟─22e83bd0-2b5d-11eb-1547-f3085e978db8
# ╠═22e83bd0-2b5d-11eb-34e7-8bfb2687ee99
# ╟─22e83bd0-2b5d-11eb-3f6a-6d208ef5a2aa
# ╠═22e83bd0-2b5d-11eb-2648-d59730e65c66
# ╟─22e83bd0-2b5d-11eb-1e75-7bd1ef12fc5a
# ╠═22e83bd0-2b5d-11eb-1457-cd5c365e0841
# ╟─22e83bd0-2b5d-11eb-0fe2-29517a1e99a4
# ╠═22e83bd0-2b5d-11eb-1c5b-f13f563c874a
# ╟─22e83bd0-2b5d-11eb-0fa7-6de991f509c5
# ╠═22e83bd0-2b5d-11eb-246d-a734cd86bf07
# ╠═22eb2200-2b5d-11eb-1adb-05e409b40989
# ╟─22eb2200-2b5d-11eb-3483-2938c630027b
# ╠═22eb2200-2b5d-11eb-0314-2b633f4113a0
# ╟─22eb4910-2b5d-11eb-3436-7dd1bd60610c
# ╠═22eb4910-2b5d-11eb-3e17-a52d480325f6
# ╟─22eb4910-2b5d-11eb-2448-d3cd3658ae21
# ╠═22eb4910-2b5d-11eb-3417-99b9c682f170
# ╟─22eb4910-2b5d-11eb-07ec-ab008be7cf1b
# ╠═22eb4910-2b5d-11eb-1925-5ffd06ac082e
# ╟─22eb4910-2b5d-11eb-2611-81ea3aabf42d
# ╠═22eb4910-2b5d-11eb-03b9-ed52f9c91383
# ╟─22eb4910-2b5d-11eb-0c55-41c0197b5916
# ╠═22eb4910-2b5d-11eb-3610-55456bb96762
# ╟─22eb4910-2b5d-11eb-353d-c3f4bd0257c4
# ╠═22eb4910-2b5d-11eb-26cf-5bcd0e157899
# ╟─22eb4910-2b5d-11eb-1db5-655b92e63494
# ╠═22eb4910-2b5d-11eb-1abe-df9fc2754586
# ╟─22eb4910-2b5d-11eb-0625-0b3c7a9bea39
# ╠═22eb4910-2b5d-11eb-0c23-e39d4513fb13
# ╟─22eb4910-2b5d-11eb-14f9-abcb018134d2
# ╠═22eb4910-2b5d-11eb-3eff-cdbba2d52e16
# ╟─22eb4910-2b5d-11eb-10b3-f16b7b002aab
# ╠═22eb4910-2b5d-11eb-3760-b79ca7e349ba
# ╟─22eb4910-2b5d-11eb-2446-279dbe0d4da7
# ╠═22eb4910-2b5d-11eb-3d2e-b5135915d144
# ╟─22eb7020-2b5d-11eb-0918-639bd1992287
# ╠═22eb7020-2b5d-11eb-1b24-83e9770ac0d4
# ╟─22eb7020-2b5d-11eb-0312-2d963507dd55
# ╠═22eb7020-2b5d-11eb-1c0d-8540a69fa332
# ╟─22eb7020-2b5d-11eb-23b9-1518f75296a4
# ╠═22eb7020-2b5d-11eb-0667-6da4c695032f
# ╟─22eb7020-2b5d-11eb-21c9-8ddd8db9aa58
# ╠═22eb7020-2b5d-11eb-3076-0120dcaa719d
# ╟─22eb7020-2b5d-11eb-32fa-13505c8783bf
# ╠═22eb7020-2b5d-11eb-15ed-a3fec62ef9aa
# ╟─22eb7020-2b5d-11eb-1e0f-61f2ab599841
# ╠═22eb7020-2b5d-11eb-31f7-09b009e2e2fa
# ╟─22eb7020-2b5d-11eb-25e9-770da986c3a6
# ╠═22eb7020-2b5d-11eb-39d1-6dd8bf3dfcd9
# ╟─22eb7020-2b5d-11eb-2cd8-3dfcefb9437d
# ╠═22eb7020-2b5d-11eb-038c-1f494eb47df8
# ╟─22eb7020-2b5d-11eb-017f-8dde0814c191
# ╠═22eb7020-2b5d-11eb-0b6f-91d6d5eb191d
# ╟─22eb7020-2b5d-11eb-3980-b902db24a49c
# ╠═22eb7020-2b5d-11eb-383e-7d432a5f492d
# ╟─22eb9730-2b5d-11eb-0aa6-877b1218e536
# ╠═22eb9730-2b5d-11eb-2392-037f526e04b7
# ╟─22eb9730-2b5d-11eb-0d28-45628c07a799
# ╠═22eb9730-2b5d-11eb-0e1a-ed8eca50294d
# ╟─22eb9730-2b5d-11eb-17f4-ab17c21a4958
# ╠═22eb9730-2b5d-11eb-18ea-15e6d71aad91
# ╠═22edba10-2b5d-11eb-002a-91d87dcb21b0
# ╟─22edba10-2b5d-11eb-3113-d98f12e08c49
# ╠═22edba10-2b5d-11eb-1b2e-0bf9b0fbc055
# ╟─22edba10-2b5d-11eb-3ed4-a77c1a433274
# ╠═22edba10-2b5d-11eb-3f06-01adf62bf218
# ╟─22edba10-2b5d-11eb-3309-810a661adfba
# ╠═22edba10-2b5d-11eb-04e3-c3589a540e96
# ╟─22edba10-2b5d-11eb-0f46-8ddba9371501
# ╠═22edba10-2b5d-11eb-1f65-cdaac4b77296
# ╟─22edba10-2b5d-11eb-34ac-7f4cb7c48749
# ╠═22edba10-2b5d-11eb-1508-f3cb9414e1bf
# ╟─22edba10-2b5d-11eb-320a-ebfb1c946591
# ╠═22edba10-2b5d-11eb-35d1-85dddaad76fb
# ╟─22edba10-2b5d-11eb-0cb5-5307580983d6
# ╠═22edba10-2b5d-11eb-14ba-e3da2c5deafe
# ╟─22ede120-2b5d-11eb-3d75-574d3b4a6e6c
# ╠═22ede120-2b5d-11eb-239f-b14a8051cc5e
# ╟─22ede120-2b5d-11eb-0e90-b517034ca91c
# ╠═22ede120-2b5d-11eb-250a-231eead3818c
# ╟─22ede120-2b5d-11eb-010d-cd7c2c409e52
# ╠═22ede120-2b5d-11eb-07b7-bdb2ff754cb3
# ╟─22ede120-2b5d-11eb-1cd6-b78d3c181cd0
# ╠═22ede120-2b5d-11eb-1c6d-13fc69e092b2
# ╟─22ede120-2b5d-11eb-1f1b-e78b34e6ecc1
# ╠═22ede120-2b5d-11eb-3623-770f62d341c4
# ╟─22ede120-2b5d-11eb-385c-998fefcffcdc
# ╠═22ede120-2b5d-11eb-182b-cbaecc1f367f
# ╟─22ede120-2b5d-11eb-12b0-733834378ee9
# ╠═22ede120-2b5d-11eb-26eb-2d52a2defc56
# ╟─22ede120-2b5d-11eb-2b39-1ffc9cfe1d90
# ╠═22ede120-2b5d-11eb-10f5-4be133464618
# ╟─22ede120-2b5d-11eb-3ae3-ff8b46b870ca
# ╠═22ede120-2b5d-11eb-1eef-5b37aa5c5aa7
# ╟─22ee082e-2b5d-11eb-3d79-81130c835ee0
# ╠═22ee082e-2b5d-11eb-3887-eba8f2e0471c
# ╟─22ee082e-2b5d-11eb-1fba-676d626ca14e
# ╠═22ee082e-2b5d-11eb-0c1e-690c6c98621e
# ╟─22ee082e-2b5d-11eb-1843-19b77424a06f
# ╠═22ee082e-2b5d-11eb-3393-572599cc5462
# ╟─22ee082e-2b5d-11eb-293c-9f0d177ea6bb
# ╠═22ee082e-2b5d-11eb-2206-8f142b6b4710
# ╟─22ee082e-2b5d-11eb-1437-1370b103b352
# ╠═22ee082e-2b5d-11eb-0152-57eb7f8bee61
# ╟─22ee082e-2b5d-11eb-0345-3392aab354fe
# ╠═22ee082e-2b5d-11eb-25e7-bdda0fc413c6
# ╟─22ee082e-2b5d-11eb-0a7e-d3f00b2d00c2
# ╠═22ee082e-2b5d-11eb-3597-0d7f56e78aaa
# ╟─22eecb80-2b5d-11eb-2bf7-9b758099f0e1
# ╠═22eecb80-2b5d-11eb-092d-c5a2e2e585e8
# ╟─22eecb80-2b5d-11eb-2d5e-2b4634549f50
# ╠═22eecb80-2b5d-11eb-0464-69afd8c6f7ba
# ╠═22f05220-2b5d-11eb-04cd-5bd576ef099c
# ╟─22f05220-2b5d-11eb-1e28-97ffa1ea7a49
# ╠═22f05220-2b5d-11eb-12ad-7d9afa888073
# ╟─22f05220-2b5d-11eb-2c19-89801c551250
# ╠═22f05220-2b5d-11eb-27df-edb88c0533ca
# ╟─22f05220-2b5d-11eb-39bd-557598b630c0
# ╠═22f05220-2b5d-11eb-01c5-0dac41ebcdf0
# ╟─22f05220-2b5d-11eb-2337-87ffc2b40fd9
# ╠═22f05220-2b5d-11eb-116a-07a1276780a6
# ╟─22f05220-2b5d-11eb-3a23-074a05392439
# ╠═22f05220-2b5d-11eb-3e3a-218a1fbfa1cf
# ╟─22f05220-2b5d-11eb-060a-8517a5c58834
# ╠═22f05220-2b5d-11eb-1799-ef9997213d78
# ╟─22f05220-2b5d-11eb-0816-55590a5b7624
# ╠═22f05220-2b5d-11eb-01db-255c7a064d6b
# ╟─22f07930-2b5d-11eb-2020-29df064ed6d8
# ╠═22f07930-2b5d-11eb-0df5-1d7114fcc1f9
# ╟─22f07930-2b5d-11eb-2c71-2df9d4d47605
# ╠═22f07930-2b5d-11eb-19b6-0be1e62e5788
# ╟─22f07930-2b5d-11eb-0f88-676d7eb2e4de
# ╠═22f07930-2b5d-11eb-0e37-65f6e76833cf
# ╟─22f07930-2b5d-11eb-15c6-dd2d316cf45c
# ╠═22f07930-2b5d-11eb-3515-1f36e00b51b8
# ╟─22f07930-2b5d-11eb-08d2-5f097e8de9a6
# ╠═22f07930-2b5d-11eb-280e-d325de2a51cf
# ╟─22f07930-2b5d-11eb-33e4-bfb5524f575f
# ╠═22f07930-2b5d-11eb-2202-1594a3fb000b
# ╟─22f07930-2b5d-11eb-15af-fd37e3c04ce0
# ╠═22f07930-2b5d-11eb-35fb-45a93a4b5288
# ╟─22f07930-2b5d-11eb-06dd-17561303425a
# ╠═22f07930-2b5d-11eb-30fb-cd25788530a7
# ╟─22f07930-2b5d-11eb-0d06-3174eaf7a13b
# ╠═22f07930-2b5d-11eb-27e5-8b390a6595b8
# ╟─22f07930-2b5d-11eb-03a1-7ba7360e5a8f
# ╠═22f07930-2b5d-11eb-0c27-37409540867b
# ╟─22f07930-2b5d-11eb-0fcb-3fb89ba7514b
# ╠═22f07930-2b5d-11eb-07f7-fde18a6be865
# ╟─22f07930-2b5d-11eb-09c2-db7a6e82a93e
# ╠═22f07930-2b5d-11eb-3c01-9df2c2312681
# ╟─22f0a040-2b5d-11eb-2f3a-4f174e3a6b8c
# ╠═22f0a040-2b5d-11eb-2dfb-f9171666562c
# ╟─22f0a040-2b5d-11eb-23cd-952753fb01f2
# ╠═22f0a040-2b5d-11eb-2f0c-3f16545b4ff9
# ╟─22f0a040-2b5d-11eb-071c-8968d12812b6
# ╠═22f0a040-2b5d-11eb-1e76-c1e956aa137a
# ╟─22f0a040-2b5d-11eb-3b92-3b27580bb6d7
# ╠═22f0a040-2b5d-11eb-2d18-bfe363bd07e5
# ╟─22f0a040-2b5d-11eb-174d-2b19c6b7268e
# ╠═22f0a040-2b5d-11eb-3534-2d4804ebf65e
# ╟─22f0a040-2b5d-11eb-183d-4fa97e66643e
# ╠═22f0a040-2b5d-11eb-1dcd-a3936f21c589
# ╠═22f470d0-2b5d-11eb-0e33-5d3e4b87da0f
# ╟─22f470d0-2b5d-11eb-074b-e5ba69c0373e
# ╠═22f470d0-2b5d-11eb-0ce1-b9c8a9577895
# ╟─22f470d0-2b5d-11eb-0503-b9c88d869012
# ╠═22f470d0-2b5d-11eb-0295-2deea34e8495
# ╟─22f470d0-2b5d-11eb-3b14-05debd37ccd6
# ╠═22f470d0-2b5d-11eb-0abd-637ef006a218
# ╟─22f470d0-2b5d-11eb-294d-110f28a19919
# ╠═22f470d0-2b5d-11eb-01bd-5f39d6b5380e
# ╟─22f470d0-2b5d-11eb-22ce-83ce9de86434
# ╠═22f470d0-2b5d-11eb-3e89-edeb803b20a9
# ╟─22f470d0-2b5d-11eb-2902-bbe84a0277a8
# ╠═22f470d0-2b5d-11eb-056f-3b5950af64c5
# ╟─22f470d0-2b5d-11eb-14ca-6978b004c797
# ╠═22f470d0-2b5d-11eb-073e-bd2cf0c70fec
# ╟─22f470d0-2b5d-11eb-035e-1bf17abad073
# ╠═22f470d0-2b5d-11eb-0208-37fce1884906
# ╟─22f470d0-2b5d-11eb-3e13-073212c23c9a
# ╠═22f470d0-2b5d-11eb-1fe6-6545a35a001d
# ╟─22f470d0-2b5d-11eb-0dc5-ad94b31d30c4
# ╠═22f470d0-2b5d-11eb-09a5-efe7b8639941
# ╟─22f497e2-2b5d-11eb-2094-73c9ef30b44a
# ╠═22f497e2-2b5d-11eb-122b-1fa3664f9e90
# ╟─22f497e2-2b5d-11eb-0734-cfcd1f32f47a
# ╠═22f497e2-2b5d-11eb-2a3e-8b2743e6da9a
# ╟─22f497e2-2b5d-11eb-2007-a3b8c442ffcd
# ╠═22f497e2-2b5d-11eb-0eeb-0da11eae546a
# ╟─22f497e2-2b5d-11eb-2e01-7fc60eb01f9b
# ╠═22f497e2-2b5d-11eb-0010-9f95a40ea950
# ╟─22f497e2-2b5d-11eb-2ef4-635fe17ec4fd
# ╠═22f497e2-2b5d-11eb-1448-470754cf09c7
# ╟─22f497e2-2b5d-11eb-25a9-0f07c0a7388c
# ╠═22f497e2-2b5d-11eb-1bd0-078fc8326a9f
# ╟─22f497e2-2b5d-11eb-2a8f-83388c321ec0
# ╠═22f497e2-2b5d-11eb-2360-9bf1e8977fd2
# ╟─22f497e2-2b5d-11eb-1db6-297cb16e7560
# ╠═22f497e2-2b5d-11eb-3422-d7681e5b7609
# ╟─22f497e2-2b5d-11eb-3343-e7e8741113b8
# ╠═22f497e2-2b5d-11eb-2270-1f118ce75f5d
# ╟─22f497e2-2b5d-11eb-05c2-3f006100c1db
# ╠═22f497e2-2b5d-11eb-080e-63f640de5f9a
# ╟─22f497e2-2b5d-11eb-3597-2f987ca10ca7
# ╠═22f497e2-2b5d-11eb-001c-49fc6c064d6e
# ╟─22f497e2-2b5d-11eb-32c7-b70117acf39c
# ╠═22f497e2-2b5d-11eb-2fae-83de9978ad29
# ╟─22f4bef0-2b5d-11eb-2de1-b3e01fbcee4a
# ╠═22f4bef0-2b5d-11eb-0362-b175d48ee40e
# ╟─22f4bef0-2b5d-11eb-0f29-5b330fc442e9
# ╠═22f4bef0-2b5d-11eb-3c00-9f1d070c25d8
# ╟─22f4bef0-2b5d-11eb-07b3-f11b368af729
# ╠═22f4bef0-2b5d-11eb-258c-87803aa08a5f
# ╠═22fe0dc0-2b5d-11eb-17ec-6d2029ad2ed0
# ╟─22fe0dc0-2b5d-11eb-03d2-9df1353f2e6e
# ╠═22fe0dc0-2b5d-11eb-31f6-eb21a03837b8
# ╟─22fe0dc0-2b5d-11eb-1735-93c6e74c0de6
# ╠═22fe0dc0-2b5d-11eb-0a1e-a94090472296
# ╟─22fe0dc0-2b5d-11eb-0db3-e9453377c276
# ╠═22fe0dc0-2b5d-11eb-08ab-b3525bcc62eb
# ╟─22fe0dc0-2b5d-11eb-0f8b-89b9d3467f16
# ╠═22fe0dc0-2b5d-11eb-3fdf-5dfe7ee10113
# ╟─22fe0dc0-2b5d-11eb-2b5c-5ffcf3762fec
# ╠═22fe0dc0-2b5d-11eb-3f2f-cb7226d1bac0
# ╟─22fe0dc0-2b5d-11eb-27f9-793aa1d2fa8a
# ╠═22fe0dc0-2b5d-11eb-239f-cbe36bd60339
# ╟─22fe34d0-2b5d-11eb-2b6d-b562923b5dab
# ╠═22fe34d0-2b5d-11eb-0fe2-6914313982ee
# ╟─22fe34d0-2b5d-11eb-2a84-a3f42ee4529e
# ╠═22fe34d0-2b5d-11eb-02b8-d72b0db5d3c6
# ╟─22fe34d0-2b5d-11eb-1f2e-8f9a358c5bca
# ╠═22fe34d0-2b5d-11eb-0e7c-619e6e6e90d6
# ╟─22fe34d0-2b5d-11eb-0957-e7b797352c5b
# ╠═22fe34d0-2b5d-11eb-2ea7-e190e340ec89
# ╟─22fe34d0-2b5d-11eb-10b7-6920e49173a4
# ╠═22fe34d0-2b5d-11eb-08c6-e5dc3be316b1
# ╟─22fe34d0-2b5d-11eb-0666-ddc0059f07db
# ╠═22fe34d0-2b5d-11eb-1ebd-332a633c2afc
# ╟─22fe34d0-2b5d-11eb-0afc-ed65e3d010dd
# ╠═22fe34d0-2b5d-11eb-12bb-fb08ceb6a30d
# ╟─22fe34d0-2b5d-11eb-11c0-998d374e8169
# ╠═22fe34d0-2b5d-11eb-3a28-894e1bae216c
# ╟─22fe34d0-2b5d-11eb-0dfe-c3cca06e5cc3
# ╠═22fe34d0-2b5d-11eb-20c5-69b2067fda25
# ╟─22fe34d0-2b5d-11eb-3e6f-478be352b35b
# ╠═22fe34d0-2b5d-11eb-2a9a-234506dd7ecc
# ╟─22fe34d0-2b5d-11eb-2e71-3f98f79d8eea
# ╠═22fe34d0-2b5d-11eb-1d94-e933d0c00401
# ╟─22fe5be0-2b5d-11eb-09b2-811dfd797096
# ╠═22fe5be0-2b5d-11eb-1f10-7f79be5b3d31
# ╟─22fe5be0-2b5d-11eb-0a25-473f4bce0e68
# ╠═22fe5be0-2b5d-11eb-10be-ed8f48755290
# ╟─22fe5be0-2b5d-11eb-099e-bd131a90c06c
# ╠═22fe5be0-2b5d-11eb-0475-0f16f46d02f1
# ╟─22fe5be0-2b5d-11eb-05d9-2933649ab868
# ╠═22fe5be0-2b5d-11eb-0c62-f1fc334ea173
# ╟─22fe5be0-2b5d-11eb-034a-7db9d2dc36d0
# ╠═22fe5be0-2b5d-11eb-08c8-6bf73de0d98e
# ╟─22fe5be0-2b5d-11eb-36a6-d9d01d662f7d
# ╠═22fe5be0-2b5d-11eb-24a4-15bab5433f09
# ╟─22fe5be0-2b5d-11eb-2eb6-e380d98b64e6
# ╠═22fe5be0-2b5d-11eb-3664-e5e589d98295
# ╟─22fe5be0-2b5d-11eb-3fba-8f142d708749
# ╠═22fe5be0-2b5d-11eb-0efd-b542b157b0c6
# ╠═23019030-2b5d-11eb-1480-81e7d34342b0
# ╟─23019030-2b5d-11eb-16e5-439de48d59ec
# ╠═23019030-2b5d-11eb-314a-670187f961fb
# ╟─2301b740-2b5d-11eb-2e38-6fe860c80a93
# ╠═2301b740-2b5d-11eb-38b8-7fc8870f4727
# ╟─2301b740-2b5d-11eb-2b8a-4b6f20af303b
# ╠═2301b740-2b5d-11eb-378d-1fc8e6b2a73d
# ╟─2301b740-2b5d-11eb-2b3f-d7fafa4dc0be
# ╠═2301b740-2b5d-11eb-38fc-9793cbb22747
# ╟─2301b740-2b5d-11eb-0abd-efc37c8c1891
# ╠═2301b740-2b5d-11eb-0648-c7fb84842729
# ╟─2301b740-2b5d-11eb-13a3-874cec8a0b2a
# ╠═2301b740-2b5d-11eb-34cc-d97f9a12fb65
# ╟─2301b740-2b5d-11eb-116b-4bd0e64e4c39
# ╠═2301b740-2b5d-11eb-0b87-35c92c8d1591
# ╟─2301b740-2b5d-11eb-27d5-5f56cb574e4e
# ╠═2301b740-2b5d-11eb-295f-590e9d2c2f8e
# ╟─2301b740-2b5d-11eb-1cc1-ad10a918143b
# ╠═2301b740-2b5d-11eb-0bbf-312eec8406c4
# ╟─2301b740-2b5d-11eb-005c-934b3988779c
# ╠═2301b740-2b5d-11eb-2dca-c3a13681d6a0
# ╟─2301b740-2b5d-11eb-0684-510691f96e1b
# ╠═2301b740-2b5d-11eb-239d-419eb8a5b8ba
# ╟─2301b740-2b5d-11eb-234c-279d046bb99c
# ╠═2301b740-2b5d-11eb-0513-abd1c3d69ac4
# ╟─2301b740-2b5d-11eb-2694-a1e74da90297
# ╠═2301de50-2b5d-11eb-170f-99cb51cbf652
# ╟─2301de50-2b5d-11eb-3f0f-fdaabe32121f
# ╠═2301de50-2b5d-11eb-3178-e1ccfee6ef11
# ╟─2301de50-2b5d-11eb-2bc0-818ce44053bb
# ╠═2301de50-2b5d-11eb-24e8-9f4fd4c0bcdc
# ╟─2301de50-2b5d-11eb-3efa-af78f593ec58
# ╠═2301de50-2b5d-11eb-22b0-670099f25528
# ╟─2301de50-2b5d-11eb-38da-970c36979319
# ╠═2301de50-2b5d-11eb-1610-659ee747158e
# ╟─2301de50-2b5d-11eb-106a-676c2f1913f4
# ╠═2301de50-2b5d-11eb-0fe5-818b4d3b3022
# ╟─2301de50-2b5d-11eb-1f6f-d76f63fa4251
# ╠═2301de50-2b5d-11eb-25af-4de182acdd53
# ╟─2301de50-2b5d-11eb-0e61-f38543161a61
# ╠═2301de50-2b5d-11eb-18e3-21652073d089
# ╟─2301de50-2b5d-11eb-0390-478068d2a01a
# ╠═2301de50-2b5d-11eb-26c4-73d497f7a969
# ╟─2301de50-2b5d-11eb-1880-99877a09a42b
# ╠═2301de50-2b5d-11eb-354d-5def74ad2029
# ╟─2301de50-2b5d-11eb-30a9-a7552d3e16be
# ╠═2301de50-2b5d-11eb-2895-a109d8bf15b2
# ╟─2301de50-2b5d-11eb-19df-1b7fb31dea16
# ╠═2301de50-2b5d-11eb-3c72-7d2046db0f07
# ╟─2301de50-2b5d-11eb-055c-fbca30e0c6e7
# ╠═2301de50-2b5d-11eb-0dfe-ab7367adce7c
# ╠═2304c480-2b5d-11eb-1de3-b7a5f8a6a0d3
# ╟─2304c480-2b5d-11eb-1436-8b415785a47b
# ╠═2304c480-2b5d-11eb-0b89-4f998c42812f
# ╟─2304c480-2b5d-11eb-036c-917a18f77c5f
# ╠═2304c480-2b5d-11eb-3390-e97f9f00b53a
# ╟─2304eb90-2b5d-11eb-2b0a-4d69704f3a6f
# ╠═2304eb90-2b5d-11eb-3608-5be8eb27f5a8
# ╟─2304eb90-2b5d-11eb-2979-2fac074e7509
# ╠═2304eb90-2b5d-11eb-332d-6190622b73f8
# ╟─2304eb90-2b5d-11eb-3784-719710bf4b32
# ╠═2304eb90-2b5d-11eb-07df-9d5ecaf25315
# ╟─2304eb90-2b5d-11eb-14a1-a7e9cbc71c06
# ╠═2304eb90-2b5d-11eb-1ff2-ed3cf3c3434e
# ╟─2304eb90-2b5d-11eb-3766-0384b0e4b3f5
# ╠═2304eb90-2b5d-11eb-3523-fbca84ac549d
# ╟─2304eb90-2b5d-11eb-35ac-1f756be11547
# ╠═2304eb90-2b5d-11eb-1c3c-6909dd23ac73
# ╟─2304eb90-2b5d-11eb-3288-b3113ab822de
# ╠═2304eb90-2b5d-11eb-0581-5de9eacdeb3b
# ╟─2304eb90-2b5d-11eb-144d-3b94e1b1a371
# ╠═2304eb90-2b5d-11eb-0ef2-bf1181536f4c
# ╟─2304eb90-2b5d-11eb-3175-9306971435fb
# ╠═2304eb90-2b5d-11eb-0bae-d5a501b465fe
# ╟─2304eb90-2b5d-11eb-0668-d9af7dd2cacd
# ╠═2304eb90-2b5d-11eb-21c1-357766c95a72
# ╟─2304eb90-2b5d-11eb-3fc1-cd37f9aab760
# ╠═2304eb90-2b5d-11eb-3a51-1be2ae83b979
# ╟─2304eb90-2b5d-11eb-2c3c-1b5dd28cc39c
# ╠═2304eb90-2b5d-11eb-2677-bfe9095e01d2
# ╟─230512a0-2b5d-11eb-1b67-bfa4273871af
# ╠═230512a0-2b5d-11eb-2fd7-a9ca1d891fbe
# ╟─230512a0-2b5d-11eb-397b-2f48ed7e34ce
# ╠═230512a0-2b5d-11eb-3526-f5701c75ddd5
# ╟─230512a0-2b5d-11eb-01ac-a35ac646acec
# ╠═230512a0-2b5d-11eb-15d2-79de0a77b3d7
# ╟─230512a0-2b5d-11eb-2a84-1bfdca4b0931
# ╠═230512a0-2b5d-11eb-2b22-a7ca46f5a5f6
# ╟─230512a0-2b5d-11eb-22c8-bb1899b1471a
# ╠═230512a0-2b5d-11eb-1c7d-c9a76dcb1b99
# ╟─230512a0-2b5d-11eb-14dc-adeb1f09f490
# ╠═230512a0-2b5d-11eb-2b10-df4fe464fd75
# ╟─230512a0-2b5d-11eb-0b66-116b217bf024
# ╠═230512a0-2b5d-11eb-10e8-bdc7c8f78b2a
# ╟─230512a0-2b5d-11eb-303a-f98f8d858773
# ╠═230512a0-2b5d-11eb-0e25-e97ea4b49674
# ╟─230512a0-2b5d-11eb-2e21-378ca205ead7
# ╠═230512a0-2b5d-11eb-2e45-b3e7d5a1e7a1
# ╟─230512a0-2b5d-11eb-00a6-0785b7740253
# ╠═230512a0-2b5d-11eb-34b3-fde9ed70c711
# ╟─230512a0-2b5d-11eb-3753-59e30957b3e0
# ╠═230512a0-2b5d-11eb-3b34-c7d00a53929f
# ╠═2309cd90-2b5d-11eb-0939-43c603ceb97c
# ╟─2309cd90-2b5d-11eb-1c19-2ba6983c264b
# ╠═2309cd90-2b5d-11eb-05be-0f3a0e731f8c
# ╟─2309cd90-2b5d-11eb-2f19-83d218a45074
# ╠═2309cd90-2b5d-11eb-049a-93973d8cc738
# ╟─2309cd90-2b5d-11eb-2da5-7706316dfb77
# ╠═2309cd90-2b5d-11eb-2356-552985dc3973
# ╟─2309cd90-2b5d-11eb-0ef1-036f00058a13
# ╠═2309cd90-2b5d-11eb-0595-09074ecbde98
# ╟─2309f4a0-2b5d-11eb-3402-c76efea97288
# ╠═2309f4a0-2b5d-11eb-25c2-534a351dc961
# ╟─2309f4a0-2b5d-11eb-2dac-b9c25f8e2057
# ╠═2309f4a0-2b5d-11eb-2331-31932accfa7d
# ╟─2309f4a0-2b5d-11eb-3a75-59e3957c4242
# ╠═2309f4a0-2b5d-11eb-19ad-85cf325f710d
# ╟─2309f4a0-2b5d-11eb-2b8c-3d8e002fb9f0
# ╠═2309f4a0-2b5d-11eb-2a67-0ff1b062ba95
# ╟─2309f4a0-2b5d-11eb-2916-8d5b05494168
# ╠═2309f4a0-2b5d-11eb-0268-c5913ca25860
# ╟─2309f4a0-2b5d-11eb-1b71-b531f6011955
# ╠═2309f4a0-2b5d-11eb-3501-6f5198446bbc
# ╟─2309f4a0-2b5d-11eb-16b0-0b945b9da2cc
# ╠═2309f4a0-2b5d-11eb-0574-f907e4d6a566
# ╟─2309f4a0-2b5d-11eb-39ae-c37f923c2cfc
# ╠═2309f4a0-2b5d-11eb-3cee-537f0efdbc25
# ╟─2309f4a0-2b5d-11eb-2ac0-73ef8fdfb236
# ╠═2309f4a0-2b5d-11eb-157e-cb07175b4ed2
# ╟─230a1bb0-2b5d-11eb-3682-eb9f60c41ae2
# ╠═230a1bb0-2b5d-11eb-22e6-d360b33713bb
# ╟─230a1bb0-2b5d-11eb-2e67-7be99b24463c
# ╠═230a1bb0-2b5d-11eb-10a2-c1296433e48d
# ╟─230a1bb0-2b5d-11eb-2e6d-318e05778de8
# ╠═230a1bb0-2b5d-11eb-2c14-070e1c8f95b8
# ╟─230a1bb0-2b5d-11eb-06b5-210a80292cef
# ╠═230a1bb0-2b5d-11eb-2227-c17911e06a0b
# ╟─230a1bb0-2b5d-11eb-25ec-c1c84a32e282
# ╠═230a1bb0-2b5d-11eb-2528-0d18b03f48ff
# ╟─230a1bb0-2b5d-11eb-2f51-7d44bfc78d29
# ╠═230a1bb0-2b5d-11eb-1d02-c9460dddeead
# ╟─230a1bb0-2b5d-11eb-1f7d-ef44b53167e2
# ╠═230a1bb0-2b5d-11eb-2ec2-5f1feb07cfd3
# ╟─230a1bb0-2b5d-11eb-257e-1d83ee047fe0
# ╠═230a1bb0-2b5d-11eb-2e18-dd75083591b5
# ╟─230a1bb0-2b5d-11eb-3b76-43b5b147c7d2
# ╠═230a1bb0-2b5d-11eb-0d52-e1575ca4f845
# ╟─230a1bb0-2b5d-11eb-3361-a78cd47351f8
# ╠═230a1bb0-2b5d-11eb-02e5-db1876c5a940
# ╟─230a42c0-2b5d-11eb-2801-89f4fbf6aabd
# ╠═230a42c0-2b5d-11eb-08be-21179d420609
# ╟─230a42c0-2b5d-11eb-0de9-11409d28a650
# ╠═230a42c0-2b5d-11eb-1395-dfccea2b8184
# ╠═230e6170-2b5d-11eb-19e7-2d7a7028fd1a
# ╟─230e6170-2b5d-11eb-0740-f7875bec5c12
# ╠═230e6170-2b5d-11eb-21c6-752d37f5b046
# ╟─230e8880-2b5d-11eb-2747-99d896b234a7
# ╠═230e8880-2b5d-11eb-32e3-e569e66cae2b
# ╟─230e8880-2b5d-11eb-1857-0dfc8a401c4d
# ╠═230e8880-2b5d-11eb-2048-7fbb7b706037
# ╟─230e8880-2b5d-11eb-1021-99557fe1804a
# ╠═230e8880-2b5d-11eb-3555-bf7fb782843b
# ╟─230e8880-2b5d-11eb-0e7e-a340ac0498dd
# ╠═230e8880-2b5d-11eb-17df-27ba1d60d226
# ╟─230e8880-2b5d-11eb-0d9e-799b838049b3
# ╠═230e8880-2b5d-11eb-242b-bb0ced44bca6
# ╟─230e8880-2b5d-11eb-35cf-490e3dc779bf
# ╠═230e8880-2b5d-11eb-1c66-2be8e7b2299b
# ╟─230e8880-2b5d-11eb-1c48-b7a553c77565
# ╠═230e8880-2b5d-11eb-1ced-596c0bdb7ecc
# ╟─230e8880-2b5d-11eb-3707-6729de11bad2
# ╠═230e8880-2b5d-11eb-1eec-7150e51f722c
# ╟─230e8880-2b5d-11eb-2098-95101d65284f
# ╠═230e8880-2b5d-11eb-18cb-9d8c85a62a72
# ╟─230e8880-2b5d-11eb-0dcd-332d684e4f7c
# ╠═230e8880-2b5d-11eb-03f2-4dcc643328b6
# ╟─230e8880-2b5d-11eb-11d6-330a571a324e
# ╠═230e8880-2b5d-11eb-2cc7-1d7541272662
# ╟─230e8880-2b5d-11eb-00be-5514f41c25b5
# ╠═230e8880-2b5d-11eb-2975-ed206c4f2d55
# ╟─230eaf92-2b5d-11eb-3985-df4c9a3aff71
# ╠═230eaf92-2b5d-11eb-1716-334412af0871
# ╟─230eaf92-2b5d-11eb-1a2c-7775250f7720
# ╠═230eaf92-2b5d-11eb-15c7-b33e30fe2dd8
# ╟─230eaf92-2b5d-11eb-1bed-a3568bc01d4f
# ╠═230eaf92-2b5d-11eb-1dc5-8168614cfd96
# ╟─230eaf92-2b5d-11eb-005f-e908580be4e6
# ╠═230eaf92-2b5d-11eb-22a8-01fae9e9d4d6
# ╟─230eaf92-2b5d-11eb-3cf7-5984a7dab110
# ╠═230eaf92-2b5d-11eb-0b63-eb69ba51ca74
# ╟─230eaf92-2b5d-11eb-17b6-c3e3626fdef4
# ╠═230eaf92-2b5d-11eb-2e8a-5176e495d899
# ╟─230eaf92-2b5d-11eb-13af-37e95f3efec0
# ╠═230eaf92-2b5d-11eb-3205-895390a80e55
# ╟─230eaf92-2b5d-11eb-1a93-03326470af48
# ╠═230eaf92-2b5d-11eb-1db3-d9d0eb20c710
# ╟─230eaf92-2b5d-11eb-27cc-439cf1833140
# ╠═230eaf92-2b5d-11eb-2bc4-39cdf620f269
# ╟─230eaf92-2b5d-11eb-2710-079fc1aa62da
# ╠═230eaf92-2b5d-11eb-035c-53d137c43a23
# ╟─230eaf92-2b5d-11eb-29c7-491e62d407ab
# ╠═230eaf92-2b5d-11eb-0b56-1be7917d3057
# ╟─230eaf92-2b5d-11eb-33f7-9123931f1cd1
# ╠═230eaf92-2b5d-11eb-1079-6d5b885395c1