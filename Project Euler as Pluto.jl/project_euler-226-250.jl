### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22e3f610-2b5d-11eb-136f-6732c6179af1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22e3f610-2b5d-11eb-028c-8b6b87282d2a
html"""
<h2>Problem 226: A Scoop of Blancmange</h2>
<p>The <i>blancmange curve</i> is the set of points $(x, y)$ such that $0 \le x \le 1$ and $y = \sum \limits_{n = 0}^{\infty} {\dfrac{s(2^n x)}{2^n}}$, where $s(x)$ is the distance from $x$ to the nearest integer.</p>

<p>The area under the blancmange curve is equal to ½, shown in pink in the diagram below.</p>

<div class="center">
<img src="project/images/p226_scoop2.gif" class="dark_img" alt="blancmange curve" /></div>

<p>Let <var>C</var> be the circle with centre $\left ( \frac{1}{4}, \frac{1}{2} \right )$ and radius $\frac{1}{4}$, shown in black in the diagram.</p>

<p>What area under the blancmange curve is enclosed by <var>C</var>?<br />Give your answer rounded to eight decimal places in the form <i>0.abcdefgh</i></p>
"""

# ╔═╡ 22e3f610-2b5d-11eb-3db3-2ff8bfdf5585
begin
    submit_answer(nothing; prob_num=226)
end

# ╔═╡ 22e3f610-2b5d-11eb-381d-7f1950b0bb00
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

# ╔═╡ 22e3f610-2b5d-11eb-0bfc-11b0ba263537
begin
    submit_answer(nothing; prob_num=227)
end

# ╔═╡ 22e41d20-2b5d-11eb-2494-c380c3b3a50a
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

# ╔═╡ 22e41d20-2b5d-11eb-1215-3f8b6facc1b8
begin
    submit_answer(nothing; prob_num=228)
end

# ╔═╡ 22e41d20-2b5d-11eb-3707-e1ab6a4841fc
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

# ╔═╡ 22e41d20-2b5d-11eb-0d7a-017f5afb8dd9
begin
    submit_answer(nothing; prob_num=229)
end

# ╔═╡ 22e41d20-2b5d-11eb-2abf-93d72fad9d6b
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

# ╔═╡ 22e41d20-2b5d-11eb-3c97-d7e687894145
begin
    submit_answer(nothing; prob_num=230)
end

# ╔═╡ 22e41d20-2b5d-11eb-37aa-cbe7efb1bd9a
html"""
<h2>Problem 231: The prime factorisation of binomial coefficients</h2>
<p>The binomial coefficient $\displaystyle \binom {10} 3 = 120$.<br />
$120 = 2^3 \times 3 \times 5 = 2 \times 2 \times 2 \times 3 \times 5$, and $2 + 2 + 2 + 3 + 5 = 14$.<br />
So the sum of the terms in the prime factorisation of $\displaystyle \binom {10} 3$ is $14$.
<br /><br />
Find the sum of the terms in the prime factorisation of $\displaystyle \binom {20\,000\,000} {15\,000\,000}$.
</p>
"""

# ╔═╡ 22e41d20-2b5d-11eb-0939-c1831698c8cc
begin
    submit_answer(nothing; prob_num=231)
end

# ╔═╡ 22e41d20-2b5d-11eb-3d17-59ecb1ff2bc9
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

# ╔═╡ 22e41d20-2b5d-11eb-3a62-1be450e46139
begin
    submit_answer(nothing; prob_num=232)
end

# ╔═╡ 22e41d20-2b5d-11eb-20d5-5944cf9ebe00
html"""
<h2>Problem 233: Lattice points on a circle</h2>
<p>Let <var>f</var>(<var>N</var>) be the number of points with integer coordinates that are on a circle passing through (0,0), (<var>N</var>,0),(0,<var>N</var>), and (<var>N</var>,<var>N</var>).</p>
<p>It can be shown that <var>f</var>(10000) = 36.</p>

<p>What is the sum of all positive integers <var>N</var> ≤ 10<sup>11</sup> such that <var>f</var>(<var>N</var>) = 420 ?</p>
"""

# ╔═╡ 22e41d20-2b5d-11eb-2a21-b7298072410e
begin
    submit_answer(nothing; prob_num=233)
end

# ╔═╡ 22e41d20-2b5d-11eb-00e4-99e8b28a94ee
html"""
<h2>Problem 234: Semidivisible numbers</h2>
<p>For an integer <var>n</var> ≥ 4, we define the <i>lower prime square root</i> of <var>n</var>, denoted by lps(<var>n</var>), as the largest prime ≤ √<var>n</var> and the <i>upper prime square root</i> of <var>n</var>, ups(<var>n</var>), as the smallest prime ≥ √<var>n</var>.</p>
<p>So, for example, lps(4) = 2 = ups(4), lps(1000) = 31, ups(1000) = 37.<br />
Let us call an integer <var>n</var> ≥ 4 <i>semidivisible</i>, if one of lps(<var>n</var>) and ups(<var>n</var>) divides <var>n</var>, but not both.</p>

<p>The sum of the semidivisible numbers not exceeding 15 is 30, the numbers are 8, 10 and 12.<br /> 15 is not semidivisible because it is a multiple of both lps(15) = 3 and ups(15) = 5.<br />
As a further example, the sum of the 92 semidivisible numbers up to 1000 is 34825.</p>

<p>What is the sum of all semidivisible numbers not exceeding 999966663333 ?</p>
"""

# ╔═╡ 22e41d20-2b5d-11eb-1503-cb0cd5d30f5b
begin
    submit_answer(nothing; prob_num=234)
end

# ╔═╡ 22e41d20-2b5d-11eb-060f-f50eaf916224
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

# ╔═╡ 22e41d20-2b5d-11eb-362d-0de577794da6
begin
    submit_answer(nothing; prob_num=235)
end

# ╔═╡ 22e41d20-2b5d-11eb-39d4-15b044c678d8
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

# ╔═╡ 22e41d20-2b5d-11eb-2164-97643a75b7e9
begin
    submit_answer(nothing; prob_num=236)
end

# ╔═╡ 22e44430-2b5d-11eb-1332-43472461f067
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

# ╔═╡ 22e44430-2b5d-11eb-2bb5-9f08a172d151
begin
    submit_answer(nothing; prob_num=237)
end

# ╔═╡ 22e44430-2b5d-11eb-00e6-89af964a74a2
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

# ╔═╡ 22e44430-2b5d-11eb-3e8d-7923f8210c51
begin
    submit_answer(nothing; prob_num=238)
end

# ╔═╡ 22e44430-2b5d-11eb-1e23-6faab01bdf96
html"""
<h2>Problem 239: Twenty-two Foolish Primes</h2>
<p>A set of disks numbered 1 through 100 are placed in a line in random order.</p>

<p>What is the probability that we have a partial derangement such that exactly 22 prime number discs are found away from their natural positions?<br />
(Any number of non-prime disks may also be found in or out of their natural positions.)</p>

<p>Give your answer rounded to 12 places behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 22e44430-2b5d-11eb-3de6-99ff5d9b6f39
begin
    submit_answer(nothing; prob_num=239)
end

# ╔═╡ 22e44430-2b5d-11eb-2421-776704f35067
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

# ╔═╡ 22e44430-2b5d-11eb-0170-1f9933bed32f
begin
    submit_answer(nothing; prob_num=240)
end

# ╔═╡ 22e44430-2b5d-11eb-214a-0f8b06563f47
html"""
<h2>Problem 241: Perfection Quotients</h2>
<p>For a positive integer $n$, let $\sigma(n)$ be the sum of all divisors of $n$. For example, $\sigma(6) = 1 + 2 + 3 + 6 = 12$.</p>

<p>A perfect number, as you probably know, is a number with $\sigma(n) = 2n$.</p>

<p>Let us define the <b>perfection quotient</b> of a positive integer as $p(n) = \dfrac{\sigma(n)}{n}$.</p>

<p>Find the sum of all positive integers $n \le 10^{18}$ for which $p(n)$ has the form $k + \dfrac{1}{2}$, where $k$ is an integer.</p>
"""

# ╔═╡ 22e44430-2b5d-11eb-0234-1340e58fbd64
begin
    submit_answer(nothing; prob_num=241)
end

# ╔═╡ 22e44430-2b5d-11eb-0b3f-4dca3eb68993
html"""
<h2>Problem 242: Odd Triplets</h2>
<p>Given the set {1,2,...,<var>n</var>}, we define <var>f</var>(<var>n</var>,<var>k</var>) as the number of its <var>k</var>-element subsets with an odd sum of elements. For example, <var>f</var>(5,3) = 4, since the set {1,2,3,4,5} has four 3-element subsets having an odd sum of elements, i.e.: {1,2,4}, {1,3,5}, {2,3,4} and {2,4,5}.</p>

<p>When all three values <var>n</var>, <var>k</var> and <var>f</var>(<var>n</var>,<var>k</var>) are odd, we say that they make <br />
an <i>odd-triplet</i> [<var>n</var>,<var>k</var>,<var>f</var>(<var>n</var>,<var>k</var>)].</p>

<p>There are exactly five odd-triplets with <var>n</var> ≤ 10, namely:<br />
[1,1,<var>f</var>(1,1) = 1], [5,1,<var>f</var>(5,1) = 3], [5,5,<var>f</var>(5,5) = 1], [9,1,<var>f</var>(9,1) = 5] and [9,9,<var>f</var>(9,9) = 1].</p>

<p>How many odd-triplets are there with <var>n</var> ≤ 10<sup>12</sup> ?</p>
"""

# ╔═╡ 22e44430-2b5d-11eb-3fcd-51c229d0ed5f
begin
    submit_answer(nothing; prob_num=242)
end

# ╔═╡ 22e44430-2b5d-11eb-1785-1f82aba72e07
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

# ╔═╡ 22e44430-2b5d-11eb-0328-15f7dbf8650e
begin
    submit_answer(nothing; prob_num=243)
end

# ╔═╡ 22e44430-2b5d-11eb-075e-0fbc3e60a1cd
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

# ╔═╡ 22e44430-2b5d-11eb-17a2-3f8c8c3a379f
begin
    submit_answer(nothing; prob_num=244)
end

# ╔═╡ 22e44430-2b5d-11eb-2123-e9e5f935206d
html"""
<h2>Problem 245: Coresilience</h2>
<p>We shall call a fraction that cannot be cancelled down a resilient fraction.<br /> Furthermore we shall define the resilience of a denominator, $R(d)$, to be the ratio of its proper fractions that are resilient; for example, $R(12) = \dfrac{4}{11}$.</p>

<p>The resilience of a number $d \gt 1$ is then $\dfrac{\phi(d)}{d - 1}$, where φ is Euler's totient function.</p>

<p>We further define the <b>coresilience</b> of a number $n \gt 1$ as $C(n) = \dfrac{n - \phi(n)}{n - 1}$.</p>

<p>The coresilience of a prime $p$ is $C(p) = \dfrac{1}{p - 1}$.</p>

<p>Find the sum of all <b>composite</b> integers $1 \lt n \le 2 \times 10^{11}$, for which $C(n)$ is a <dfn title="A fraction with numerator 1">unit fraction</dfn>.</p>
"""

# ╔═╡ 22e44430-2b5d-11eb-15ea-b1d38c67f073
begin
    submit_answer(nothing; prob_num=245)
end

# ╔═╡ 22e44430-2b5d-11eb-1a6c-634b890267f2
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

# ╔═╡ 22e44430-2b5d-11eb-3a4d-b5e873db1dba
begin
    submit_answer(nothing; prob_num=246)
end

# ╔═╡ 22e44430-2b5d-11eb-1505-3f7dbd756ceb
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

# ╔═╡ 22e44430-2b5d-11eb-2274-573c546d4e32
begin
    submit_answer(nothing; prob_num=247)
end

# ╔═╡ 22e46b40-2b5d-11eb-29ca-37e9f3decfd5
html"""
<h2>Problem 248: Numbers for which Euler’s totient function equals 13!</h2>
<p>The first number n for which φ(n)=13! is 6227180929.</p>
<p>Find the 150,000<sup>th</sup> such number.</p>
"""

# ╔═╡ 22e46b40-2b5d-11eb-3b0e-b771da38f5ab
begin
    submit_answer(nothing; prob_num=248)
end

# ╔═╡ 22e46b40-2b5d-11eb-12ac-3f6b604b7457
html"""
<h2>Problem 249: Prime Subset Sums</h2>
<p>Let <var>S</var> = {2, 3, 5, ..., 4999} be the set of prime numbers less than 5000.</p>
<p>Find the number of subsets of <var>S</var>, the sum of whose elements is a prime number.<br />
Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 22e46b40-2b5d-11eb-1fbd-97a64312d694
begin
    submit_answer(nothing; prob_num=249)
end

# ╔═╡ 22e46b40-2b5d-11eb-344e-993f3ea7480e
html"""
<h2>Problem 250: 250250</h2>
<p>Find the number of non-empty subsets of {1<sup>1</sup>, 2<sup>2</sup>, 3<sup>3</sup>,..., 250250<sup>250250</sup>}, the sum of whose elements is divisible by 250. Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 22e46b40-2b5d-11eb-0079-07c8a2dfcb08
begin
    submit_answer(nothing; prob_num=250)
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