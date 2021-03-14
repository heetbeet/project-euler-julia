### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ac22980-84a3-11eb-2ca9-eb997a11a23f
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ac22980-84a3-11eb-0501-f5ec9d3e9b64
html"""
<h2>Problem 226: A Scoop of Blancmange</h2>
<p>The <i>blancmange curve</i> is the set of points $(x, y)$ such that $0 \le x \le 1$ and $y = \sum \limits_{n = 0}^{\infty} {\dfrac{s(2^n x)}{2^n}}$, where $s(x)$ is the distance from $x$ to the nearest integer.</p>

<p>The area under the blancmange curve is equal to ½, shown in pink in the diagram below.</p>

<div class="center">
<img src="project/images/p226_scoop2.gif" class="dark_img" alt="blancmange curve" /></div>

<p>Let <var>C</var> be the circle with centre $\left ( \frac{1}{4}, \frac{1}{2} \right )$ and radius $\frac{1}{4}$, shown in black in the diagram.</p>

<p>What area under the blancmange curve is enclosed by <var>C</var>?<br />Give your answer rounded to eight decimal places in the form <i>0.abcdefgh</i></p>
"""

# ╔═╡ 1ac22980-84a3-11eb-3dcb-adf870989f45
begin
    submit_answer(nothing; prob_num=226)
end

# ╔═╡ 1ac22980-84a3-11eb-2362-e1701689df75
html"""
<h2>Problem 227: The Chase</h2>
<p><dfn>The Chase</dfn> is a game played with two dice and an even number of players.</p>

<p>The players sit around a table and the game begins with two opposite players having one die each. On each turn, the two players with a die roll it.</p>

<p>If the player rolls 1, then the die passes to the neighbour on the left.<br />
If the player rolls 6, then the die passes to the neighbour on the right.<br />
Otherwise, the player keeps the die for the next turn.</p>

<p>The game ends when one player has both dice after they have been rolled and passed; that player has then lost.</p>

<p>In a game with 100 players, what is the expected number of turns the game lasts?</p>
<p>Give your answer rounded to ten significant digits.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-354c-dbbd284a4016
begin
    submit_answer(nothing; prob_num=227)
end

# ╔═╡ 1ac22980-84a3-11eb-3f09-ef3bdfd422e1
html"""
<h2>Problem 228: Minkowski Sums</h2>
<p>Let <var>S</var><sub>n</sub> be the regular <var>n</var>-sided polygon – or <i>shape</i> – whose vertices 

<var>v</var><sub><var>k</var></sub> (<var>k</var> = 1,2,…,<var>n</var>) have coordinates:</p>
<table><tr><td width="40"></td>
    <td><var>x</var><sub><var>k</var></sub>   =  
        cos( <sup>2<var>k</var>-1</sup>/<sub><var>n</var></sub> ×180° )</td>
  </tr><tr><td width="40"></td>
    <td><var>y</var><sub><var>k</var></sub>   =  
        sin( <sup>2<var>k</var>-1</sup>/<sub><var>n</var></sub> ×180° )</td>
  </tr></table><p>Each <var>S</var><sub><var>n</var></sub> is to be interpreted as a filled shape consisting of all points on the perimeter and in the interior.</p>

<p>The <i>Minkowski sum</i>, <var>S</var>+<var>T</var>, of two shapes <var>S</var> and <var>T</var> is the result of 

adding every point in <var>S</var> to every point in <var>T</var>, where point addition is performed coordinate-wise: 

(<var>u</var>, <var>v</var>) + (<var>x</var>, <var>y</var>) = (<var>u</var>+<var>x</var>, <var>v</var>+<var>y</var>).</p>

<p>For example, the sum of <var>S</var><sub>3</sub> and <var>S</var><sub>4</sub> is the six-sided shape shown in pink below:</p>

<div class="center">
<img src="project/images/p228.png" class="dark_img" alt="picture showing S_3 + S_4" /></div>

<p>How many sides does <var>S</var><sub>1864</sub> + <var>S</var><sub>1865</sub> + … + <var>S</var><sub>1909</sub> have?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-23fe-916115e7b36a
begin
    submit_answer(nothing; prob_num=228)
end

# ╔═╡ 1ac22980-84a3-11eb-091a-59ce654a3f16
html"""
<h2>Problem 229: Four Representations using Squares</h2>
<p>Consider the number 3600. It is very special, because</p>
<div style="margin-left:200px;">
3600 = 48<sup>2</sup> +     36<sup>2</sup><br /><br />
3600 = 20<sup>2</sup> + 2×40<sup>2</sup><br /><br />
3600 = 30<sup>2</sup> + 3×30<sup>2</sup><br /><br />
3600 = 45<sup>2</sup> + 7×15<sup>2</sup><br /><br /></div>

<p>Similarly, we find that 88201 = 99<sup>2</sup> + 280<sup>2</sup> = 287<sup>2</sup> + 2×54<sup>2</sup> = 283<sup>2</sup> + 3×52<sup>2</sup> = 197<sup>2</sup> + 7×84<sup>2</sup>.</p>

<p>In 1747, Euler proved which numbers are representable as a sum of two squares.
We are interested in the numbers <var>n</var> which admit representations of all of the following four types:</p>
<div style="margin-left:200px;">
<var>n</var> = <var>a<sub>1</sub></var><sup>2</sup> +   <var>b<sub>1</sub></var><sup>2</sup><br /><br /><var>n</var> = <var>a<sub>2</sub></var><sup>2</sup> + 2 <var>b<sub>2</sub></var><sup>2</sup><br /><br /><var>n</var> = <var>a<sub>3</sub></var><sup>2</sup> + 3 <var>b<sub>3</sub></var><sup>2</sup><br /><br /><var>n</var> = <var>a<sub>7</sub></var><sup>2</sup> + 7 <var>b<sub>7</sub></var><sup>2</sup>,
</div>
<p>where the <var>a</var><sub><var>k</var></sub> and <var>b</var><sub><var>k</var></sub> are positive integers.</p>

<p>There are 75373 such numbers that do not exceed 10<sup>7</sup>.<br />

How many such numbers are there that do not exceed 2×10<sup>9</sup>?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-00fd-736e10f33567
begin
    submit_answer(nothing; prob_num=229)
end

# ╔═╡ 1ac22980-84a3-11eb-34f5-15a8cce6677c
html"""
<h2>Problem 230: Fibonacci Words</h2>
<p>For any two strings of digits, A and B, we define F<sub>A,B</sub> to be the sequence (A,B,AB,BAB,ABBAB,...) in which each term is the concatenation of the previous two.</p>

<p>Further, we define D<sub>A,B</sub>(<var>n</var>) to be the <var>n</var><sup>th</sup> digit in the first term of F<sub>A,B</sub> that contains at least <var>n</var> digits.</p>

<p>Example:</p>

<p>Let A=1415926535, B=8979323846. We wish to find D<sub>A,B</sub>(35), say.</p>

<p>The first few terms of F<sub>A,B</sub> are:<br />
1415926535<br />
8979323846<br />
14159265358979323846<br />
897932384614159265358979323846<br />
1415926535897932384689793238461415<span style="color:#FF0000;"><b>9</b></span>265358979323846<br /></p>

<p>Then D<sub>A,B</sub>(35) is the 35<sup>th</sup> digit in the fifth term, which is 9.</p>

<p>Now we use for A the first 100 digits of π behind the decimal point:</p>
<p>14159265358979323846264338327950288419716939937510 <br />
58209749445923078164062862089986280348253421170679 </p>

<p>and for B the next hundred digits:</p>

<p>82148086513282306647093844609550582231725359408128 <br />
48111745028410270193852110555964462294895493038196 .</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span><sub><var>n</var> = 0,1,...,17</sub>   10<sup><var>n</var></sup>× D<sub>A,B</sub>((127+19<var>n</var>)×7<sup><var>n</var></sup>) .</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-176d-3bce4193b04d
begin
    submit_answer(nothing; prob_num=230)
end

# ╔═╡ 1ac22980-84a3-11eb-3883-951061ddea32
html"""
<h2>Problem 231: The prime factorisation of binomial coefficients</h2>
<p>The binomial coefficient $\displaystyle \binom {10} 3 = 120$.<br />
$120 = 2^3 \times 3 \times 5 = 2 \times 2 \times 2 \times 3 \times 5$, and $2 + 2 + 2 + 3 + 5 = 14$.<br />
So the sum of the terms in the prime factorisation of $\displaystyle \binom {10} 3$ is $14$.
<br /><br />
Find the sum of the terms in the prime factorisation of $\displaystyle \binom {20\,000\,000} {15\,000\,000}$.
</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-1fb7-dfe07df30128
begin
    submit_answer(nothing; prob_num=231)
end

# ╔═╡ 1ac22980-84a3-11eb-157d-7b0d269a4714
html"""
<h2>Problem 232: The Race</h2>
<p>Two players share an unbiased coin and take it in turns to play <dfn>The Race</dfn>.</p>

<p>On Player 1's turn, the coin is tossed once. If it comes up Heads, then Player 1 scores one point; if it comes up Tails, then no points are scored.</p>

<p>On Player 2's turn, a positive integer, $T$, is chosen by Player 2 and the coin is tossed $T$ times. If it comes up all Heads, then Player 2 scores $2^{T-1}$ points; otherwise, no points are scored.</p>

<p>Player 1 goes first and the winner is the first to 100 or more points.</p>

<p>Player 2 will always selects the number, $T$, of coin tosses that maximises the probability of winning.</p>

<p>What is the probability that Player 2 wins?</p>

<p>Give your answer rounded to eight decimal places in the form $0.abcdefgh$.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-1c58-39c68a03555c
begin
    submit_answer(nothing; prob_num=232)
end

# ╔═╡ 1ac22980-84a3-11eb-1e29-5f5b68bca43a
html"""
<h2>Problem 233: Lattice points on a circle</h2>
<p>Let <var>f</var>(<var>N</var>) be the number of points with integer coordinates that are on a circle passing through (0,0), (<var>N</var>,0),(0,<var>N</var>), and (<var>N</var>,<var>N</var>).</p>
<p>It can be shown that <var>f</var>(10000) = 36.</p>

<p>What is the sum of all positive integers <var>N</var> ≤ 10<sup>11</sup> such that <var>f</var>(<var>N</var>) = 420 ?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0708-7b1015b15b43
begin
    submit_answer(nothing; prob_num=233)
end

# ╔═╡ 1ac22980-84a3-11eb-192b-bdae51d27c10
html"""
<h2>Problem 234: Semidivisible numbers</h2>
<p>For an integer <var>n</var> ≥ 4, we define the <i>lower prime square root</i> of <var>n</var>, denoted by lps(<var>n</var>), as the largest prime ≤ √<var>n</var> and the <i>upper prime square root</i> of <var>n</var>, ups(<var>n</var>), as the smallest prime ≥ √<var>n</var>.</p>
<p>So, for example, lps(4) = 2 = ups(4), lps(1000) = 31, ups(1000) = 37.<br />
Let us call an integer <var>n</var> ≥ 4 <i>semidivisible</i>, if one of lps(<var>n</var>) and ups(<var>n</var>) divides <var>n</var>, but not both.</p>

<p>The sum of the semidivisible numbers not exceeding 15 is 30, the numbers are 8, 10 and 12.<br /> 15 is not semidivisible because it is a multiple of both lps(15) = 3 and ups(15) = 5.<br />
As a further example, the sum of the 92 semidivisible numbers up to 1000 is 34825.</p>

<p>What is the sum of all semidivisible numbers not exceeding 999966663333 ?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-063d-81d651f3bbcb
begin
    submit_answer(nothing; prob_num=234)
end

# ╔═╡ 1ac22980-84a3-11eb-277f-3dc593b80d9c
html"""
<h2>Problem 235: An Arithmetic Geometric sequence</h2>
<p>
Given is the arithmetic-geometric sequence u(<var>k</var>) = (900-3<var>k</var>)<var>r</var><sup><var>k</var>-1</sup>.<br />
Let s(<var>n</var>) = Σ<sub><var>k</var>=1...<var>n</var></sub>u(<var>k</var>).
</p>
<p>
Find the value of <var>r</var> for which s(5000) = -600,000,000,000.
</p>
<p>
Give your answer rounded to 12 places behind the decimal point.
</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-2dee-7dacc5924293
begin
    submit_answer(nothing; prob_num=235)
end

# ╔═╡ 1ac22980-84a3-11eb-003c-5d67e9b817e0
html"""
<h2>Problem 236: Luxury Hampers</h2>
<p>Suppliers 'A' and 'B' provided the following numbers of products for the luxury hamper market:</p>

<p></p><center><table class="p236"><tr><th>Product</th><th class="center">'A'</th><th class="center">'B'</th></tr><tr><td>Beluga Caviar</td><td>5248</td><td>640</td></tr><tr><td>Christmas Cake</td><td>1312</td><td>1888</td></tr><tr><td>Gammon Joint</td><td>2624</td><td>3776</td></tr><tr><td>Vintage Port</td><td>5760</td><td>3776</td></tr><tr><td>Champagne Truffles</td><td>3936</td><td>5664</td></tr></table></center>

<p>Although the suppliers try very hard to ship their goods in perfect condition, there is inevitably some spoilage - <i>i.e.</i> products gone bad.</p>

<p>The suppliers compare their performance using two types of statistic:</p><ul><li>The five <i>per-product spoilage rates</i> for each supplier are equal to the number of products gone bad divided by the number of products supplied, for each of the five products in turn.</li>
  <li>The <i>overall spoilage rate</i> for each supplier is equal to the total number of products gone bad divided by the total number of products provided by that supplier.</li></ul><p>To their surprise, the suppliers found that each of the five per-product spoilage rates was worse (higher) for 'B' than for 'A' by the same factor (ratio of spoilage rates), <var>m</var>&gt;1; and yet, paradoxically, the overall spoilage rate was worse for 'A' than for 'B', also by a factor of <var>m</var>.</p>

<p>There are thirty-five <var>m</var>&gt;1 for which this surprising result could have occurred, the smallest of which is 1476/1475.</p>

<p>What's the largest possible value of <var>m</var>?<br />
Give your answer as a fraction reduced to its lowest terms, in the form <var>u</var>/<var>v</var>.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-315b-fb8330551f83
begin
    submit_answer(nothing; prob_num=236)
end

# ╔═╡ 1ac22980-84a3-11eb-174c-9f8e13ff7b32
html"""
<h2>Problem 237: Tours on a 4 x n playing board</h2>
<p>Let T(<i>n</i>) be the number of tours over a 4 × <i>n</i> playing board such that:</p>
<ul><li>The tour starts in the top left corner.</li>
<li>The tour consists of moves that are up, down, left, or right one square.</li>
<li>The tour visits each square exactly once.</li>
<li>The tour ends in the bottom left corner.</li>
</ul><p>The diagram shows one tour over a 4 × 10 board:</p>

<div class="center">
<img src="project/images/p237.gif" class="dark_img" alt="" /></div>

<p>T(10) is 2329. What is T(10<sup>12</sup>) modulo 10<sup>8</sup>?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-03c6-896a06e7eb2b
begin
    submit_answer(nothing; prob_num=237)
end

# ╔═╡ 1ac22980-84a3-11eb-3bc4-afeef1ad4c6e
html"""
<h2>Problem 238: Infinite string tour</h2>
<p>Create a sequence of numbers using the "Blum Blum Shub" pseudo-random number generator:</p>

<center><table class="p238"><tr><td style="text-align:right;"><var>s</var><sub>0</sub></td>
    <td>=</td>
    <td>14025256</td>
  </tr><tr><td><var>s</var><sub><var>n</var>+1</sub></td>
    <td>=</td>
    <td><var>s</var><sub><var>n</var></sub><sup>2</sup> mod 20300713</td>
  </tr></table></center>

<p>Concatenate these numbers  <var>s</var><sub>0</sub><var>s</var><sub>1</sub><var>s</var><sub>2</sub>… to create a string <var>w</var> of infinite length.<br />
Then, <var>w</var> = <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">14025256741014958470038053646…</span></p>

<p>For a positive integer <var>k</var>, if no substring of <var>w</var> exists with a sum of digits equal to <var>k</var>, <var>p</var>(<var>k</var>) is defined to be zero. If at least one substring of <var>w</var> exists with a sum of digits equal to <var>k</var>, we define <var>p</var>(<var>k</var>) = <var>z</var>, where <var>z</var> is the starting position of the earliest such substring.</p>

<p>For instance:</p>

<p>The substrings <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">1</span>, <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">14</span>, <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">1402</span>, … <br />
with respective sums of digits equal to 1, 5, 7, …<br />
start at position <b>1</b>, hence <var>p</var>(1) = <var>p</var>(5) = <var>p</var>(7) = … = <b>1</b>.</p>

<p>The substrings <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">4</span>, <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">402</span>, <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">4025</span>, …<br />
with respective sums of digits equal to 4, 6, 11, …<br />
start at position <b>2</b>, hence <var>p</var>(4) = <var>p</var>(6) = <var>p</var>(11) = … = <b>2</b>.</p>

<p>The substrings <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">02</span>, <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">0252</span>, …<br />
with respective sums of digits equal to 2, 9, …<br />
start at position <b>3</b>, hence <var>p</var>(2) = <var>p</var>(9) = … = <b>3</b>.</p><p>

</p><p>Note that substring <span style="font-family:'courier new';font-size:12pt;color:#3333ff;">025</span> starting at position <b>3</b>, has a sum of digits equal to 7, but there was an earlier substring (starting at position <b>1</b>) with a sum of digits equal to 7, so <var>p</var>(7) = 1, <i>not</i> 3.</p>

<p>We can verify that, for 0 &lt; <var>k</var> ≤ 10<sup>3</sup>, <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>p</var>(<var>k</var>) = 4742.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>p</var>(<var>k</var>), for 0 &lt; <var>k</var> ≤ 2×10<sup>15</sup>.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-1520-7176a7dec2fe
begin
    submit_answer(nothing; prob_num=238)
end

# ╔═╡ 1ac22980-84a3-11eb-314f-9d4eca0b5fb8
html"""
<h2>Problem 239: Twenty-two Foolish Primes</h2>
<p>A set of disks numbered 1 through 100 are placed in a line in random order.</p>

<p>What is the probability that we have a partial derangement such that exactly 22 prime number discs are found away from their natural positions?<br />
(Any number of non-prime disks may also be found in or out of their natural positions.)</p>

<p>Give your answer rounded to 12 places behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-12ae-8979d93e5ae8
begin
    submit_answer(nothing; prob_num=239)
end

# ╔═╡ 1ac22980-84a3-11eb-3c20-5d72b16f82c8
html"""
<h2>Problem 240: Top Dice</h2>
<p>There are 1111 ways in which five 6-sided dice (sides numbered 1 to 6) can be rolled so that the top three sum to 15. Some examples are:

<br /><br />
D<sub>1</sub>,D<sub>2</sub>,D<sub>3</sub>,D<sub>4</sub>,D<sub>5</sub> = 4,3,6,3,5
<br />
D<sub>1</sub>,D<sub>2</sub>,D<sub>3</sub>,D<sub>4</sub>,D<sub>5</sub> = 4,3,3,5,6
<br />
D<sub>1</sub>,D<sub>2</sub>,D<sub>3</sub>,D<sub>4</sub>,D<sub>5</sub> = 3,3,3,6,6
<br />
D<sub>1</sub>,D<sub>2</sub>,D<sub>3</sub>,D<sub>4</sub>,D<sub>5</sub> = 6,6,3,3,3
<br /><br />
In how many ways can twenty 12-sided dice (sides numbered 1 to 12) be rolled so that the top ten sum to 70?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0c5e-b3ea835a3c25
begin
    submit_answer(nothing; prob_num=240)
end

# ╔═╡ 1ac22980-84a3-11eb-1159-0399ac7ab635
html"""
<h2>Problem 241: Perfection Quotients</h2>
<p>For a positive integer $n$, let $\sigma(n)$ be the sum of all divisors of $n$. For example, $\sigma(6) = 1 + 2 + 3 + 6 = 12$.</p>

<p>A perfect number, as you probably know, is a number with $\sigma(n) = 2n$.</p>

<p>Let us define the <b>perfection quotient</b> of a positive integer as $p(n) = \dfrac{\sigma(n)}{n}$.</p>

<p>Find the sum of all positive integers $n \le 10^{18}$ for which $p(n)$ has the form $k + \dfrac{1}{2}$, where $k$ is an integer.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-3624-4b2153b62a8c
begin
    submit_answer(nothing; prob_num=241)
end

# ╔═╡ 1ac22980-84a3-11eb-10ef-798c72fe8f14
html"""
<h2>Problem 242: Odd Triplets</h2>
<p>Given the set {1,2,...,<var>n</var>}, we define <var>f</var>(<var>n</var>,<var>k</var>) as the number of its <var>k</var>-element subsets with an odd sum of elements. For example, <var>f</var>(5,3) = 4, since the set {1,2,3,4,5} has four 3-element subsets having an odd sum of elements, i.e.: {1,2,4}, {1,3,5}, {2,3,4} and {2,4,5}.</p>

<p>When all three values <var>n</var>, <var>k</var> and <var>f</var>(<var>n</var>,<var>k</var>) are odd, we say that they make <br />
an <i>odd-triplet</i> [<var>n</var>,<var>k</var>,<var>f</var>(<var>n</var>,<var>k</var>)].</p>

<p>There are exactly five odd-triplets with <var>n</var> ≤ 10, namely:<br />
[1,1,<var>f</var>(1,1) = 1], [5,1,<var>f</var>(5,1) = 3], [5,5,<var>f</var>(5,5) = 1], [9,1,<var>f</var>(9,1) = 5] and [9,9,<var>f</var>(9,9) = 1].</p>

<p>How many odd-triplets are there with <var>n</var> ≤ 10<sup>12</sup> ?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-2aae-574df809af4f
begin
    submit_answer(nothing; prob_num=242)
end

# ╔═╡ 1ac22980-84a3-11eb-0cda-1dc9ce6b14b2
html"""
<h2>Problem 243: Resilience</h2>
<p> </p>
<p>A positive fraction whose numerator is less than its denominator is called a proper fraction.<br />
For any denominator, <var>d</var>, there will be <var>d</var>−1 proper fractions; for example, with <var>d</var> = 12:<br /><sup>1</sup>/<sub>12</sub> , <sup>2</sup>/<sub>12</sub> , <sup>3</sup>/<sub>12</sub> , <sup>4</sup>/<sub>12</sub> , <sup>5</sup>/<sub>12</sub> , <sup>6</sup>/<sub>12</sub> , <sup>7</sup>/<sub>12</sub> , <sup>8</sup>/<sub>12</sub> , <sup>9</sup>/<sub>12</sub> , <sup>10</sup>/<sub>12</sub> , <sup>11</sup>/<sub>12</sub> .
</p>

<p>We shall call a fraction that cannot be cancelled down a <i>resilient fraction</i>.<br />
Furthermore we shall define the <i>resilience</i> of a denominator, <var>R</var>(<var>d</var>), to be the ratio of its proper fractions that are resilient; for example, <var>R</var>(12) = <sup>4</sup>/<sub>11</sub> .<br />
In fact, <var>d</var> = 12 is the smallest denominator having a resilience <var>R</var>(<var>d</var>) &lt; <sup>4</sup>/<sub>10</sub> .</p>

<p>Find the smallest denominator <var>d</var>, having a resilience <var>R</var>(<var>d</var>) &lt; <sup>15499</sup>/<sub>94744</sub> .</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-1242-573652fb8571
begin
    submit_answer(nothing; prob_num=243)
end

# ╔═╡ 1ac22980-84a3-11eb-2984-232ca7c38f82
html"""
<h2>Problem 244: Sliders</h2>
<p>You probably know the game <i>Fifteen Puzzle</i>. Here, instead of numbered tiles, we have seven red tiles and eight blue tiles.</p>
<p>A move is denoted by the uppercase initial of the direction (Left, Right, Up, Down) in which the tile is slid, e.g. starting from configuration (<b>S</b>), by the sequence <b>LULUR</b> we reach the configuration (<b>E</b>):</p>
<p></p><div class="center">
<table cellspacing="0" cellpadding="2" border="0" align="center"><tr><td width="25">(<b>S</b>)</td><td width="100"><img src="project/images/p244_start.gif" class="dark_img" alt="p244_start.gif" /></td><td width="25">, (<b>E</b>)</td><td width="100"><img src="project/images/p244_example.gif" class="dark_img" alt="p244_example.gif" /></td>
</tr></table></div>

<p>For each path, its checksum is calculated by (pseudocode):
</p><div style="margin-left:100px;">
checksum = 0<br />
checksum = (checksum × 243 + <var>m</var><sub>1</sub>) mod 100 000 007<br />
checksum = (checksum × 243 + <var>m</var><sub>2</sub>) mod 100 000 007<br />
   …<br />
checksum = (checksum × 243 + <var>m</var><sub><var>n</var></sub>) mod 100 000 007<br /></div>
where <var>m</var><sub><var>k</var></sub> is the ASCII value of the <var>k</var><sup><var>th</var></sup> letter in the move sequence and the ASCII values for the moves are:

<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><td width="30"><b>L</b></td><td width="30">76</td></tr><tr><td><b>R</b></td><td>82</td></tr><tr><td><b>U</b></td><td>85</td></tr><tr><td><b>D</b></td><td>68</td></tr></table></div>

<p>For the sequence <b>LULUR</b> given above, the checksum would be 19761398.</p>
<p>Now, starting from configuration (<b>S</b>),
find all shortest ways to reach configuration (<b>T</b>).</p>
<p></p><div class="center">
<table cellspacing="0" cellpadding="2" border="0" align="center"><tr><td width="25">(<b>S</b>)</td><td width="100"><img src="project/images/p244_start.gif" class="dark_img" alt="p244_start.gif" /></td><td width="25">, (<b>T</b>)</td><td width="100"><img src="project/images/p244_target.gif" class="dark_img" alt="p244_target.gif" /></td>
</tr></table></div>

<p>What is the sum of all checksums for the paths having the minimal length?</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-020c-174b0d4ac079
begin
    submit_answer(nothing; prob_num=244)
end

# ╔═╡ 1ac22980-84a3-11eb-1add-c9002b25655e
html"""
<h2>Problem 245: Coresilience</h2>
<p>We shall call a fraction that cannot be cancelled down a resilient fraction.<br /> Furthermore we shall define the resilience of a denominator, $R(d)$, to be the ratio of its proper fractions that are resilient; for example, $R(12) = \dfrac{4}{11}$.</p>

<p>The resilience of a number $d \gt 1$ is then $\dfrac{\varphi(d)}{d - 1}$, where $\varphi$ is Euler's totient function.</p>

<p>We further define the <b>coresilience</b> of a number $n \gt 1$ as $C(n) = \dfrac{n - \varphi(n)}{n - 1}$.</p>

<p>The coresilience of a prime $p$ is $C(p) = \dfrac{1}{p - 1}$.</p>

<p>Find the sum of all <b>composite</b> integers $1 \lt n \le 2 \times 10^{11}$, for which $C(n)$ is a <dfn title="A fraction with numerator 1">unit fraction</dfn>.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-2e06-999fe15f603b
begin
    submit_answer(nothing; prob_num=245)
end

# ╔═╡ 1ac22980-84a3-11eb-2037-75e8c9397956
html"""
<h2>Problem 246: Tangents to an ellipse</h2>
<p>
A definition for an ellipse is:<br />
Given a circle c with centre M and radius r and a point G such that d(G,M)&lt;r, the locus of the points that are equidistant from c and G form an ellipse.
</p>
The construction of the points of the ellipse is shown below.

<div class="center">
<img src="project/images/p246_anim.gif" class="dark_img" alt="" /></div>

<p>
Given are the points M(-2000,1500) and G(8000,1500).<br /> 
Given is also the circle c with centre M and radius 15000.<br />
The locus of the points that are equidistant from G and c form an ellipse e.<br />
From a point P outside e the two tangents t<sub>1</sub> and t<sub>2</sub> to the ellipse are drawn.<br />
Let the points where t<sub>1</sub> and t<sub>2</sub> touch the ellipse be R and S.
</p>
<div class="center">
<img src="project/images/p246_ellipse.gif" class="dark_img" alt="" /></div>
<p>
For how many lattice points P is angle RPS greater than 45 degrees?
</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-3b62-39a0017f48c4
begin
    submit_answer(nothing; prob_num=246)
end

# ╔═╡ 1ac22980-84a3-11eb-2ef9-153451f8aaa3
html"""
<h2>Problem 247: Squares under a hyperbola</h2>
<p>Consider the region constrained by 1 ≤ <var>x</var> and 0 ≤ <var>y</var> ≤ <sup>1</sup>/<sub><var>x</var></sub>.
</p><p>
Let S<sub>1</sub> be the largest square that can fit under the curve.<br />
Let S<sub>2</sub> be the largest square that fits in the remaining area, and so on. <br />
Let the <i>index</i> of S<sub><var>n</var></sub> be the pair (left, below) indicating the number of squares to the left of S<sub><var>n</var></sub> and the number of squares below S<sub><var>n</var></sub>.
</p>
<div class="center">
<img src="project/images/p247_hypersquares.gif" class="dark_img" alt="" /></div>
<p>
The diagram shows some such squares labelled by number. <br />
S<sub>2</sub> has one square to its left and none below, so the index of S<sub>2</sub> is (1,0).<br />
It can be seen that the index of S<sub>32</sub> is (1,1) as is the index of S<sub>50</sub>. <br />
50 is the largest <var>n</var> for which the index of S<sub><var>n</var></sub> is (1,1).
</p>
<p>
What is the largest <var>n</var> for which the index of S<sub><var>n</var></sub> is (3,3)?
</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0682-71248a9d0556
begin
    submit_answer(nothing; prob_num=247)
end

# ╔═╡ 1ac22980-84a3-11eb-1ee3-cdb3aa086bf6
html"""
<h2>Problem 248: Numbers for which Euler’s totient function equals 13!</h2>
<p>The first number n for which φ(n)=13! is 6227180929.</p>
<p>Find the 150,000<sup>th</sup> such number.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0dc8-abb90a84e9c0
begin
    submit_answer(nothing; prob_num=248)
end

# ╔═╡ 1ac22980-84a3-11eb-3b02-7749947b6508
html"""
<h2>Problem 249: Prime Subset Sums</h2>
<p>Let <var>S</var> = {2, 3, 5, ..., 4999} be the set of prime numbers less than 5000.</p>
<p>Find the number of subsets of <var>S</var>, the sum of whose elements is a prime number.<br />
Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-191a-f3231922c787
begin
    submit_answer(nothing; prob_num=249)
end

# ╔═╡ 1ac22980-84a3-11eb-18cd-ed02756d651c
html"""
<h2>Problem 250: 250250</h2>
<p>Find the number of non-empty subsets of {1<sup>1</sup>, 2<sup>2</sup>, 3<sup>3</sup>,..., 250250<sup>250250</sup>}, the sum of whose elements is divisible by 250. Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 1ac22980-84a3-11eb-0b11-0798dc4ac80f
begin
    submit_answer(nothing; prob_num=250)
end

# ╔═╡ Cell order:
# ╠═1ac22980-84a3-11eb-2ca9-eb997a11a23f
# ╟─1ac22980-84a3-11eb-0501-f5ec9d3e9b64
# ╠═1ac22980-84a3-11eb-3dcb-adf870989f45
# ╟─1ac22980-84a3-11eb-2362-e1701689df75
# ╠═1ac22980-84a3-11eb-354c-dbbd284a4016
# ╟─1ac22980-84a3-11eb-3f09-ef3bdfd422e1
# ╠═1ac22980-84a3-11eb-23fe-916115e7b36a
# ╟─1ac22980-84a3-11eb-091a-59ce654a3f16
# ╠═1ac22980-84a3-11eb-00fd-736e10f33567
# ╟─1ac22980-84a3-11eb-34f5-15a8cce6677c
# ╠═1ac22980-84a3-11eb-176d-3bce4193b04d
# ╟─1ac22980-84a3-11eb-3883-951061ddea32
# ╠═1ac22980-84a3-11eb-1fb7-dfe07df30128
# ╟─1ac22980-84a3-11eb-157d-7b0d269a4714
# ╠═1ac22980-84a3-11eb-1c58-39c68a03555c
# ╟─1ac22980-84a3-11eb-1e29-5f5b68bca43a
# ╠═1ac22980-84a3-11eb-0708-7b1015b15b43
# ╟─1ac22980-84a3-11eb-192b-bdae51d27c10
# ╠═1ac22980-84a3-11eb-063d-81d651f3bbcb
# ╟─1ac22980-84a3-11eb-277f-3dc593b80d9c
# ╠═1ac22980-84a3-11eb-2dee-7dacc5924293
# ╟─1ac22980-84a3-11eb-003c-5d67e9b817e0
# ╠═1ac22980-84a3-11eb-315b-fb8330551f83
# ╟─1ac22980-84a3-11eb-174c-9f8e13ff7b32
# ╠═1ac22980-84a3-11eb-03c6-896a06e7eb2b
# ╟─1ac22980-84a3-11eb-3bc4-afeef1ad4c6e
# ╠═1ac22980-84a3-11eb-1520-7176a7dec2fe
# ╟─1ac22980-84a3-11eb-314f-9d4eca0b5fb8
# ╠═1ac22980-84a3-11eb-12ae-8979d93e5ae8
# ╟─1ac22980-84a3-11eb-3c20-5d72b16f82c8
# ╠═1ac22980-84a3-11eb-0c5e-b3ea835a3c25
# ╟─1ac22980-84a3-11eb-1159-0399ac7ab635
# ╠═1ac22980-84a3-11eb-3624-4b2153b62a8c
# ╟─1ac22980-84a3-11eb-10ef-798c72fe8f14
# ╠═1ac22980-84a3-11eb-2aae-574df809af4f
# ╟─1ac22980-84a3-11eb-0cda-1dc9ce6b14b2
# ╠═1ac22980-84a3-11eb-1242-573652fb8571
# ╟─1ac22980-84a3-11eb-2984-232ca7c38f82
# ╠═1ac22980-84a3-11eb-020c-174b0d4ac079
# ╟─1ac22980-84a3-11eb-1add-c9002b25655e
# ╠═1ac22980-84a3-11eb-2e06-999fe15f603b
# ╟─1ac22980-84a3-11eb-2037-75e8c9397956
# ╠═1ac22980-84a3-11eb-3b62-39a0017f48c4
# ╟─1ac22980-84a3-11eb-2ef9-153451f8aaa3
# ╠═1ac22980-84a3-11eb-0682-71248a9d0556
# ╟─1ac22980-84a3-11eb-1ee3-cdb3aa086bf6
# ╠═1ac22980-84a3-11eb-0dc8-abb90a84e9c0
# ╟─1ac22980-84a3-11eb-3b02-7749947b6508
# ╠═1ac22980-84a3-11eb-191a-f3231922c787
# ╟─1ac22980-84a3-11eb-18cd-ed02756d651c
# ╠═1ac22980-84a3-11eb-0b11-0798dc4ac80f