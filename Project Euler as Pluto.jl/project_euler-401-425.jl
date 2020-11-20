### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 459cf4a0-2b34-11eb-2269-51f069f894d9
include((@__DIR__)*"/shared.jl");

# ╔═╡ 459cf4a0-2b34-11eb-334e-e9d7620a06a7
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

# ╔═╡ 459cf4a0-2b34-11eb-35a8-5d315915ebdf
begin
    submit_answer(nothing; prob_num=417)
end

# ╔═╡ 459cf4a0-2b34-11eb-14d2-bd6c431ef729
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

# ╔═╡ 459cf4a0-2b34-11eb-1b69-4330ad906598
begin
    submit_answer(nothing; prob_num=418)
end

# ╔═╡ 459cf4a0-2b34-11eb-2a57-d73d71baaaba
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

# ╔═╡ 459cf4a0-2b34-11eb-207b-5bcabb1f000e
begin
    submit_answer(nothing; prob_num=419)
end

# ╔═╡ 459cf4a0-2b34-11eb-23d5-816f933452e6
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

# ╔═╡ 459cf4a0-2b34-11eb-1ec2-117161961a94
begin
    submit_answer(nothing; prob_num=420)
end

# ╔═╡ 459cf4a0-2b34-11eb-19fb-cd77ef942f46
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

# ╔═╡ 459cf4a0-2b34-11eb-070d-471c2b635f8f
begin
    submit_answer(nothing; prob_num=421)
end

# ╔═╡ 459cf4a0-2b34-11eb-155a-bf02198f1011
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

# ╔═╡ 459cf4a0-2b34-11eb-33a0-19d80be455b7
begin
    submit_answer(nothing; prob_num=422)
end

# ╔═╡ 459cf4a0-2b34-11eb-2c7b-7165bb504b19
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

# ╔═╡ 459cf4a0-2b34-11eb-128e-69fbd1011cbc
begin
    submit_answer(nothing; prob_num=423)
end

# ╔═╡ 459cf4a0-2b34-11eb-2353-d97d92a2acfb
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

# ╔═╡ 459cf4a0-2b34-11eb-332c-8dbe9ffeced3
begin
    submit_answer(nothing; prob_num=424)
end

# ╔═╡ 459cf4a0-2b34-11eb-2afa-953bfc0d7e3f
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

# ╔═╡ 459cf4a0-2b34-11eb-121f-094b1dec7ab9
begin
    submit_answer(nothing; prob_num=425)
end

# ╔═╡ 459cf4a0-2b34-11eb-0e41-f16416546fd0
html"""
<h2>Problem 410: Circle and tangent line</h2>
<p>Let C be the circle with radius <var>r</var>, <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> = <var>r</var><sup>2</sup>. We choose two points P(<var>a</var>, <var>b</var>) and Q(-<var>a</var>, <var>c</var>) so that the line passing through P and Q is tangent to C.</p>

<p>For example, the quadruplet (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) = (2, 6, 2, -7) satisfies this property.</p>

<p>Let F(<var>R</var>, <var>X</var>) be the number of the integer quadruplets (<var>r</var>, <var>a</var>, <var>b</var>, <var>c</var>) with this property, and with 0 &lt; <var>r</var> ≤ <var>R</var> and 0 &lt; <var>a</var> ≤ <var>X</var>.</p>

<p>We can verify that F(1, 5) = 10, F(2, 10) = 52 and F(10, 100) = 3384.<br />
Find F(10<sup>8</sup>, 10<sup>9</sup>) + F(10<sup>9</sup>, 10<sup>8</sup>).</p>
"""

# ╔═╡ 459cf4a0-2b34-11eb-2fec-ad48755a885c
begin
    submit_answer(nothing; prob_num=426)
end

# ╔═╡ 459cf4a0-2b34-11eb-047f-4f93f15b4ed2
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

# ╔═╡ 459cf4a0-2b34-11eb-2101-71c9653f6e19
begin
    submit_answer(nothing; prob_num=427)
end

# ╔═╡ 459cf4a0-2b34-11eb-3dde-2563344678e1
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

# ╔═╡ 459cf4a0-2b34-11eb-07bb-39ea6926ce8d
begin
    submit_answer(nothing; prob_num=428)
end

# ╔═╡ 459cf4a0-2b34-11eb-20ba-6f1064ce223a
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

# ╔═╡ 459cf4a0-2b34-11eb-3abc-1d3eb2fe917e
begin
    submit_answer(nothing; prob_num=429)
end

# ╔═╡ 459cf4a0-2b34-11eb-1286-ff49f475933b
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

# ╔═╡ 459cf4a0-2b34-11eb-3e6a-415c28a536d3
begin
    submit_answer(nothing; prob_num=430)
end

# ╔═╡ 459cf4a0-2b34-11eb-33e8-9b02431b616b
html"""
<h2>Problem 415: Titanic sets</h2>
<p>A set of lattice points S is called a <i>titanic set</i> if there exists a line passing through exactly two points in S.</p>

<p>An example of a titanic set is S = {(0, 0), (0, 1), (0, 2), (1, 1), (2, 0), (1, 0)}, where the line passing through (0, 1) and (2, 0) does not pass through any other point in S.</p>

<p>On the other hand, the set {(0, 0), (1, 1), (2, 2), (4, 4)} is not a titanic set since the line passing through any two points in the set also passes through the other two.</p>

<p>For any positive integer <var>N</var>, let <var>T</var>(<var>N</var>) be the number of titanic sets S whose every point (<var>x</var>, <var>y</var>) satisfies 0 ≤ <var>x</var>, <var>y</var> ≤ <var>N</var>.
It can be verified that <var>T</var>(1) = 11, <var>T</var>(2) = 494, <var>T</var>(4) = 33554178, <var>T</var>(111) mod 10<sup>8</sup> = 13500401 and <var>T</var>(10<sup>5</sup>) mod 10<sup>8</sup> = 63259062.</p>

<p>Find <var>T</var>(10<sup>11</sup>) mod 10<sup>8</sup>.</p>
"""

# ╔═╡ 459cf4a0-2b34-11eb-2089-47e0d71af82b
begin
    submit_answer(nothing; prob_num=431)
end

# ╔═╡ 459cf4a0-2b34-11eb-3365-c1c202add128
html"""
<h2>Problem 416: A frog's trip</h2>
<p>A row of <var>n</var> squares contains a frog in the leftmost square. By successive jumps the frog goes to the rightmost square and then back to the leftmost square. On the outward trip he jumps one, two or three squares to the right, and on the homeward trip he jumps to the left in a similar manner. He cannot jump outside the squares. He repeats the round-trip travel <var>m</var> times.</p>

<p>Let F(<var>m</var>, <var>n</var>) be the number of the ways the frog can travel so that at most one square remains unvisited.<br />
For example, F(1, 3) = 4, F(1, 4) = 15, F(1, 5) = 46, F(2, 3) = 16 and F(2, 100) mod 10<sup>9</sup> = 429619151.</p>

<p>Find the last 9 digits of F(10, 10<sup>12</sup>).</p>
"""

# ╔═╡ 459cf4a0-2b34-11eb-10a4-4fd2f974c5c2
begin
    submit_answer(nothing; prob_num=432)
end

# ╔═╡ 459cf4a0-2b34-11eb-1ea4-6d30922212e7
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

# ╔═╡ 459cf4a0-2b34-11eb-3913-eb1fa2e6d6bd
begin
    submit_answer(nothing; prob_num=433)
end

# ╔═╡ 459cf4a0-2b34-11eb-204a-4177ac599e7b
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

# ╔═╡ 459cf4a0-2b34-11eb-3b3a-e94705516f8c
begin
    submit_answer(nothing; prob_num=434)
end

# ╔═╡ 459cf4a0-2b34-11eb-1997-1b32a9078df8
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

# ╔═╡ 459cf4a0-2b34-11eb-2ef0-3b260649d561
begin
    submit_answer(nothing; prob_num=435)
end

# ╔═╡ 459d1bb0-2b34-11eb-2b18-41d2bea2952d
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

# ╔═╡ 459d1bb0-2b34-11eb-332c-57bacea1c85a
begin
    submit_answer(nothing; prob_num=436)
end

# ╔═╡ 459d1bb0-2b34-11eb-1470-e57ee1ca23f0
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

# ╔═╡ 459d1bb0-2b34-11eb-1c99-d7f0acf12263
begin
    submit_answer(nothing; prob_num=437)
end

# ╔═╡ 459d1bb0-2b34-11eb-1cdc-0bf7b3f23d99
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

# ╔═╡ 459d1bb0-2b34-11eb-07a3-5b2e0ccffda2
begin
    submit_answer(nothing; prob_num=438)
end

# ╔═╡ 459d1bb0-2b34-11eb-37af-19932763c4cc
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

# ╔═╡ 459d1bb0-2b34-11eb-347f-95c993c81b4d
begin
    submit_answer(nothing; prob_num=439)
end

# ╔═╡ 459d1bb0-2b34-11eb-31ec-6923bd409e7c
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

# ╔═╡ 459d1bb0-2b34-11eb-3b38-7550a8409663
begin
    submit_answer(nothing; prob_num=440)
end

# ╔═╡ 459d1bb0-2b34-11eb-279e-a3deb1882e4f
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

# ╔═╡ 459d1bb0-2b34-11eb-2011-f93e8291d321
begin
    submit_answer(nothing; prob_num=441)
end

# ╔═╡ 459d1bb0-2b34-11eb-2290-c5c2155b5abb
html"""
<h2>Problem 426: Box-ball system</h2>
<p>
Consider an infinite row of boxes. Some of the boxes contain a ball. For example, an initial configuration of 2 consecutive occupied boxes followed by 2 empty boxes, 2 occupied boxes, 1 empty box, and 2 occupied boxes can be denoted by the sequence (2, 2, 2, 1, 2), in which the number of consecutive occupied and empty boxes appear alternately.
</p>
<p>
A turn consists of moving each ball exactly once according to the following rule: Transfer the leftmost ball which has not been moved to the nearest empty box to its right.
</p>
<p>
After one turn the sequence (2, 2, 2, 1, 2) becomes (2, 2, 1, 2, 3) as can be seen below; note that we begin the new sequence starting at the first occupied box.
</p>

<div align="center">
<img src="project/images/p426_baxball1.gif" alt="p426_baxball1.gif" /></div>

<p>
A system like this is called a <b>Box-Ball System</b> or <b>BBS</b> for short.
</p>
<p>
It can be shown that after a sufficient number of turns, the system evolves to a state where the consecutive numbers of occupied boxes is invariant. In the example below, the consecutive numbers of <b>occupied boxes</b> evolves to [1, 2, 3]; we shall call this the final state.
</p>

<div align="center">
<img src="project/images/p426_baxball2.gif" alt="p426_baxball2.gif" /></div>

<p>
We define the sequence {<var>t</var><sub><var>i</var></sub>}:<br /></p><ul><li><var>s</var><sub>0</sub> = 290797
</li><li><var>s</var><sub><var>k</var>+1</sub> = <var>s</var><sub><var>k</var></sub><sup>2</sup> mod 50515093
</li><li><var>t</var><sub><var>k</var></sub> = (<var>s</var><sub><var>k</var></sub> mod 64) + 1
</li></ul><p>
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10</sub>), the final state becomes [1, 3, 10, 24, 51, 75].<br />
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10 000 000</sub>), find the final state.<br />
Give as your answer the sum of the squares of the elements of the final state. For example, if the final state is [1, 2, 3] then 14 ( = 1<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup>) is your answer.
</p>
"""

# ╔═╡ 459d1bb0-2b34-11eb-22dc-613950a9c7de
begin
    submit_answer(nothing; prob_num=442)
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
# ╠═45907180-2b34-11eb-2ebf-575594b730b8
# ╟─45907180-2b34-11eb-23b6-0ba70371054b
# ╠═45907180-2b34-11eb-1285-efed3117cfe0
# ╟─45907180-2b34-11eb-0222-29b68048ee11
# ╠═45907180-2b34-11eb-10f0-cf515330ab13
# ╟─45907180-2b34-11eb-0523-c746e59d0315
# ╠═45907180-2b34-11eb-320a-87e10e39c135
# ╟─45909890-2b34-11eb-2f87-9f404e9f7fa4
# ╠═45909890-2b34-11eb-087d-7dafe642394e
# ╟─45909890-2b34-11eb-18c5-d7e165d5ef8f
# ╠═45909890-2b34-11eb-0b3a-07124a9fb149
# ╟─45909890-2b34-11eb-3b32-493999729396
# ╠═45909890-2b34-11eb-0b8a-a380936dc72e
# ╟─45909890-2b34-11eb-2e4b-d36a33118903
# ╠═45909890-2b34-11eb-1120-971dac247af2
# ╟─45909890-2b34-11eb-008e-f755c54ab1b8
# ╠═45909890-2b34-11eb-3f74-1bf76109ffa1
# ╟─45909890-2b34-11eb-1ea1-cf7b97df15ac
# ╠═45909890-2b34-11eb-0525-e155008c6c4b
# ╟─45909890-2b34-11eb-2216-6d95bb3638c3
# ╠═45909890-2b34-11eb-1921-0ff45e3fcf70
# ╟─45909890-2b34-11eb-398d-0f71077ce23f
# ╠═45909890-2b34-11eb-1e00-bb91d7ac2abd
# ╟─45909890-2b34-11eb-0711-531ed8121e0b
# ╠═45909890-2b34-11eb-3bfe-37ab16a4024a
# ╟─45909890-2b34-11eb-2393-3de1a64d39c7
# ╠═45909890-2b34-11eb-356e-01f3399613ad
# ╟─45909890-2b34-11eb-3669-cf31a833c41b
# ╠═45909890-2b34-11eb-37a3-2f1a1b20bb4a
# ╟─45909890-2b34-11eb-0110-d5d6086786af
# ╠═45909890-2b34-11eb-3786-5d3ee28a6e54
# ╟─45909890-2b34-11eb-3102-e90dbd28e2fc
# ╠═45909890-2b34-11eb-3b5d-3f31b6f2130c
# ╟─4590bfa0-2b34-11eb-064b-6baaaafd2b59
# ╠═4590bfa0-2b34-11eb-1e78-03f799637c9c
# ╟─4590bfa0-2b34-11eb-32f0-fb0e209a94c1
# ╠═4590bfa0-2b34-11eb-1f54-83f420740adc
# ╟─4590bfa0-2b34-11eb-36de-51bbfc49c23a
# ╠═4590bfa0-2b34-11eb-295e-fd2a668915f1
# ╟─4590bfa0-2b34-11eb-1f5a-c9a8bd59c3f9
# ╠═4590bfa0-2b34-11eb-2f0f-b15d4b95e102
# ╟─4590bfa0-2b34-11eb-1bd6-ffede3313a63
# ╠═4590bfa0-2b34-11eb-36a8-87103e6653e5
# ╟─4590bfa0-2b34-11eb-1d38-257832a51b6c
# ╠═4590bfa0-2b34-11eb-13ed-317a07614e56
# ╟─4590bfa0-2b34-11eb-1b9a-f9c6b2c00558
# ╠═4590bfa0-2b34-11eb-0d95-1f53877a1028
# ╟─4590bfa0-2b34-11eb-1abe-2fdba194e244
# ╠═4590bfa0-2b34-11eb-3820-216d96fac354
# ╟─4590bfa0-2b34-11eb-3e87-57ba0a64a415
# ╠═4590bfa0-2b34-11eb-0a61-f163a140c746
# ╟─4590bfa0-2b34-11eb-1c7d-1b1a8dbbab86
# ╠═4590bfa0-2b34-11eb-271d-c92db1521f94
# ╠═4591aa00-2b34-11eb-2324-d9504e374a8c
# ╟─4591aa00-2b34-11eb-1907-ab72fbaf4666
# ╠═4591aa00-2b34-11eb-367b-33d71b92d8db
# ╟─4591aa00-2b34-11eb-3b2f-2398ea057c5a
# ╠═4591aa00-2b34-11eb-32e2-a302131ec96e
# ╟─4591aa00-2b34-11eb-372e-019bf26439c5
# ╠═4591aa00-2b34-11eb-1725-2d2f33d27ce8
# ╟─4591aa00-2b34-11eb-0bf6-451fdafa72e2
# ╠═4591aa00-2b34-11eb-255b-ff45ad022f6c
# ╟─4591aa00-2b34-11eb-3000-7f99a6f75503
# ╠═4591aa00-2b34-11eb-3384-d1e193ab9e78
# ╟─4591aa00-2b34-11eb-2ce0-c7d31d2e7251
# ╠═4591aa00-2b34-11eb-31ae-85106d33d2f0
# ╟─4591aa00-2b34-11eb-1073-27fcbcd379c8
# ╠═4591aa00-2b34-11eb-2be3-138f8593cdfd
# ╟─4591aa00-2b34-11eb-3eeb-21676931b997
# ╠═4591aa00-2b34-11eb-1d93-3774264c998a
# ╟─4591aa00-2b34-11eb-3431-d3dbc02a945c
# ╠═4591aa00-2b34-11eb-2f02-e1a68b9f02ae
# ╟─4591aa00-2b34-11eb-3845-a7c554f72ca0
# ╠═4591aa00-2b34-11eb-2289-7db6d32c3988
# ╟─4591aa00-2b34-11eb-0388-0b1a64633ac3
# ╠═4591aa00-2b34-11eb-2939-f59e66011b66
# ╟─4591d10e-2b34-11eb-1d7a-4fe747e755b3
# ╠═4591d10e-2b34-11eb-3116-636a8759a815
# ╟─4591d10e-2b34-11eb-1b4d-27fbcfe356ce
# ╠═4591d10e-2b34-11eb-01f1-09e43b4edc77
# ╟─4591d10e-2b34-11eb-1938-0f49e5c4b16e
# ╠═4591d10e-2b34-11eb-10d0-b5143b24cf0b
# ╟─4591d10e-2b34-11eb-2b10-13acf6cfb8f0
# ╠═4591d10e-2b34-11eb-02af-492aae19803d
# ╟─4591d10e-2b34-11eb-17b6-593659062587
# ╠═4591d10e-2b34-11eb-1db4-5bf3bf1d5659
# ╟─4591d10e-2b34-11eb-1aeb-ad5f4d3cc41d
# ╠═4591d10e-2b34-11eb-2f57-c5f32a8a973a
# ╟─4591d10e-2b34-11eb-34c1-4d8a7ccdcad8
# ╠═4591d10e-2b34-11eb-21cc-e99d12224387
# ╟─4591d10e-2b34-11eb-267f-51dda8152291
# ╠═4591d10e-2b34-11eb-20f2-65d3f1087fa4
# ╟─4591d10e-2b34-11eb-070a-cdbbe072b513
# ╠═4591d10e-2b34-11eb-1caa-77c732ecf0f7
# ╟─4591d10e-2b34-11eb-06bf-3b123f6f22c9
# ╠═4591d10e-2b34-11eb-32e1-f97c79e67c67
# ╟─4591d10e-2b34-11eb-04e8-158f02ae9fcd
# ╠═4591d10e-2b34-11eb-07ad-2925196cbe4a
# ╟─4591d10e-2b34-11eb-2d0f-e97461944263
# ╠═4591d10e-2b34-11eb-1a8a-7511357f22f0
# ╟─4591d10e-2b34-11eb-32d1-3d00bf638cb6
# ╠═4591d10e-2b34-11eb-0284-697b2e8dc0f7
# ╟─4591f820-2b34-11eb-21aa-f9c2dd9efa71
# ╠═4591f820-2b34-11eb-3c79-e3290ad0f021
# ╟─4591f820-2b34-11eb-0fbe-dd4d67373945
# ╠═4591f820-2b34-11eb-23a8-ff30e3a46097
# ╠═4593f3f0-2b34-11eb-228a-7b179121ac41
# ╟─4593f3f0-2b34-11eb-1157-f3f35282917f
# ╠═4593f3f0-2b34-11eb-2e40-3561336cddf5
# ╟─4593f3f0-2b34-11eb-3016-6536b8868940
# ╠═4593f3f0-2b34-11eb-1d76-730462bd3003
# ╟─4593f3f0-2b34-11eb-2b58-7bc755f50537
# ╠═4593f3f0-2b34-11eb-2a77-43e6d971e901
# ╟─4593f3f0-2b34-11eb-31de-cd13c480f6a1
# ╠═4593f3f0-2b34-11eb-1d05-516c43e2831f
# ╟─4593f3f0-2b34-11eb-119b-199ff252dda4
# ╠═4593f3f0-2b34-11eb-0385-7ffc2df5d33a
# ╟─4593f3f0-2b34-11eb-2ef1-63177b0c9622
# ╠═4593f3f0-2b34-11eb-1c81-1f7a01539567
# ╟─4593f3f0-2b34-11eb-1729-b73c2362921d
# ╠═4593f3f0-2b34-11eb-0a33-6d3342bff921
# ╟─4593f3f0-2b34-11eb-32c0-e927f3082744
# ╠═4593f3f0-2b34-11eb-1757-95464c74846d
# ╟─4593f3f0-2b34-11eb-0a6a-c38bc3504a57
# ╠═4593f3f0-2b34-11eb-24cc-6bfa33d1a828
# ╟─45941b00-2b34-11eb-114d-b9e0f5956011
# ╠═45941b00-2b34-11eb-1a9c-150c0df9b3a3
# ╟─45941b00-2b34-11eb-1531-ef3ea83b8f71
# ╠═45941b00-2b34-11eb-0fdb-8fd855c9e2bd
# ╟─45941b00-2b34-11eb-39b2-434ffa779f31
# ╠═45941b00-2b34-11eb-12d8-d9cefa8591d0
# ╟─45941b00-2b34-11eb-2732-4fa44514d7ec
# ╠═45941b00-2b34-11eb-3437-03a7ad348e08
# ╟─45941b00-2b34-11eb-0a81-1b6b081f35e4
# ╠═45941b00-2b34-11eb-2b82-bdb090980074
# ╟─45941b00-2b34-11eb-3182-15f05ae3e910
# ╠═45941b00-2b34-11eb-276d-abc327313e1c
# ╟─45941b00-2b34-11eb-3a60-fd3dbbeb6493
# ╠═45941b00-2b34-11eb-2bcd-f98f8a84d438
# ╟─45941b00-2b34-11eb-3211-e9358e77dec6
# ╠═45941b00-2b34-11eb-0a1a-8ff37fb03b38
# ╟─45941b00-2b34-11eb-068c-2f015dbd76b1
# ╠═45941b00-2b34-11eb-19d8-e94dc57453b9
# ╟─45941b00-2b34-11eb-0ea9-67f8c9c2efbc
# ╠═45941b00-2b34-11eb-250b-299447f566a9
# ╟─45941b00-2b34-11eb-1349-074b654d8d94
# ╠═45941b00-2b34-11eb-165a-f76504f9b90b
# ╟─45941b00-2b34-11eb-2e1a-83dc4cb58aa3
# ╠═45941b00-2b34-11eb-2f5d-93c20dbbc956
# ╟─45941b00-2b34-11eb-30df-cda1d0f8001c
# ╠═45941b00-2b34-11eb-0ca1-b3cbc547a522
# ╟─45941b00-2b34-11eb-2b5c-7983af364962
# ╠═45941b00-2b34-11eb-0e05-3bfa013446e7
# ╟─45941b00-2b34-11eb-01da-236bed5f6de2
# ╠═45941b00-2b34-11eb-27f2-25e2187d3e55
# ╟─45941b00-2b34-11eb-2f74-c9040cbc6a9a
# ╠═45941b00-2b34-11eb-268f-7f04e8a6e989
# ╟─45941b00-2b34-11eb-23bc-11ea72d4f9f7
# ╠═45941b00-2b34-11eb-07f5-9b1f6c7481a4
# ╠═4595537e-2b34-11eb-2689-c37ed97febc1
# ╟─4595537e-2b34-11eb-15f3-9b44237abe89
# ╠═4595537e-2b34-11eb-2c63-2b0b3166b1f1
# ╟─4595537e-2b34-11eb-2ffe-0f80d47a375d
# ╠═4595537e-2b34-11eb-21de-490762fee463
# ╟─4595537e-2b34-11eb-0438-378be0ca1a9b
# ╠═4595537e-2b34-11eb-1248-77415a335134
# ╟─4595537e-2b34-11eb-2b18-6d43036dd40d
# ╠═4595537e-2b34-11eb-2392-e3f9cd32009e
# ╟─4595537e-2b34-11eb-2a8d-434076f0ddb7
# ╠═4595537e-2b34-11eb-1c77-c3e68aba1967
# ╟─4595537e-2b34-11eb-0b1d-8574601df713
# ╠═4595537e-2b34-11eb-0f66-dfd46adfa3d7
# ╟─4595537e-2b34-11eb-1c3c-ddace3eebc79
# ╠═4595537e-2b34-11eb-07d7-0b7792aee5fa
# ╟─4595537e-2b34-11eb-28c1-611fe7ff4a08
# ╠═4595537e-2b34-11eb-3825-4b03253e4402
# ╟─4595537e-2b34-11eb-25f7-3db270216783
# ╠═4595537e-2b34-11eb-1014-1761a99fda59
# ╟─4595537e-2b34-11eb-0fe2-23dcccc23273
# ╠═4595537e-2b34-11eb-103a-e5eee2f0bf4d
# ╟─4595537e-2b34-11eb-2e78-6bcaeb745d4e
# ╠═4595537e-2b34-11eb-013b-fd7ed8c1b6ac
# ╟─45957a90-2b34-11eb-38f2-af96536da433
# ╠═45957a90-2b34-11eb-03b9-71d767e6b9bd
# ╟─45957a90-2b34-11eb-2851-013592b34e02
# ╠═45957a90-2b34-11eb-326c-27969b7aca9c
# ╟─45957a90-2b34-11eb-0175-81b8c73448ff
# ╠═45957a90-2b34-11eb-254b-65e0cb453c06
# ╟─45957a90-2b34-11eb-2c3c-7b0fc1f5cc63
# ╠═45957a90-2b34-11eb-075a-47243795e090
# ╟─45957a90-2b34-11eb-0a8e-33bf7541b3b6
# ╠═45957a90-2b34-11eb-10a0-27ac4852ed63
# ╟─45957a90-2b34-11eb-2e32-b9533badbbb6
# ╠═45957a90-2b34-11eb-3406-6d65953f5872
# ╟─45957a90-2b34-11eb-2dda-d10b8308ad7c
# ╠═45957a90-2b34-11eb-1c2a-17af73ba742e
# ╟─45957a90-2b34-11eb-1f9e-0dec15a788f0
# ╠═45957a90-2b34-11eb-209e-699de44bb5b8
# ╟─45957a90-2b34-11eb-1a80-6beb2eaf7c03
# ╠═45957a90-2b34-11eb-1933-07541d0ab0db
# ╟─45957a90-2b34-11eb-230e-45cb3698fcfb
# ╠═45957a90-2b34-11eb-3c05-7f2057f52e57
# ╟─45957a90-2b34-11eb-1899-6b8e04b8c0a6
# ╠═45957a90-2b34-11eb-257c-c3388da7087d
# ╟─45957a90-2b34-11eb-1273-2dd1ba89fed1
# ╠═45957a90-2b34-11eb-3067-3d0a2bcf2570
# ╟─45957a90-2b34-11eb-1232-0b75dfaecb16
# ╠═45957a90-2b34-11eb-0db6-1f0c9f1ac3e2
# ╟─45957a90-2b34-11eb-27f6-dd662bde5a1f
# ╠═45957a90-2b34-11eb-0016-d52cb9566e79
# ╟─45957a90-2b34-11eb-2d21-df19d7879d59
# ╠═45957a90-2b34-11eb-19c2-3da1b5d59048
# ╠═459839b0-2b34-11eb-064f-4933f4ab52c2
# ╟─459839b0-2b34-11eb-2871-1dc6cdff46f5
# ╠═459839b0-2b34-11eb-0533-c7b1f37cac78
# ╟─459839b0-2b34-11eb-1552-4d1c9ced47a9
# ╠═459839b0-2b34-11eb-1729-25b0fe1d934c
# ╟─459839b0-2b34-11eb-13e5-4fa89f502df0
# ╠═459839b0-2b34-11eb-264b-3531fd9508e8
# ╟─459839b0-2b34-11eb-3bae-5ff59d1ecaed
# ╠═459839b0-2b34-11eb-260b-f5887e88e5ca
# ╟─459860c2-2b34-11eb-304b-d7c05aaa345b
# ╠═459860c2-2b34-11eb-08c4-2f6f5b478866
# ╟─459860c2-2b34-11eb-0ecd-fb369166758b
# ╠═459860c2-2b34-11eb-1fb2-e132215d0fc5
# ╟─459860c2-2b34-11eb-1764-e9eeab1c2977
# ╠═459860c2-2b34-11eb-154d-41804e588b73
# ╟─459860c2-2b34-11eb-341f-c18abadcb439
# ╠═459860c2-2b34-11eb-2826-0de1a79b7be1
# ╟─459860c2-2b34-11eb-1613-e105988161f8
# ╠═459860c2-2b34-11eb-1784-6d358d340229
# ╟─459860c2-2b34-11eb-11b3-41566a4d02d8
# ╠═459860c2-2b34-11eb-17e6-6108be09ec0b
# ╟─459860c2-2b34-11eb-35a7-e180a4999f9b
# ╠═459860c2-2b34-11eb-192c-f9df535141ba
# ╟─459860c2-2b34-11eb-118b-014a904878c5
# ╠═459860c2-2b34-11eb-03b4-b9694795facf
# ╟─459860c2-2b34-11eb-09c0-f31057a48280
# ╠═459860c2-2b34-11eb-1d28-5db203dc1443
# ╟─459860c2-2b34-11eb-1c0f-cf15d5a58ffc
# ╠═459860c2-2b34-11eb-0644-cbdda347c3b7
# ╟─459860c2-2b34-11eb-2143-551ba310e722
# ╠═459860c2-2b34-11eb-0255-7fcf5ec3dcbe
# ╟─459860c2-2b34-11eb-1233-af366f348cde
# ╠═459860c2-2b34-11eb-291e-dd921dad94a9
# ╟─459860c2-2b34-11eb-29d0-bbcdbc04a0b6
# ╠═459860c2-2b34-11eb-15f2-115e4a9bf05b
# ╟─459860c2-2b34-11eb-0921-cfff97c657d2
# ╠═459860c2-2b34-11eb-3bc8-3bb6134b4797
# ╟─459860c2-2b34-11eb-0618-55607c8c694a
# ╠═459860c2-2b34-11eb-33cf-79620fc62834
# ╟─459860c2-2b34-11eb-0757-3bc22ef19324
# ╠═459860c2-2b34-11eb-11e4-0fb50d776ef1
# ╟─459860c2-2b34-11eb-2a73-ed33eee8fbb1
# ╠═459860c2-2b34-11eb-0f34-119b144940eb
# ╟─459860c2-2b34-11eb-0592-41e41a5869bf
# ╠═459860c2-2b34-11eb-373b-bdff869e2392
# ╟─459860c2-2b34-11eb-3e09-d1b166fc3796
# ╠═459860c2-2b34-11eb-19f4-93847b786eab
# ╟─459887d0-2b34-11eb-0949-8973e13d962d
# ╠═459887d0-2b34-11eb-3303-fd0a26bfbec5
# ╟─459887d0-2b34-11eb-067d-b94593694eb7
# ╠═459887d0-2b34-11eb-045f-b3e2d262bce4
# ╟─459887d0-2b34-11eb-10ce-d7c0729ead77
# ╠═459887d0-2b34-11eb-2c11-49e1c9b2e801
# ╠═459a83a0-2b34-11eb-28b0-d7ad77d15053
# ╟─459a83a0-2b34-11eb-048f-b94f012b226e
# ╠═459a83a0-2b34-11eb-0acb-335d361c5005
# ╟─459a83a0-2b34-11eb-12f6-cd304dbfe5c9
# ╠═459a83a0-2b34-11eb-153a-b958ab28b478
# ╟─459a83a0-2b34-11eb-2e0a-0541084547c3
# ╠═459a83a0-2b34-11eb-1b73-cb8fa07b11f0
# ╟─459a83a0-2b34-11eb-2940-bf074b05cdc6
# ╠═459a83a0-2b34-11eb-3bb0-cf0703399c1c
# ╟─459a83a0-2b34-11eb-08f3-63b0aa51da7d
# ╠═459a83a0-2b34-11eb-18ef-859b264ce9c2
# ╟─459a83a0-2b34-11eb-1756-5b18c98efcf8
# ╠═459a83a0-2b34-11eb-13a4-19bff43ab2d0
# ╟─459a83a0-2b34-11eb-216a-c96451d446a6
# ╠═459a83a0-2b34-11eb-36dc-8358c127c3bd
# ╟─459aaab0-2b34-11eb-3edd-db2c4442d87b
# ╠═459aaab0-2b34-11eb-329b-1356c8d7034d
# ╟─459aaab0-2b34-11eb-3acf-b10d885a2dcf
# ╠═459aaab0-2b34-11eb-23aa-dd4b5126703b
# ╟─459aaab0-2b34-11eb-2657-c300bbaed5f3
# ╠═459aaab0-2b34-11eb-0259-c94f6efe1577
# ╟─459aaab0-2b34-11eb-0d4a-ef6d64ff4aa7
# ╠═459aaab0-2b34-11eb-3120-6746351b204f
# ╟─459aaab0-2b34-11eb-1669-b72731a1aef5
# ╠═459aaab0-2b34-11eb-3285-998a880efb1a
# ╟─459aaab0-2b34-11eb-3adc-1b8fc090bea1
# ╠═459aaab0-2b34-11eb-3fee-81aa7cbc34dd
# ╟─459aaab0-2b34-11eb-2031-a3d45a62e2ce
# ╠═459aaab0-2b34-11eb-3e8b-45243a5287b7
# ╟─459aaab0-2b34-11eb-31f7-17f29eb799bd
# ╠═459aaab0-2b34-11eb-3bc0-6bc3b78d364b
# ╟─459aaab0-2b34-11eb-1de6-29432d0b6aab
# ╠═459aaab0-2b34-11eb-2a98-fd4649f90aaf
# ╟─459aaab0-2b34-11eb-3bab-07cc0eea0993
# ╠═459aaab0-2b34-11eb-3815-2dd9003b963f
# ╟─459aaab0-2b34-11eb-3de0-45b56da46cd2
# ╠═459aaab0-2b34-11eb-184f-4ba8eee9750f
# ╟─459aaab0-2b34-11eb-2400-61c0a9f7b4c8
# ╠═459aaab0-2b34-11eb-2a9b-291b2d751982
# ╟─459aaab0-2b34-11eb-2067-8d678d6de09d
# ╠═459aaab0-2b34-11eb-3122-97c388e9df0d
# ╟─459aaab0-2b34-11eb-0caf-df0d99b344df
# ╠═459aaab0-2b34-11eb-22d8-1933c1756bdf
# ╟─459aaab0-2b34-11eb-03bc-7573eebb297d
# ╠═459aaab0-2b34-11eb-02ae-c360e466d6ef
# ╟─459aaab0-2b34-11eb-0f82-f12b89eea821
# ╠═459aaab0-2b34-11eb-1820-33bffe2dbe2d
# ╟─459aaab0-2b34-11eb-0446-41f541a50fc1
# ╠═459aaab0-2b34-11eb-3d24-8717d39511d3
# ╟─459aaab0-2b34-11eb-117b-df1045612c6c
# ╠═459aaab0-2b34-11eb-06df-21d567eeb43a
# ╟─459aaab0-2b34-11eb-2b07-e95c394969a5
# ╠═459aaab0-2b34-11eb-130e-05015d182d63
# ╠═459cf4a0-2b34-11eb-2269-51f069f894d9
# ╟─459cf4a0-2b34-11eb-334e-e9d7620a06a7
# ╠═459cf4a0-2b34-11eb-35a8-5d315915ebdf
# ╟─459cf4a0-2b34-11eb-14d2-bd6c431ef729
# ╠═459cf4a0-2b34-11eb-1b69-4330ad906598
# ╟─459cf4a0-2b34-11eb-2a57-d73d71baaaba
# ╠═459cf4a0-2b34-11eb-207b-5bcabb1f000e
# ╟─459cf4a0-2b34-11eb-23d5-816f933452e6
# ╠═459cf4a0-2b34-11eb-1ec2-117161961a94
# ╟─459cf4a0-2b34-11eb-19fb-cd77ef942f46
# ╠═459cf4a0-2b34-11eb-070d-471c2b635f8f
# ╟─459cf4a0-2b34-11eb-155a-bf02198f1011
# ╠═459cf4a0-2b34-11eb-33a0-19d80be455b7
# ╟─459cf4a0-2b34-11eb-2c7b-7165bb504b19
# ╠═459cf4a0-2b34-11eb-128e-69fbd1011cbc
# ╟─459cf4a0-2b34-11eb-2353-d97d92a2acfb
# ╠═459cf4a0-2b34-11eb-332c-8dbe9ffeced3
# ╟─459cf4a0-2b34-11eb-2afa-953bfc0d7e3f
# ╠═459cf4a0-2b34-11eb-121f-094b1dec7ab9
# ╟─459cf4a0-2b34-11eb-0e41-f16416546fd0
# ╠═459cf4a0-2b34-11eb-2fec-ad48755a885c
# ╟─459cf4a0-2b34-11eb-047f-4f93f15b4ed2
# ╠═459cf4a0-2b34-11eb-2101-71c9653f6e19
# ╟─459cf4a0-2b34-11eb-3dde-2563344678e1
# ╠═459cf4a0-2b34-11eb-07bb-39ea6926ce8d
# ╟─459cf4a0-2b34-11eb-20ba-6f1064ce223a
# ╠═459cf4a0-2b34-11eb-3abc-1d3eb2fe917e
# ╟─459cf4a0-2b34-11eb-1286-ff49f475933b
# ╠═459cf4a0-2b34-11eb-3e6a-415c28a536d3
# ╟─459cf4a0-2b34-11eb-33e8-9b02431b616b
# ╠═459cf4a0-2b34-11eb-2089-47e0d71af82b
# ╟─459cf4a0-2b34-11eb-3365-c1c202add128
# ╠═459cf4a0-2b34-11eb-10a4-4fd2f974c5c2
# ╟─459cf4a0-2b34-11eb-1ea4-6d30922212e7
# ╠═459cf4a0-2b34-11eb-3913-eb1fa2e6d6bd
# ╟─459cf4a0-2b34-11eb-204a-4177ac599e7b
# ╠═459cf4a0-2b34-11eb-3b3a-e94705516f8c
# ╟─459cf4a0-2b34-11eb-1997-1b32a9078df8
# ╠═459cf4a0-2b34-11eb-2ef0-3b260649d561
# ╟─459d1bb0-2b34-11eb-2b18-41d2bea2952d
# ╠═459d1bb0-2b34-11eb-332c-57bacea1c85a
# ╟─459d1bb0-2b34-11eb-1470-e57ee1ca23f0
# ╠═459d1bb0-2b34-11eb-1c99-d7f0acf12263
# ╟─459d1bb0-2b34-11eb-1cdc-0bf7b3f23d99
# ╠═459d1bb0-2b34-11eb-07a3-5b2e0ccffda2
# ╟─459d1bb0-2b34-11eb-37af-19932763c4cc
# ╠═459d1bb0-2b34-11eb-347f-95c993c81b4d
# ╟─459d1bb0-2b34-11eb-31ec-6923bd409e7c
# ╠═459d1bb0-2b34-11eb-3b38-7550a8409663
# ╟─459d1bb0-2b34-11eb-279e-a3deb1882e4f
# ╠═459d1bb0-2b34-11eb-2011-f93e8291d321
# ╟─459d1bb0-2b34-11eb-2290-c5c2155b5abb
# ╠═459d1bb0-2b34-11eb-22dc-613950a9c7de