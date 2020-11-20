### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22fe0dc0-2b5d-11eb-17ec-6d2029ad2ed0
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22fe0dc0-2b5d-11eb-03d2-9df1353f2e6e
html"""
<h2>Problem 401: Sum of squares of divisors</h2>
<p>
The divisors of 6 are 1,2,3 and 6.<br />
The sum of the squares of these numbers is 1+4+9+36=50.
</p>
<p>
Let sigma2(n) represent the sum of the squares of the divisors of n.
Thus sigma2(6)=50.
</p>
Let SIGMA2 represent the summatory function of sigma2, that is SIGMA2(n)=<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sigma2(i) for i=1 to n.<br />
The first 6 values of SIGMA2 are: 1,6,16,37,63 and 113.

<p>
Find SIGMA2(10<sup>15</sup>) modulo 10<sup>9</sup>. 
</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-31f6-eb21a03837b8
begin
    submit_answer(nothing; prob_num=401)
end

# ╔═╡ 22fe0dc0-2b5d-11eb-1735-93c6e74c0de6
html"""
<h2>Problem 402: Integer-valued polynomials</h2>
<p>
It can be shown that the polynomial <var>n</var><sup>4</sup> + 4<var>n</var><sup>3</sup> + 2<var>n</var><sup>2</sup> + 5<var>n</var> is a multiple of 6 for every integer <var>n</var>. It can also be shown that 6 is the largest integer satisfying this property.
</p>
<p>
Define M(<var>a</var>, <var>b</var>, <var>c</var>) as the maximum <var>m</var> such that <var>n</var><sup>4</sup> + <var>a</var><var>n</var><sup>3</sup> + <var>b</var><var>n</var><sup>2</sup> + <var>c</var><var>n</var> is a multiple of <var>m</var> for all integers <var>n</var>. For example, M(4, 2, 5) = 6.
</p>
<p>
Also, define S(<var>N</var>) as the sum of M(<var>a</var>, <var>b</var>, <var>c</var>) for all 0 &lt; <var>a</var>, <var>b</var>, <var>c</var> ≤ <var>N</var>.
</p>
<p>
We can verify that S(10) = 1972 and S(10000) = 2024258331114.
</p>
<p>
Let F<sub><var>k</var></sub> be the Fibonacci sequence:<br />
F<sub>0</sub> = 0, F<sub>1</sub> = 1 and<br />
F<sub><var>k</var></sub> = F<sub><var>k</var>-1</sub> + F<sub><var>k</var>-2</sub> for <var>k</var> ≥ 2.
</p>
<p>
Find the last 9 digits of <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(F<sub><var>k</var></sub>) for 2 ≤ <var>k</var> ≤ 1234567890123.
</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-0a1e-a94090472296
begin
    submit_answer(nothing; prob_num=402)
end

# ╔═╡ 22fe0dc0-2b5d-11eb-0db3-e9453377c276
html"""
<h2>Problem 403: Lattice points enclosed by parabola and line</h2>
<p>
For integers <var>a</var> and <var>b</var>, we define <var>D</var>(<var>a</var>, <var>b</var>) as the domain enclosed by the parabola <var>y</var> = <var>x</var><sup>2</sup> and the line <var>y</var> = <var>a</var>·<var>x</var> + <var>b</var>:<br /><var>D</var>(<var>a</var>, <var>b</var>) = { (<var>x</var>, <var>y</var>) | <var>x</var><sup>2</sup> ≤ <var>y</var> ≤ <var>a</var>·<var>x</var> + <var>b</var> }.
</p>
<p>
L(<var>a</var>, <var>b</var>) is defined as the number of lattice points contained in <var>D</var>(<var>a</var>, <var>b</var>).<br />
For example, L(1, 2) = 8 and L(2, -1) = 1.
</p>
<p>
We also define S(<var>N</var>) as the sum of L(<var>a</var>, <var>b</var>) for all the pairs (<var>a</var>, <var>b</var>) such that the area of <var>D</var>(<var>a</var>, <var>b</var>) is a rational number and |<var>a</var>|,|<var>b</var>| ≤ <var>N</var>.<br />
We can verify that S(5) = 344 and S(100) = 26709528.
</p>
<p>
Find S(10<sup>12</sup>). Give your answer mod 10<sup>8</sup>.
</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-08ab-b3525bcc62eb
begin
    submit_answer(nothing; prob_num=403)
end

# ╔═╡ 22fe0dc0-2b5d-11eb-0f8b-89b9d3467f16
html"""
<h2>Problem 404: Crisscross Ellipses</h2>
<p>
E<sub><var>a</var></sub> is an ellipse with an equation of the form x<sup>2</sup> + 4y<sup>2</sup> = 4<var>a</var><sup>2</sup>.<br />
E<sub><var>a</var></sub>' is the rotated image of E<sub><var>a</var></sub> by θ degrees counterclockwise around the origin O(0, 0) for 0° &lt; θ &lt; 90°.
</p>

<div align="center">
<img src="project/images/p404_c_ellipse.gif" alt="p404_c_ellipse.gif" /></div>

<p>
<var>b</var> is the distance to the origin of the two intersection points closest to the origin and <var>c</var> is the distance of the two other intersection points.<br />
We call an ordered triplet (<var>a</var>, <var>b</var>, <var>c</var>) a <i>canonical ellipsoidal triplet</i> if <var>a</var>, <var>b</var> and <var>c</var> are positive integers.<br />
For example, (209, 247, 286) is a canonical ellipsoidal triplet.
</p>

<p>
Let C(<var>N</var>) be the number of distinct canonical ellipsoidal triplets (<var>a</var>, <var>b</var>, <var>c</var>) for <var>a</var> ≤ <var>N</var>.<br />
It can be verified that C(10<sup>3</sup>) = 7, C(10<sup>4</sup>) = 106 and C(10<sup>6</sup>) = 11845.
</p>

<p>
Find C(10<sup>17</sup>).
</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-3fdf-5dfe7ee10113
begin
    submit_answer(nothing; prob_num=404)
end

# ╔═╡ 22fe0dc0-2b5d-11eb-2b5c-5ffcf3762fec
html"""
<h2>Problem 405: A rectangular tiling</h2>
<p>
We wish to tile a rectangle whose length is twice its width.<br />
Let <var>T</var>(0) be the tiling consisting of a single rectangle.<br />
For <var>n</var> &gt; 0, let <var>T</var>(<var>n</var>) be obtained from <var>T</var>(<var>n</var>-1) by replacing all tiles in the following manner:
</p>

<div align="center">
<img src="project/images/p405_tile1.png" alt="p405_tile1.png" /></div>

<p>
The following animation demonstrates the tilings <var>T</var>(<var>n</var>) for <var>n</var> from 0 to 5:
</p>

<div align="center">
<img src="project/images/p405_tile2.gif" alt="p405_tile2.gif" /></div>

<p>
Let <var>f</var>(<var>n</var>) be the number of points where four tiles meet in <var>T</var>(<var>n</var>).<br />
For example, <var>f</var>(1) = 0, <var>f</var>(4) = 82 and <var>f</var>(10<sup>9</sup>) mod 17<sup>7</sup> = 126897180.
</p>

<p>
Find <var>f</var>(10<sup><var>k</var></sup>) for <var>k</var> = 10<sup>18</sup>, give your answer modulo 17<sup>7</sup>.
</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-3f2f-cb7226d1bac0
begin
    submit_answer(nothing; prob_num=405)
end

# ╔═╡ 22fe0dc0-2b5d-11eb-27f9-793aa1d2fa8a
html"""
<h2>Problem 406: Guessing Game</h2>
<p>We are trying to find a hidden number selected from the set of integers {1, 2, ..., <var>n</var>} by asking questions. 
Each number (question) we ask, we get one of three possible answers:<br /></p><ul><li> "Your guess is lower than the hidden number" (and you incur a cost of <var>a</var>), or</li>
<li> "Your guess is higher than the hidden number" (and you incur a cost of <var>b</var>), or</li>
<li> "Yes, that's it!" (and the game ends).</li>
</ul><p>Given the value of <var>n</var>, <var>a</var>, and <var>b</var>, an <i>optimal strategy</i> minimizes the total cost <u>for the worst possible case</u>.</p>

<p>For example, if <var>n</var> = 5, <var>a</var> = 2, and <var>b</var> = 3, then we may begin by asking "<b>2</b>" as our first question.</p>

<p>If we are told that 2 is higher than the hidden number (for a cost of <var>b</var>=3), then we are sure that "<b>1</b>" is the hidden number (for a total cost of <span style="color:#3333ff;"><b>3</b></span>).<br />
If we are told that 2 is lower than the hidden number (for a cost of <var>a</var>=2), then our next question will be "<b>4</b>".<br />
If we are told that 4 is higher than the hidden number (for a cost of <var>b</var>=3), then we are sure that "<b>3</b>" is the hidden number (for a total cost of 2+3=<span style="color:#3333ff;"><b>5</b></span>).<br />
If we are told that 4 is lower than the hidden number (for a cost of <var>a</var>=2), then we are sure that "<b>5</b>" is the hidden number (for a total cost of 2+2=<span style="color:#3333ff;"><b>4</b></span>).<br />
Thus, the worst-case cost achieved by this strategy is <span style="color:#FF0000;"><b>5</b></span>. It can also be shown that this is the lowest worst-case cost that can be achieved. 
So, in fact, we have just described an optimal strategy for the given values of <var>n</var>, <var>a</var>, and <var>b</var>.</p>

<p>Let $C(n, a, b)$ be the worst-case cost achieved by an optimal strategy for the given values of <var>n</var>, <var>a</var> and <var>b</var>.</p>

<p>Here are a few examples:<br />
$C(5, 2, 3) = 5$<br />
$C(500, \sqrt 2, \sqrt 3) = 13.22073197\dots$<br />
$C(20000, 5, 7) = 82$<br />
$C(2000000, \sqrt 5, \sqrt 7) = 49.63755955\dots$</p>

<p>Let $F_k$ be the Fibonacci numbers: $F_k=F_{k-1}+F_{k-2}$ with base cases $F_1=F_2= 1$.<br />Find $\displaystyle \sum \limits_{k = 1}^{30} {C \left (10^{12}, \sqrt{k}, \sqrt{F_k} \right )}$, and give your answer rounded to 8 decimal places behind the decimal point.</p>
"""

# ╔═╡ 22fe0dc0-2b5d-11eb-239f-cbe36bd60339
begin
    submit_answer(nothing; prob_num=406)
end

# ╔═╡ 22fe34d0-2b5d-11eb-2b6d-b562923b5dab
html"""
<h2>Problem 407: Idempotents</h2>
<p>
If we calculate <var>a</var><sup>2</sup> mod 6 for 0 ≤ <var>a</var> ≤ 5 we get: 0,1,4,3,4,1.
</p>
<p>
The largest value of <var>a</var> such that <var>a</var><sup>2</sup> ≡ <var>a</var> mod 6 is 4.<br />
Let's call M(<var>n</var>) the largest value of <var>a</var> &lt; <var>n</var> such that <var>a</var><sup>2</sup> ≡ <var>a</var> (mod <var>n</var>).<br />
So M(6) = 4.
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(<var>n</var>) for 1 ≤ <var>n</var> ≤ 10<sup>7</sup>.
</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-0fe2-6914313982ee
begin
    submit_answer(nothing; prob_num=407)
end

# ╔═╡ 22fe34d0-2b5d-11eb-2a84-a3f42ee4529e
html"""
<h2>Problem 408: Admissible paths through a grid</h2>
<p>Let's call a lattice point (<var>x</var>, <var>y</var>) <i>inadmissible</i> if <var>x</var>, <var>y</var> and <var>x</var> + <var>y</var> are all positive perfect squares.<br />
For example, (9, 16) is inadmissible, while (0, 4), (3, 1) and (9, 4) are not.</p>

<p>Consider a path from point (<var>x</var><sub>1</sub>, <var>y</var><sub>1</sub>) to point (<var>x</var><sub>2</sub>, <var>y</var><sub>2</sub>) using only unit steps north or east.<br />
Let's call such a path <i>admissible</i> if none of its intermediate points are inadmissible.</p>

<p>Let P(<var>n</var>) be the number of admissible paths from (0, 0) to (<var>n</var>, <var>n</var>).<br />
It can be verified that P(5) = 252, P(16) = 596994440 and P(1000) mod 1 000 000 007 = 341920854.</p>

<p>Find P(10 000 000) mod 1 000 000 007.</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-02b8-d72b0db5d3c6
begin
    submit_answer(nothing; prob_num=408)
end

# ╔═╡ 22fe34d0-2b5d-11eb-1f2e-8f9a358c5bca
html"""
<h2>Problem 409: Nim Extreme</h2>
<p>Let <var>n</var> be a positive integer. Consider <b>nim</b> positions where:</p><ul><li>There are <var>n</var> non-empty piles.
</li><li>Each pile has size less than 2<sup><var>n</var></sup>.
</li><li>No two piles have the same size.
</li></ul><p>Let W(<var>n</var>) be the number of winning nim positions satisfying the above
conditions (a position is winning if the first player has a winning strategy). For example, W(1) = 1, W(2) = 6, W(3) = 168, W(5) = 19764360 and W(100) mod 1 000 000 007 = 384777056.
</p>
<p>Find W(10 000 000) mod 1 000 000 007.
</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-0e7c-619e6e6e90d6
begin
    submit_answer(nothing; prob_num=409)
end

# ╔═╡ 22fe34d0-2b5d-11eb-0957-e7b797352c5b
html"""
<h2>Problem 410: Circle and tangent line</h2>
<p>Let C be the circle with radius <var>r</var>, <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> = <var>r</var><sup>2</sup>. We choose two points P(<var>a</var>, <var>b</var>) and Q(-<var>a</var>, <var>c</var>) so that the line passing through P and Q is tangent to C.</p>

<p>For example, the quadruplet (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) = (2, 6, 2, -7) satisfies this property.</p>

<p>Let F(<var>R</var>, <var>X</var>) be the number of the integer quadruplets (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) with this property, and with 0 &lt; <var>r</var> ≤ <var>R</var> and 0 &lt; <var>a</var> ≤ <var>X</var>.</p>

<p>We can verify that F(1, 5) = 10, F(2, 10) = 52 and F(10, 100) = 3384.<br />
Find F(10<sup>8</sup>, 10<sup>9</sup>) + F(10<sup>9</sup>, 10<sup>8</sup>).</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-2ea7-e190e340ec89
begin
    submit_answer(nothing; prob_num=410)
end

# ╔═╡ 22fe34d0-2b5d-11eb-10b7-6920e49173a4
html"""
<h2>Problem 411: Uphill paths</h2>
<p>
Let <var>n</var> be a positive integer. Suppose there are stations at the coordinates (<var>x</var>, <var>y</var>) = (2<sup><var>i</var></sup> mod <var>n</var>, 3<sup><var>i</var></sup> mod <var>n</var>) for 0 ≤ <var>i</var> ≤ 2<var>n</var>. We will consider stations with the same coordinates as the same station.
</p><p>
We wish to form a path from (0, 0) to (<var>n</var>, <var>n</var>) such that the x and y coordinates never decrease.<br />
Let S(<var>n</var>) be the maximum number of stations such a path can pass through.
</p><p>
For example, if <var>n</var> = 22, there are 11 distinct stations, and a valid path can pass through at most 5 stations. Therefore, S(22) = 5.
The case is illustrated below, with an example of an optimal path:
</p>
<p align="center"><img src="project/images/p411_longpath.png" alt="p411_longpath.png" /></p>
<p>
It can also be verified that S(123) = 14 and S(10000) = 48.
</p><p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>k</var><sup>5</sup>) for 1 ≤ <var>k</var> ≤ 30.
</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-08c6-e5dc3be316b1
begin
    submit_answer(nothing; prob_num=411)
end

# ╔═╡ 22fe34d0-2b5d-11eb-0666-ddc0059f07db
html"""
<h2>Problem 412: Gnomon numbering</h2>
<p>For integers <var>m</var>, <var>n</var> (0 ≤ <var>n</var> &lt; <var>m</var>), let L(<var>m</var>, <var>n</var>) be an <var>m</var>×<var>m</var> grid with the top-right <var>n</var>×<var>n</var> grid removed.</p>

<p>For example, L(5, 3) looks like this:</p>

<p class="center"><img src="project/images/p412_table53.png" alt="p412_table53.png" /></p>

<p>We want to number each cell of L(<var>m</var>, <var>n</var>) with consecutive integers 1, 2, 3, ... such that the number in every cell is smaller than the number below it and to the left of it.</p>

<p>For example, here are two valid numberings of L(5, 3):</p>
<p class="center"><img src="project/images/p412_tablenums.png" alt="p412_tablenums.png" /></p>

<p>Let LC(<var>m</var>, <var>n</var>) be the number of valid numberings of L(<var>m</var>, <var>n</var>).<br />
It can be verified that LC(3, 0) = 42, LC(5, 3) = 250250, LC(6, 3) = 406029023400 and LC(10, 5) mod 76543217 = 61251715.</p>

<p>Find LC(10000, 5000) mod 76543217.</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-1ebd-332a633c2afc
begin
    submit_answer(nothing; prob_num=412)
end

# ╔═╡ 22fe34d0-2b5d-11eb-0afc-ed65e3d010dd
html"""
<h2>Problem 413: One-child Numbers</h2>
<p>We say that a <var>d</var>-digit positive number (no leading zeros) is a one-child number if exactly one of its sub-strings is divisible by <var>d</var>.</p>

<p>For example, 5671 is a 4-digit one-child number. Among all its sub-strings 5, 6, 7, 1, 56, 67, 71, 567, 671 and 5671, only 56 is divisible by 4.<br />
Similarly, 104 is a 3-digit one-child number because only 0 is divisible by 3.<br />
1132451 is a 7-digit one-child number because only 245 is divisible by 7.</p>

<p>Let F(<var>N</var>) be the number of the one-child numbers less than <var>N</var>.<br />
We can verify that F(10) = 9, F(10<sup>3</sup>) = 389 and F(10<sup>7</sup>) = 277674.</p>

<p>Find F(10<sup>19</sup>).</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-12bb-fb08ceb6a30d
begin
    submit_answer(nothing; prob_num=413)
end

# ╔═╡ 22fe34d0-2b5d-11eb-11c0-998d374e8169
html"""
<h2>Problem 414: Kaprekar constant</h2>
<p>
6174 is a remarkable number; if we sort its digits in increasing order and subtract that number from the number you get when you sort the digits in decreasing order, we get 7641-1467=6174.<br />
Even more remarkable is that if we start from any 4 digit number and repeat this process of sorting and subtracting, we'll eventually end up with 6174 or immediately with 0 if all digits are equal.<br /> 
This also works with numbers that have less than 4 digits if we pad the number with leading zeroes until we have 4 digits.<br />
E.g. let's start with the number 0837:<br />
8730-0378=8352<br />
8532-2358=6174
</p>
<p>
6174 is called the <b>Kaprekar constant</b>. The process of sorting and subtracting and repeating this until either 0 or the Kaprekar constant is reached is called the <b>Kaprekar routine</b>.
</p>
<p>
We can consider the Kaprekar routine for other bases and number of digits.<br /> 
Unfortunately, it is not guaranteed a Kaprekar constant exists in all cases; either the routine can end up in a cycle for some input numbers or the constant the routine arrives at can be different for different input numbers.<br />
However, it can be shown that for 5 digits and a base b = 6t+3≠9, a Kaprekar constant exists.<br />
E.g. base 15: (10,4,14,9,5)<sub>15</sub><br />
base 21: (14,6,20,13,7)<sub>21</sub></p>
<p>
Define <var>C<sub>b</sub></var> to be the Kaprekar constant in base <var>b</var> for 5 digits.
Define the function <var>sb(i)</var> to be
</p><ul><li> 0 if i = <var>C<sub>b</sub></var> or if <var>i</var> written in base <var>b</var> consists of 5 identical digits
</li><li> the number of iterations it takes the Kaprekar routine in base <var>b</var> to arrive at <var>C<sub>b</sub></var>, otherwise
</li></ul>
Note that we can define <var>sb(i)</var> for all integers <var>i</var> &lt; <var>b</var><sup>5</sup>. If <var>i</var> written in base <var>b</var> takes less than 5 digits, the number is padded with leading zero digits until we have 5 digits before applying the Kaprekar routine.

<p>
Define <var>S(b)</var> as the sum of <var>sb(i)</var> for 0 &lt; <var>i</var> &lt; <var>b</var><sup>5</sup>.<br />
E.g. S(15) = 5274369<br /> 
S(111) = 400668930299
</p>
<p>
Find the sum of S(6k+3) for 2 ≤ k ≤ 300.<br />
Give the last 18 digits as your answer.
</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-3a28-894e1bae216c
begin
    submit_answer(nothing; prob_num=414)
end

# ╔═╡ 22fe34d0-2b5d-11eb-0dfe-c3cca06e5cc3
html"""
<h2>Problem 415: Titanic sets</h2>
<p>A set of lattice points S is called a <i>titanic set</i> if there exists a line passing through exactly two points in S.</p>

<p>An example of a titanic set is S = {(0, 0), (0, 1), (0, 2), (1, 1), (2, 0), (1, 0)}, where the line passing through (0, 1) and (2, 0) does not pass through any other point in S.</p>

<p>On the other hand, the set {(0, 0), (1, 1), (2, 2), (4, 4)} is not a titanic set since the line passing through any two points in the set also passes through the other two.</p>

<p>For any positive integer <var>N</var>, let <var>T</var>(<var>N</var>) be the number of titanic sets S whose every point (<var>x</var>, <var>y</var>) satisfies 0 ≤ <var>x</var>, <var>y</var> ≤ <var>N</var>.
It can be verified that <var>T</var>(1) = 11, <var>T</var>(2) = 494, <var>T</var>(4) = 33554178, <var>T</var>(111) mod 10<sup>8</sup> = 13500401 and <var>T</var>(10<sup>5</sup>) mod 10<sup>8</sup> = 63259062.</p>

<p>Find <var>T</var>(10<sup>11</sup>) mod 10<sup>8</sup>.</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-20c5-69b2067fda25
begin
    submit_answer(nothing; prob_num=415)
end

# ╔═╡ 22fe34d0-2b5d-11eb-3e6f-478be352b35b
html"""
<h2>Problem 416: A frog's trip</h2>
<p>A row of <var>n</var> squares contains a frog in the leftmost square. By successive jumps the frog goes to the rightmost square and then back to the leftmost square. On the outward trip he jumps one, two or three squares to the right, and on the homeward trip he jumps to the left in a similar manner. He cannot jump outside the squares. He repeats the round-trip travel <var>m</var> times.</p>

<p>Let F(<var>m</var>, <var>n</var>) be the number of the ways the frog can travel so that at most one square remains unvisited.<br />
For example, F(1, 3) = 4, F(1, 4) = 15, F(1, 5) = 46, F(2, 3) = 16 and F(2, 100) mod 10<sup>9</sup> = 429619151.</p>

<p>Find the last 9 digits of F(10, 10<sup>12</sup>).</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-2a9a-234506dd7ecc
begin
    submit_answer(nothing; prob_num=416)
end

# ╔═╡ 22fe34d0-2b5d-11eb-2e71-3f98f79d8eea
html"""
<h2>Problem 417: Reciprocal cycles II</h2>
<p>A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:</p>
<blockquote>
<table><tr><td><sup>1</sup>/<sub>2</sub></td><td>= </td><td>0.5</td>
</tr><tr><td><sup>1</sup>/<sub>3</sub></td><td>= </td><td>0.(3)</td>
</tr><tr><td><sup>1</sup>/<sub>4</sub></td><td>= </td><td>0.25</td>
</tr><tr><td><sup>1</sup>/<sub>5</sub></td><td>= </td><td>0.2</td>
</tr><tr><td><sup>1</sup>/<sub>6</sub></td><td>= </td><td>0.1(6)</td>
</tr><tr><td><sup>1</sup>/<sub>7</sub></td><td>= </td><td>0.(142857)</td>
</tr><tr><td><sup>1</sup>/<sub>8</sub></td><td>= </td><td>0.125</td>
</tr><tr><td><sup>1</sup>/<sub>9</sub></td><td>= </td><td>0.(1)</td>
</tr><tr><td><sup>1</sup>/<sub>10</sub></td><td>= </td><td>0.1</td>
</tr></table></blockquote>
<p>Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that <sup>1</sup>/<sub>7</sub> has a 6-digit recurring cycle.</p>
<p>
Unit fractions whose denominator has no other prime factors than 2 and/or 5 are not considered to have a recurring cycle.<br />
We define the length of the recurring cycle of those unit fractions as 0. 
</p>
<p>
Let L(n) denote the length of the recurring cycle of 1/n.
You are given that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> L(n) for 3 ≤ n ≤ 1 000 000 equals 55535191115.
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> L(n) for 3 ≤ n ≤ 100 000 000.</p>
"""

# ╔═╡ 22fe34d0-2b5d-11eb-1d94-e933d0c00401
begin
    submit_answer(nothing; prob_num=417)
end

# ╔═╡ 22fe5be0-2b5d-11eb-09b2-811dfd797096
html"""
<h2>Problem 418: Factorisation triples</h2>
<p>
Let <var>n</var> be a positive integer. An integer triple (<var>a</var>, <var>b</var>, <var>c</var>) is called a <i>factorisation triple</i> of <var>n</var> if:</p><ul><li> 1 ≤ <var>a</var> ≤ <var>b</var> ≤ <var>c</var>
</li><li> <var>a</var>·<var>b</var>·<var>c</var> = <var>n</var>.
</li></ul><p>
Define <var>f</var>(<var>n</var>) to be <var>a</var> + <var>b</var> + <var>c</var> for the factorisation triple (<var>a</var>, <var>b</var>, <var>c</var>) of <var>n</var> which minimises <var>c</var> / <var>a</var>. One can show that this triple is unique.
</p>
<p>
For example, <var>f</var>(165) = 19, <var>f</var>(100100) = 142 and <var>f</var>(20!) = 4034872.
</p>
<p>
Find <var>f</var>(43!).
</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-1f10-7f79be5b3d31
begin
    submit_answer(nothing; prob_num=418)
end

# ╔═╡ 22fe5be0-2b5d-11eb-0a25-473f4bce0e68
html"""
<h2>Problem 419: Look and say sequence</h2>
<p>
The <b>look and say</b> sequence goes 1, 11, 21, 1211, 111221, 312211, 13112221, 1113213211, ...<br />
The sequence starts with 1 and all other members are obtained by describing the previous member in terms of consecutive digits.<br />
It helps to do this out loud:<br />
1 is 'one one' → 11<br />
11 is 'two ones' → 21<br />
21 is 'one two and one one' → 1211 <br />
1211 is 'one one, one two and two ones' → 111221<br />
111221 is 'three ones, two twos and one one' → 312211<br />
...
</p>
<p>
Define A(n), B(n) and C(n) as the number of ones, twos and threes in the n'th element of the sequence respectively.<br />
One can verify that A(40) = 31254, B(40) = 20259 and C(40) = 11625.
</p>
<p>
Find A(n), B(n) and C(n) for n = 10<sup>12</sup>.<br /> 
Give your answer modulo 2<sup>30</sup> and separate your values for A, B and C by a comma.<br /> 
E.g. for n = 40 the answer would be 31254,20259,11625
</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-10be-ed8f48755290
begin
    submit_answer(nothing; prob_num=419)
end

# ╔═╡ 22fe5be0-2b5d-11eb-099e-bd131a90c06c
html"""
<h2>Problem 420: 2x2 positive integer matrix</h2>
<p>A <i>positive integer matrix</i> is a matrix whose elements are all positive integers.<br />
Some positive integer matrices can be expressed as a square of a positive integer matrix in two different ways. Here is an example:</p>

$$\begin{pmatrix}
40 &amp; 12\\
48 &amp; 40
\end{pmatrix} =
\begin{pmatrix}
2 &amp; 3\\
12 &amp; 2
\end{pmatrix}^2 =
\begin{pmatrix}
6 &amp; 1\\
4 &amp; 6
\end{pmatrix}^2
$$

<p>
We define F(<var>N</var>) as the number of the 2x2 positive integer matrices which have a <dfn title="the sum of the elements on the main diagonal">trace</dfn> less than <var>N</var> and which can be expressed as a square of a positive integer matrix in two different ways.<br />
We can verify that F(50) = 7 and F(1000) = 1019.
</p>

<p>
Find F(10<sup>7</sup>).
</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-0475-0f16f46d02f1
begin
    submit_answer(nothing; prob_num=420)
end

# ╔═╡ 22fe5be0-2b5d-11eb-05d9-2933649ab868
html"""
<h2>Problem 421: Prime factors of <var>n</var><sup>15</sup>+1</h2>
<p>
Numbers of the form <var>n</var><sup>15</sup>+1 are composite for every integer <var>n</var> &gt; 1.<br />
For positive integers <var>n</var> and <var>m</var> let <var>s</var>(<var>n,m</var>) be defined as the sum of the <i>distinct</i> prime factors of <var>n</var><sup>15</sup>+1 not exceeding <var>m</var>.
</p>
E.g. 2<sup>15</sup>+1 = 3×3×11×331.<br />
So <var>s</var>(2,10) = 3 and <var>s</var>(2,1000) = 3+11+331 = 345.<br /><br />

Also 10<sup>15</sup>+1 = 7×11×13×211×241×2161×9091.<br />
So <var>s</var>(10,100) = 31 and <var>s</var>(10,1000) = 483.<br /><p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>s</var>(<var>n</var>,10<sup>8</sup>) for 1 ≤ <var>n</var> ≤ 10<sup>11</sup>.
</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-0c62-f1fc334ea173
begin
    submit_answer(nothing; prob_num=421)
end

# ╔═╡ 22fe5be0-2b5d-11eb-034a-7db9d2dc36d0
html"""
<h2>Problem 422: Sequence of points on a hyperbola</h2>
<p>Let H be the hyperbola defined by the equation 12<var>x</var><sup>2</sup> + 7<var>x</var><var>y</var> - 12<var>y</var><sup>2</sup> = 625.</p>

<p>Next, define X as the point (7, 1). It can be seen that X is in H.</p>

<p>Now we define a sequence of points in H, {P<sub><var>i</var></sub> : <var>i</var> ≥ 1}, as:
</p><ul><li> P<sub>1</sub> = (13, 61/4).
</li><li> P<sub>2</sub> = (-43/6, -4).
</li><li> For <var>i</var> &gt; 2, P<sub><var>i</var></sub> is the unique point in H that is different from P<sub><var>i</var>-1</sub> and such that line P<sub><var>i</var></sub>P<sub><var>i</var>-1</sub> is parallel to line P<sub><var>i</var>-2</sub>X. It can be shown that P<sub><var>i</var></sub> is well-defined, and that its coordinates are always rational.
</li></ul>
<div class="center"><img src="project/images/p422_hyperbola.gif" class="dark_img" alt="p422_hyperbola.gif" /></div>
<p>You are given that P<sub>3</sub>  = (-19/2, -229/24), P<sub>4</sub> = (1267/144, -37/12) and P<sub>7</sub> = (17194218091/143327232, 274748766781/1719926784).</p>

<p>Find P<sub><var>n</var></sub> for <var>n</var> = 11<sup>14</sup> in the following format:<br />If P<sub><var>n</var></sub> = (<var>a</var>/<var>b</var>, <var>c</var>/<var>d</var>) where the fractions are in lowest terms and the denominators are positive, then the answer is (<var>a</var> + <var>b</var> + <var>c</var> + <var>d</var>) mod 1 000 000 007.</p>

<p>For <var>n</var> = 7, the answer would have been: 806236837.</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-08c8-6bf73de0d98e
begin
    submit_answer(nothing; prob_num=422)
end

# ╔═╡ 22fe5be0-2b5d-11eb-36a6-d9d01d662f7d
html"""
<h2>Problem 423: Consecutive die throws</h2>
<p>Let <var>n</var> be a positive integer.<br />
A 6-sided die is thrown <var>n</var> times. Let <var>c</var> be the number of pairs of consecutive throws that give the same value.</p>

<p>For example, if <var>n</var> = 7 and the values of the die throws are (1,1,5,6,6,6,3), then the following pairs of consecutive throws give the same value:<br />
(<u>1,1</u>,5,6,6,6,3)<br />
(1,1,5,<u>6,6</u>,6,3)<br />
(1,1,5,6,<u>6,6</u>,3)<br />
Therefore, <var>c</var> = 3 for (1,1,5,6,6,6,3).</p>

<p>Define C(<var>n</var>) as the number of outcomes of throwing a 6-sided die <var>n</var> times such that <var>c</var> does not exceed π(<var>n</var>).<sup>1</sup><br />
For example, C(3) = 216, C(4) = 1290, C(11) = 361912500 and C(24) = 4727547363281250000.</p>

<p>Define S(<var>L</var>) as <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> C(<var>n</var>) for 1 ≤ <var>n</var> ≤ <var>L</var>.<br />
For example, S(50) mod 1 000 000 007 = 832833871.</p>

<p>Find S(50 000 000) mod 1 000 000 007.</p>

<p> <span style="font-size:smaller;"><sup>1</sup> π denotes the <b>prime-counting function</b>, i.e. π(<var>n</var>) is the number of primes ≤ <var>n</var>.</span></p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-24a4-15bab5433f09
begin
    submit_answer(nothing; prob_num=423)
end

# ╔═╡ 22fe5be0-2b5d-11eb-2eb6-e380d98b64e6
html"""
<h2>Problem 424: Kakuro</h2>
<div class="center"><img src="project/images/p424_kakuro1.gif" class="dark_img" alt="p424_kakuro1.gif" /></div>

<p>The above is an example of a cryptic kakuro (also known as cross sums, or even sums cross) puzzle, with its final solution on the right. (The common rules of kakuro puzzles can be found easily on numerous internet sites. Other related information can also be currently found at <a href="http://krazydad.com/">krazydad.com</a> whose author has provided the puzzle data for this challenge.)</p>

<p>The downloadable text file (<a href="project/resources/p424_kakuro200.txt">kakuro200.txt</a>) contains the description of 200 such puzzles, a mix of 5x5 and 6x6 types. The first puzzle in the file is the above example which is coded as follows:</p>

<p>6,X,X,(vCC),(vI),X,X,X,(hH),B,O,(vCA),(vJE),X,(hFE,vD),O,O,O,O,(hA),O,I,(hJC,vB),O,O,(hJC),H,O,O,O,X,X,X,(hJE),O,O,X</p>

<p>The first character is a numerical digit indicating the size of the information grid. It would be either a 6 (for a 5x5 kakuro puzzle) or a 7 (for a 6x6 puzzle) followed by a comma (,). The extra top line and left column are needed to insert information.</p>

<p>The content of each cell is then described and followed by a comma, going left to right and starting with the top line.<br />
X = Gray cell, not required to be filled by a digit.<br />
O (upper case letter)= White empty cell to be filled by a digit.<br />
A = Or any one of the upper case letters from A to J to be replaced by its equivalent digit in the solved puzzle.<br />
( ) = Location of the encrypted sums. Horizontal sums are preceded by a lower case "h" and vertical sums are preceded by a lower case "v". Those are followed by one or two upper case letters depending if the sum is a single digit or double digit one. For double digit sums, the first letter would be for the "tens" and the second one for the "units". When the cell must contain information for both a horizontal and a vertical sum, the first one is always for the horizontal sum and the two are separated by a comma within the same set of brackets, ex.: (hFE,vD). Each set of brackets is also immediately followed by a comma.</p>

<p>The description of the last cell is followed by a Carriage Return/Line Feed (CRLF) instead of a comma.</p>

<p>The required answer to each puzzle is based on the value of each letter necessary to arrive at the solution and according to the alphabetical order. As indicated under the example puzzle, its answer would be 8426039571. At least 9 out of the 10 encrypting letters are always part of the problem description. When only 9 are given, the missing one must be assigned the remaining digit.</p>

<p>You are given that the sum of the answers for the first 10 puzzles in the file is 64414157580.</p>

<p>Find the sum of the answers for the 200 puzzles.</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-3664-e5e589d98295
begin
    submit_answer(nothing; prob_num=424)
end

# ╔═╡ 22fe5be0-2b5d-11eb-3fba-8f142d708749
html"""
<h2>Problem 425: Prime connection</h2>
<p>
Two positive numbers A and B are said to be <i>connected</i> (denoted by "A ↔ B") if one of these conditions holds:<br />
(1) A and B have the same length and differ in exactly one digit; for example, 123 ↔ 173.<br />
(2) Adding one digit to the left of A (or B) makes B (or A); for example, 23 ↔ 223 and 123 ↔ 23.
</p>
<p>
We call a prime P a <i>2's relative</i> if there exists a chain of connected primes between 2 and P and no prime in the chain exceeds P.
</p>
<p>
For example, 127 is a 2's relative. One of the possible chains is shown below:<br />
2 ↔ 3 ↔ 13 ↔ 113 ↔ 103 ↔ 107 ↔ 127<br />
However, 11 and 103 are not 2's relatives.
</p>
<p>
Let F(N) be the sum of the primes ≤ N which are not 2's relatives.<br />
We can verify that F(10<sup>3</sup>) = 431 and F(10<sup>4</sup>) = 78728.
</p>
<p>
Find F(10<sup>7</sup>).
</p>
"""

# ╔═╡ 22fe5be0-2b5d-11eb-0efd-b542b157b0c6
begin
    submit_answer(nothing; prob_num=425)
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