### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ae59000-84a3-11eb-2fb2-7337686d2a3e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ae59000-84a3-11eb-3e7c-9d35660eafbd
html"""
<h2>Problem 526: Largest prime factors of consecutive numbers</h2>
<p>Let <var>f</var>(<var>n</var>) be the largest prime factor of <var>n</var>.</p>
<p>Let <var>g</var>(<var>n</var>) = <var>f</var>(<var>n</var>) + <var>f</var>(<var>n</var>+1) + <var>f</var>(<var>n</var>+2) + <var>f</var>(<var>n</var>+3) + <var>f</var>(<var>n</var>+4) + <var>f</var>(<var>n</var>+5) + <var>f</var>(<var>n</var>+6) + <var>f</var>(<var>n</var>+7) + <var>f</var>(<var>n</var>+8), the sum of the largest prime factor of each of nine consecutive numbers starting with <var>n</var>.</p>
<p>Let <var>h</var>(<var>n</var>) be the maximum value of <var>g</var>(<var>k</var>) for 2 ≤ <var>k</var> ≤ <var>n</var>.</p>
<p>You are given:</p>
<ul><li><var>f</var>(100) = 5</li>
<li><var>f</var>(101) = 101</li>
<li><var>g</var>(100) = 409</li>
<li><var>h</var>(100) = 417</li>
<li><var>h</var>(10<sup>9</sup>) = 4896292593</li></ul>
<p>Find <var>h</var>(10<sup>16</sup>).</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-1bfb-778c4c8b2baa
begin
    submit_answer(nothing; prob_num=526)
end

# ╔═╡ 1ae59000-84a3-11eb-142d-fb189af426ba
html"""
<h2>Problem 527: Randomized Binary Search</h2>
<p>A secret integer <var>t</var> is selected at random within the range 1 ≤ <var>t</var> ≤ <var>n</var>. </p>

<p>The goal is to guess the value of <var>t</var> by making repeated guesses, via integer <var>g</var>. After a guess is made, there are three possible outcomes, in which it will be revealed that either <var>g</var> &lt; <var>t</var>, <var>g</var> = <var>t</var>, or <var>g</var> &gt; <var>t</var>. Then the process can repeat as necessary.</p>

<p>Normally, the number of guesses required on average can be minimized with a binary search: Given a lower bound <var>L</var> and upper bound <var>H</var> (initialized to <var>L</var> = 1 and <var>H</var> = <var>n</var>), let <var>g</var> = ⌊(<var>L</var>+<var>H</var>)/2⌋ where ⌊⋅⌋ is the integer floor function. If <var>g</var> = <var>t</var>, the process ends. Otherwise, if <var>g</var> &lt; <var>t</var>, set <var>L</var> = <var>g</var>+1, but if <var>g</var> &gt; <var>t</var> instead, set <var>H</var> = <var>g</var>−1. After setting the new bounds, the search process repeats, and ultimately ends once <var>t</var> is found. Even if <var>t</var> can be deduced without searching, assume that a search will be required anyway to confirm the value.</p>

<p>Your friend Bob believes that the standard binary search is not that much better than his randomized variant: Instead of setting <var>g</var> = ⌊(<var>L</var>+<var>H</var>)/2⌋, simply let <var>g</var> be a random integer between <var>L</var> and <var>H</var>, inclusive. The rest of the algorithm is the same as the standard binary search. This new search routine will be referred to as a <i>random binary search</i>.</p>

<p>Given that 1 ≤ <var>t</var> ≤ <var>n</var> for random <var>t</var>, let B(<var>n</var>) be the expected number of guesses needed to find <var>t</var> using the standard binary search, and let R(<var>n</var>) be the expected number of guesses needed to find <var>t</var> using the random binary search. For example, B(6) = 2.33333333 and R(6) = 2.71666667 when rounded to 8 decimal places.</p>

<p>Find R(10<sup>10</sup>) − B(10<sup>10</sup>) rounded to 8 decimal places.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-2fce-4d2da96d31eb
begin
    submit_answer(nothing; prob_num=527)
end

# ╔═╡ 1ae59000-84a3-11eb-1ce8-c5df8248f0f1
html"""
<h2>Problem 528: Constrained Sums</h2>
<p>Let S(<var>n</var>,<var>k</var>,<var>b</var>) represent the number of valid solutions to <var>x</var><sub>1</sub> + <var>x</var><sub>2</sub> + ... + <var>x</var><sub><var>k</var></sub> ≤ <var>n</var>, where 0 ≤ <var>x</var><sub><var>m</var></sub> ≤ <var>b</var><sup><var>m</var></sup> for all 1 ≤ <var>m</var> ≤ <var>k</var>.</p>

<p>For example, S(14,3,2) = 135, S(200,5,3) = 12949440, and S(1000,10,5) mod 1 000 000 007 = 624839075.</p>

<p>Find (<span style="font-size:larger;">∑</span><sub>10 ≤ <var>k</var> ≤ 15</sub> S(10<sup><var>k</var></sup>,<var>k</var>,<var>k</var>)) mod 1 000 000 007.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-0afa-cfc0c2010e88
begin
    submit_answer(nothing; prob_num=528)
end

# ╔═╡ 1ae59000-84a3-11eb-01fe-39f055938cb2
html"""
<h2>Problem 529: 10-substrings</h2>
<p>A <i>10-substring</i> of a number is a substring of its digits that sum to 10. For example, the 10-substrings of the number 3523014 are:</p>
<ul style="list-style-type:none;"><li><b><u>352</u></b>3014</li>
<li>3<b><u>523</u></b>014</li>
<li>3<b><u>5230</u></b>14</li>
<li>35<b><u>23014</u></b></li></ul>
<p>A number is called <i>10-substring-friendly</i> if every one of its digits belongs to a 10-substring. For example, 3523014 is 10-substring-friendly, but 28546 is not.</p>
<p>Let <var>T</var>(<var>n</var>) be the number of 10-substring-friendly numbers from 1 to 10<sup><var>n</var></sup> (inclusive).<br />
For example <var>T</var>(2) = 9 and <var>T</var>(5) = 3492.</p>
<p>Find <var>T</var>(10<sup>18</sup>) mod 1 000 000 007.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-269f-676b09b3652d
begin
    submit_answer(nothing; prob_num=529)
end

# ╔═╡ 1ae59000-84a3-11eb-1ce3-5f04cf1fa7ec
html"""
<h2>Problem 530: GCD of Divisors</h2>
<p>Every divisor <var>d</var> of a number <var>n</var> has a <b>complementary divisor</b> <var>n</var>/<var>d</var>.</p>

<p>Let <var>f</var>(<var>n</var>) be the sum of the <b>greatest common divisor</b> of <var>d</var> and <var>n</var>/<var>d</var> over all positive divisors <var>d</var> of <var>n</var>, that is
$f(n)=\displaystyle\sum\limits_{d|n}\, \text{gcd}(d,\frac n d)$.</p>

<p>Let <var>F</var> be the summatory function of <var>f</var>, that is
$F(k)=\displaystyle\sum\limits_{n=1}^k \, f(n)$.</p>

<p>You are given that <var>F</var>(10)=32 and <var>F</var>(1000)=12776.</p>

<p>Find <var>F</var>(10<sup>15</sup>).</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-1bfd-a7d92d9c9211
begin
    submit_answer(nothing; prob_num=530)
end

# ╔═╡ 1ae59000-84a3-11eb-370d-01f1f1f809d9
html"""
<h2>Problem 531: Chinese leftovers</h2>
<p>
Let g(<var>a,n,b,m</var>) be the smallest non-negative solution <var>x</var> to the system:<br />
<var>x = a</var> mod <var>n</var><br />
<var>x = b</var> mod <var>m</var><br />
if such a solution exists, otherwise 0.
</p>
<p>
E.g. g(2,4,4,6)=10, but g(3,4,4,6)=0.
</p>
<p>
Let φ(<var>n</var>) be Euler's totient function.
</p>
<p>
Let f(n,m)=g(φ(n),n,φ(m),m)
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(n,m) for 1000000 ≤ n &lt; m &lt; 1005000
</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-165d-a9498016ef9a
begin
    submit_answer(nothing; prob_num=531)
end

# ╔═╡ 1ae59000-84a3-11eb-2987-8b89daf095a3
html"""
<h2>Problem 532: Nanobots on Geodesics</h2>
<p>Bob is a manufacturer of nanobots and wants to impress his customers by giving them a ball coloured by his new nanobots as a present.</p>

<p>His nanobots can be programmed to select and locate exactly one other bot precisely and, after activation, move towards this bot along the shortest possible path and draw a coloured line onto the surface while moving. Placed on a plane, the bots will start to move towards their selected bots in a straight line. In contrast, being placed on a ball, they will start to move along a geodesic as the shortest possible path. However, in both cases, whenever their target moves they will adjust their direction instantaneously to the new shortest possible path. All bots will move at the same speed after their simultaneous activation until each bot reaches its goal.</p>

<p>Now Bob places <var>n</var> bots on the ball (with radius 1) equidistantly on a small circle with radius 0.999 and programs each of them to move toward the next nanobot sitting counterclockwise on that small circle. After activation, the bots move in a sort of spiral until they finally meet at one point on the ball.</p>

<p>Using three bots, Bob finds that every bot will draw a line of length 2.84, resulting in a total length of 8.52 for all three bots, each time rounded to two decimal places. The coloured ball looks like this:</p>

<div align="center"><img src="project/images/p532-nanobots.jpg" alt="p532-nanobots.jpg" /></div>

<p>In order to show off a little with his presents, Bob decides to use just enough bots to make sure that the line each bot draws is longer than 1000. What is the total length of all lines drawn with this number of bots, rounded to two decimal places?</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-0d0b-c74f257920d5
begin
    submit_answer(nothing; prob_num=532)
end

# ╔═╡ 1ae59000-84a3-11eb-04a4-c721560edd19
html"""
<h2>Problem 533: Minimum values of the Carmichael function</h2>
<p>The <b>Carmichael function</b> λ(<var>n</var>) is defined as the smallest positive integer <var>m</var> such that <var>a<sup>m</sup></var> = 1 modulo <var>n</var> for all integers <var>a</var> coprime with <var>n</var>.<br />
For example λ(8) = 2 and λ(240) = 4.</p>

<p>Define L(<var>n</var>) as the smallest positive integer <var>m</var> such that λ(<var>k</var>) ≥ <var>n</var> for all <var>k</var> ≥ <var>m</var>.<br />
For example, L(6) = 241 and L(100) = 20 174 525 281.</p>

<p>Find L(20 000 000). Give the last 9 digits of your answer.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-03d9-592db438ec08
begin
    submit_answer(nothing; prob_num=533)
end

# ╔═╡ 1ae59000-84a3-11eb-1e27-4f25fc5b410a
html"""
<h2>Problem 534: Weak Queens</h2>
<p>The classical <b>eight queens puzzle</b> is the well known problem of placing eight chess queens on a 8×8 chessboard so that no two queens threaten each other. Allowing configurations to reappear in rotated or mirrored form, a total of 92 distinct configurations can be found for eight queens. The general case asks for the number of distinct ways of placing <var>n</var> queens on a <var>n</var>×<var>n</var> board, e.g. you can find 2 distinct configurations for <var>n</var>=4.</p>

<p>Let's define a <i>weak queen</i> on a <var>n</var>×<var>n</var> board to be a piece which can move any number of squares if moved horizontally, but a maximum of <var>n</var>−1−<var>w</var> squares if moved vertically or diagonally, 0≤w&lt;n being the "weakness factor". For example, a weak queen on a <var>n</var>×<var>n</var> board with a weakness factor of <var>w</var>=1 located in the bottom row will not be able to threaten any square in the top row as the weak queen would need to move <var>n</var>−1 squares vertically or diagonally to get there, but may only move <var>n</var>−2 squares in these directions. In contrast, the weak queen is not handicapped horizontally, thus threatening every square in its own row, independently from its current position in that row.</p>

<p>Let Q(<var>n</var>,<var>w</var>) be the number of ways <var>n</var> weak queens with weakness factor <var>w</var> can be placed on a <var>n</var>×<var>n</var> board so that no two queens threaten each other. It can be shown, for example, that Q(4,0)=2, Q(4,2)=16 and Q(4,3)=256.</p>

<p>Let $S(n)=\displaystyle\sum_{w=0}^{n-1} Q(n,w)$.</p>

<p>You are given that S(4)=276 and S(5)=3347.</p>

<p>Find S(14).</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-368e-a3971766f764
begin
    submit_answer(nothing; prob_num=534)
end

# ╔═╡ 1ae59000-84a3-11eb-26c3-09c0070f9e24
html"""
<h2>Problem 535: Fractal Sequence</h2>
<p>Consider the infinite integer sequence S starting with:<br />
<var>S</var> = 1, 1, 2, 1, 3, 2, 4, 1, 5, 3, 6, 2, 7, 8, 4, 9, 1, 10, 11, 5, ...</p>

<p>Circle the first occurrence of each integer.<br />
<var>S</var> = ①, 1, ②, 1, ③, 2, ④, 1, ⑤, 3, ⑥, 2, ⑦, ⑧, 4, ⑨, 1, ⑩, ⑪, 5, ...</p>

<p>The sequence is characterized by the following properties:</p>
<ul><li>The circled numbers are consecutive integers starting with 1.</li>
<li>Immediately preceding each non-circled numbers <var>a<sub>i</sub></var>, there are exactly ⌊√<var>a<sub>i</sub></var>⌋ adjacent circled numbers, where ⌊⌋ is the floor function.</li>
<li>If we remove all circled numbers, the remaining numbers form a sequence identical to <var>S</var>, so <var>S</var> is a <b>fractal sequence</b>.</li></ul>

<p>Let T(<var>n</var>) be the sum of the first <var>n</var> elements of the sequence.<br />
You are given T(1) = 1, T(20) = 86, T(10<sup>3</sup>) = 364089 and T(10<sup>9</sup>) = 498676527978348241.</p>

<p>Find T(10<sup>18</sup>). Give the last 9 digits of your answer.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-2a26-21ede89db16e
begin
    submit_answer(nothing; prob_num=535)
end

# ╔═╡ 1ae59000-84a3-11eb-319e-9fbd4a25228c
html"""
<h2>Problem 536: Modulo power identity </h2>
<p>
Let S(<var>n</var>) be the sum of all positive integers <var>m</var> not exceeding <var>n</var> having the following property:<br />
<var>a</var> <sup><var>m</var>+4</sup> ≡ <var>a</var> (mod <var>m</var>) for all integers <var>a</var>.
</p>
<p>
The values of <var>m</var> ≤ 100 that satisfy this property are 1, 2, 3, 5 and 21, thus S(100) = 1+2+3+5+21 = 32.<br />
You are given S(10<sup>6</sup>) = 22868117.
</p>
<p>
Find S(10<sup>12</sup>).
</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-284c-a1c64229755e
begin
    submit_answer(nothing; prob_num=536)
end

# ╔═╡ 1ae59000-84a3-11eb-1e5e-e7b107f2a695
html"""
<h2>Problem 537: Counting tuples</h2>
<p>
Let <var>π</var>(<var>x</var>) be the prime counting function, i.e. the number of prime numbers less than or equal to <var>x</var>.<br />
For example, <var>π</var>(1)=0, <var>π</var>(2)=1, <var>π</var>(100)=25.
</p>
<p>
Let <var>T</var>(<var>n</var>,<var>k</var>) be the number of <var>k</var>-tuples (<var>x</var><sub>1</sub>,…,<var>x<sub>k</sub></var>) which satisfy:<br />
1. every <var>x<sub>i</sub></var> is a positive integer;<br />
2. $\displaystyle \sum_{i=1}^k \pi(x_i)=n$
</p>
<p>
For example <var>T</var>(3,3)=19.<br />
The 19 tuples are (1,1,5), (1,5,1), (5,1,1), (1,1,6), (1,6,1), (6,1,1), (1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2), (3,2,1), (1,2,4), (1,4,2), (2,1,4), (2,4,1), (4,1,2), (4,2,1), (2,2,2).
</p>
<p>
You are given <var>T</var>(10,10) = 869 985 and <var>T</var>(10<sup>3</sup>,10<sup>3</sup>) ≡ 578 270 566 (mod 1 004 535 809).
</p><p>
Find <var>T</var>(20 000, 20 000) mod 1 004 535 809.
</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-35fc-81caba398dd4
begin
    submit_answer(nothing; prob_num=537)
end

# ╔═╡ 1ae59000-84a3-11eb-378d-01c8cbf27f01
html"""
<h2>Problem 538: Maximum quadrilaterals</h2>
<p>Consider a positive integer sequence <var>S</var> = (<var>s</var><sub>1</sub>, <var>s</var><sub>2</sub>, ..., <var>s<sub>n</sub></var>).</p>

<p>Let f(<var>S</var>) be the perimeter of the maximum-area quadrilateral whose side lengths are 4 elements (<var>s<sub>i</sub></var>, <var>s<sub>j</sub></var>, <var>s<sub>k</sub></var>, <var>s<sub>l</sub></var>) of <var>S</var> (all <var>i</var>, <var>j</var>, <var>k</var>, <var>l</var> distinct). If there are many quadrilaterals with the same maximum area, then choose the one with the largest perimeter.</p>

<p>For example, if <var>S</var> = (8, 9, 14, 9, 27), then we can take the elements (9, 14, 9, 27) and form an <dfn title="An isosceles trapezium (US: trapezoid) is a quadrilateral where one pair of opposite sides are parallel and of different lengths, and the other pair has the same length."><b>isosceles trapezium</b></dfn> with parallel side lengths 14 and 27 and both leg lengths 9. The area of this quadrilateral is 127.611470879... It can be shown that this is the largest area for any quadrilateral that can be formed using side lengths from <var>S</var>. Therefore, f(<var>S</var>) = 9 + 14 + 9 + 27 = 59.</p>

<p>Let <var>u<sub>n</sub></var> = 2<sup>B(3<var>n</var>)</sup> + 3<sup>B(2<var>n</var>)</sup> + B(<var>n</var>+1), where B(<var>k</var>) is the number of 1 bits of <var>k</var> in base 2.<br />
For example, B(6) = 2, B(10) = 2 and B(15) = 4, and <var>u</var><sub>5</sub> = 2<sup>4</sup> + 3<sup>2</sup> + 2 = 27.</p>

<p>Also, let <var>U<sub>n</sub></var> be the sequence (<var>u</var><sub>1</sub>, <var>u</var><sub>2</sub>, ..., <var>u<sub>n</sub></var>).<br />
For example, <var>U</var><sub>10</sub> = (8, 9, 14, 9, 27, 16, 36, 9, 27, 28).</p>

<p>It can be shown that f(<var>U</var><sub>5</sub>) = 59, f(<var>U</var><sub>10</sub>) = 118, f(<var>U</var><sub>150</sub>) = 3223.<br />
It can also be shown that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>U<sub>n</sub></var>) = 234761 for 4 ≤ n ≤ 150.<br />
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>U<sub>n</sub></var>) for 4 ≤ n ≤ 3 000 000.</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-3b49-b909e66e1dda
begin
    submit_answer(nothing; prob_num=538)
end

# ╔═╡ 1ae59000-84a3-11eb-0df6-61b12572a83b
html"""
<h2>Problem 539: Odd elimination</h2>
<p>
Start from an ordered list of all integers from 1 to n. Going from left to right, remove the first number and every other number afterward until the end of the list. Repeat the procedure from right to left, removing the right most number and every other number from the numbers left. Continue removing every other numbers, alternating left to right and right to left, until a single number remains.
</p>
<p>
Starting with n = 9, we have:<br />
<u>1</u> 2 <u>3</u> 4 <u>5</u> 6 <u>7</u> 8 <u>9</u><br />
2 <u>4</u> 6 <u>8</u><br />
<u>2</u> 6<br />
6
</p>
<p>
Let <var>P</var>(<var>n</var>) be the last number left starting with a list of length <var>n</var>.<br />
Let $\displaystyle S(n) = \sum_{k=1}^n P(k)$.<br />
You are given P(1)=1, P(9) = 6, P(1000)=510, S(1000)=268271.
</p>
<p>
Find S(10<sup>18</sup>) mod 987654321.
</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-2258-435f92055c3e
begin
    submit_answer(nothing; prob_num=539)
end

# ╔═╡ 1ae59000-84a3-11eb-288d-afc48b65ef59
html"""
<h2>Problem 540: Counting primitive Pythagorean triples</h2>
<p>
A <b>Pythagorean triple</b> consists of three positive integers $a, b$ and $c$ satisfying $a^2+b^2=c^2$.<br />
The triple is called primitive if $a, b$ and $c$ are relatively prime.<br />
Let P($n$) be the number of <b>primitive Pythagorean triples</b> with $a &lt; b &lt; c \le n$.<br />
For example P(20) = 3, since there are three triples: (3,4,5), (5,12,13) and (8,15,17).
</p>
<p>
You are given that P(10<sup>6</sup>) = 159139.<br />
Find P(3141592653589793).
</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-3978-07992da795c3
begin
    submit_answer(nothing; prob_num=540)
end

# ╔═╡ 1ae59000-84a3-11eb-241b-db540a142939
html"""
<h2>Problem 541: Divisibility of Harmonic Number Denominators</h2>
<p>The <var>n</var><sup>th</sup> <b>harmonic number</b> <var>H<sub>n</sub></var> is defined as the sum of the multiplicative inverses of the first <var>n</var> positive integers, and can be written as a <b>reduced fraction</b> <var>a<sub>n</sub>/b<sub>n</sub></var>.<br />
$H_n = \displaystyle \sum_{k=1}^n \frac 1 k = \frac {a_n} {b_n}$, with $\text {gcd}(a_n, b_n)=1$.</p>

<p>Let <var>M</var>(<var>p</var>) be the largest value of <var>n</var> such that <var>b<sub>n</sub></var> is not divisible by <var>p</var>.</p>

<p>For example, <var>M</var>(3) = 68 because $H_{68} = \frac {a_{68}} {b_{68}} = \frac {14094018321907827923954201611} {2933773379069966367528193600}$, <var>b</var><sub>68</sub>=2933773379069966367528193600 is not divisible by 3, but all larger harmonic numbers have denominators divisible by 3.</p>

<p>You are given <var>M</var>(7) = 719102.</p>

<p>Find <var>M</var>(137).</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-069d-2fef37131192
begin
    submit_answer(nothing; prob_num=541)
end

# ╔═╡ 1ae59000-84a3-11eb-31b2-f9c7dfd74e56
html"""
<h2>Problem 542: Geometric Progression with Maximum Sum</h2>
<p>Let <var>S</var>(<var>k</var>) be the sum of three or more distinct positive integers having the following properties:</p>
<ul><li>No value exceeds <var>k</var>.</li>
<li>The values form a <b>geometric progression</b>.</li>
<li>The sum is maximal.</li></ul>

<p><var>S</var>(4) = 4 + 2 + 1 = 7<br />
<var>S</var>(10) = 9 + 6 + 4 = 19<br />
<var>S</var>(12) = 12 + 6 + 3 = 21<br />
<var>S</var>(1000) = 1000 + 900 + 810 + 729 = 3439</p>

<p>Let $T(n) = \sum_{k=4}^n (-1)^k S(k)$.<br />
<var>T</var>(1000) = 2268</p>

<p>Find <var>T</var>(10<sup>17</sup>).</p>
"""

# ╔═╡ 1ae59000-84a3-11eb-11b6-81f35b52d667
begin
    submit_answer(nothing; prob_num=542)
end

# ╔═╡ 1ae6a170-84a3-11eb-3e88-09c7f0c7feaa
html"""
<h2>Problem 543: Prime-Sum Numbers</h2>
<p>Define function P(<var>n</var>,<var>k</var>) = 1 if <var>n</var> can be written as the sum of <var>k</var> prime numbers (with repetitions allowed), and P(<var>n</var>,<var>k</var>) = 0 otherwise.</p>

<p>For example, P(10,2) = 1 because 10 can be written as either 3 + 7 or 5 + 5, but P(11,2) = 0 because no two primes can sum to 11.</p>

<p>Let S(<var>n</var>) be the sum of all P(<var>i</var>,<var>k</var>) over 1 ≤ <var>i</var>,<var>k</var> ≤ <var>n</var>.</p>

<p>For example, S(10) = 20, S(100) = 2402, and S(1000) = 248838.</p>

<p>Let F(<var>k</var>) be the <var>k</var>th Fibonacci number (with F(0) = 0 and F(1) = 1).</p>

<p>Find the sum of all S(F(<var>k</var>)) over 3 ≤ <var>k</var> ≤ 44</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-3da5-6db6f324737a
begin
    submit_answer(nothing; prob_num=543)
end

# ╔═╡ 1ae6a170-84a3-11eb-13ce-d951b1541483
html"""
<h2>Problem 544: Chromatic Conundrum</h2>
<p>Let F(<var>r</var>,<var>c</var>,<var>n</var>) be the number of ways to colour a rectangular grid with <var>r</var> rows and <var>c</var> columns using at most <var>n</var> colours such that no two adjacent cells share the same colour. Cells that are diagonal to each other are not considered adjacent.</p>

<p>For example, F(2,2,3) = 18, F(2,2,20) = 130340, and F(3,4,6) = 102923670.</p>

<p>Let S(<var>r</var>,<var>c</var>,<var>n</var>) = $\sum_{k=1}^{n}$ F(<var>r</var>,<var>c</var>,<var>k</var>).</p>

<p>For example, S(4,4,15) mod 10<sup>9</sup>+7 = 325951319.</p>

<p>Find S(9,10,1112131415) mod 10<sup>9</sup>+7.</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-20b5-17868f9adeab
begin
    submit_answer(nothing; prob_num=544)
end

# ╔═╡ 1ae6a170-84a3-11eb-1f08-31333d394a98
html"""
<h2>Problem 545: Faulhaber's Formulas</h2>
<p>The sum of the <var>k</var><sup>th</sup> powers of the first <var>n</var> positive integers can be expressed as a polynomial of degree <var>k</var>+1 with rational coefficients, the <b>Faulhaber's Formulas</b>:<br />
$1^k + 2^k + ... + n^k = \sum_{i=1}^n i^k = \sum_{i=1}^{k+1} a_{i} n^i = a_{1} n + a_{2} n^2 + ... + a_{k} n^k + a_{k+1} n^{k + 1}$,<br />
where <var>a<sub>i</sub></var>'s are rational coefficients that can be written as reduced fractions <var>p<sub>i</sub></var>/<var>q<sub>i</sub></var> (if <var>a<sub>i</sub></var> = 0, we shall consider <var>q<sub>i</sub></var> = 1).</p>

<p>For example, $1^4 + 2^4 + ... + n^4 = -\frac 1 {30} n + \frac 1 3 n^3 + \frac 1 2 n^4 + \frac 1 5 n^5.$</p>

<p>Define D(<var>k</var>) as the value of <var>q</var><sub>1</sub> for the sum of <var>k</var><sup>th</sup> powers (i.e. the denominator of the reduced fraction <var>a</var><sub>1</sub>).<br />
Define F(<var>m</var>) as the <var>m</var><sup>th</sup> value of <var>k</var> ≥ 1 for which D(<var>k</var>) = 20010.<br />
You are given D(4) = 30 (since <var>a</var><sub>1</sub> = -1/30), D(308) = 20010, F(1) = 308, F(10) = 96404.</p>

<p>Find F(10<sup>5</sup>).</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-149c-470a00eca661
begin
    submit_answer(nothing; prob_num=545)
end

# ╔═╡ 1ae6a170-84a3-11eb-346c-6555f67fbf19
html"""
<h2>Problem 546: The Floor's Revenge</h2>
<p>Define <var>f</var><sub><var>k</var></sub>(<var>n</var>) = $\sum_{i=0}^{n}$ <var>f</var><sub><var>k</var></sub>($\lfloor\frac{i}{k}\rfloor$) where <var>f</var><sub><var>k</var></sub>(0) = 1 and $\lfloor x \rfloor$ denotes the floor function.</p>

<p>For example, <var>f</var><sub>5</sub>(10) = 18, <var>f</var><sub>7</sub>(100) = 1003, and <var>f</var><sub>2</sub>(10<sup>3</sup>) = 264830889564.</p>

<p>Find $(\sum_{k=2}^{10}$ <var>f</var><sub><var>k</var></sub>(10<sup>14</sup>)$)$ mod (10<sup>9</sup>+7).</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-31ca-ff21fa7a7c53
begin
    submit_answer(nothing; prob_num=546)
end

# ╔═╡ 1ae6a170-84a3-11eb-258a-eba09d2757c7
html"""
<h2>Problem 547: Distance of random points within hollow square laminae</h2>
<p>Assuming that two points are chosen randomly (with <b>uniform distribution</b>) within a rectangle, it is possible to determine the <b>expected value</b> of the distance between these two points.</p>

<p>For example, the expected distance between two random points in a unit square is about 0.521405, while the expected distance between two random points in a rectangle with side lengths 2 and 3 is about 1.317067.</p>

<p>Now we define a <i>hollow square lamina</i> of size <var>n</var> to be an integer sized square with side length <var>n</var> ≥ 3 consisting of <var>n</var><sup>2</sup> unit squares from which a rectangle consisting of <var>x</var> × <var>y</var> unit squares (1 ≤ <var>x</var>,<var>y</var> ≤ <var>n</var> - 2) within the original square has been removed.</p>

<p>For <var>n</var> = 3 there exists only one hollow square lamina:</p>

<p align="center"><img src="project/images/p547-holes-1.png" alt="p547-holes-1.png" /></p>

<p>For <var>n</var> = 4 you can find 9 distinct hollow square laminae, allowing shapes to reappear in rotated or mirrored form:</p>

<p align="center"><img src="project/images/p547-holes-2.png" alt="p547-holes-2.png" /></p>

<p>Let S(<var>n</var>) be the sum of the expected distance between two points chosen randomly within each of the possible hollow square laminae of size <var>n</var>. The two points have to lie within the area left after removing the inner rectangle, i.e. the gray-colored areas in the illustrations above.</p>

<p>For example, S(3) = 1.6514 and S(4) = 19.6564, rounded to four digits after the decimal point.</p>

<p>Find S(40) rounded to four digits after the decimal point.</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-2cdc-e927112539b0
begin
    submit_answer(nothing; prob_num=547)
end

# ╔═╡ 1ae6a170-84a3-11eb-27c2-17542b25fd52
html"""
<h2>Problem 548: Gozinta Chains</h2>
<p>
A <b>gozinta chain </b>for <var>n</var> is a sequence {1,a,b,...,<var>n</var>} where each element properly divides the next.<br />
There are eight gozinta chains for 12:<br />
{1,12} ,{1,2,12}, {1,2,4,12}, {1,2,6,12}, {1,3,12}, {1,3,6,12}, {1,4,12} and {1,6,12}.<br /> 
Let g(<var>n</var>) be the number of gozinta chains for <var>n</var>, so g(12)=8.<br />
g(48)=48 and g(120)=132.
</p>
<p>
Find the sum of the numbers <var>n</var>  not exceeding 10<sup>16</sup> for which g(<var>n</var>)=<var>n</var>.
</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-306a-dba396816f22
begin
    submit_answer(nothing; prob_num=548)
end

# ╔═╡ 1ae6a170-84a3-11eb-3371-e5c9c026f9ce
html"""
<h2>Problem 549: Divisibility of factorials</h2>
<p>
The smallest number m such that 10 divides m! is m=5.<br />
The smallest number m such that 25 divides m! is m=10.<br /> 
</p>
<p>
Let s(<var>n</var>) be the smallest number m such that <var>n</var> divides m!.<br />
So s(10)=5 and s(25)=10.<br />
Let S(<var>n</var>) be ∑s(<var>i</var>) for 2 ≤ <var>i</var> ≤ <var>n</var>.<br />
S(100)=2012.
</p>
<p>
Find S(10<sup>8</sup>).
</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-1377-81808e0c67ed
begin
    submit_answer(nothing; prob_num=549)
end

# ╔═╡ 1ae6a170-84a3-11eb-0ab3-4b80fe0f56f8
html"""
<h2>Problem 550: Divisor game</h2>
<p>
Two players are playing a game, alternating turns. There are <var>k</var> piles of stones.
On each turn, a player has to choose a pile and replace it with two piles of stones under the following two conditions:
</p>

<ul><li> Both new piles must have a number of stones more than one and less than the number of stones of the original pile.</li>
<li> The number of stones of each of the new piles must be a divisor of the number of stones of the original pile.</li></ul>

<p>
The first player unable to make a valid move loses.
<br />
Let f(<var>n</var>,<var>k</var>) be the number of winning positions for the first player, assuming perfect play, when the game is played with <var>k</var> piles each having between 2 and <var>n</var> stones (inclusively).<br />f(10,5)=40085.
</p>
<p>
Find  f(10<sup>7</sup>,10<sup>12</sup>).<br />Give your answer modulo 987654321.
</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-2975-83abeb81b658
begin
    submit_answer(nothing; prob_num=550)
end

# ╔═╡ Cell order:
# ╠═1ae59000-84a3-11eb-2fb2-7337686d2a3e
# ╟─1ae59000-84a3-11eb-3e7c-9d35660eafbd
# ╠═1ae59000-84a3-11eb-1bfb-778c4c8b2baa
# ╟─1ae59000-84a3-11eb-142d-fb189af426ba
# ╠═1ae59000-84a3-11eb-2fce-4d2da96d31eb
# ╟─1ae59000-84a3-11eb-1ce8-c5df8248f0f1
# ╠═1ae59000-84a3-11eb-0afa-cfc0c2010e88
# ╟─1ae59000-84a3-11eb-01fe-39f055938cb2
# ╠═1ae59000-84a3-11eb-269f-676b09b3652d
# ╟─1ae59000-84a3-11eb-1ce3-5f04cf1fa7ec
# ╠═1ae59000-84a3-11eb-1bfd-a7d92d9c9211
# ╟─1ae59000-84a3-11eb-370d-01f1f1f809d9
# ╠═1ae59000-84a3-11eb-165d-a9498016ef9a
# ╟─1ae59000-84a3-11eb-2987-8b89daf095a3
# ╠═1ae59000-84a3-11eb-0d0b-c74f257920d5
# ╟─1ae59000-84a3-11eb-04a4-c721560edd19
# ╠═1ae59000-84a3-11eb-03d9-592db438ec08
# ╟─1ae59000-84a3-11eb-1e27-4f25fc5b410a
# ╠═1ae59000-84a3-11eb-368e-a3971766f764
# ╟─1ae59000-84a3-11eb-26c3-09c0070f9e24
# ╠═1ae59000-84a3-11eb-2a26-21ede89db16e
# ╟─1ae59000-84a3-11eb-319e-9fbd4a25228c
# ╠═1ae59000-84a3-11eb-284c-a1c64229755e
# ╟─1ae59000-84a3-11eb-1e5e-e7b107f2a695
# ╠═1ae59000-84a3-11eb-35fc-81caba398dd4
# ╟─1ae59000-84a3-11eb-378d-01c8cbf27f01
# ╠═1ae59000-84a3-11eb-3b49-b909e66e1dda
# ╟─1ae59000-84a3-11eb-0df6-61b12572a83b
# ╠═1ae59000-84a3-11eb-2258-435f92055c3e
# ╟─1ae59000-84a3-11eb-288d-afc48b65ef59
# ╠═1ae59000-84a3-11eb-3978-07992da795c3
# ╟─1ae59000-84a3-11eb-241b-db540a142939
# ╠═1ae59000-84a3-11eb-069d-2fef37131192
# ╟─1ae59000-84a3-11eb-31b2-f9c7dfd74e56
# ╠═1ae59000-84a3-11eb-11b6-81f35b52d667
# ╟─1ae6a170-84a3-11eb-3e88-09c7f0c7feaa
# ╠═1ae6a170-84a3-11eb-3da5-6db6f324737a
# ╟─1ae6a170-84a3-11eb-13ce-d951b1541483
# ╠═1ae6a170-84a3-11eb-20b5-17868f9adeab
# ╟─1ae6a170-84a3-11eb-1f08-31333d394a98
# ╠═1ae6a170-84a3-11eb-149c-470a00eca661
# ╟─1ae6a170-84a3-11eb-346c-6555f67fbf19
# ╠═1ae6a170-84a3-11eb-31ca-ff21fa7a7c53
# ╟─1ae6a170-84a3-11eb-258a-eba09d2757c7
# ╠═1ae6a170-84a3-11eb-2cdc-e927112539b0
# ╟─1ae6a170-84a3-11eb-27c2-17542b25fd52
# ╠═1ae6a170-84a3-11eb-306a-dba396816f22
# ╟─1ae6a170-84a3-11eb-3371-e5c9c026f9ce
# ╠═1ae6a170-84a3-11eb-1377-81808e0c67ed
# ╟─1ae6a170-84a3-11eb-0ab3-4b80fe0f56f8
# ╠═1ae6a170-84a3-11eb-2975-83abeb81b658