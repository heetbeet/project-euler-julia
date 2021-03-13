### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 446401f0-8435-11eb-2db5-bd2d14fcb95d
include((@__DIR__)*"/shared.jl");

# ╔═╡ 446401f0-8435-11eb-2cbb-91646a209539
html"""
<h2>Problem 451: Modular inverses</h2>
<p>
Consider the number 15.<br />
There are eight positive numbers less than 15 which are coprime to 15: 1, 2, 4, 7, 8, 11, 13, 14.<br />
The modular inverses of these numbers modulo 15 are: 1, 8, 4, 13, 2, 11, 7, 14<br />  
because<br />
1 · 1 mod 15=1<br />
2 · 8=16 mod 15=1<br />
4 · 4=16 mod 15=1<br />
7 · 13=91 mod 15=1<br />
11 · 11=121 mod 15=1<br />
14 · 14=196 mod 15=1<br /></p>
<p>
Let I(n) be the largest positive number m smaller than n-1 such that the modular inverse of m modulo n equals m itself.<br />
So I(15)=11.<br />
Also I(100)=51 and I(7)=1.<br /></p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> I(n) for 3≤n≤2×10<sup>7</sup></p>
"""

# ╔═╡ 446401f0-8435-11eb-159f-634c35cc4286
begin
    submit_answer(nothing; prob_num=451)
end

# ╔═╡ 446401f0-8435-11eb-398e-95d91b8bd50d
html"""
<h2>Problem 452: Long Products</h2>
<p>Define F(<var>m</var>,<var>n</var>) as the number of <var>n</var>-tuples of positive integers for which the product of the elements doesn't exceed <var>m</var>.</p>
<p>F(10, 10) = 571.</p>
<p>F(10<sup>6</sup>, 10<sup>6</sup>) mod 1 234 567 891 = 252903833.</p>
<p>Find F(10<sup>9</sup>, 10<sup>9</sup>) mod 1 234 567 891.</p>
"""

# ╔═╡ 446401f0-8435-11eb-3881-d538b11ab176
begin
    submit_answer(nothing; prob_num=452)
end

# ╔═╡ 446401f0-8435-11eb-1b85-0d5ab2007dce
html"""
<h2>Problem 453: Lattice Quadrilaterals</h2>
<p>A <b>simple quadrilateral</b> is a polygon that has four distinct vertices, has no straight angles and does not self-intersect.</p>

<p>Let Q(m, n) be the number of simple quadrilaterals whose vertices are lattice points with coordinates (x,y) satisfying 0 ≤ x ≤ m and 0 ≤ y ≤ n.</p>

<p>For example, Q(2, 2) = 94 as can be seen below:</p>
<p align="center"><img src="project/images/p453_quad.png" class="dark_img" alt="p453_quad.png" /></p>
<p>It can also be verified that Q(3, 7) = 39590, Q(12, 3) = 309000 and Q(123, 45) = 70542215894646.</p>

<p>Find Q(12345, 6789) mod 135707531.</p>
"""

# ╔═╡ 446401f0-8435-11eb-2ae5-9be6785fb00a
begin
    submit_answer(nothing; prob_num=453)
end

# ╔═╡ 446401f0-8435-11eb-168b-dd70aab0e092
html"""
<h2>Problem 454: Diophantine reciprocals III</h2>
<p>In the following equation <var>x</var>, <var>y</var>, and <var>n</var> are positive integers.</p>
$$\dfrac{1}{x} + \dfrac{1}{y} = \dfrac{1}{n}$$
<p>For a limit <var>L</var> we define F(<var>L</var>) as the number of solutions which satisfy <var>x</var> &lt; <var>y</var> ≤ <var>L</var>.</p>

<p>We can verify that F(15) = 4 and F(1000) = 1069.<br />
Find F(10<sup>12</sup>).</p>
"""

# ╔═╡ 446401f0-8435-11eb-001e-7321bad060fd
begin
    submit_answer(nothing; prob_num=454)
end

# ╔═╡ 446401f0-8435-11eb-1547-477d4d4a8d59
html"""
<h2>Problem 455: Powers With Trailing Digits</h2>
<p>Let f(n) be the largest positive integer x less than 10<sup>9</sup> such that the last 9 digits of n<sup>x</sup> form the number <i>x</i> (including leading zeros), or zero if no such integer exists.</p>

<p>For example:</p>

<ul><li>f(4) = 411728896 (4<sup>411728896</sup> = ...490<u>411728896</u>) </li>
<li>f(10) = 0</li>
<li>f(157) = 743757 (157<sup>743757</sup> = ...567<u>000743757</u>)</li>
<li><span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(n), 2 ≤ n ≤ 10<sup>3</sup> = 442530011399</li>
</ul><p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(n), 2 ≤ n ≤ 10<sup>6</sup>.</p>
"""

# ╔═╡ 446401f0-8435-11eb-060e-01af4656a357
begin
    submit_answer(nothing; prob_num=455)
end

# ╔═╡ 446401f0-8435-11eb-1313-09408ad05ef2
html"""
<h2>Problem 456: Triangles containing the origin II</h2>
<p>Define:<br /><var>x</var><sub><var>n</var></sub> = (1248<sup><var>n</var></sup> mod 32323) - 16161<br /><var>y</var><sub><var>n</var></sub> = (8421<sup><var>n</var></sup> mod 30103) - 15051<br />
P<sub><var>n</var></sub> = {(<var>x</var><sub>1</sub>, <var>y</var><sub>1</sub>), (<var>x</var><sub>2</sub>, <var>y</var><sub>2</sub>), ..., (<var>x</var><sub><var>n</var></sub>, <var>y</var><sub><var>n</var></sub>)}
</p>

<p>For example, P<sub>8</sub> = {(-14913, -6630), (-10161, 5625), (5226, 11896), (8340, -10778), (15852, -5203), (-15165, 11295), (-1427, -14495), (12407, 1060)}.</p>

<p>Let C(<var>n</var>) be the number of triangles whose vertices are in P<sub><var>n</var></sub> which contain the origin in the interior.</p>

<p>
Examples:<br />
C(8) = 20<br />
C(600) = 8950634<br />
C(40 000) = 2666610948988
</p>

<p>Find C(2 000 000).
</p>
"""

# ╔═╡ 446401f0-8435-11eb-2077-0348e34d6589
begin
    submit_answer(nothing; prob_num=456)
end

# ╔═╡ 446401f0-8435-11eb-3fc2-9913b6c534a6
html"""
<h2>Problem 457: A polynomial modulo the square of a prime</h2>
<p>
Let <var>f</var>(<var>n</var>) = <var>n</var><sup>2</sup> - 3<var>n</var> - 1.<br />
Let <var>p</var> be a prime.<br />
Let R(<var>p</var>) be the smallest positive integer <var>n</var> such that <var>f</var>(<var>n</var>) mod p<sup>2</sup> = 0 if such an integer <var>n</var> exists, otherwise R(<var>p</var>) = 0.
</p>
<p>
Let SR(<var>L</var>) be <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> R(<var>p</var>) for all primes not exceeding <var>L</var>.
</p>
<p>
Find SR(10<sup>7</sup>).
</p>
"""

# ╔═╡ 446401f0-8435-11eb-2ee8-13c0df9c62e4
begin
    submit_answer(nothing; prob_num=457)
end

# ╔═╡ 446401f0-8435-11eb-1e03-63355da55379
html"""
<h2>Problem 458: Permutations of Project</h2>
<p>
Consider the alphabet A made out of the letters of the word "project": A={c,e,j,o,p,r,t}.<br />
Let T(n) be the number of strings of length n consisting of letters from A that do not have a substring that is one of the 5040 permutations of "project".
</p>
T(7)=7<sup>7</sup>-7!=818503.

<p>
Find T(10<sup>12</sup>). Give the last 9 digits of your answer.
</p>
"""

# ╔═╡ 446401f0-8435-11eb-0129-4707e5f2aa15
begin
    submit_answer(nothing; prob_num=458)
end

# ╔═╡ 446401f0-8435-11eb-2acf-31ee73f188a3
html"""
<h2>Problem 459: Flipping game</h2>
<p>The flipping game is a two player game played on a N by N square board.<br />
Each square contains a disk with one side white and one side black.<br />
The game starts with all disks showing their white side.</p>

<p>A turn consists of flipping all disks in a rectangle with the following properties:
</p><p></p><ul><li>the upper right corner of the rectangle contains a white disk</li>
<li>the rectangle width is a perfect square (1, 4, 9, 16, ...)</li>
<li>the rectangle height is a <dfn title="The triangular numbers are defined as ½ n(n + 1) for positive integer n.">triangular number</dfn> (1, 3, 6, 10, ...)</li>
</ul>
<p class="center"><img src="project/images/p459-flipping-game-0.png" alt="p459-flipping-game-0.png" /></p>

<p>Players alternate turns. A player wins by turning the grid all black.</p>

<p>Let W(N) be the number of <dfn title="The first move of a strategy that ensures a win no matter what the opponent plays.">winning moves</dfn> for the first player on a N by N board with all disks white, assuming perfect play.<br />
W(1) = 1, W(2) = 0, W(5) = 8 and W(10<sup>2</sup>) = 31395.</p>

<p>For N=5, the first player's eight winning first moves are:</p>

<p class="center"><img src="project/images/p459-flipping-game-1.png" class="dark_img" alt="p459-flipping-game-1.png" /></p>

<p>Find W(10<sup>6</sup>).</p>
"""

# ╔═╡ 446401f0-8435-11eb-3a17-a587147b10fc
begin
    submit_answer(nothing; prob_num=459)
end

# ╔═╡ 446401f0-8435-11eb-089b-c9129bbb274a
html"""
<h2>Problem 460: An ant on the move</h2>
<p>
On the Euclidean plane, an ant travels from point A(0, 1) to point B(<var>d</var>, 1) for an integer <var>d</var>.
</p>
<p>
In each step, the ant at point (<var>x</var><sub>0</sub>, <var>y</var><sub>0</sub>) chooses one of the lattice points (<var>x</var><sub>1</sub>, <var>y</var><sub>1</sub>) which satisfy <var>x</var><sub>1</sub> ≥ 0 and <var>y</var><sub>1</sub> ≥ 1 and goes straight to (<var>x</var><sub>1</sub>, <var>y</var><sub>1</sub>) at a constant velocity <var>v</var>. The value of <var>v</var> depends on <var>y</var><sub>0</sub> and <var>y</var><sub>1</sub> as follows:
</p><ul><li> If <var>y</var><sub>0</sub> = <var>y</var><sub>1</sub>, the value of <var>v</var> equals <var>y</var><sub>0</sub>.</li>
<li> If <var>y</var><sub>0</sub> ≠ <var>y</var><sub>1</sub>, the value of <var>v</var> equals (<var>y</var><sub>1</sub> - <var>y</var><sub>0</sub>) / (ln(<var>y</var><sub>1</sub>) - ln(<var>y</var><sub>0</sub>)).</li>
</ul><p>
The left image is one of the possible paths for <var>d</var> = 4. First the ant goes from A(0, 1) to P<sub>1</sub>(1, 3) at velocity (3 - 1) / (ln(3) - ln(1)) ≈ 1.8205. Then the required time is sqrt(5) / 1.8205 ≈ 1.2283.<br />
From P<sub>1</sub>(1, 3) to P<sub>2</sub>(3, 3) the ant travels at velocity 3 so the required time is 2 / 3 ≈ 0.6667. From P<sub>2</sub>(3, 3) to B(4, 1) the ant travels at velocity (1 - 3) / (ln(1) - ln(3)) ≈ 1.8205 so the required time is sqrt(5) / 1.8205 ≈ 1.2283.<br />
Thus the total required time is 1.2283 + 0.6667 + 1.2283 = 3.1233.
</p>
<p>
The right image is another path. The total required time is calculated as 0.98026 + 1 + 0.98026 = 2.96052. It can be shown that this is the quickest path for <var>d</var> = 4.
</p>
<p align="center"><img src="project/images/p460_ant.jpg" alt="p460_ant.jpg" /></p>
<p>
Let F(<var>d</var>) be the total required time if the ant chooses the quickest path. For example, F(4) ≈ 2.960516287.<br />
We can verify that F(10) ≈ 4.668187834 and F(100) ≈ 9.217221972.
</p>
<p>
Find F(10000). Give your answer rounded to nine decimal places.
</p>
"""

# ╔═╡ 446401f0-8435-11eb-3e3c-f909e7315b6a
begin
    submit_answer(nothing; prob_num=460)
end

# ╔═╡ 446401f0-8435-11eb-04b5-d5191cde8376
html"""
<h2>Problem 461: Almost Pi</h2>
<p>Let <var>f</var><sub><var>n</var></sub>(<var>k</var>) = <var>e</var><sup><var>k</var>/<var>n</var></sup> - 1, for all non-negative integers <var>k</var>.</p>
<p>Remarkably, <var>f</var><sub>200</sub>(6) + <var>f</var><sub>200</sub>(75) + <var>f</var><sub>200</sub>(89) + <var>f</var><sub>200</sub>(226) = <u>3.1415926</u>44529… ≈ <var>π</var>.</p>
<p>In fact, it is the best approximation of <var>π</var> of the form <var>f</var><sub><var>n</var></sub>(<var>a</var>) + <var>f</var><sub><var>n</var></sub>(<var>b</var>) + <var>f</var><sub><var>n</var></sub>(<var>c</var>) + <var>f</var><sub><var>n</var></sub>(<var>d</var>) for <var>n</var> = 200.</p>
<p>Let <var>g</var>(<var>n</var>) = <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> + <var>c</var><sup>2</sup> + <var>d</var><sup> 2</sup> for <var>a</var>, <var>b</var>, <var>c</var>, <var>d</var> that minimize the error: | <var>f</var><sub><var>n</var></sub>(<var>a</var>) + <var>f</var><sub><var>n</var></sub>(<var>b</var>) + <var>f</var><sub><var>n</var></sub>(<var>c</var>) + <var>f</var><sub><var>n</var></sub>(<var>d</var>) - <var>π</var>|<br />
(where |<var>x</var>| denotes the absolute value of <var>x</var>).</p>
<p>You are given <var>g</var>(200) = 6<sup>2</sup> + 75<sup>2</sup> + 89<sup>2</sup> + 226<sup>2</sup> = 64658.</p>
<p>Find <var>g</var>(10000).<sup></sup></p>
"""

# ╔═╡ 446401f0-8435-11eb-3509-7d70a670959b
begin
    submit_answer(nothing; prob_num=461)
end

# ╔═╡ 446401f0-8435-11eb-1846-4724e997c4b8
html"""
<h2>Problem 462: Permutation of 3-smooth numbers</h2>
<p>
A <b>3-smooth number</b> is an integer which has no prime factor larger than 3. For an integer <var>N</var>, we define S(<var>N</var>) as the set of 3-smooth numbers less than or equal to <var>N</var> . For example, S(20) = { 1, 2, 3, 4, 6, 8, 9, 12, 16, 18 }.
</p>
<p>
We define F(<var>N</var>) as the number of permutations of S(<var>N</var>) in which each element comes after all of its proper divisors.
</p>
<p>
This is one of the possible permutations for <var>N</var> = 20.<br />
- 1, 2, 4, 3, 9, 8, 16, 6, 18, 12.<br />
This is not a valid permutation because 12 comes before its divisor 6.<br />
- 1, 2, 4, 3, 9, 8, <b>12</b>, 16, <b>6</b>, 18.
</p>
<p>
We can verify that F(6) = 5, F(8) = 9, F(20) = 450 and F(1000) ≈ 8.8521816557e21.<br />
Find F(10<sup>18</sup>). Give as your answer its scientific notation rounded to ten digits after the decimal point.<br />
When giving your answer, use a lowercase e to separate mantissa and exponent. E.g. if the answer is 112,233,445,566,778,899 then the answer format would be 1.1223344557e17.
</p>
"""

# ╔═╡ 446401f0-8435-11eb-034f-47a37fae85c3
begin
    submit_answer(nothing; prob_num=462)
end

# ╔═╡ 446401f0-8435-11eb-2fac-555326ac5040
html"""
<h2>Problem 463: A weird recurrence relation</h2>
<p>
The function $f$ is defined for all positive integers as follows:
</p><ul><li>$f(1)=1$
</li><li>$f(3)=3$
</li><li>$f(2n)=f(n)$
</li><li>$f(4n + 1)=2f(2n + 1) - f(n)$
</li><li>$f(4n + 3)=3f(2n + 1) - 2f(n)$
</li>
</ul><p>The function $S(n)$ is defined as $\sum_{i=1}^{n}f(i)$.</p>
<p>$S(8)=22$ and $S(100)=3604$.</p>
<p>Find $S(3^{37})$. Give the last 9 digits of your answer.</p>
"""

# ╔═╡ 446401f0-8435-11eb-3396-630e0a1c21d3
begin
    submit_answer(nothing; prob_num=463)
end

# ╔═╡ 446401f0-8435-11eb-0d12-d12e0bfad792
html"""
<h2>Problem 464: Möbius function and intervals</h2>
<p>
The <b>Möbius function</b>, denoted <var>μ</var>(<var>n</var>), is defined as:
</p><ul><li><var>μ</var>(<var>n</var>) = (-1)<sup><var>ω</var>(<var>n</var>)</sup> if <var>n</var> is squarefree (where <var>ω</var>(<var>n</var>) is the number of distinct prime factors of <var>n</var>)</li>
<li><var>μ</var>(<var>n</var>) = 0 if <var>n</var> is not squarefree.</li>
</ul><p>
Let P(<var>a</var>,<var>b</var>) be the number of integers <var>n</var> in the interval [<var>a</var>,<var>b</var>] such that <var>μ</var>(<var>n</var>) = 1.<br />
Let N(<var>a</var>,<var>b</var>) be the number of integers <var>n</var> in the interval [<var>a</var>,<var>b</var>] such that <var>μ</var>(<var>n</var>) = -1.<br />
For example, P(2,10) = 2 and N(2,10) = 4.
</p>

<p>
Let C(<var>n</var>) be the number of integer pairs (<var>a</var>,<var>b</var>) such that:
</p><ul><li> 1 ≤ <var>a</var> ≤ <var>b</var> ≤ <var>n</var>,</li>
<li> 99·N(<var>a</var>,<var>b</var>) ≤ 100·P(<var>a</var>,<var>b</var>), and</li>
<li> 99·P(<var>a</var>,<var>b</var>) ≤ 100·N(<var>a</var>,<var>b</var>).</li>
</ul><p>
For example, C(10) = 13, C(500) = 16676 and C(10 000) = 20155319.
</p>

<p>
Find C(20 000 000).
</p>
"""

# ╔═╡ 446401f0-8435-11eb-0242-4dd8062979f7
begin
    submit_answer(nothing; prob_num=464)
end

# ╔═╡ 446401f0-8435-11eb-085d-79172f919722
html"""
<h2>Problem 465: Polar polygons</h2>
<p>The <i>kernel</i> of a polygon is defined by the set of points from which the entire polygon's boundary is visible. We define a <i>polar polygon</i> as a polygon for which the origin is <u>strictly</u> contained inside its kernel.</p>

<p>For this problem, a polygon can have collinear consecutive vertices. However, a polygon still cannot have self-intersection and cannot have zero area.</p>

<p>For example, only the first of the following is a polar polygon (the kernels of the second, third, and fourth do not strictly contain the origin, and the fifth does not have a kernel at all):
</p><p align="center"><img src="project/images/p465_polygons.png" alt="p465_polygons.png" /></p>


<p>Notice that the first polygon has three consecutive collinear vertices.</p>

<p>Let P(<var>n</var>) be the number of polar polygons such that the vertices (<var>x</var>, <var>y</var>) have integer coordinates whose absolute values are not greater than <var>n</var>.</p>

<p>Note that polygons should be counted as different if they have different set of edges, even if they enclose the same area. For example, the polygon with vertices [(0,0),(0,3),(1,1),(3,0)] is distinct from the polygon with vertices [(0,0),(0,3),(1,1),(3,0),(1,0)].</p>

<p>For example, P(1) = 131, P(2) = 1648531, P(3) = 1099461296175 and P(343) mod 1 000 000 007 = 937293740.</p>

<p>Find P(7<sup>13</sup>) mod 1 000 000 007.</p>
"""

# ╔═╡ 446401f0-8435-11eb-2a3d-516c9782a8ac
begin
    submit_answer(nothing; prob_num=465)
end

# ╔═╡ 446401f0-8435-11eb-3d10-b3fe1e74b0c3
html"""
<h2>Problem 466: Distinct terms in a multiplication table</h2>
<p>Let P(<var>m</var>,<var>n</var>) be the number of <i>distinct</i> terms in an <var>m</var>×<var>n</var> multiplication table.</p>

<p>For example, a 3×4 multiplication table looks like this:</p>

<p></p><center><table class="p466"><tr><th>×</th> <th>1</th><th>2</th><th>3</th><th>4</th></tr><tr><th>1</th> <td>1</td><td>2</td><td>3</td><td>4</td></tr><tr><th>2</th> <td>2</td><td>4</td><td>6</td><td>8</td></tr><tr><th>3</th> <td>3</td><td>6</td><td>9</td><td>12</td></tr></table></center>



<p>There are 8 distinct terms {1,2,3,4,6,8,9,12}, therefore P(3,4) = 8.</p>

<p>You are given that:<br />
P(64,64) = 1263,<br />
P(12,345) = 1998, and<br />
P(32,10<sup>15</sup>) = 13826382602124302.</p>

<p>Find P(64,10<sup>16</sup>).</p>
"""

# ╔═╡ 446401f0-8435-11eb-2397-abffbaac1088
begin
    submit_answer(nothing; prob_num=466)
end

# ╔═╡ 446401f0-8435-11eb-215b-838331b10c2e
html"""
<h2>Problem 467: Superinteger</h2>
<p>An integer <var>s</var> is called a <em>superinteger</em> of another integer <var>n</var> if the digits of <var>n</var> form a <dfn title="A subsequence is a sequence that can be derived from another sequence by deleting some elements without changing the order of the remaining elements.">subsequence</dfn> of the digits of <var>s</var>.<br />
For example, 2718281828 is a superinteger of 18828, while 314159 is not a superinteger of 151.
</p>

<p>Let <var>p</var>(<var>n</var>) be the <var>n</var>th prime number, and let <var>c</var>(<var>n</var>) be the <var>n</var>th composite number. For example, <var>p</var>(1) = 2, <var>p</var>(10) = 29, <var>c</var>(1) = 4 and <var>c</var>(10) = 18.<br />
{<var>p</var>(<var>i</var>) : i ≥ 1} = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, ...}<br />
{<var>c</var>(<var>i</var>) : i ≥ 1} = {4, 6, 8, 9, 10, 12, 14, 15, 16, 18, ...}</p>

<p>Let P<sup>D</sup> the sequence of the <strong>digital roots</strong> of {<var>p</var>(<var>i</var>)} (C<sup>D</sup> is defined similarly for {<var>c</var>(<var>i</var>)}):<br />
P<sup>D</sup> = {2, 3, 5, 7, 2, 4, 8, 1, 5, 2, ...}<br />
C<sup>D</sup> = {4, 6, 8, 9, 1, 3, 5, 6, 7, 9, ...}</p>

<p>Let P<sub><var>n</var></sub> be the integer formed by concatenating the first <var>n</var> elements of P<sup>D</sup> (C<sub><var>n</var></sub> is defined similarly for C<sup>D</sup>).<br />
P<sub>10</sub> = 2357248152<br />
C<sub>10</sub> = 4689135679</p>

<p>Let <var>f</var>(<var>n</var>) be the smallest positive integer that is a common superinteger of P<sub><var>n</var></sub> and C<sub><var>n</var></sub>. <br />For example, <var>f</var>(10) = 2357246891352679, and <var>f</var>(100) mod 1 000 000 007 = 771661825.</p>

<p>Find <var>f</var>(10 000) mod 1 000 000 007.</p>
"""

# ╔═╡ 446401f0-8435-11eb-1b3b-bd6f3e31ed61
begin
    submit_answer(nothing; prob_num=467)
end

# ╔═╡ 446401f0-8435-11eb-06c2-0d850c8305b4
html"""
<h2>Problem 468: Smooth divisors of binomial coefficients</h2>
<p>An integer is called <strong><var>B</var>-smooth</strong> if none of its prime factors is greater than $B$.</p>

<p>Let $S_B(n)$ be the largest $B$-smooth divisor of $n$.<br />
Examples:<br />
$S_1(10)=1$<br />
$S_4(2100) = 12$<br />
$S_{17}(2496144) = 5712$</p>
<p>Define $\displaystyle F(n)=\sum_{B=1}^n \sum_{r=0}^n S_B(\binom n r)$. Here, $\displaystyle \binom n r$ denotes the binomial coefficient.<br />
Examples:<br />
$F(11) = 3132$<br />
$F(1111) \mod 1\,000\,000\,993 = 706036312$<br />
$F(111\,111) \mod 1\,000\,000\,993 = 22156169$</p>

<p>Find $F(11\,111\,111)  \mod 1\,000\,000\,993$.</p>
"""

# ╔═╡ 446401f0-8435-11eb-3a52-f329341c679e
begin
    submit_answer(nothing; prob_num=468)
end

# ╔═╡ 446401f0-8435-11eb-2769-c94e8223926b
html"""
<h2>Problem 469: Empty chairs</h2>
<p>
In a room <var>N</var> chairs are placed around a round table.<br />
Knights enter the room one by one and choose at random an available empty chair.<br />
To have enough elbow room the knights always leave at least one empty chair between each other.
</p>
<p>
When there aren't any suitable chairs left, the fraction <var>C</var> of empty chairs is determined.<br />
We also define E(<var>N</var>) as the expected value of <var>C</var>.<br />
We can verify that E(4) = 1/2 and E(6) = 5/9.
</p>
<p>
Find E(10<sup>18</sup>). Give your answer rounded to fourteen decimal places in the form 0.abcdefghijklmn.
</p>
"""

# ╔═╡ 446401f0-8435-11eb-06be-b33584701a31
begin
    submit_answer(nothing; prob_num=469)
end

# ╔═╡ 446401f0-8435-11eb-0fe1-8535c63f9bcf
html"""
<h2>Problem 470: Super Ramvok</h2>
<p>Consider a single game of Ramvok:</p>

<p>Let <var>t</var> represent the maximum number of turns the game lasts. If <var>t</var> = 0, then the game ends immediately. Otherwise, on each turn <var>i</var>, the player rolls a die. After rolling, if <var>i</var> &lt; <var>t</var> the player can either stop the game and receive a prize equal to the value of the current roll, or discard the roll and try again next turn. If <var>i</var> = <var>t</var>, then the roll cannot be discarded and the prize must be accepted. Before the game begins, <var>t</var> is chosen by the player, who must then pay an up-front cost <var>ct</var> for some constant <var>c</var>. For <var>c</var> = 0, <var>t</var> can be chosen to be infinite (with an up-front cost of 0). Let R(<var>d</var>, <var>c</var>) be the expected profit (i.e. net gain) that the player receives from a single game of optimally-played Ramvok, given a fair <var>d</var>-sided die and cost constant <var>c</var>. For example, R(4, 0.2) = 2.65. Assume that the player has sufficient funds for paying any/all up-front costs.</p>

<p>Now consider a game of Super Ramvok:</p>

<p>In Super Ramvok, the game of Ramvok is played repeatedly, but with a slight modification. After each game, the die is altered. The alteration process is as follows: The die is rolled once, and if the resulting face has its pips visible, then that face is altered to be blank instead. If the face is already blank, then it is changed back to its original value. After the alteration is made, another game of Ramvok can begin (and during such a game, at each turn, the die is rolled until a face with a value on it appears). The player knows which faces are blank and which are not at all times. The game of Super Ramvok ends once all faces of the die are blank.</p>

<p>Let S(<var>d</var>, <var>c</var>) be the expected profit that the player receives from an optimally-played game of Super Ramvok, given a fair <var>d</var>-sided die to start (with all sides visible), and cost constant <var>c</var>. For example, S(6, 1) = 208.3.</p>

<p>Let F(<var>n</var>) = <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <sub>4≤<var>d</var>≤<var>n</var></sub> <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <sub>0≤<var>c</var>≤<var>n</var></sub> S(<var>d</var>, <var>c</var>).</p>

<p>Calculate F(20), rounded to the nearest integer.</p>
"""

# ╔═╡ 446401f0-8435-11eb-2414-339363bca319
begin
    submit_answer(nothing; prob_num=470)
end

# ╔═╡ 446401f0-8435-11eb-25fd-dfdd570f0251
html"""
<h2>Problem 471: Triangle inscribed in ellipse</h2>
<p>The triangle ΔABC is inscribed in an ellipse with equation $\frac {x^2} {a^2} + \frac {y^2} {b^2} = 1$, 0 &lt; 2<var>b</var> &lt; <var>a</var>, <var>a</var> and <var>b</var> integers.</p>
<p>Let <var>r</var>(<var>a</var>,<var>b</var>) be the radius of the incircle of ΔABC when the incircle has center (2<var>b</var>, 0) and A has coordinates $\left( \frac a 2, \frac {\sqrt 3} 2 b\right)$.</p>
<p>For example, <var>r</var>(3,1) = ½, <var>r</var>(6,2) = 1, <var>r</var>(12,3) = 2.</p>
<p align="center"><img src="project/images/p471-triangle-inscribed-in-ellipse-1.png" alt="p471-triangle-inscribed-in-ellipse-1.png" /></p>
<p align="center"><img src="project/images/p471-triangle-inscribed-in-ellipse-2.png" alt="p471-triangle-inscribed-in-ellipse-2.png" /></p>
<p>Let $G(n) = \sum_{a=3}^n \sum_{b=1}^{\lfloor \frac {a - 1} 2 \rfloor} r(a, b)$</p>
<p>You are given <var>G</var>(10) = 20.59722222, <var>G</var>(100) = 19223.60980 (rounded to 10 significant digits).</p>
<p>Find <var>G</var>(10<sup>11</sup>).</p>
<p>Give your answer in scientific notation rounded to 10 significant digits. Use a lowercase e to separate mantissa and exponent.</p>
<p>For <var>G</var>(10) the answer would have been 2.059722222e1.</p>
"""

# ╔═╡ 446401f0-8435-11eb-3c0d-a1106522503b
begin
    submit_answer(nothing; prob_num=471)
end

# ╔═╡ 446401f0-8435-11eb-0dcb-55b7204f1c82
html"""
<h2>Problem 472: Comfortable Distance II</h2>
<p>There are <var>N</var> seats in a row. <var>N</var> people come one after another to fill the seats according to the following rules:
</p><ol><li>No person sits beside another.</li>
<li>The first person chooses any seat.</li>
<li>Each subsequent person chooses the seat furthest from anyone else already seated, as long as it does not violate rule 1. If there is more than one choice satisfying this condition, then the person chooses the leftmost choice.</li>
</ol><p>Note that due to rule 1, some seats will surely be left unoccupied, and the maximum number of people that can be seated is less than <var>N</var> (for <var>N</var> &gt; 1).</p>

<p>Here are the possible seating arrangements for <var>N</var> = 15:
</p><p align="center"><img src="project/images/p472_n15.png" class="dark_img" alt="p472_n15.png" /></p>


<p>We see that if the first person chooses correctly, the 15 seats can seat up to 7 people.<br />
We can also see that the first person has 9 choices to maximize the number of people that may be seated.</p>

<p>Let f(N) be the number of choices the first person has to maximize the number of occupants for <var>N</var> seats in a row. Thus, f(1) = 1, f(15) = 9, f(20) = 6, and f(500) = 16.</p>

<p>Also, <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(N) = 83 for 1 ≤ <var>N</var> ≤ 20 and  <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(N) = 13343 for 1 ≤ <var>N</var> ≤ 500.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(N) for 1 ≤ <var>N</var> ≤ 10<sup>12</sup>. Give the last 8 digits of your answer.</p>
"""

# ╔═╡ 446401f0-8435-11eb-2826-879eee30abd2
begin
    submit_answer(nothing; prob_num=472)
end

# ╔═╡ 446401f0-8435-11eb-177d-a9c341d1cdcb
html"""
<h2>Problem 473: Phigital number base</h2>
<p>
Let $\varphi$ be the golden ratio: $\varphi=\frac{1+\sqrt{5}}{2}.$<br />
Remarkably it is possible to write every positive integer as a sum of powers of $\varphi$ even if we require that every power of $\varphi$ is used at most once in this sum.<br />
Even then this representation is not unique.<br />
We can make it unique by requiring that no powers with consecutive exponents are used and that the representation is finite.<br />
E.g: 
$2=\varphi+\varphi^{-2}$ and $3=\varphi^{2}+\varphi^{-2}$
</p>
<p>
To represent this sum of powers of $\varphi$ we use a string of 0's and 1's with a point to indicate where the negative exponents start.<br />
We call this the representation in the <b>phigital numberbase</b>.<br />
So $1=1_{\varphi}$, $2=10.01_{\varphi}$, $3=100.01_{\varphi}$ and $14=100100.001001_{\varphi}$. <br />
The strings representing 1, 2 and 14 in the phigital number base are palindromic, while the string representing 3 is not.<br /> (the phigital point is not the middle character).
</p>
<p>
The sum of the positive integers not exceeding 1000 whose phigital representation is palindromic is 4345.
</p>
<p>
Find the sum of the positive integers not exceeding $10^{10}$ whose phigital representation is palindromic.</p>
"""

# ╔═╡ 446401f0-8435-11eb-2d18-c9fb3dd6525d
begin
    submit_answer(nothing; prob_num=473)
end

# ╔═╡ 446401f0-8435-11eb-041d-594558845217
html"""
<h2>Problem 474: Last digits of divisors</h2>
<p>
For a positive integer <var>n</var> and digits <var>d</var>, we define F(<var>n</var>, <var>d</var>) as the number of the divisors of <var>n</var> whose last digits equal <var>d</var>.<br />
For example, F(84, 4) = 3. Among the divisors of 84 (1, 2, 3, 4, 6, 7, 12, 14, 21, 28, 42, 84), three of them (4, 14, 84) have the last digit 4.
</p>
<p>
We can also verify that F(12!, 12) = 11 and F(50!, 123) = 17888.
</p>
<p>
Find F(10<sup>6</sup>!, 65432) modulo (10<sup>16</sup> + 61).
</p>
"""

# ╔═╡ 446401f0-8435-11eb-04a4-27fc325fa58f
begin
    submit_answer(nothing; prob_num=474)
end

# ╔═╡ 446401f0-8435-11eb-1635-a178ac5b46b4
html"""
<h2>Problem 475: Music festival</h2>
<p>12<var>n</var> musicians participate at a music festival. On the first day, they form 3<var>n</var> quartets and practice all day.</p>
<p>It is a disaster. At the end of the day, all musicians decide they will never again agree to play with any member of their quartet.</p>
<p>On the second day, they form 4<var>n</var> trios, with every musician avoiding any previous quartet partners.</p>

<p>Let <var>f</var>(12<var>n</var>) be the number of ways to organize the trios amongst the 12<var>n</var> musicians.</p>
<p>You are given <var>f</var>(12) = 576 and <var>f</var>(24) mod 1 000 000 007 = 509089824.</p>

<p>Find <var>f</var>(600) mod 1 000 000 007.</p>
"""

# ╔═╡ 446401f0-8435-11eb-1894-df9531359233
begin
    submit_answer(nothing; prob_num=475)
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
# ╠═4432dfd0-8435-11eb-174a-fb41acf1c339
# ╟─4432dfd0-8435-11eb-1cc9-f1786a690345
# ╠═4432dfd0-8435-11eb-355d-21379b3c0305
# ╟─4432dfd0-8435-11eb-317f-a726ab694657
# ╠═4432dfd0-8435-11eb-1f4c-2942893d51a8
# ╟─4432dfd0-8435-11eb-2b17-6f30e02f4e6a
# ╠═4432dfd0-8435-11eb-11f1-1bcf876ca869
# ╟─4432dfd0-8435-11eb-0755-73b30921a627
# ╠═4432dfd0-8435-11eb-3b19-43ab4aab665f
# ╟─4432dfd0-8435-11eb-285e-4bd9b01d8bfc
# ╠═4432dfd0-8435-11eb-000d-a5c2cac01502
# ╟─4432dfd0-8435-11eb-1e8e-5bf788addec2
# ╠═4432dfd0-8435-11eb-3122-59fc08a730be
# ╟─4432dfd0-8435-11eb-0385-c955e1e4956d
# ╠═4432dfd0-8435-11eb-30ff-8b686147bff6
# ╟─4432dfd0-8435-11eb-0cd6-dd5a106cf885
# ╠═4432dfd0-8435-11eb-1006-bfdf33c4f2bf
# ╟─4432dfd0-8435-11eb-18d2-0333f01771dc
# ╠═4432dfd0-8435-11eb-0e48-296811d287ad
# ╟─4432dfd0-8435-11eb-3fe6-d7ad00555a67
# ╠═4432dfd0-8435-11eb-0ddb-81ec653b6115
# ╟─4432dfd0-8435-11eb-24db-dd3b9d829f3e
# ╠═4432dfd0-8435-11eb-209e-3d51cea6e87c
# ╟─4432dfd0-8435-11eb-0ec1-17f20b6d2d14
# ╠═4432dfd0-8435-11eb-1419-f55a7cefa6e2
# ╟─4432dfd0-8435-11eb-0a0e-193c54f97e34
# ╠═4432dfd0-8435-11eb-32e7-877e5081f99a
# ╟─4432dfd0-8435-11eb-2ef5-b7d925b15460
# ╠═4432dfd0-8435-11eb-1c9a-e33e10639cde
# ╟─4432dfd0-8435-11eb-3f9d-cb84b889b434
# ╠═4432dfd0-8435-11eb-0179-416d004bdda1
# ╟─4432dfd0-8435-11eb-1c83-05e60dab6884
# ╠═4432dfd0-8435-11eb-1846-f74abbae12ed
# ╟─4432dfd0-8435-11eb-0920-c597351e877d
# ╠═4432dfd0-8435-11eb-3ecf-9d9d3eb780af
# ╟─4432dfd0-8435-11eb-1dd0-d55aeacb17eb
# ╠═4432dfd0-8435-11eb-0c1d-add90586890b
# ╟─4432dfd0-8435-11eb-30f6-91a463a9b831
# ╠═4432dfd0-8435-11eb-2437-f75bd8d9fbce
# ╟─4432dfd0-8435-11eb-0cb0-1dd21935face
# ╠═4432dfd0-8435-11eb-3c05-99939411ac81
# ╟─4432dfd0-8435-11eb-35f3-33a2ea8c9d28
# ╠═4432dfd0-8435-11eb-356c-49c751621b33
# ╟─4432dfd0-8435-11eb-06a5-53a85dca581e
# ╠═4432dfd0-8435-11eb-28e2-cf9c19d72715
# ╟─4432dfd0-8435-11eb-31d6-5fdafc928b94
# ╠═4432dfd0-8435-11eb-2fba-47b7316e87d6
# ╟─4432dfd0-8435-11eb-3d78-491b57c6084f
# ╠═4432dfd0-8435-11eb-080c-377bd1bd99de
# ╟─4432dfd0-8435-11eb-38b1-59d489587aea
# ╠═4432dfd0-8435-11eb-1b8e-214fccb305bd
# ╠═4433ca30-8435-11eb-27a4-19ca1a0057cf
# ╟─4433ca30-8435-11eb-19ce-af3d48013010
# ╠═4433ca30-8435-11eb-0167-234e2609d255
# ╟─4433ca30-8435-11eb-14f7-4d6ee9543f1f
# ╠═4433ca30-8435-11eb-1acd-cf0ae0ea3f76
# ╟─4433ca30-8435-11eb-2be7-8b73b8b604a4
# ╠═4433ca30-8435-11eb-03dd-ff1273a0b148
# ╟─4433ca30-8435-11eb-0212-6f55d1653482
# ╠═4433ca30-8435-11eb-0d67-dff382e28c7e
# ╟─4433ca30-8435-11eb-1aed-4527124599fa
# ╠═4433ca30-8435-11eb-3eff-ab79bfb76fa8
# ╟─4433ca30-8435-11eb-16ce-fbd8cd0e3b31
# ╠═4433ca30-8435-11eb-21de-955796745322
# ╟─4433ca30-8435-11eb-02a8-69bdf5f9d988
# ╠═4433ca30-8435-11eb-3e8e-f984862168dc
# ╟─4433ca30-8435-11eb-2ac6-11ad994c7fef
# ╠═4433ca30-8435-11eb-2cd2-65bf5b3ec8bb
# ╟─4433ca30-8435-11eb-0e54-ffda476991d4
# ╠═4433ca30-8435-11eb-1bc2-f1a8c4421b41
# ╟─4433ca30-8435-11eb-3ecd-676d01777581
# ╠═4433ca30-8435-11eb-03c2-b72ca5a19329
# ╟─4433ca30-8435-11eb-023f-b9e531db4d2e
# ╠═4433ca30-8435-11eb-1abb-bb138b7cbf10
# ╟─4433ca30-8435-11eb-172f-afd4354c1496
# ╠═4433ca30-8435-11eb-1b60-4368ee9aa6e0
# ╟─4433ca30-8435-11eb-22e6-5f78db1ab8e1
# ╠═4433ca30-8435-11eb-3908-3d80a7c1957a
# ╟─4433ca30-8435-11eb-16ef-93772f640102
# ╠═4433ca30-8435-11eb-0508-ef74bbab2171
# ╟─4433ca30-8435-11eb-1ea0-b7867f539629
# ╠═4433ca30-8435-11eb-1776-0d00eb63eb56
# ╟─4433ca30-8435-11eb-28c0-4362546df4a9
# ╠═4433ca30-8435-11eb-0bac-35afa1b79fba
# ╟─4433ca30-8435-11eb-2bc9-617494df68a9
# ╠═4433ca30-8435-11eb-3c7f-a316afdc4292
# ╟─4433ca30-8435-11eb-2dc8-ab560a153202
# ╠═4433ca30-8435-11eb-1aa2-6783b90dfd7a
# ╟─4433ca30-8435-11eb-061b-4f5253f0d8de
# ╠═4433ca30-8435-11eb-38e8-d93d88f8c17d
# ╟─4433ca30-8435-11eb-33bd-3b8f09a30d78
# ╠═4433ca30-8435-11eb-2ca8-c7c0bd34ef68
# ╟─4433ca30-8435-11eb-3568-9fc14fbc2f5f
# ╠═4433ca30-8435-11eb-1cb0-1fdea3935acf
# ╟─4433ca30-8435-11eb-0bc1-07b3be67aec6
# ╠═4433ca30-8435-11eb-352c-d327403f5fb3
# ╟─4433ca30-8435-11eb-2693-8dc51b71b366
# ╠═4433ca30-8435-11eb-070f-5baed3d08bc6
# ╟─4433ca30-8435-11eb-0cd4-077421cb92d4
# ╠═4433ca30-8435-11eb-3abc-19e6171279c4
# ╟─4433ca30-8435-11eb-0600-0d87bc5c05ee
# ╠═4433ca30-8435-11eb-392b-376cdc0fdeb7
# ╠═44430c70-8435-11eb-1c44-97c2a36d745e
# ╟─44430c70-8435-11eb-2a13-4fdfb7a36db4
# ╠═44430c70-8435-11eb-37f0-dde80aa0ebb6
# ╟─44430c70-8435-11eb-226c-4bf0e95d33c6
# ╠═44430c70-8435-11eb-0751-85d873cc41ed
# ╟─44430c70-8435-11eb-123b-fb065ae4ec7b
# ╠═44430c70-8435-11eb-21ff-537ab6e639f9
# ╟─44430c70-8435-11eb-2554-a1697629f17f
# ╠═44430c70-8435-11eb-184a-d169db5ef715
# ╟─44430c70-8435-11eb-31dc-f51dfc14cdf3
# ╠═44430c70-8435-11eb-1761-fdd5c079c64f
# ╟─44430c70-8435-11eb-10b4-2bd3a4675ec4
# ╠═44430c70-8435-11eb-211b-c375cba968b3
# ╟─44430c70-8435-11eb-28a0-9bcccb782c5b
# ╠═44430c70-8435-11eb-2eb7-a7e479a64fe8
# ╟─44430c70-8435-11eb-2d2c-01d04e8964c6
# ╠═44430c70-8435-11eb-2615-55a48bd407c0
# ╟─44430c70-8435-11eb-2f1f-f9f658fd5e15
# ╠═44430c70-8435-11eb-0937-53cc871a9e44
# ╟─44430c70-8435-11eb-3b1f-edf10c4220f2
# ╠═44430c70-8435-11eb-03bb-f7f3010392a4
# ╟─44430c70-8435-11eb-0de6-874e103c8d8b
# ╠═44430c70-8435-11eb-3fe4-f148b0e432df
# ╟─44430c70-8435-11eb-14e5-212eb28dcdc1
# ╠═44430c70-8435-11eb-125d-b1d0eb9fe5e5
# ╟─44430c70-8435-11eb-1647-fd5436ee322a
# ╠═44430c70-8435-11eb-2411-ff115b76b7a4
# ╟─44430c70-8435-11eb-1ca4-c5ad2a91eca6
# ╠═44430c70-8435-11eb-151e-3bfbf9b635cf
# ╟─44430c70-8435-11eb-0d7b-6f55aad0375e
# ╠═44430c70-8435-11eb-10cd-1fffa1ef38b6
# ╟─44430c70-8435-11eb-0300-d521069e2e6a
# ╠═44430c70-8435-11eb-1de1-0184e22197bd
# ╟─44430c70-8435-11eb-24ad-57d327e66df0
# ╠═44430c70-8435-11eb-3bca-cd3a6e8d4d27
# ╟─44430c70-8435-11eb-2ef7-09effc1efbb1
# ╠═44430c70-8435-11eb-08f6-a94bbed2a960
# ╟─44430c70-8435-11eb-0770-194c4dbbe8e0
# ╠═44430c70-8435-11eb-3870-e1e07ddacc97
# ╟─44430c70-8435-11eb-0377-c140fd6996a4
# ╠═44430c70-8435-11eb-3348-39fbfcdbac7c
# ╟─44430c70-8435-11eb-2502-0b3a31836f5b
# ╠═44430c70-8435-11eb-2fd3-c98078849685
# ╟─44430c70-8435-11eb-0e8f-c94b1b09b73e
# ╠═44430c70-8435-11eb-1e3e-c7eb5ff7bebd
# ╟─44430c70-8435-11eb-29e2-27eb6fd08afa
# ╠═44430c70-8435-11eb-19fa-67b722e1e3cc
# ╟─44430c70-8435-11eb-3697-7d4adf6b45bf
# ╠═44430c70-8435-11eb-0ec5-018feb813655
# ╟─44430c70-8435-11eb-0172-cd6032719da6
# ╠═44430c70-8435-11eb-0703-fbed1a58d80a
# ╠═444ef350-8435-11eb-2335-3ff3ac194344
# ╟─444ef350-8435-11eb-0fb8-4ba2067d8a03
# ╠═444ef350-8435-11eb-36b7-31425fdd2d9a
# ╟─444ef350-8435-11eb-0995-f9b1b7b11d1f
# ╠═444ef350-8435-11eb-1647-05338c2e4184
# ╟─444ef350-8435-11eb-10b3-3748bb2f2055
# ╠═444ef350-8435-11eb-13bc-fde149da462d
# ╟─444ef350-8435-11eb-002e-c797b8a3fd33
# ╠═444ef350-8435-11eb-27b6-2f59a4f50a00
# ╟─444ef350-8435-11eb-34cd-a3b51fc6fab9
# ╠═444ef350-8435-11eb-121b-27beb4b3f794
# ╟─444ef350-8435-11eb-097d-c1fbf0a7634d
# ╠═444ef350-8435-11eb-100a-ad107a86c0ba
# ╟─444ef350-8435-11eb-1a5f-e3f4076d41dc
# ╠═444ef350-8435-11eb-0f8c-cf968389dc46
# ╟─444ef350-8435-11eb-3f7f-7338a9af0139
# ╠═444ef350-8435-11eb-0a40-9d5e5e21b7ac
# ╟─444ef350-8435-11eb-22ba-cbd14ae5db0c
# ╠═444ef350-8435-11eb-0b12-e37036015005
# ╟─444ef350-8435-11eb-1328-0be0e486bf46
# ╠═444ef350-8435-11eb-3377-75acbbe584ea
# ╟─444ef350-8435-11eb-1163-8d6b34f5fa33
# ╠═444ef350-8435-11eb-0bd3-adccc4a655cc
# ╟─444ef350-8435-11eb-1218-5df6246514ba
# ╠═444ef350-8435-11eb-397f-6dc7e13038e5
# ╟─444ef350-8435-11eb-2122-a5fb7dd924d9
# ╠═444ef350-8435-11eb-0711-458f21942855
# ╟─444ef350-8435-11eb-2351-479f90866122
# ╠═444ef350-8435-11eb-0dd8-855b8bbbed06
# ╟─444ef350-8435-11eb-154a-af0299b7b4c9
# ╠═444ef350-8435-11eb-0cf3-314ea02850f4
# ╟─444ef350-8435-11eb-1594-f9db81c63aea
# ╠═444ef350-8435-11eb-08e8-61fde6e59140
# ╟─444ef350-8435-11eb-3466-51886a74e20c
# ╠═444ef350-8435-11eb-02d6-1111278a217b
# ╟─444ef350-8435-11eb-3358-b7a28199d6d9
# ╠═444ef350-8435-11eb-07e9-9ffe605b3e7f
# ╟─444ef350-8435-11eb-1c51-1d6049d046e9
# ╠═444ef350-8435-11eb-1f7f-79d755947181
# ╟─444ef350-8435-11eb-28e9-497ace0a4ec0
# ╠═444ef350-8435-11eb-38f8-294de576b094
# ╟─444ef350-8435-11eb-29f1-75c92272ba01
# ╠═444ef350-8435-11eb-1585-2788c3004389
# ╟─444ef350-8435-11eb-3063-8b3cdb570982
# ╠═444ef350-8435-11eb-23ee-45bd3a030763
# ╟─444ef350-8435-11eb-08d5-c396dfaf7752
# ╠═444ef350-8435-11eb-2d1e-13bee8f62166
# ╟─444ef350-8435-11eb-2dbb-79a00b4ebc20
# ╠═444ef350-8435-11eb-1c1b-c525a4bfe267
# ╟─444ef350-8435-11eb-231b-1d121ee34f25
# ╠═444ef350-8435-11eb-2e4c-99b4d58917e9
# ╠═44524eb0-8435-11eb-0f64-db1ab8934c4b
# ╟─44524eb0-8435-11eb-16d8-f7085d51a5a9
# ╠═44524eb0-8435-11eb-0998-c96e44d85103
# ╟─44524eb0-8435-11eb-21eb-63a197190d88
# ╠═44524eb0-8435-11eb-2a77-e17ecc81776c
# ╟─44524eb0-8435-11eb-0c9d-e94c645689d1
# ╠═44524eb0-8435-11eb-0382-c70b1ef33706
# ╟─44524eb0-8435-11eb-126c-cd97884361ac
# ╠═44524eb0-8435-11eb-3688-039eff225aab
# ╟─44524eb0-8435-11eb-0866-55408aa1dad0
# ╠═44524eb0-8435-11eb-0dae-334e873a2012
# ╟─44524eb0-8435-11eb-2451-f18b096b490c
# ╠═44524eb0-8435-11eb-1174-bbc1e841adda
# ╟─44524eb0-8435-11eb-3a2d-a11a88b1d698
# ╠═44524eb0-8435-11eb-092f-4f05497cb428
# ╟─44524eb0-8435-11eb-1fc3-a3eae72656d4
# ╠═44524eb0-8435-11eb-0999-bdace9dc656a
# ╟─44524eb0-8435-11eb-289c-93b9cc052f2b
# ╠═44524eb0-8435-11eb-0c9b-0f8976783252
# ╟─44524eb0-8435-11eb-1042-67f5e7adb29e
# ╠═44524eb0-8435-11eb-3b13-b9b283621632
# ╟─44524eb0-8435-11eb-1e67-a3a305133d95
# ╠═44524eb0-8435-11eb-08c4-333fee8d9924
# ╟─44524eb0-8435-11eb-0f7e-25513dfce0f7
# ╠═44524eb0-8435-11eb-1454-399e1d300d98
# ╟─44524eb0-8435-11eb-378f-e15364e0e466
# ╠═44524eb0-8435-11eb-3b23-df4945d72e26
# ╟─44524eb0-8435-11eb-0c57-9fc88e67dbff
# ╠═44524eb0-8435-11eb-2484-db383eff1459
# ╟─44524eb0-8435-11eb-1459-9fd22255ffaf
# ╠═44524eb0-8435-11eb-2784-23b639d63979
# ╟─44524eb0-8435-11eb-392b-1bbb60578c20
# ╠═44524eb0-8435-11eb-016f-31b8205739f4
# ╟─44524eb0-8435-11eb-3aa0-3dfe530f9c5c
# ╠═44524eb0-8435-11eb-2505-37e23d25b428
# ╟─44524eb0-8435-11eb-0c5c-6369245ef0e9
# ╠═44524eb0-8435-11eb-0a2c-49f31fa28e1f
# ╟─44524eb0-8435-11eb-1ec0-bd8ca996a622
# ╠═44524eb0-8435-11eb-22f0-3fce1222ce95
# ╟─44524eb0-8435-11eb-2295-9f52b4fb70b9
# ╠═44524eb0-8435-11eb-10d9-174cf4a3a9fe
# ╟─44524eb0-8435-11eb-0643-47b8f2c16ddf
# ╠═44524eb0-8435-11eb-0326-4f0cca0e272e
# ╟─44524eb0-8435-11eb-0065-65c2b1f75800
# ╠═44524eb0-8435-11eb-1cde-c594645d31b4
# ╟─44524eb0-8435-11eb-0245-69935f2f6342
# ╠═44524eb0-8435-11eb-1916-49d2abb281d6
# ╟─44524eb0-8435-11eb-3529-5b29826ae442
# ╠═44524eb0-8435-11eb-1b7d-0d2211ba3e5f
# ╟─44524eb0-8435-11eb-39ea-5b3b9a7af5db
# ╠═44524eb0-8435-11eb-1ae6-b5cdedbfbd0c
# ╠═4454bfb0-8435-11eb-3d08-4f2456abcff9
# ╟─4454bfb0-8435-11eb-2402-af246e8f7ddf
# ╠═4454bfb0-8435-11eb-1c75-9dd65f095984
# ╟─4457099e-8435-11eb-171d-b90b7599fedc
# ╠═4457099e-8435-11eb-161e-4f01521953e4
# ╟─4457099e-8435-11eb-2c87-4376b2c9a232
# ╠═4457099e-8435-11eb-3b8b-07d83cf18bda
# ╟─4457099e-8435-11eb-37e9-f17532d74b63
# ╠═4457099e-8435-11eb-25f1-2d75f5463436
# ╟─4457099e-8435-11eb-3fe7-816608dbffa5
# ╠═4457099e-8435-11eb-3de1-9d615abadd96
# ╟─4457099e-8435-11eb-171f-4d26fd72937d
# ╠═4457099e-8435-11eb-2c04-075564ce7af3
# ╟─4457099e-8435-11eb-2944-5b40b3cb25b8
# ╠═4457099e-8435-11eb-3cd4-4f467cdadf6b
# ╟─4457099e-8435-11eb-1fee-7305b5be6c3c
# ╠═4457099e-8435-11eb-1cd3-4ff076bcdcf8
# ╟─4457099e-8435-11eb-1790-4f06c54ab3bb
# ╠═4457099e-8435-11eb-120c-91d7f6913255
# ╟─4457099e-8435-11eb-3aa4-1bfc60100aca
# ╠═4457099e-8435-11eb-041a-43043e9cc221
# ╟─4457099e-8435-11eb-10d4-2fc84c3d3049
# ╠═4457099e-8435-11eb-3849-45e426357a89
# ╟─4457099e-8435-11eb-0175-b7da127efdd8
# ╠═4457099e-8435-11eb-0e77-135a0eb2a55f
# ╟─4457099e-8435-11eb-3aaf-8b50ffb820b1
# ╠═4457099e-8435-11eb-29ad-c3e195762999
# ╟─4457099e-8435-11eb-18c5-477e733e4847
# ╠═4457099e-8435-11eb-14bb-fb4374b4813a
# ╟─4457099e-8435-11eb-32ab-0de0f244ad62
# ╠═4457099e-8435-11eb-2df3-9111891846b4
# ╟─4457099e-8435-11eb-1bd9-c7b42eeae1ee
# ╠═4457099e-8435-11eb-1b62-912a905ac79f
# ╟─4457099e-8435-11eb-219d-51afb7ba4254
# ╠═4457099e-8435-11eb-2605-af15adab131c
# ╟─4457099e-8435-11eb-1d3a-bb60adeb145e
# ╠═4457099e-8435-11eb-30c6-a52d656414fe
# ╟─4457099e-8435-11eb-35f8-9f7e9ddbd957
# ╠═4457099e-8435-11eb-2a23-539d9150a076
# ╟─4457099e-8435-11eb-1032-4feb79c05990
# ╠═4457099e-8435-11eb-3834-3753189cf0fc
# ╟─4457099e-8435-11eb-35e1-ffa8cc259c64
# ╠═4457099e-8435-11eb-1a28-cdf1bceb1fc7
# ╟─4457099e-8435-11eb-316c-bfa6c1b96f9d
# ╠═4457099e-8435-11eb-2695-731ef7d33240
# ╟─4457099e-8435-11eb-1f12-2581a528bac2
# ╠═4457099e-8435-11eb-3ca8-67d55487f2c9
# ╟─4457099e-8435-11eb-22db-43c4311e04b5
# ╠═4457099e-8435-11eb-35be-5501ebef0710
# ╟─4457099e-8435-11eb-0704-3133d4b4cb3d
# ╠═4457099e-8435-11eb-06e1-714557089ded
# ╠═445a6500-8435-11eb-1905-a7f2f006b980
# ╟─445a6500-8435-11eb-39e8-b5dbdd23f598
# ╠═445a6500-8435-11eb-242d-cd7f68940369
# ╟─445a6500-8435-11eb-1636-57fa223a57be
# ╠═445a6500-8435-11eb-330a-152831a7d993
# ╟─445a6500-8435-11eb-25fc-691fbad2a782
# ╠═445a6500-8435-11eb-1763-ef840e053898
# ╟─445a6500-8435-11eb-0ff3-81d53774d086
# ╠═445a6500-8435-11eb-1537-213691432426
# ╟─445a6500-8435-11eb-1f5e-d58f1e2117b4
# ╠═445a6500-8435-11eb-2e91-276e17a83022
# ╟─445a6500-8435-11eb-2bc7-33ce27b97940
# ╠═445a6500-8435-11eb-07c2-69217e629df1
# ╟─445a6500-8435-11eb-1c74-a1008ed01a4c
# ╠═445a6500-8435-11eb-2b8e-db9fe4a5b5c1
# ╟─445a6500-8435-11eb-0ed6-c9d0ffeebb5b
# ╠═445a6500-8435-11eb-182d-5bf11c772290
# ╟─445a6500-8435-11eb-1e2d-5d71941230ed
# ╠═445a6500-8435-11eb-15c1-c959a82806b3
# ╟─445a6500-8435-11eb-3293-f143de7299d1
# ╠═445a6500-8435-11eb-0f45-3d2f233f976b
# ╟─445a6500-8435-11eb-08a2-ff2352df28e8
# ╠═445a6500-8435-11eb-3f54-7d0724558476
# ╟─445a6500-8435-11eb-3a56-8bcbd70be77b
# ╠═445a6500-8435-11eb-233c-a3b07619d809
# ╟─445a6500-8435-11eb-33e6-7d831e5e259d
# ╠═445a6500-8435-11eb-35cb-6951aad49954
# ╟─445a6500-8435-11eb-108d-d1ddac0e6f64
# ╠═445a6500-8435-11eb-1928-7394837d1696
# ╟─445a6500-8435-11eb-25e3-19767ff4d329
# ╠═445a6500-8435-11eb-1149-032a765b18be
# ╟─445a6500-8435-11eb-29ca-6f563bbd2be9
# ╠═445a6500-8435-11eb-2008-e32523c14e64
# ╟─445caef0-8435-11eb-22b9-3f48c51694c8
# ╠═445caef0-8435-11eb-3f55-59510c483218
# ╟─445caef0-8435-11eb-22b4-61d453bd8182
# ╠═445caef0-8435-11eb-0dcf-2de1f1339314
# ╟─445caef0-8435-11eb-1e6c-ebf18e3959df
# ╠═445caef0-8435-11eb-3c72-67ba1b90763c
# ╟─445caef0-8435-11eb-164d-071070944288
# ╠═445caef0-8435-11eb-0875-5bcabf3d086d
# ╟─445caef0-8435-11eb-1954-25c4a07fbe8f
# ╠═445caef0-8435-11eb-2112-cd25a50a590e
# ╟─445caef0-8435-11eb-3a0f-698aa1ce7aa7
# ╠═445caef0-8435-11eb-14f3-0fde9c363c25
# ╟─445caef0-8435-11eb-0625-176f86b91977
# ╠═445caef0-8435-11eb-2b10-657af93f2ee9
# ╟─445caef0-8435-11eb-3d66-5be3086f2e9a
# ╠═445caef0-8435-11eb-08c0-432758d767c2
# ╟─445caef0-8435-11eb-06fa-6fa3c64f881e
# ╠═445caef0-8435-11eb-146a-e1211732c441
# ╠═445f1ff2-8435-11eb-0d38-7118e89c3a8e
# ╟─445f1ff2-8435-11eb-0cdf-a309b3e7465b
# ╠═445f1ff2-8435-11eb-09de-456da9fc8750
# ╟─445f1ff2-8435-11eb-3a84-d92dec4064f5
# ╠═445f1ff2-8435-11eb-1050-e1d60e886eb4
# ╟─445f1ff2-8435-11eb-189f-cb7aba46318e
# ╠═445f1ff2-8435-11eb-2d42-f3a3a84d116a
# ╟─445f1ff2-8435-11eb-1835-0d846dcc2755
# ╠═445f1ff2-8435-11eb-0b68-2b47d1c73bdc
# ╟─445f1ff2-8435-11eb-20f7-6f12af72d590
# ╠═445f1ff2-8435-11eb-3e43-63f9ceb48572
# ╟─445f1ff2-8435-11eb-15f0-3d8ad3850655
# ╠═445f1ff2-8435-11eb-0572-538a990f333a
# ╟─445f1ff2-8435-11eb-361f-bb4cf2bdd301
# ╠═445f1ff2-8435-11eb-3e6b-ad6b58ba9ec8
# ╟─445f1ff2-8435-11eb-3043-5768ea889de4
# ╠═445f1ff2-8435-11eb-3179-45b19f3dc43b
# ╟─445f1ff2-8435-11eb-3c10-75ed602276e4
# ╠═445f1ff2-8435-11eb-1eae-6f71b9610b8f
# ╟─445f1ff2-8435-11eb-030e-adf4d3e06c20
# ╠═445f1ff2-8435-11eb-141b-7bac88363838
# ╟─445f1ff2-8435-11eb-3241-fbafb66b3b96
# ╠═445f1ff2-8435-11eb-1970-6fd51d72470e
# ╟─445f1ff2-8435-11eb-0279-83691afafd11
# ╠═445f1ff2-8435-11eb-2e93-e331c0a8efaa
# ╟─445f1ff2-8435-11eb-371f-873ad4232208
# ╠═445f1ff2-8435-11eb-297d-534989583d48
# ╟─445f1ff2-8435-11eb-2833-b943290d6438
# ╠═445f1ff2-8435-11eb-3ffa-c7d6c7fe3b58
# ╟─445f1ff2-8435-11eb-0af2-6101b701f09f
# ╠═445f1ff2-8435-11eb-12c7-e98047c6d8ad
# ╟─445f1ff2-8435-11eb-0763-fb74add15af1
# ╠═445f1ff2-8435-11eb-1b8f-bbe811834b1a
# ╟─445f1ff2-8435-11eb-1460-dd0c2ca6e384
# ╠═445f1ff2-8435-11eb-2573-f5912ee0c095
# ╟─445f1ff2-8435-11eb-1c73-2fc3a4133da5
# ╠═445f1ff2-8435-11eb-2c88-3b1614817972
# ╟─445f1ff2-8435-11eb-28ac-e71dd306fdc3
# ╠═445f1ff2-8435-11eb-114b-1fdaf89d1943
# ╟─445f1ff2-8435-11eb-0f78-eb058a0036b9
# ╠═445f1ff2-8435-11eb-2611-0bf257052e06
# ╟─445f1ff2-8435-11eb-2588-5b3582089e50
# ╠═445f1ff2-8435-11eb-30d0-7be960db7b7a
# ╟─445f1ff2-8435-11eb-2723-63648b39ffdf
# ╠═445f1ff2-8435-11eb-07e1-bb6b4520b89b
# ╟─445f1ff2-8435-11eb-0f0d-6dde2f772f81
# ╠═445f1ff2-8435-11eb-2a85-13de56466572
# ╟─445f1ff2-8435-11eb-23a1-b50ff79ff902
# ╠═445f1ff2-8435-11eb-2e19-b9a027f6e014
# ╟─445f1ff2-8435-11eb-11c2-ef9bf3e099f2
# ╠═445f1ff2-8435-11eb-1073-cd808a05edc9
# ╠═446401f0-8435-11eb-2db5-bd2d14fcb95d
# ╟─446401f0-8435-11eb-2cbb-91646a209539
# ╠═446401f0-8435-11eb-159f-634c35cc4286
# ╟─446401f0-8435-11eb-398e-95d91b8bd50d
# ╠═446401f0-8435-11eb-3881-d538b11ab176
# ╟─446401f0-8435-11eb-1b85-0d5ab2007dce
# ╠═446401f0-8435-11eb-2ae5-9be6785fb00a
# ╟─446401f0-8435-11eb-168b-dd70aab0e092
# ╠═446401f0-8435-11eb-001e-7321bad060fd
# ╟─446401f0-8435-11eb-1547-477d4d4a8d59
# ╠═446401f0-8435-11eb-060e-01af4656a357
# ╟─446401f0-8435-11eb-1313-09408ad05ef2
# ╠═446401f0-8435-11eb-2077-0348e34d6589
# ╟─446401f0-8435-11eb-3fc2-9913b6c534a6
# ╠═446401f0-8435-11eb-2ee8-13c0df9c62e4
# ╟─446401f0-8435-11eb-1e03-63355da55379
# ╠═446401f0-8435-11eb-0129-4707e5f2aa15
# ╟─446401f0-8435-11eb-2acf-31ee73f188a3
# ╠═446401f0-8435-11eb-3a17-a587147b10fc
# ╟─446401f0-8435-11eb-089b-c9129bbb274a
# ╠═446401f0-8435-11eb-3e3c-f909e7315b6a
# ╟─446401f0-8435-11eb-04b5-d5191cde8376
# ╠═446401f0-8435-11eb-3509-7d70a670959b
# ╟─446401f0-8435-11eb-1846-4724e997c4b8
# ╠═446401f0-8435-11eb-034f-47a37fae85c3
# ╟─446401f0-8435-11eb-2fac-555326ac5040
# ╠═446401f0-8435-11eb-3396-630e0a1c21d3
# ╟─446401f0-8435-11eb-0d12-d12e0bfad792
# ╠═446401f0-8435-11eb-0242-4dd8062979f7
# ╟─446401f0-8435-11eb-085d-79172f919722
# ╠═446401f0-8435-11eb-2a3d-516c9782a8ac
# ╟─446401f0-8435-11eb-3d10-b3fe1e74b0c3
# ╠═446401f0-8435-11eb-2397-abffbaac1088
# ╟─446401f0-8435-11eb-215b-838331b10c2e
# ╠═446401f0-8435-11eb-1b3b-bd6f3e31ed61
# ╟─446401f0-8435-11eb-06c2-0d850c8305b4
# ╠═446401f0-8435-11eb-3a52-f329341c679e
# ╟─446401f0-8435-11eb-2769-c94e8223926b
# ╠═446401f0-8435-11eb-06be-b33584701a31
# ╟─446401f0-8435-11eb-0fe1-8535c63f9bcf
# ╠═446401f0-8435-11eb-2414-339363bca319
# ╟─446401f0-8435-11eb-25fd-dfdd570f0251
# ╠═446401f0-8435-11eb-3c0d-a1106522503b
# ╟─446401f0-8435-11eb-0dcb-55b7204f1c82
# ╠═446401f0-8435-11eb-2826-879eee30abd2
# ╟─446401f0-8435-11eb-177d-a9c341d1cdcb
# ╠═446401f0-8435-11eb-2d18-c9fb3dd6525d
# ╟─446401f0-8435-11eb-041d-594558845217
# ╠═446401f0-8435-11eb-04a4-27fc325fa58f
# ╟─446401f0-8435-11eb-1635-a178ac5b46b4
# ╠═446401f0-8435-11eb-1894-df9531359233