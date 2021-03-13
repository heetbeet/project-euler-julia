### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 442942e0-8435-11eb-0159-dd4a9e01013a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 442942e0-8435-11eb-2c55-6d3400d46a45
html"""
<h2>Problem 226: A Scoop of Blancmange</h2>
<p>The <i>blancmange curve</i> is the set of points $(x, y)$ such that $0 \le x \le 1$ and $y = \sum \limits_{n = 0}^{\infty} {\dfrac{s(2^n x)}{2^n}}$, where $s(x)$ is the distance from $x$ to the nearest integer.</p>

<p>The area under the blancmange curve is equal to ½, shown in pink in the diagram below.</p>

<div class="center">
<img src="project/images/p226_scoop2.gif" class="dark_img" alt="blancmange curve" /></div>

<p>Let <var>C</var> be the circle with centre $\left ( \frac{1}{4}, \frac{1}{2} \right )$ and radius $\frac{1}{4}$, shown in black in the diagram.</p>

<p>What area under the blancmange curve is enclosed by <var>C</var>?<br />Give your answer rounded to eight decimal places in the form <i>0.abcdefgh</i></p>
"""

# ╔═╡ 442942e0-8435-11eb-3eea-6150d08a0589
begin
    submit_answer(nothing; prob_num=226)
end

# ╔═╡ 442942e0-8435-11eb-204a-29f2e738c1aa
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

# ╔═╡ 442942e0-8435-11eb-20e9-1b0a3654d3da
begin
    submit_answer(nothing; prob_num=227)
end

# ╔═╡ 442942e0-8435-11eb-1412-ed7768a0f5fb
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

# ╔═╡ 442942e0-8435-11eb-1975-c9114a329d04
begin
    submit_answer(nothing; prob_num=228)
end

# ╔═╡ 442942e0-8435-11eb-08a7-0be6fb2c921b
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

# ╔═╡ 442942e0-8435-11eb-0fed-4573891d610f
begin
    submit_answer(nothing; prob_num=229)
end

# ╔═╡ 442942e0-8435-11eb-3eaf-6d0a8b91dae6
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

# ╔═╡ 442942e0-8435-11eb-12fd-ed6abd060172
begin
    submit_answer(nothing; prob_num=230)
end

# ╔═╡ 442942e0-8435-11eb-2fe0-97ea524ef66c
html"""
<h2>Problem 231: The prime factorisation of binomial coefficients</h2>
<p>The binomial coefficient $\displaystyle \binom {10} 3 = 120$.<br />
$120 = 2^3 \times 3 \times 5 = 2 \times 2 \times 2 \times 3 \times 5$, and $2 + 2 + 2 + 3 + 5 = 14$.<br />
So the sum of the terms in the prime factorisation of $\displaystyle \binom {10} 3$ is $14$.
<br /><br />
Find the sum of the terms in the prime factorisation of $\displaystyle \binom {20\,000\,000} {15\,000\,000}$.
</p>
"""

# ╔═╡ 442942e0-8435-11eb-09f5-593f641c70d9
begin
    submit_answer(nothing; prob_num=231)
end

# ╔═╡ 442942e0-8435-11eb-393c-d7b9a83e311c
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

# ╔═╡ 442942e0-8435-11eb-3ec3-f5ec9099f69b
begin
    submit_answer(nothing; prob_num=232)
end

# ╔═╡ 442942e0-8435-11eb-323f-d9a15ffdaad2
html"""
<h2>Problem 233: Lattice points on a circle</h2>
<p>Let <var>f</var>(<var>N</var>) be the number of points with integer coordinates that are on a circle passing through (0,0), (<var>N</var>,0),(0,<var>N</var>), and (<var>N</var>,<var>N</var>).</p>
<p>It can be shown that <var>f</var>(10000) = 36.</p>

<p>What is the sum of all positive integers <var>N</var> ≤ 10<sup>11</sup> such that <var>f</var>(<var>N</var>) = 420 ?</p>
"""

# ╔═╡ 442942e0-8435-11eb-0665-efcc9e1e9b2a
begin
    submit_answer(nothing; prob_num=233)
end

# ╔═╡ 442942e0-8435-11eb-3350-05c8fbfcd951
html"""
<h2>Problem 234: Semidivisible numbers</h2>
<p>For an integer <var>n</var> ≥ 4, we define the <i>lower prime square root</i> of <var>n</var>, denoted by lps(<var>n</var>), as the largest prime ≤ √<var>n</var> and the <i>upper prime square root</i> of <var>n</var>, ups(<var>n</var>), as the smallest prime ≥ √<var>n</var>.</p>
<p>So, for example, lps(4) = 2 = ups(4), lps(1000) = 31, ups(1000) = 37.<br />
Let us call an integer <var>n</var> ≥ 4 <i>semidivisible</i>, if one of lps(<var>n</var>) and ups(<var>n</var>) divides <var>n</var>, but not both.</p>

<p>The sum of the semidivisible numbers not exceeding 15 is 30, the numbers are 8, 10 and 12.<br /> 15 is not semidivisible because it is a multiple of both lps(15) = 3 and ups(15) = 5.<br />
As a further example, the sum of the 92 semidivisible numbers up to 1000 is 34825.</p>

<p>What is the sum of all semidivisible numbers not exceeding 999966663333 ?</p>
"""

# ╔═╡ 442942e0-8435-11eb-0f0a-8383f2de86da
begin
    submit_answer(nothing; prob_num=234)
end

# ╔═╡ 442942e0-8435-11eb-24e8-a9feb949786d
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

# ╔═╡ 442942e0-8435-11eb-08a7-99dcffd6843d
begin
    submit_answer(nothing; prob_num=235)
end

# ╔═╡ 442942e0-8435-11eb-27f0-35662f73120e
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

# ╔═╡ 442942e0-8435-11eb-1bbd-43f65ad5c06a
begin
    submit_answer(nothing; prob_num=236)
end

# ╔═╡ 442942e0-8435-11eb-09f7-998669e1bbcc
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

# ╔═╡ 442942e0-8435-11eb-1ea7-216504309c97
begin
    submit_answer(nothing; prob_num=237)
end

# ╔═╡ 442942e0-8435-11eb-1ab8-eb7d7dcaf7f0
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

# ╔═╡ 442942e0-8435-11eb-2404-f1e746cd9758
begin
    submit_answer(nothing; prob_num=238)
end

# ╔═╡ 442942e0-8435-11eb-0537-99573e71d288
html"""
<h2>Problem 239: Twenty-two Foolish Primes</h2>
<p>A set of disks numbered 1 through 100 are placed in a line in random order.</p>

<p>What is the probability that we have a partial derangement such that exactly 22 prime number discs are found away from their natural positions?<br />
(Any number of non-prime disks may also be found in or out of their natural positions.)</p>

<p>Give your answer rounded to 12 places behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 442942e0-8435-11eb-3d87-434f4c8408fd
begin
    submit_answer(nothing; prob_num=239)
end

# ╔═╡ 442942e0-8435-11eb-292e-01746e4c4ad4
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

# ╔═╡ 442942e0-8435-11eb-3249-0d4d9e928fc9
begin
    submit_answer(nothing; prob_num=240)
end

# ╔═╡ 442942e0-8435-11eb-2135-89f7a6a57b7e
html"""
<h2>Problem 241: Perfection Quotients</h2>
<p>For a positive integer $n$, let $\sigma(n)$ be the sum of all divisors of $n$. For example, $\sigma(6) = 1 + 2 + 3 + 6 = 12$.</p>

<p>A perfect number, as you probably know, is a number with $\sigma(n) = 2n$.</p>

<p>Let us define the <b>perfection quotient</b> of a positive integer as $p(n) = \dfrac{\sigma(n)}{n}$.</p>

<p>Find the sum of all positive integers $n \le 10^{18}$ for which $p(n)$ has the form $k + \dfrac{1}{2}$, where $k$ is an integer.</p>
"""

# ╔═╡ 442942e0-8435-11eb-27be-11c7c1bbe6a8
begin
    submit_answer(nothing; prob_num=241)
end

# ╔═╡ 442942e0-8435-11eb-0c03-2d8891b00be2
html"""
<h2>Problem 242: Odd Triplets</h2>
<p>Given the set {1,2,...,<var>n</var>}, we define <var>f</var>(<var>n</var>,<var>k</var>) as the number of its <var>k</var>-element subsets with an odd sum of elements. For example, <var>f</var>(5,3) = 4, since the set {1,2,3,4,5} has four 3-element subsets having an odd sum of elements, i.e.: {1,2,4}, {1,3,5}, {2,3,4} and {2,4,5}.</p>

<p>When all three values <var>n</var>, <var>k</var> and <var>f</var>(<var>n</var>,<var>k</var>) are odd, we say that they make <br />
an <i>odd-triplet</i> [<var>n</var>,<var>k</var>,<var>f</var>(<var>n</var>,<var>k</var>)].</p>

<p>There are exactly five odd-triplets with <var>n</var> ≤ 10, namely:<br />
[1,1,<var>f</var>(1,1) = 1], [5,1,<var>f</var>(5,1) = 3], [5,5,<var>f</var>(5,5) = 1], [9,1,<var>f</var>(9,1) = 5] and [9,9,<var>f</var>(9,9) = 1].</p>

<p>How many odd-triplets are there with <var>n</var> ≤ 10<sup>12</sup> ?</p>
"""

# ╔═╡ 442942e0-8435-11eb-252d-93c6b5d0851c
begin
    submit_answer(nothing; prob_num=242)
end

# ╔═╡ 442942e0-8435-11eb-152f-bd2211e1a1f1
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

# ╔═╡ 442942e0-8435-11eb-34c1-190c39b7213e
begin
    submit_answer(nothing; prob_num=243)
end

# ╔═╡ 442942e0-8435-11eb-01fa-df323e1b8224
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

# ╔═╡ 442942e0-8435-11eb-074c-3ff0bbacc380
begin
    submit_answer(nothing; prob_num=244)
end

# ╔═╡ 442942e0-8435-11eb-0544-1ba0444405f1
html"""
<h2>Problem 245: Coresilience</h2>
<p>We shall call a fraction that cannot be cancelled down a resilient fraction.<br /> Furthermore we shall define the resilience of a denominator, $R(d)$, to be the ratio of its proper fractions that are resilient; for example, $R(12) = \dfrac{4}{11}$.</p>

<p>The resilience of a number $d \gt 1$ is then $\dfrac{\varphi(d)}{d - 1}$, where $\varphi$ is Euler's totient function.</p>

<p>We further define the <b>coresilience</b> of a number $n \gt 1$ as $C(n) = \dfrac{n - \varphi(n)}{n - 1}$.</p>

<p>The coresilience of a prime $p$ is $C(p) = \dfrac{1}{p - 1}$.</p>

<p>Find the sum of all <b>composite</b> integers $1 \lt n \le 2 \times 10^{11}$, for which $C(n)$ is a <dfn title="A fraction with numerator 1">unit fraction</dfn>.</p>
"""

# ╔═╡ 442942e0-8435-11eb-093c-b3125bd6e788
begin
    submit_answer(nothing; prob_num=245)
end

# ╔═╡ 442942e0-8435-11eb-23e6-67b9bc853bb9
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

# ╔═╡ 442942e0-8435-11eb-36fc-73259f550b6b
begin
    submit_answer(nothing; prob_num=246)
end

# ╔═╡ 442942e0-8435-11eb-1f2c-c9b42d73df9a
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

# ╔═╡ 442942e0-8435-11eb-2405-652a58fef88f
begin
    submit_answer(nothing; prob_num=247)
end

# ╔═╡ 442942e0-8435-11eb-3b5c-0514f2c34281
html"""
<h2>Problem 248: Numbers for which Euler’s totient function equals 13!</h2>
<p>The first number n for which φ(n)=13! is 6227180929.</p>
<p>Find the 150,000<sup>th</sup> such number.</p>
"""

# ╔═╡ 442942e0-8435-11eb-2387-9f11b399129c
begin
    submit_answer(nothing; prob_num=248)
end

# ╔═╡ 442942e0-8435-11eb-271d-0bab23f7c790
html"""
<h2>Problem 249: Prime Subset Sums</h2>
<p>Let <var>S</var> = {2, 3, 5, ..., 4999} be the set of prime numbers less than 5000.</p>
<p>Find the number of subsets of <var>S</var>, the sum of whose elements is a prime number.<br />
Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 442942e0-8435-11eb-2b1b-9d8f8d7a7949
begin
    submit_answer(nothing; prob_num=249)
end

# ╔═╡ 442942e0-8435-11eb-103b-7b2bf4669847
html"""
<h2>Problem 250: 250250</h2>
<p>Find the number of non-empty subsets of {1<sup>1</sup>, 2<sup>2</sup>, 3<sup>3</sup>,..., 250250<sup>250250</sup>}, the sum of whose elements is divisible by 250. Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 442942e0-8435-11eb-0029-b92e9918410e
begin
    submit_answer(nothing; prob_num=250)
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
# ╠═4426d1e0-8435-11eb-2a7c-157cd9a2835a
# ╟─4426d1e0-8435-11eb-145f-95fcbd4ea2c7
# ╠═4426d1e0-8435-11eb-3612-cb3d38bf1f28
# ╟─442942e0-8435-11eb-04a8-b10f0b772747
# ╠═442942e0-8435-11eb-3514-211c68ed074f
# ╟─442942e0-8435-11eb-1d99-05e911bfc4c1
# ╠═442942e0-8435-11eb-3df3-efc17c8de737
# ╟─442942e0-8435-11eb-0f0e-4d2942f74df8
# ╠═442942e0-8435-11eb-1961-73e57dc39c22
# ╟─442942e0-8435-11eb-3eee-af16b4e2a4f2
# ╠═442942e0-8435-11eb-1646-9bb954111de0
# ╟─442942e0-8435-11eb-32f6-dd42c5aedc2b
# ╠═442942e0-8435-11eb-227e-154f41d9a067
# ╟─442942e0-8435-11eb-2362-4f98c7960595
# ╠═442942e0-8435-11eb-39ac-7b6b16b2c971
# ╟─442942e0-8435-11eb-1654-5f1a338ec650
# ╠═442942e0-8435-11eb-3d63-71ef77a725a7
# ╟─442942e0-8435-11eb-059f-b17b1f2cdd57
# ╠═442942e0-8435-11eb-3736-1326e9ebb5a2
# ╟─442942e0-8435-11eb-0ba3-191dbe613269
# ╠═442942e0-8435-11eb-06c8-531ab695efb6
# ╟─442942e0-8435-11eb-19e4-2bd1d23c4bbe
# ╠═442942e0-8435-11eb-2af0-9df978f7a8e8
# ╟─442942e0-8435-11eb-1f57-53702dcdb400
# ╠═442942e0-8435-11eb-3f7e-19be450664f8
# ╟─442942e0-8435-11eb-20c5-ebe1dc5911fe
# ╠═442942e0-8435-11eb-10c1-fdd6b2b5be73
# ╟─442942e0-8435-11eb-0c03-9df2ae973df9
# ╠═442942e0-8435-11eb-2227-832129c0dbcb
# ╟─442942e0-8435-11eb-1d00-bba674712743
# ╠═442942e0-8435-11eb-159b-f14ea05c6154
# ╟─442942e0-8435-11eb-0598-59f28442901a
# ╠═442942e0-8435-11eb-1756-1791dd05d2a8
# ╟─442942e0-8435-11eb-0dcf-1382d71b66d5
# ╠═442942e0-8435-11eb-2b70-2d9302ecae9a
# ╟─442942e0-8435-11eb-0135-b5fff4606b5d
# ╠═442942e0-8435-11eb-2bbc-839b5bb70f06
# ╟─442942e0-8435-11eb-03dd-a5204ad8b8b0
# ╠═442942e0-8435-11eb-1565-d91a73b41871
# ╟─442942e0-8435-11eb-2287-afa38785aedd
# ╠═442942e0-8435-11eb-17a1-4543b8ca7451
# ╟─442942e0-8435-11eb-0afe-635bad66ef23
# ╠═442942e0-8435-11eb-2eb7-dbd02f0afbd9
# ╟─442942e0-8435-11eb-3cee-97d4ecc6ed38
# ╠═442942e0-8435-11eb-3484-13be9a5768e8
# ╟─442942e0-8435-11eb-3c2f-b70a32a45cf8
# ╠═442942e0-8435-11eb-2e1e-2b40628fd14b
# ╟─442942e0-8435-11eb-3add-a9c93d468581
# ╠═442942e0-8435-11eb-0bd7-4d56bff796b9
# ╟─442942e0-8435-11eb-18cd-dbd362671314
# ╠═442942e0-8435-11eb-222a-9de14d374777
# ╠═442942e0-8435-11eb-0159-dd4a9e01013a
# ╟─442942e0-8435-11eb-2c55-6d3400d46a45
# ╠═442942e0-8435-11eb-3eea-6150d08a0589
# ╟─442942e0-8435-11eb-204a-29f2e738c1aa
# ╠═442942e0-8435-11eb-20e9-1b0a3654d3da
# ╟─442942e0-8435-11eb-1412-ed7768a0f5fb
# ╠═442942e0-8435-11eb-1975-c9114a329d04
# ╟─442942e0-8435-11eb-08a7-0be6fb2c921b
# ╠═442942e0-8435-11eb-0fed-4573891d610f
# ╟─442942e0-8435-11eb-3eaf-6d0a8b91dae6
# ╠═442942e0-8435-11eb-12fd-ed6abd060172
# ╟─442942e0-8435-11eb-2fe0-97ea524ef66c
# ╠═442942e0-8435-11eb-09f5-593f641c70d9
# ╟─442942e0-8435-11eb-393c-d7b9a83e311c
# ╠═442942e0-8435-11eb-3ec3-f5ec9099f69b
# ╟─442942e0-8435-11eb-323f-d9a15ffdaad2
# ╠═442942e0-8435-11eb-0665-efcc9e1e9b2a
# ╟─442942e0-8435-11eb-3350-05c8fbfcd951
# ╠═442942e0-8435-11eb-0f0a-8383f2de86da
# ╟─442942e0-8435-11eb-24e8-a9feb949786d
# ╠═442942e0-8435-11eb-08a7-99dcffd6843d
# ╟─442942e0-8435-11eb-27f0-35662f73120e
# ╠═442942e0-8435-11eb-1bbd-43f65ad5c06a
# ╟─442942e0-8435-11eb-09f7-998669e1bbcc
# ╠═442942e0-8435-11eb-1ea7-216504309c97
# ╟─442942e0-8435-11eb-1ab8-eb7d7dcaf7f0
# ╠═442942e0-8435-11eb-2404-f1e746cd9758
# ╟─442942e0-8435-11eb-0537-99573e71d288
# ╠═442942e0-8435-11eb-3d87-434f4c8408fd
# ╟─442942e0-8435-11eb-292e-01746e4c4ad4
# ╠═442942e0-8435-11eb-3249-0d4d9e928fc9
# ╟─442942e0-8435-11eb-2135-89f7a6a57b7e
# ╠═442942e0-8435-11eb-27be-11c7c1bbe6a8
# ╟─442942e0-8435-11eb-0c03-2d8891b00be2
# ╠═442942e0-8435-11eb-252d-93c6b5d0851c
# ╟─442942e0-8435-11eb-152f-bd2211e1a1f1
# ╠═442942e0-8435-11eb-34c1-190c39b7213e
# ╟─442942e0-8435-11eb-01fa-df323e1b8224
# ╠═442942e0-8435-11eb-074c-3ff0bbacc380
# ╟─442942e0-8435-11eb-0544-1ba0444405f1
# ╠═442942e0-8435-11eb-093c-b3125bd6e788
# ╟─442942e0-8435-11eb-23e6-67b9bc853bb9
# ╠═442942e0-8435-11eb-36fc-73259f550b6b
# ╟─442942e0-8435-11eb-1f2c-c9b42d73df9a
# ╠═442942e0-8435-11eb-2405-652a58fef88f
# ╟─442942e0-8435-11eb-3b5c-0514f2c34281
# ╠═442942e0-8435-11eb-2387-9f11b399129c
# ╟─442942e0-8435-11eb-271d-0bab23f7c790
# ╠═442942e0-8435-11eb-2b1b-9d8f8d7a7949
# ╟─442942e0-8435-11eb-103b-7b2bf4669847
# ╠═442942e0-8435-11eb-0029-b92e9918410e