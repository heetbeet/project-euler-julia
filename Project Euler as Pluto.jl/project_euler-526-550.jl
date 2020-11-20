### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 23134370-2b5d-11eb-1fc2-7194cd15a5af
include((@__DIR__)*"/shared.jl");

# ╔═╡ 23134370-2b5d-11eb-0a85-ab8a7c08d45c
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

# ╔═╡ 23134370-2b5d-11eb-192e-5b677f3d1eb9
begin
    submit_answer(nothing; prob_num=526)
end

# ╔═╡ 23136a80-2b5d-11eb-20ee-63340d3d659b
html"""
<h2>Problem 527: Randomized Binary Search</h2>
<p>A secret integer <var>t</var> is selected at random within the range 1 ≤ <var>t</var> ≤ <var>n</var>. </p>

<p>The goal is to guess the value of <var>t</var> by making repeated guesses, via integer <var>g</var>. After a guess is made, there are three possible outcomes, in which it will be revealed that either <var>g</var> &lt; <var>t</var>, <var>g</var> = <var>t</var>, or <var>g</var> &gt; <var>t</var>. Then the process can repeat as necessary.</p>

<p>Normally, the number of guesses required on average can be minimized with a binary search: Given a lower bound <var>L</var> and upper bound <var>H</var> (initialized to <var>L</var> = 1 and <var>H</var> = <var>n</var>), let <var>g</var> = ⌊(<var>L</var>+<var>H</var>)/2⌋ where ⌊⋅⌋ is the integer floor function. If <var>g</var> = <var>t</var>, the process ends. Otherwise, if <var>g</var> &lt; <var>t</var>, set <var>L</var> = <var>g</var>+1, but if <var>g</var> &gt; <var>t</var> instead, set <var>H</var> = <var>g</var>−1. After setting the new bounds, the search process repeats, and ultimately ends once <var>t</var> is found. Even if <var>t</var> can be deduced without searching, assume that a search will be required anyway to confirm the value.</p>

<p>Your friend Bob believes that the standard binary search is not that much better than his randomized variant: Instead of setting <var>g</var> = ⌊(<var>L</var>+<var>H</var>)/2⌋, simply let <var>g</var> be a random integer between <var>L</var> and <var>H</var>, inclusive. The rest of the algorithm is the same as the standard binary search. This new search routine will be referred to as a <i>random binary search</i>.</p>

<p>Given that 1 ≤ <var>t</var> ≤ <var>n</var> for random <var>t</var>, let B(<var>n</var>) be the expected number of guesses needed to find <var>t</var> using the standard binary search, and let R(<var>n</var>) be the expected number of guesses needed to find <var>t</var> using the random binary search. For example, B(6) = 2.33333333 and R(6) = 2.71666667 when rounded to 8 decimal places.</p>

<p>Find R(10<sup>10</sup>) − B(10<sup>10</sup>) rounded to 8 decimal places.</p>
"""

# ╔═╡ 23136a80-2b5d-11eb-08c8-5b4c7a9ecea0
begin
    submit_answer(nothing; prob_num=527)
end

# ╔═╡ 23136a80-2b5d-11eb-0f71-7b4f71f4a4b6
html"""
<h2>Problem 528: Constrained Sums</h2>
<p>Let S(<var>n</var>,<var>k</var>,<var>b</var>) represent the number of valid solutions to <var>x</var><sub>1</sub> + <var>x</var><sub>2</sub> + ... + <var>x</var><sub><var>k</var></sub> ≤ <var>n</var>, where 0 ≤ <var>x</var><sub><var>m</var></sub> ≤ <var>b</var><sup><var>m</var></sup> for all 1 ≤ <var>m</var> ≤ <var>k</var>.</p>

<p>For example, S(14,3,2) = 135, S(200,5,3) = 12949440, and S(1000,10,5) mod 1 000 000 007 = 624839075.</p>

<p>Find (<span style="font-size:larger;">∑</span><sub>10 ≤ <var>k</var> ≤ 15</sub> S(10<sup><var>k</var></sup>,<var>k</var>,<var>k</var>)) mod 1 000 000 007.</p>
"""

# ╔═╡ 23136a80-2b5d-11eb-37e9-f7b4a7a738d7
begin
    submit_answer(nothing; prob_num=528)
end

# ╔═╡ 23136a80-2b5d-11eb-390b-c9b0e733213c
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

# ╔═╡ 23136a80-2b5d-11eb-07f7-3374d17e2982
begin
    submit_answer(nothing; prob_num=529)
end

# ╔═╡ 23136a80-2b5d-11eb-0c7c-5b929db945b0
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

# ╔═╡ 23136a80-2b5d-11eb-00ba-bbad3347bf9f
begin
    submit_answer(nothing; prob_num=530)
end

# ╔═╡ 23136a80-2b5d-11eb-0df8-a57b9a4b8751
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

# ╔═╡ 23136a80-2b5d-11eb-12f3-53015af621e5
begin
    submit_answer(nothing; prob_num=531)
end

# ╔═╡ 23136a80-2b5d-11eb-0434-e38f789e4927
html"""
<h2>Problem 532: Nanobots on Geodesics</h2>
<p>Bob is a manufacturer of nanobots and wants to impress his customers by giving them a ball coloured by his new nanobots as a present.</p>

<p>His nanobots can be programmed to select and locate exactly one other bot precisely and, after activation, move towards this bot along the shortest possible path and draw a coloured line onto the surface while moving. Placed on a plane, the bots will start to move towards their selected bots in a straight line. In contrast, being placed on a ball, they will start to move along a geodesic as the shortest possible path. However, in both cases, whenever their target moves they will adjust their direction instantaneously to the new shortest possible path. All bots will move at the same speed after their simultaneous activation until each bot reaches its goal.</p>

<p>Now Bob places <var>n</var> bots on the ball (with radius 1) equidistantly on a small circle with radius 0.999 and programs each of them to move toward the next nanobot sitting counterclockwise on that small circle. After activation, the bots move in a sort of spiral until they finally meet at one point on the ball.</p>

<p>Using three bots, Bob finds that every bot will draw a line of length 2.84, resulting in a total length of 8.52 for all three bots, each time rounded to two decimal places. The coloured ball looks like this:</p>

<div align="center"><img src="project/images/p532-nanobots.jpg" alt="p532-nanobots.jpg" /></div>

<p>In order to show off a little with his presents, Bob decides to use just enough bots to make sure that the line each bot draws is longer than 1000. What is the total length of all lines drawn with this number of bots, rounded to two decimal places?</p>
"""

# ╔═╡ 23136a80-2b5d-11eb-1f8b-1189de544bf4
begin
    submit_answer(nothing; prob_num=532)
end

# ╔═╡ 23136a80-2b5d-11eb-0c75-49a06625823e
html"""
<h2>Problem 533: Minimum values of the Carmichael function</h2>
<p>The <b>Carmichael function</b> λ(<var>n</var>) is defined as the smallest positive integer <var>m</var> such that <var>a<sup>m</sup></var> = 1 modulo <var>n</var> for all integers <var>a</var> coprime with <var>n</var>.<br />
For example λ(8) = 2 and λ(240) = 4.</p>

<p>Define L(<var>n</var>) as the smallest positive integer <var>m</var> such that λ(<var>k</var>) ≥ <var>n</var> for all <var>k</var> ≥ <var>m</var>.<br />
For example, L(6) = 241 and L(100) = 20 174 525 281.</p>

<p>Find L(20 000 000). Give the last 9 digits of your answer.</p>
"""

# ╔═╡ 23136a80-2b5d-11eb-2cd4-83c49b5d1989
begin
    submit_answer(nothing; prob_num=533)
end

# ╔═╡ 23136a80-2b5d-11eb-1e7e-1d4d1605ed43
html"""
<h2>Problem 534: Weak Queens</h2>
<p>The classical <b>eight queens puzzle</b> is the well known problem of placing eight chess queens on a 8×8 chessboard so that no two queens threaten each other. Allowing configurations to reappear in rotated or mirrored form, a total of 92 distinct configurations can be found for eight queens. The general case asks for the number of distinct ways of placing <var>n</var> queens on a <var>n</var>×<var>n</var> board, e.g. you can find 2 distinct configurations for <var>n</var>=4.</p>

<p>Let's define a <i>weak queen</i> on a <var>n</var>×<var>n</var> board to be a piece which can move any number of squares if moved horizontally, but a maximum of <var>n</var>−1−<var>w</var> squares if moved vertically or diagonally, 0≤w&lt;n being the "weakness factor". For example, a weak queen on a <var>n</var>×<var>n</var> board with a weakness factor of <var>w</var>=1 located in the bottom row will not be able to threaten any square in the top row as the weak queen would need to move <var>n</var>−1 squares vertically or diagonally to get there, but may only move <var>n</var>−2 squares in these directions. In contrast, the weak queen is not handicapped horizontally, thus threatening every square in its own row, independently from its current position in that row.</p>

<p>Let Q(<var>n</var>,<var>w</var>) be the number of ways <var>n</var> weak queens with weakness factor <var>w</var> can be placed on a <var>n</var>×<var>n</var> board so that no two queens threaten each other. It can be shown, for example, that Q(4,0)=2, Q(4,2)=16 and Q(4,3)=256.</p>

<p>Let $S(n)=\displaystyle\sum_{w=0}^{n-1} Q(n,w)$.</p>

<p>You are given that S(4)=276 and S(5)=3347.</p>

<p>Find S(14).</p>
"""

# ╔═╡ 23136a80-2b5d-11eb-0551-d11c330e0023
begin
    submit_answer(nothing; prob_num=534)
end

# ╔═╡ 23136a80-2b5d-11eb-3d57-537949e32d7b
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

# ╔═╡ 23136a80-2b5d-11eb-26e4-759e9afaf35f
begin
    submit_answer(nothing; prob_num=535)
end

# ╔═╡ 23136a80-2b5d-11eb-3a97-495520604116
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

# ╔═╡ 23136a80-2b5d-11eb-2b44-9f84d529018e
begin
    submit_answer(nothing; prob_num=536)
end

# ╔═╡ 23136a80-2b5d-11eb-2631-a7e0f9ea7d6f
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

# ╔═╡ 23136a80-2b5d-11eb-2265-290f221ee48a
begin
    submit_answer(nothing; prob_num=537)
end

# ╔═╡ 23136a80-2b5d-11eb-1987-8796063f8244
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

# ╔═╡ 23136a80-2b5d-11eb-26d4-992f7d4e47cc
begin
    submit_answer(nothing; prob_num=538)
end

# ╔═╡ 23136a80-2b5d-11eb-02bb-e3c327fa0fc7
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

# ╔═╡ 23136a80-2b5d-11eb-14c6-5dd6934bb443
begin
    submit_answer(nothing; prob_num=539)
end

# ╔═╡ 23139190-2b5d-11eb-3ec4-93a609f20189
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

# ╔═╡ 23139190-2b5d-11eb-0467-7f33791f4d1d
begin
    submit_answer(nothing; prob_num=540)
end

# ╔═╡ 23139190-2b5d-11eb-3c6f-b5da9727405b
html"""
<h2>Problem 541: Divisibility of Harmonic Number Denominators</h2>
<p>The <var>n</var><sup>th</sup> <b>harmonic number</b> <var>H<sub>n</sub></var> is defined as the sum of the multiplicative inverses of the first <var>n</var> positive integers, and can be written as a <b>reduced fraction</b> <var>a<sub>n</sub>/b<sub>n</sub></var>.<br />
$H_n = \displaystyle \sum_{k=1}^n \frac 1 k = \frac {a_n} {b_n}$, with $\text {gcd}(a_n, b_n)=1$.</p>

<p>Let <var>M</var>(<var>p</var>) be the largest value of <var>n</var> such that <var>b<sub>n</sub></var> is not divisible by <var>p</var>.</p>

<p>For example, <var>M</var>(3) = 68 because $H_{68} = \frac {a_{68}} {b_{68}} = \frac {14094018321907827923954201611} {2933773379069966367528193600}$, <var>b</var><sub>68</sub>=2933773379069966367528193600 is not divisible by 3, but all larger harmonic numbers have denominators divisible by 3.</p>

<p>You are given <var>M</var>(7) = 719102.</p>

<p>Find <var>M</var>(137).</p>
"""

# ╔═╡ 23139190-2b5d-11eb-200c-553f1a8d41bb
begin
    submit_answer(nothing; prob_num=541)
end

# ╔═╡ 23139190-2b5d-11eb-345a-373e17166db3
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

# ╔═╡ 23139190-2b5d-11eb-148a-79ae75bc6acb
begin
    submit_answer(nothing; prob_num=542)
end

# ╔═╡ 23139190-2b5d-11eb-3fa7-d3f460ab5e91
html"""
<h2>Problem 543: Prime-Sum Numbers</h2>
<p>Define function P(<var>n</var>,<var>k</var>) = 1 if <var>n</var> can be written as the sum of <var>k</var> prime numbers (with repetitions allowed), and P(<var>n</var>,<var>k</var>) = 0 otherwise.</p>

<p>For example, P(10,2) = 1 because 10 can be written as either 3 + 7 or 5 + 5, but P(11,2) = 0 because no two primes can sum to 11.</p>

<p>Let S(<var>n</var>) be the sum of all P(<var>i</var>,<var>k</var>) over 1 ≤ <var>i</var>,<var>k</var> ≤ <var>n</var>.</p>

<p>For example, S(10) = 20, S(100) = 2402, and S(1000) = 248838.</p>

<p>Let F(<var>k</var>) be the <var>k</var>th Fibonacci number (with F(0) = 0 and F(1) = 1).</p>

<p>Find the sum of all S(F(<var>k</var>)) over 3 ≤ <var>k</var> ≤ 44</p>
"""

# ╔═╡ 23139190-2b5d-11eb-180d-37f13473b58e
begin
    submit_answer(nothing; prob_num=543)
end

# ╔═╡ 23139190-2b5d-11eb-1039-d31b7adc48b1
html"""
<h2>Problem 544: Chromatic Conundrum</h2>
<p>Let F(<var>r</var>,<var>c</var>,<var>n</var>) be the number of ways to colour a rectangular grid with <var>r</var> rows and <var>c</var> columns using at most <var>n</var> colours such that no two adjacent cells share the same colour. Cells that are diagonal to each other are not considered adjacent.</p>

<p>For example, F(2,2,3) = 18, F(2,2,20) = 130340, and F(3,4,6) = 102923670.</p>

<p>Let S(<var>r</var>,<var>c</var>,<var>n</var>) = $\sum_{k=1}^{n}$ F(<var>r</var>,<var>c</var>,<var>k</var>).</p>

<p>For example, S(4,4,15) mod 10<sup>9</sup>+7 = 325951319.</p>

<p>Find S(9,10,1112131415) mod 10<sup>9</sup>+7.</p>
"""

# ╔═╡ 23139190-2b5d-11eb-223a-d3d9fe4a6479
begin
    submit_answer(nothing; prob_num=544)
end

# ╔═╡ 23139190-2b5d-11eb-2792-df672864e8c7
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

# ╔═╡ 23139190-2b5d-11eb-3173-21a19d27f5b0
begin
    submit_answer(nothing; prob_num=545)
end

# ╔═╡ 23139190-2b5d-11eb-16b9-3f7b2e1b8462
html"""
<h2>Problem 546: The Floor's Revenge</h2>
<p>Define <var>f</var><sub><var>k</var></sub>(<var>n</var>) = $\sum_{i=0}^{n}$ <var>f</var><sub><var>k</var></sub>($\lfloor\frac{i}{k}\rfloor$) where <var>f</var><sub><var>k</var></sub>(0) = 1 and $\lfloor x \rfloor$ denotes the floor function.</p>

<p>For example, <var>f</var><sub>5</sub>(10) = 18, <var>f</var><sub>7</sub>(100) = 1003, and <var>f</var><sub>2</sub>(10<sup>3</sup>) = 264830889564.</p>

<p>Find $(\sum_{k=2}^{10}$ <var>f</var><sub><var>k</var></sub>(10<sup>14</sup>)$)$ mod (10<sup>9</sup>+7).</p>
"""

# ╔═╡ 23139190-2b5d-11eb-3a83-13c3fc70c3eb
begin
    submit_answer(nothing; prob_num=546)
end

# ╔═╡ 23139190-2b5d-11eb-0b1d-29c0bf8a170a
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

# ╔═╡ 23139190-2b5d-11eb-3a21-3504050f699b
begin
    submit_answer(nothing; prob_num=547)
end

# ╔═╡ 23139190-2b5d-11eb-280e-e57b1f9ee715
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

# ╔═╡ 23139190-2b5d-11eb-3c8c-314283c77f18
begin
    submit_answer(nothing; prob_num=548)
end

# ╔═╡ 23139190-2b5d-11eb-1ea0-85ed8d3678ec
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

# ╔═╡ 23139190-2b5d-11eb-1cab-61ed86ce334f
begin
    submit_answer(nothing; prob_num=549)
end

# ╔═╡ 23139190-2b5d-11eb-307b-a58d8f29fb13
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

# ╔═╡ 23139190-2b5d-11eb-342c-058c2f08ecb7
begin
    submit_answer(nothing; prob_num=550)
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
# ╠═23134370-2b5d-11eb-1fc2-7194cd15a5af
# ╟─23134370-2b5d-11eb-0a85-ab8a7c08d45c
# ╠═23134370-2b5d-11eb-192e-5b677f3d1eb9
# ╟─23136a80-2b5d-11eb-20ee-63340d3d659b
# ╠═23136a80-2b5d-11eb-08c8-5b4c7a9ecea0
# ╟─23136a80-2b5d-11eb-0f71-7b4f71f4a4b6
# ╠═23136a80-2b5d-11eb-37e9-f7b4a7a738d7
# ╟─23136a80-2b5d-11eb-390b-c9b0e733213c
# ╠═23136a80-2b5d-11eb-07f7-3374d17e2982
# ╟─23136a80-2b5d-11eb-0c7c-5b929db945b0
# ╠═23136a80-2b5d-11eb-00ba-bbad3347bf9f
# ╟─23136a80-2b5d-11eb-0df8-a57b9a4b8751
# ╠═23136a80-2b5d-11eb-12f3-53015af621e5
# ╟─23136a80-2b5d-11eb-0434-e38f789e4927
# ╠═23136a80-2b5d-11eb-1f8b-1189de544bf4
# ╟─23136a80-2b5d-11eb-0c75-49a06625823e
# ╠═23136a80-2b5d-11eb-2cd4-83c49b5d1989
# ╟─23136a80-2b5d-11eb-1e7e-1d4d1605ed43
# ╠═23136a80-2b5d-11eb-0551-d11c330e0023
# ╟─23136a80-2b5d-11eb-3d57-537949e32d7b
# ╠═23136a80-2b5d-11eb-26e4-759e9afaf35f
# ╟─23136a80-2b5d-11eb-3a97-495520604116
# ╠═23136a80-2b5d-11eb-2b44-9f84d529018e
# ╟─23136a80-2b5d-11eb-2631-a7e0f9ea7d6f
# ╠═23136a80-2b5d-11eb-2265-290f221ee48a
# ╟─23136a80-2b5d-11eb-1987-8796063f8244
# ╠═23136a80-2b5d-11eb-26d4-992f7d4e47cc
# ╟─23136a80-2b5d-11eb-02bb-e3c327fa0fc7
# ╠═23136a80-2b5d-11eb-14c6-5dd6934bb443
# ╟─23139190-2b5d-11eb-3ec4-93a609f20189
# ╠═23139190-2b5d-11eb-0467-7f33791f4d1d
# ╟─23139190-2b5d-11eb-3c6f-b5da9727405b
# ╠═23139190-2b5d-11eb-200c-553f1a8d41bb
# ╟─23139190-2b5d-11eb-345a-373e17166db3
# ╠═23139190-2b5d-11eb-148a-79ae75bc6acb
# ╟─23139190-2b5d-11eb-3fa7-d3f460ab5e91
# ╠═23139190-2b5d-11eb-180d-37f13473b58e
# ╟─23139190-2b5d-11eb-1039-d31b7adc48b1
# ╠═23139190-2b5d-11eb-223a-d3d9fe4a6479
# ╟─23139190-2b5d-11eb-2792-df672864e8c7
# ╠═23139190-2b5d-11eb-3173-21a19d27f5b0
# ╟─23139190-2b5d-11eb-16b9-3f7b2e1b8462
# ╠═23139190-2b5d-11eb-3a83-13c3fc70c3eb
# ╟─23139190-2b5d-11eb-0b1d-29c0bf8a170a
# ╠═23139190-2b5d-11eb-3a21-3504050f699b
# ╟─23139190-2b5d-11eb-280e-e57b1f9ee715
# ╠═23139190-2b5d-11eb-3c8c-314283c77f18
# ╟─23139190-2b5d-11eb-1ea0-85ed8d3678ec
# ╠═23139190-2b5d-11eb-1cab-61ed86ce334f
# ╟─23139190-2b5d-11eb-307b-a58d8f29fb13
# ╠═23139190-2b5d-11eb-342c-058c2f08ecb7