### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 458e75b0-2b34-11eb-1df6-7ba95d351ac1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 458e75b0-2b34-11eb-31e1-618a8c187dc5
html"""
<h2>Problem 226: A Scoop of Blancmange</h2>
<p>The <i>blancmange curve</i> is the set of points $(x, y)$ such that $0 \le x \le 1$ and $y = \sum \limits_{n = 0}^{\infty} {\dfrac{s(2^n x)}{2^n}}$, where $s(x)$ is the distance from $x$ to the nearest integer.</p>

<p>The area under the blancmange curve is equal to ½, shown in pink in the diagram below.</p>

<div class="center">
<img src="project/images/p226_scoop2.gif" class="dark_img" alt="blancmange curve" /></div>

<p>Let <var>C</var> be the circle with centre $\left ( \frac{1}{4}, \frac{1}{2} \right )$ and radius $\frac{1}{4}$, shown in black in the diagram.</p>

<p>What area under the blancmange curve is enclosed by <var>C</var>?<br />Give your answer rounded to eight decimal places in the form <i>0.abcdefgh</i></p>
"""

# ╔═╡ 458e75b0-2b34-11eb-3ea5-c1660e318594
begin
    submit_answer(nothing; prob_num=235)
end

# ╔═╡ 458e75b0-2b34-11eb-1785-cde5d00086d9
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

# ╔═╡ 458e75b0-2b34-11eb-0f19-4be941691a26
begin
    submit_answer(nothing; prob_num=236)
end

# ╔═╡ 458e75b0-2b34-11eb-1e77-93372a2e6fa1
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

# ╔═╡ 458e75b0-2b34-11eb-3276-df63f868dbc9
begin
    submit_answer(nothing; prob_num=237)
end

# ╔═╡ 458e75b0-2b34-11eb-1701-dba9ff0ac4cb
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

# ╔═╡ 458e75b0-2b34-11eb-22a4-c1223745ecb8
begin
    submit_answer(nothing; prob_num=238)
end

# ╔═╡ 458e75b0-2b34-11eb-0146-b9577efdbfb2
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

# ╔═╡ 458e75b0-2b34-11eb-27c8-e59b8ffda1fa
begin
    submit_answer(nothing; prob_num=239)
end

# ╔═╡ 458e75b0-2b34-11eb-3a1a-1dec0c51c217
html"""
<h2>Problem 231: The prime factorisation of binomial coefficients</h2>
<p>The binomial coefficient $\displaystyle \binom {10} 3 = 120$.<br />
$120 = 2^3 \times 3 \times 5 = 2 \times 2 \times 2 \times 3 \times 5$, and $2 + 2 + 2 + 3 + 5 = 14$.<br />
So the sum of the terms in the prime factorisation of $\displaystyle \binom {10} 3$ is $14$.
<br /><br />
Find the sum of the terms in the prime factorisation of $\displaystyle \binom {20\,000\,000} {15\,000\,000}$.
</p>
"""

# ╔═╡ 458e75b0-2b34-11eb-2e03-a7aa8f373510
begin
    submit_answer(nothing; prob_num=240)
end

# ╔═╡ 458e75b0-2b34-11eb-064d-652e398ec59d
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

# ╔═╡ 458e75b0-2b34-11eb-2780-9f8011cc75e2
begin
    submit_answer(nothing; prob_num=241)
end

# ╔═╡ 458e75b0-2b34-11eb-13f0-9be2392d7514
html"""
<h2>Problem 233: Lattice points on a circle</h2>
<p>Let <var>f</var>(<var>N</var>) be the number of points with integer coordinates that are on a circle passing through (0,0), (<var>N</var>,0),(0,<var>N</var>), and (<var>N</var>,<var>N</var>).</p>
<p>It can be shown that <var>f</var>(10000) = 36.</p>

<p>What is the sum of all positive integers <var>N</var> ≤ 10<sup>11</sup> such that <var>f</var>(<var>N</var>) = 420 ?</p>
"""

# ╔═╡ 458e75b0-2b34-11eb-05ef-a91a19b8dbf5
begin
    submit_answer(nothing; prob_num=242)
end

# ╔═╡ 458e75b0-2b34-11eb-0920-4f25888b1a70
html"""
<h2>Problem 234: Semidivisible numbers</h2>
<p>For an integer <var>n</var> ≥ 4, we define the <i>lower prime square root</i> of <var>n</var>, denoted by lps(<var>n</var>), as the largest prime ≤ √<var>n</var> and the <i>upper prime square root</i> of <var>n</var>, ups(<var>n</var>), as the smallest prime ≥ √<var>n</var>.</p>
<p>So, for example, lps(4) = 2 = ups(4), lps(1000) = 31, ups(1000) = 37.<br />
Let us call an integer <var>n</var> ≥ 4 <i>semidivisible</i>, if one of lps(<var>n</var>) and ups(<var>n</var>) divides <var>n</var>, but not both.</p>

<p>The sum of the semidivisible numbers not exceeding 15 is 30, the numbers are 8, 10 and 12.<br /> 15 is not semidivisible because it is a multiple of both lps(15) = 3 and ups(15) = 5.<br />
As a further example, the sum of the 92 semidivisible numbers up to 1000 is 34825.</p>

<p>What is the sum of all semidivisible numbers not exceeding 999966663333 ?</p>
"""

# ╔═╡ 458e75b0-2b34-11eb-397b-9b51761e94cd
begin
    submit_answer(nothing; prob_num=243)
end

# ╔═╡ 458e75b0-2b34-11eb-0758-f93b41825525
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

# ╔═╡ 458e75b0-2b34-11eb-0a7a-d514836df8cf
begin
    submit_answer(nothing; prob_num=244)
end

# ╔═╡ 458e9cc0-2b34-11eb-3ab4-f5e39deaffd5
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

# ╔═╡ 458e9cc0-2b34-11eb-2001-edca0caa59a2
begin
    submit_answer(nothing; prob_num=245)
end

# ╔═╡ 458e9cc0-2b34-11eb-0da1-e323db804e25
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

# ╔═╡ 458e9cc0-2b34-11eb-05da-c5622aafccfb
begin
    submit_answer(nothing; prob_num=246)
end

# ╔═╡ 458e9cc0-2b34-11eb-021e-dfe9d2f613a9
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

# ╔═╡ 458e9cc0-2b34-11eb-37c8-0de4b6258421
begin
    submit_answer(nothing; prob_num=247)
end

# ╔═╡ 458e9cc0-2b34-11eb-20e9-bbaac5e23564
html"""
<h2>Problem 239: Twenty-two Foolish Primes</h2>
<p>A set of disks numbered 1 through 100 are placed in a line in random order.</p>

<p>What is the probability that we have a partial derangement such that exactly 22 prime number discs are found away from their natural positions?<br />
(Any number of non-prime disks may also be found in or out of their natural positions.)</p>

<p>Give your answer rounded to 12 places behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-3f5a-69050beac332
begin
    submit_answer(nothing; prob_num=248)
end

# ╔═╡ 458e9cc0-2b34-11eb-2424-11c90c252948
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

# ╔═╡ 458e9cc0-2b34-11eb-3283-739006725357
begin
    submit_answer(nothing; prob_num=249)
end

# ╔═╡ 458e9cc0-2b34-11eb-0782-355c888b35e0
html"""
<h2>Problem 241: Perfection Quotients</h2>
<p>For a positive integer $n$, let $\sigma(n)$ be the sum of all divisors of $n$. For example, $\sigma(6) = 1 + 2 + 3 + 6 = 12$.</p>

<p>A perfect number, as you probably know, is a number with $\sigma(n) = 2n$.</p>

<p>Let us define the <b>perfection quotient</b> of a positive integer as $p(n) = \dfrac{\sigma(n)}{n}$.</p>

<p>Find the sum of all positive integers $n \le 10^{18}$ for which $p(n)$ has the form $k + \dfrac{1}{2}$, where $k$ is an integer.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-148b-93b2f3b1e852
begin
    submit_answer(nothing; prob_num=250)
end

# ╔═╡ 458e9cc0-2b34-11eb-0b26-394876523431
html"""
<h2>Problem 242: Odd Triplets</h2>
<p>Given the set {1,2,...,<var>n</var>}, we define <var>f</var>(<var>n</var>,<var>k</var>) as the number of its <var>k</var>-element subsets with an odd sum of elements. For example, <var>f</var>(5,3) = 4, since the set {1,2,3,4,5} has four 3-element subsets having an odd sum of elements, i.e.: {1,2,4}, {1,3,5}, {2,3,4} and {2,4,5}.</p>

<p>When all three values <var>n</var>, <var>k</var> and <var>f</var>(<var>n</var>,<var>k</var>) are odd, we say that they make <br />
an <i>odd-triplet</i> [<var>n</var>,<var>k</var>,<var>f</var>(<var>n</var>,<var>k</var>)].</p>

<p>There are exactly five odd-triplets with <var>n</var> ≤ 10, namely:<br />
[1,1,<var>f</var>(1,1) = 1], [5,1,<var>f</var>(5,1) = 3], [5,5,<var>f</var>(5,5) = 1], [9,1,<var>f</var>(9,1) = 5] and [9,9,<var>f</var>(9,9) = 1].</p>

<p>How many odd-triplets are there with <var>n</var> ≤ 10<sup>12</sup> ?</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-2bef-6783db0b3a49
begin
    submit_answer(nothing; prob_num=251)
end

# ╔═╡ 458e9cc0-2b34-11eb-0373-ebf3122f03c1
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

# ╔═╡ 458e9cc0-2b34-11eb-0a35-2939435aff6a
begin
    submit_answer(nothing; prob_num=252)
end

# ╔═╡ 458e9cc0-2b34-11eb-1282-efdbec622303
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

# ╔═╡ 458e9cc0-2b34-11eb-2f9d-a59e50398a19
begin
    submit_answer(nothing; prob_num=253)
end

# ╔═╡ 458e9cc0-2b34-11eb-0464-a7749b21e54a
html"""
<h2>Problem 245: Coresilience</h2>
<p>We shall call a fraction that cannot be cancelled down a resilient fraction.<br /> Furthermore we shall define the resilience of a denominator, $R(d)$, to be the ratio of its proper fractions that are resilient; for example, $R(12) = \dfrac{4}{11}$.</p>

<p>The resilience of a number $d \gt 1$ is then $\dfrac{\phi(d)}{d - 1}$, where φ is Euler's totient function.</p>

<p>We further define the <b>coresilience</b> of a number $n \gt 1$ as $C(n) = \dfrac{n - \phi(n)}{n - 1}$.</p>

<p>The coresilience of a prime $p$ is $C(p) = \dfrac{1}{p - 1}$.</p>

<p>Find the sum of all <b>composite</b> integers $1 \lt n \le 2 \times 10^{11}$, for which $C(n)$ is a <dfn title="A fraction with numerator 1">unit fraction</dfn>.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-1074-550ccefb390b
begin
    submit_answer(nothing; prob_num=254)
end

# ╔═╡ 458e9cc0-2b34-11eb-0c08-451ce0bf136a
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

# ╔═╡ 458e9cc0-2b34-11eb-2214-11d747da7cf7
begin
    submit_answer(nothing; prob_num=255)
end

# ╔═╡ 458e9cc0-2b34-11eb-346e-6947be099d8a
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

# ╔═╡ 458e9cc0-2b34-11eb-2cc9-bd5001bc99d7
begin
    submit_answer(nothing; prob_num=256)
end

# ╔═╡ 458e9cc0-2b34-11eb-3253-d3675ee5c47a
html"""
<h2>Problem 248: Numbers for which Euler’s totient function equals 13!</h2>
<p>The first number n for which φ(n)=13! is 6227180929.</p>
<p>Find the 150,000<sup>th</sup> such number.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-3952-a1bc72c6282a
begin
    submit_answer(nothing; prob_num=257)
end

# ╔═╡ 458e9cc0-2b34-11eb-38e2-4dc170f8dd5b
html"""
<h2>Problem 249: Prime Subset Sums</h2>
<p>Let <var>S</var> = {2, 3, 5, ..., 4999} be the set of prime numbers less than 5000.</p>
<p>Find the number of subsets of <var>S</var>, the sum of whose elements is a prime number.<br />
Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-3e55-a11e23dc8767
begin
    submit_answer(nothing; prob_num=258)
end

# ╔═╡ 458e9cc0-2b34-11eb-316f-6d61c5af07db
html"""
<h2>Problem 250: 250250</h2>
<p>Find the number of non-empty subsets of {1<sup>1</sup>, 2<sup>2</sup>, 3<sup>3</sup>,..., 250250<sup>250250</sup>}, the sum of whose elements is divisible by 250. Enter the rightmost 16 digits as your answer.</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-0b38-0ff503f73d1c
begin
    submit_answer(nothing; prob_num=259)
end

# ╔═╡ 458e9cc0-2b34-11eb-2d68-c5c5ad77e1b8
html"""
<h2>Problem 251: Cardano Triplets</h2>
<p>
A triplet of positive integers (<var>a</var>,<var>b</var>,<var>c</var>) is called a Cardano Triplet if it satisfies the condition:</p>
$$\sqrt[3]{a + b \sqrt{c}} + \sqrt[3]{a - b \sqrt{c}} = 1$$

<p>
For example, (2,1,5) is a Cardano Triplet.
</p>
<p>
There exist 149 Cardano Triplets for which <var>a</var>+<var>b</var>+<var>c</var> ≤ 1000.
</p>
<p>
Find how many Cardano Triplets exist such that <var>a</var>+<var>b</var>+<var>c</var> ≤ 110,000,000.
 
</p>
"""

# ╔═╡ 458e9cc0-2b34-11eb-1f8c-5d96fa72bac5
begin
    submit_answer(nothing; prob_num=260)
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
# ╠═458d1620-2b34-11eb-3890-3d3748418771
# ╟─458d1620-2b34-11eb-1d45-0f7bb20dbe22
# ╠═458d1620-2b34-11eb-3d90-37066d375b76
# ╟─458d1620-2b34-11eb-0a26-83486f27748d
# ╠═458d1620-2b34-11eb-2165-2fb69a7be427
# ╟─458d1620-2b34-11eb-0ca4-f3c09549f775
# ╠═458d1620-2b34-11eb-3aa6-c1e6af3fa38c
# ╟─458d1620-2b34-11eb-3281-ff875ee9a8fb
# ╠═458d1620-2b34-11eb-26dd-1353cc250e76
# ╟─458d1620-2b34-11eb-0f5f-5f6d549ce650
# ╠═458d1620-2b34-11eb-0b14-25f7fea0ff69
# ╟─458d1620-2b34-11eb-2656-19a6181ec04f
# ╠═458d1620-2b34-11eb-0b42-69b8743d15a3
# ╟─458d3d30-2b34-11eb-03d1-151a9b969480
# ╠═458d3d30-2b34-11eb-20c1-fb4852cb1cfa
# ╟─458d3d30-2b34-11eb-0d90-07fe6db3f7b8
# ╠═458d3d30-2b34-11eb-34f2-711022a942bb
# ╟─458d3d30-2b34-11eb-1e13-a9b28f19301b
# ╠═458d3d30-2b34-11eb-3e75-0544fb31d444
# ╟─458d3d30-2b34-11eb-2443-31b60d9bb202
# ╠═458d3d30-2b34-11eb-227c-0b78d18f04f3
# ╟─458d3d30-2b34-11eb-2b97-ffd3f1d956e4
# ╠═458d3d30-2b34-11eb-0b05-e7a07141d9af
# ╟─458d3d30-2b34-11eb-12c4-d5448d520d27
# ╠═458d3d30-2b34-11eb-38da-49f22efe5a02
# ╟─458d3d30-2b34-11eb-2893-07bb76c0aac7
# ╠═458d3d30-2b34-11eb-24f5-15789d9028c0
# ╟─458d3d30-2b34-11eb-36a1-ddd75eb0a3f3
# ╠═458d3d30-2b34-11eb-186d-51ac1b602753
# ╟─458d3d30-2b34-11eb-1c30-6faeff2ed2a2
# ╠═458d3d30-2b34-11eb-2a3e-4bbbfa20e43c
# ╟─458d3d30-2b34-11eb-3436-f123bb191a01
# ╠═458d3d30-2b34-11eb-167f-a7e3b684baac
# ╟─458d3d30-2b34-11eb-32df-a3cd0acf4010
# ╠═458d3d30-2b34-11eb-1f92-4b9d47eeb656
# ╟─458d3d30-2b34-11eb-2d05-ebbe41156d31
# ╠═458d3d30-2b34-11eb-03fb-236d12b8eff1
# ╟─458d3d30-2b34-11eb-0942-25d5d56c8d49
# ╠═458d3d30-2b34-11eb-34da-19c1e37c797d
# ╟─458d6440-2b34-11eb-07f1-e5a3b2c15a72
# ╠═458d6440-2b34-11eb-07ac-f57174ee0c93
# ╟─458d6440-2b34-11eb-11e9-0fbb151931fc
# ╠═458d6440-2b34-11eb-0f07-c16dcaac868c
# ╟─458d6440-2b34-11eb-343e-bba20b37b1f7
# ╠═458d6440-2b34-11eb-0639-f1739d662b1d
# ╟─458d6440-2b34-11eb-1270-4d2bafddd302
# ╠═458d6440-2b34-11eb-0cbe-55a7efe25a6e
# ╟─458d6440-2b34-11eb-0ba3-efd6a1a560ea
# ╠═458d6440-2b34-11eb-00e5-e506e8d8d963
# ╟─458d6440-2b34-11eb-2c31-4db0cef308a9
# ╠═458d6440-2b34-11eb-3601-e555fb8aa951
# ╟─458d6440-2b34-11eb-2db8-e3ed879e9bc0
# ╠═458d6440-2b34-11eb-0319-112aa5460424
# ╠═458e75b0-2b34-11eb-1df6-7ba95d351ac1
# ╟─458e75b0-2b34-11eb-31e1-618a8c187dc5
# ╠═458e75b0-2b34-11eb-3ea5-c1660e318594
# ╟─458e75b0-2b34-11eb-1785-cde5d00086d9
# ╠═458e75b0-2b34-11eb-0f19-4be941691a26
# ╟─458e75b0-2b34-11eb-1e77-93372a2e6fa1
# ╠═458e75b0-2b34-11eb-3276-df63f868dbc9
# ╟─458e75b0-2b34-11eb-1701-dba9ff0ac4cb
# ╠═458e75b0-2b34-11eb-22a4-c1223745ecb8
# ╟─458e75b0-2b34-11eb-0146-b9577efdbfb2
# ╠═458e75b0-2b34-11eb-27c8-e59b8ffda1fa
# ╟─458e75b0-2b34-11eb-3a1a-1dec0c51c217
# ╠═458e75b0-2b34-11eb-2e03-a7aa8f373510
# ╟─458e75b0-2b34-11eb-064d-652e398ec59d
# ╠═458e75b0-2b34-11eb-2780-9f8011cc75e2
# ╟─458e75b0-2b34-11eb-13f0-9be2392d7514
# ╠═458e75b0-2b34-11eb-05ef-a91a19b8dbf5
# ╟─458e75b0-2b34-11eb-0920-4f25888b1a70
# ╠═458e75b0-2b34-11eb-397b-9b51761e94cd
# ╟─458e75b0-2b34-11eb-0758-f93b41825525
# ╠═458e75b0-2b34-11eb-0a7a-d514836df8cf
# ╟─458e9cc0-2b34-11eb-3ab4-f5e39deaffd5
# ╠═458e9cc0-2b34-11eb-2001-edca0caa59a2
# ╟─458e9cc0-2b34-11eb-0da1-e323db804e25
# ╠═458e9cc0-2b34-11eb-05da-c5622aafccfb
# ╟─458e9cc0-2b34-11eb-021e-dfe9d2f613a9
# ╠═458e9cc0-2b34-11eb-37c8-0de4b6258421
# ╟─458e9cc0-2b34-11eb-20e9-bbaac5e23564
# ╠═458e9cc0-2b34-11eb-3f5a-69050beac332
# ╟─458e9cc0-2b34-11eb-2424-11c90c252948
# ╠═458e9cc0-2b34-11eb-3283-739006725357
# ╟─458e9cc0-2b34-11eb-0782-355c888b35e0
# ╠═458e9cc0-2b34-11eb-148b-93b2f3b1e852
# ╟─458e9cc0-2b34-11eb-0b26-394876523431
# ╠═458e9cc0-2b34-11eb-2bef-6783db0b3a49
# ╟─458e9cc0-2b34-11eb-0373-ebf3122f03c1
# ╠═458e9cc0-2b34-11eb-0a35-2939435aff6a
# ╟─458e9cc0-2b34-11eb-1282-efdbec622303
# ╠═458e9cc0-2b34-11eb-2f9d-a59e50398a19
# ╟─458e9cc0-2b34-11eb-0464-a7749b21e54a
# ╠═458e9cc0-2b34-11eb-1074-550ccefb390b
# ╟─458e9cc0-2b34-11eb-0c08-451ce0bf136a
# ╠═458e9cc0-2b34-11eb-2214-11d747da7cf7
# ╟─458e9cc0-2b34-11eb-346e-6947be099d8a
# ╠═458e9cc0-2b34-11eb-2cc9-bd5001bc99d7
# ╟─458e9cc0-2b34-11eb-3253-d3675ee5c47a
# ╠═458e9cc0-2b34-11eb-3952-a1bc72c6282a
# ╟─458e9cc0-2b34-11eb-38e2-4dc170f8dd5b
# ╠═458e9cc0-2b34-11eb-3e55-a11e23dc8767
# ╟─458e9cc0-2b34-11eb-316f-6d61c5af07db
# ╠═458e9cc0-2b34-11eb-0b38-0ff503f73d1c
# ╟─458e9cc0-2b34-11eb-2d68-c5c5ad77e1b8
# ╠═458e9cc0-2b34-11eb-1f8c-5d96fa72bac5