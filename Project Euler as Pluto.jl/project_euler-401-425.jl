### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ad192d0-84a3-11eb-24af-d9dd7ad0d321
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ad192d0-84a3-11eb-33ac-85b4973a32e1
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

# ╔═╡ 1ad192d0-84a3-11eb-2f43-9bec71167868
begin
    submit_answer(nothing; prob_num=401)
end

# ╔═╡ 1ad192d0-84a3-11eb-32db-f7f473dbc23d
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

# ╔═╡ 1ad192d0-84a3-11eb-0c47-1597761a6816
begin
    submit_answer(nothing; prob_num=402)
end

# ╔═╡ 1ad192d0-84a3-11eb-0052-69f9856f83ff
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

# ╔═╡ 1ad192d0-84a3-11eb-049a-f37019a18c25
begin
    submit_answer(nothing; prob_num=403)
end

# ╔═╡ 1ad192d0-84a3-11eb-3ac7-1f54294c8a8c
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

# ╔═╡ 1ad192d0-84a3-11eb-163e-cf43d738afeb
begin
    submit_answer(nothing; prob_num=404)
end

# ╔═╡ 1ad192d0-84a3-11eb-36e6-9d167077d2de
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

# ╔═╡ 1ad192d0-84a3-11eb-0db2-f12a52aa4a7d
begin
    submit_answer(nothing; prob_num=405)
end

# ╔═╡ 1ad192d0-84a3-11eb-1c14-0b29c7c1368a
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

# ╔═╡ 1ad192d0-84a3-11eb-0204-fb849dabaa10
begin
    submit_answer(nothing; prob_num=406)
end

# ╔═╡ 1ad192d0-84a3-11eb-1a19-9d9977ec8824
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

# ╔═╡ 1ad192d0-84a3-11eb-0b0e-770db8113cee
begin
    submit_answer(nothing; prob_num=407)
end

# ╔═╡ 1ad192d0-84a3-11eb-19d3-df7a17904e1b
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

# ╔═╡ 1ad192d0-84a3-11eb-2536-110c32f94445
begin
    submit_answer(nothing; prob_num=408)
end

# ╔═╡ 1ad192d0-84a3-11eb-0d02-553d42013f5d
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

# ╔═╡ 1ad192d0-84a3-11eb-0168-8d8590b44930
begin
    submit_answer(nothing; prob_num=409)
end

# ╔═╡ 1ad192d0-84a3-11eb-3290-15869f633941
html"""
<h2>Problem 410: Circle and tangent line</h2>
<p>Let C be the circle with radius <var>r</var>, <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> = <var>r</var><sup>2</sup>. We choose two points P(<var>a</var>, <var>b</var>) and Q(-<var>a</var>, <var>c</var>) so that the line passing through P and Q is tangent to C.</p>

<p>For example, the quadruplet (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) = (2, 6, 2, -7) satisfies this property.</p>

<p>Let F(<var>R</var>, <var>X</var>) be the number of the integer quadruplets (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) with this property, and with 0 &lt; <var>r</var> ≤ <var>R</var> and 0 &lt; <var>a</var> ≤ <var>X</var>.</p>

<p>We can verify that F(1, 5) = 10, F(2, 10) = 52 and F(10, 100) = 3384.<br />
Find F(10<sup>8</sup>, 10<sup>9</sup>) + F(10<sup>9</sup>, 10<sup>8</sup>).</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1e32-7f39a30fe8ab
begin
    submit_answer(nothing; prob_num=410)
end

# ╔═╡ 1ad192d0-84a3-11eb-3797-a3880e3c48c9
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

# ╔═╡ 1ad192d0-84a3-11eb-08b2-4b4916f37d32
begin
    submit_answer(nothing; prob_num=411)
end

# ╔═╡ 1ad192d0-84a3-11eb-1229-012df9d3ed29
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

# ╔═╡ 1ad192d0-84a3-11eb-35b4-f77ad3dc0d1f
begin
    submit_answer(nothing; prob_num=412)
end

# ╔═╡ 1ad192d0-84a3-11eb-3822-cd4f357ed0c0
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

# ╔═╡ 1ad192d0-84a3-11eb-0db4-9fc7a888b7dd
begin
    submit_answer(nothing; prob_num=413)
end

# ╔═╡ 1ad192d0-84a3-11eb-1d7f-2b1a918189e5
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

# ╔═╡ 1ad192d0-84a3-11eb-01d1-31b6249cdd11
begin
    submit_answer(nothing; prob_num=414)
end

# ╔═╡ 1ad192d0-84a3-11eb-1c7f-9f196072d8ea
html"""
<h2>Problem 415: Titanic sets</h2>
<p>A set of lattice points S is called a <i>titanic set</i> if there exists a line passing through exactly two points in S.</p>

<p>An example of a titanic set is S = {(0, 0), (0, 1), (0, 2), (1, 1), (2, 0), (1, 0)}, where the line passing through (0, 1) and (2, 0) does not pass through any other point in S.</p>

<p>On the other hand, the set {(0, 0), (1, 1), (2, 2), (4, 4)} is not a titanic set since the line passing through any two points in the set also passes through the other two.</p>

<p>For any positive integer <var>N</var>, let <var>T</var>(<var>N</var>) be the number of titanic sets S whose every point (<var>x</var>, <var>y</var>) satisfies 0 ≤ <var>x</var>, <var>y</var> ≤ <var>N</var>.
It can be verified that <var>T</var>(1) = 11, <var>T</var>(2) = 494, <var>T</var>(4) = 33554178, <var>T</var>(111) mod 10<sup>8</sup> = 13500401 and <var>T</var>(10<sup>5</sup>) mod 10<sup>8</sup> = 63259062.</p>

<p>Find <var>T</var>(10<sup>11</sup>) mod 10<sup>8</sup>.</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-2c36-0bda1d9d26f1
begin
    submit_answer(nothing; prob_num=415)
end

# ╔═╡ 1ad192d0-84a3-11eb-0a99-99897f041b0d
html"""
<h2>Problem 416: A frog's trip</h2>
<p>A row of <var>n</var> squares contains a frog in the leftmost square. By successive jumps the frog goes to the rightmost square and then back to the leftmost square. On the outward trip he jumps one, two or three squares to the right, and on the homeward trip he jumps to the left in a similar manner. He cannot jump outside the squares. He repeats the round-trip travel <var>m</var> times.</p>

<p>Let F(<var>m</var>, <var>n</var>) be the number of the ways the frog can travel so that at most one square remains unvisited.<br />
For example, F(1, 3) = 4, F(1, 4) = 15, F(1, 5) = 46, F(2, 3) = 16 and F(2, 100) mod 10<sup>9</sup> = 429619151.</p>

<p>Find the last 9 digits of F(10, 10<sup>12</sup>).</p>
"""

# ╔═╡ 1ad192d0-84a3-11eb-1bf8-476d3f6321c9
begin
    submit_answer(nothing; prob_num=416)
end

# ╔═╡ 1ad192d0-84a3-11eb-0424-67ac73ab4550
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

# ╔═╡ 1ad192d0-84a3-11eb-17a3-4b9a927d36ca
begin
    submit_answer(nothing; prob_num=417)
end

# ╔═╡ 1ad192d0-84a3-11eb-364c-e56e008a2a9e
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

# ╔═╡ 1ad192d0-84a3-11eb-1666-639dec942c1d
begin
    submit_answer(nothing; prob_num=418)
end

# ╔═╡ 1ad192d0-84a3-11eb-2d36-d9f454e99d2a
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

# ╔═╡ 1ad192d0-84a3-11eb-3c07-15069507a240
begin
    submit_answer(nothing; prob_num=419)
end

# ╔═╡ 1ad192d0-84a3-11eb-08f1-27e4e0ee29a0
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

# ╔═╡ 1ad192d0-84a3-11eb-1dd1-d7fc69fa1017
begin
    submit_answer(nothing; prob_num=420)
end

# ╔═╡ 1ad192d0-84a3-11eb-0963-3bd589d46f8a
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

# ╔═╡ 1ad192d0-84a3-11eb-2fe3-57f0e3425aca
begin
    submit_answer(nothing; prob_num=421)
end

# ╔═╡ 1ad192d0-84a3-11eb-39c2-511eeacda43c
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

# ╔═╡ 1ad192d0-84a3-11eb-38cc-ab1ea8ed8a56
begin
    submit_answer(nothing; prob_num=422)
end

# ╔═╡ 1ad192d0-84a3-11eb-2c05-0b539aecc9dd
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

# ╔═╡ 1ad192d0-84a3-11eb-3267-510471e04389
begin
    submit_answer(nothing; prob_num=423)
end

# ╔═╡ 1ad192d0-84a3-11eb-1007-9b9089e5842d
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

# ╔═╡ 1ad192d0-84a3-11eb-306d-0dca08d1ccd9
begin
    submit_answer(nothing; prob_num=424)
end

# ╔═╡ 1ad192d0-84a3-11eb-3099-fbe70eacfa05
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

# ╔═╡ 1ad192d0-84a3-11eb-1387-dd3b33f4bb1f
begin
    submit_answer(nothing; prob_num=425)
end

# ╔═╡ Cell order:
# ╠═1ad192d0-84a3-11eb-24af-d9dd7ad0d321
# ╟─1ad192d0-84a3-11eb-33ac-85b4973a32e1
# ╠═1ad192d0-84a3-11eb-2f43-9bec71167868
# ╟─1ad192d0-84a3-11eb-32db-f7f473dbc23d
# ╠═1ad192d0-84a3-11eb-0c47-1597761a6816
# ╟─1ad192d0-84a3-11eb-0052-69f9856f83ff
# ╠═1ad192d0-84a3-11eb-049a-f37019a18c25
# ╟─1ad192d0-84a3-11eb-3ac7-1f54294c8a8c
# ╠═1ad192d0-84a3-11eb-163e-cf43d738afeb
# ╟─1ad192d0-84a3-11eb-36e6-9d167077d2de
# ╠═1ad192d0-84a3-11eb-0db2-f12a52aa4a7d
# ╟─1ad192d0-84a3-11eb-1c14-0b29c7c1368a
# ╠═1ad192d0-84a3-11eb-0204-fb849dabaa10
# ╟─1ad192d0-84a3-11eb-1a19-9d9977ec8824
# ╠═1ad192d0-84a3-11eb-0b0e-770db8113cee
# ╟─1ad192d0-84a3-11eb-19d3-df7a17904e1b
# ╠═1ad192d0-84a3-11eb-2536-110c32f94445
# ╟─1ad192d0-84a3-11eb-0d02-553d42013f5d
# ╠═1ad192d0-84a3-11eb-0168-8d8590b44930
# ╟─1ad192d0-84a3-11eb-3290-15869f633941
# ╠═1ad192d0-84a3-11eb-1e32-7f39a30fe8ab
# ╟─1ad192d0-84a3-11eb-3797-a3880e3c48c9
# ╠═1ad192d0-84a3-11eb-08b2-4b4916f37d32
# ╟─1ad192d0-84a3-11eb-1229-012df9d3ed29
# ╠═1ad192d0-84a3-11eb-35b4-f77ad3dc0d1f
# ╟─1ad192d0-84a3-11eb-3822-cd4f357ed0c0
# ╠═1ad192d0-84a3-11eb-0db4-9fc7a888b7dd
# ╟─1ad192d0-84a3-11eb-1d7f-2b1a918189e5
# ╠═1ad192d0-84a3-11eb-01d1-31b6249cdd11
# ╟─1ad192d0-84a3-11eb-1c7f-9f196072d8ea
# ╠═1ad192d0-84a3-11eb-2c36-0bda1d9d26f1
# ╟─1ad192d0-84a3-11eb-0a99-99897f041b0d
# ╠═1ad192d0-84a3-11eb-1bf8-476d3f6321c9
# ╟─1ad192d0-84a3-11eb-0424-67ac73ab4550
# ╠═1ad192d0-84a3-11eb-17a3-4b9a927d36ca
# ╟─1ad192d0-84a3-11eb-364c-e56e008a2a9e
# ╠═1ad192d0-84a3-11eb-1666-639dec942c1d
# ╟─1ad192d0-84a3-11eb-2d36-d9f454e99d2a
# ╠═1ad192d0-84a3-11eb-3c07-15069507a240
# ╟─1ad192d0-84a3-11eb-08f1-27e4e0ee29a0
# ╠═1ad192d0-84a3-11eb-1dd1-d7fc69fa1017
# ╟─1ad192d0-84a3-11eb-0963-3bd589d46f8a
# ╠═1ad192d0-84a3-11eb-2fe3-57f0e3425aca
# ╟─1ad192d0-84a3-11eb-39c2-511eeacda43c
# ╠═1ad192d0-84a3-11eb-38cc-ab1ea8ed8a56
# ╟─1ad192d0-84a3-11eb-2c05-0b539aecc9dd
# ╠═1ad192d0-84a3-11eb-3267-510471e04389
# ╟─1ad192d0-84a3-11eb-1007-9b9089e5842d
# ╠═1ad192d0-84a3-11eb-306d-0dca08d1ccd9
# ╟─1ad192d0-84a3-11eb-3099-fbe70eacfa05
# ╠═1ad192d0-84a3-11eb-1387-dd3b33f4bb1f