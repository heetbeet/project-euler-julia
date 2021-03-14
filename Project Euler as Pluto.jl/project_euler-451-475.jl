### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ad3dcc0-84a3-11eb-1c6d-239088ac6bf1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ad3dcc0-84a3-11eb-0351-29a7d8e45e14
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

# ╔═╡ 1ad3dcc0-84a3-11eb-138e-f311fd89814f
begin
    submit_answer(nothing; prob_num=451)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1cb8-55fe7e7b2143
html"""
<h2>Problem 452: Long Products</h2>
<p>Define F(<var>m</var>,<var>n</var>) as the number of <var>n</var>-tuples of positive integers for which the product of the elements doesn't exceed <var>m</var>.</p>
<p>F(10, 10) = 571.</p>
<p>F(10<sup>6</sup>, 10<sup>6</sup>) mod 1 234 567 891 = 252903833.</p>
<p>Find F(10<sup>9</sup>, 10<sup>9</sup>) mod 1 234 567 891.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-263f-a98fe1df756e
begin
    submit_answer(nothing; prob_num=452)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-38f2-4994710b6918
html"""
<h2>Problem 453: Lattice Quadrilaterals</h2>
<p>A <b>simple quadrilateral</b> is a polygon that has four distinct vertices, has no straight angles and does not self-intersect.</p>

<p>Let Q(m, n) be the number of simple quadrilaterals whose vertices are lattice points with coordinates (x,y) satisfying 0 ≤ x ≤ m and 0 ≤ y ≤ n.</p>

<p>For example, Q(2, 2) = 94 as can be seen below:</p>
<p align="center"><img src="project/images/p453_quad.png" class="dark_img" alt="p453_quad.png" /></p>
<p>It can also be verified that Q(3, 7) = 39590, Q(12, 3) = 309000 and Q(123, 45) = 70542215894646.</p>

<p>Find Q(12345, 6789) mod 135707531.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-3091-49c089a15acf
begin
    submit_answer(nothing; prob_num=453)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-263b-0d13a909ba91
html"""
<h2>Problem 454: Diophantine reciprocals III</h2>
<p>In the following equation <var>x</var>, <var>y</var>, and <var>n</var> are positive integers.</p>
$$\dfrac{1}{x} + \dfrac{1}{y} = \dfrac{1}{n}$$
<p>For a limit <var>L</var> we define F(<var>L</var>) as the number of solutions which satisfy <var>x</var> &lt; <var>y</var> ≤ <var>L</var>.</p>

<p>We can verify that F(15) = 4 and F(1000) = 1069.<br />
Find F(10<sup>12</sup>).</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-09c3-41a8b74757c1
begin
    submit_answer(nothing; prob_num=454)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-06f6-df06db275b4b
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

# ╔═╡ 1ad3dcc0-84a3-11eb-1414-1d20765ccd8b
begin
    submit_answer(nothing; prob_num=455)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-338a-0dddb4d2429c
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

# ╔═╡ 1ad3dcc0-84a3-11eb-287c-6d3b3f3a2bdb
begin
    submit_answer(nothing; prob_num=456)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-34c3-114e62069c3c
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0922-a99d6336b194
begin
    submit_answer(nothing; prob_num=457)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-3a61-95f5d6d5e0e1
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0718-87e7df5bebc1
begin
    submit_answer(nothing; prob_num=458)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-2fd1-91df090afefb
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

# ╔═╡ 1ad3dcc0-84a3-11eb-14e3-69fe71c42083
begin
    submit_answer(nothing; prob_num=459)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-15e2-4942a5ed288c
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

# ╔═╡ 1ad3dcc0-84a3-11eb-31e4-9b56ec5f7d5f
begin
    submit_answer(nothing; prob_num=460)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-3b61-a33cb684f8d9
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

# ╔═╡ 1ad3dcc0-84a3-11eb-240b-eba78f9d8825
begin
    submit_answer(nothing; prob_num=461)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0344-1df9838e7c66
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

# ╔═╡ 1ad3dcc0-84a3-11eb-3ef8-27e6e567645b
begin
    submit_answer(nothing; prob_num=462)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-300b-39b4a51d3eb4
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

# ╔═╡ 1ad3dcc0-84a3-11eb-195f-8f9784725d1c
begin
    submit_answer(nothing; prob_num=463)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-131c-17f45c5b87ca
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

# ╔═╡ 1ad3dcc0-84a3-11eb-3cbd-5556068e7520
begin
    submit_answer(nothing; prob_num=464)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1720-719f4e9f7035
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0ce1-2591835e719a
begin
    submit_answer(nothing; prob_num=465)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-3161-73753f2602f0
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0650-ff22ddfdefa7
begin
    submit_answer(nothing; prob_num=466)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-076d-0540e6d350f5
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

# ╔═╡ 1ad3dcc0-84a3-11eb-1ddf-2bd571f2d530
begin
    submit_answer(nothing; prob_num=467)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-269b-939a6a54d245
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0064-9d5e91406741
begin
    submit_answer(nothing; prob_num=468)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1d9d-0f22b7427f4a
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

# ╔═╡ 1ad3dcc0-84a3-11eb-0725-3faeac94c26a
begin
    submit_answer(nothing; prob_num=469)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0f2f-475cb6e93c07
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

# ╔═╡ 1ad3dcc0-84a3-11eb-03f1-1b25ecaf8c24
begin
    submit_answer(nothing; prob_num=470)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-2dfe-155cff91b85d
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

# ╔═╡ 1ad3dcc0-84a3-11eb-3f5d-fdd1bf386ff5
begin
    submit_answer(nothing; prob_num=471)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0827-d1bd591ba9c4
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

# ╔═╡ 1ad3dcc0-84a3-11eb-2bf0-57eef36cf88b
begin
    submit_answer(nothing; prob_num=472)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-2a34-6d3e754b5a38
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

# ╔═╡ 1ad3dcc0-84a3-11eb-034b-a12ed06ad47f
begin
    submit_answer(nothing; prob_num=473)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-354a-91b107e0a0d5
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

# ╔═╡ 1ad3dcc0-84a3-11eb-2688-897c9f4b386c
begin
    submit_answer(nothing; prob_num=474)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-22aa-ddb614395b8e
html"""
<h2>Problem 475: Music festival</h2>
<p>12<var>n</var> musicians participate at a music festival. On the first day, they form 3<var>n</var> quartets and practice all day.</p>
<p>It is a disaster. At the end of the day, all musicians decide they will never again agree to play with any member of their quartet.</p>
<p>On the second day, they form 4<var>n</var> trios, with every musician avoiding any previous quartet partners.</p>

<p>Let <var>f</var>(12<var>n</var>) be the number of ways to organize the trios amongst the 12<var>n</var> musicians.</p>
<p>You are given <var>f</var>(12) = 576 and <var>f</var>(24) mod 1 000 000 007 = 509089824.</p>

<p>Find <var>f</var>(600) mod 1 000 000 007.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0f3d-396085146f97
begin
    submit_answer(nothing; prob_num=475)
end

# ╔═╡ Cell order:
# ╠═1ad3dcc0-84a3-11eb-1c6d-239088ac6bf1
# ╟─1ad3dcc0-84a3-11eb-0351-29a7d8e45e14
# ╠═1ad3dcc0-84a3-11eb-138e-f311fd89814f
# ╟─1ad3dcc0-84a3-11eb-1cb8-55fe7e7b2143
# ╠═1ad3dcc0-84a3-11eb-263f-a98fe1df756e
# ╟─1ad3dcc0-84a3-11eb-38f2-4994710b6918
# ╠═1ad3dcc0-84a3-11eb-3091-49c089a15acf
# ╟─1ad3dcc0-84a3-11eb-263b-0d13a909ba91
# ╠═1ad3dcc0-84a3-11eb-09c3-41a8b74757c1
# ╟─1ad3dcc0-84a3-11eb-06f6-df06db275b4b
# ╠═1ad3dcc0-84a3-11eb-1414-1d20765ccd8b
# ╟─1ad3dcc0-84a3-11eb-338a-0dddb4d2429c
# ╠═1ad3dcc0-84a3-11eb-287c-6d3b3f3a2bdb
# ╟─1ad3dcc0-84a3-11eb-34c3-114e62069c3c
# ╠═1ad3dcc0-84a3-11eb-0922-a99d6336b194
# ╟─1ad3dcc0-84a3-11eb-3a61-95f5d6d5e0e1
# ╠═1ad3dcc0-84a3-11eb-0718-87e7df5bebc1
# ╟─1ad3dcc0-84a3-11eb-2fd1-91df090afefb
# ╠═1ad3dcc0-84a3-11eb-14e3-69fe71c42083
# ╟─1ad3dcc0-84a3-11eb-15e2-4942a5ed288c
# ╠═1ad3dcc0-84a3-11eb-31e4-9b56ec5f7d5f
# ╟─1ad3dcc0-84a3-11eb-3b61-a33cb684f8d9
# ╠═1ad3dcc0-84a3-11eb-240b-eba78f9d8825
# ╟─1ad3dcc0-84a3-11eb-0344-1df9838e7c66
# ╠═1ad3dcc0-84a3-11eb-3ef8-27e6e567645b
# ╟─1ad3dcc0-84a3-11eb-300b-39b4a51d3eb4
# ╠═1ad3dcc0-84a3-11eb-195f-8f9784725d1c
# ╟─1ad3dcc0-84a3-11eb-131c-17f45c5b87ca
# ╠═1ad3dcc0-84a3-11eb-3cbd-5556068e7520
# ╟─1ad3dcc0-84a3-11eb-1720-719f4e9f7035
# ╠═1ad3dcc0-84a3-11eb-0ce1-2591835e719a
# ╟─1ad3dcc0-84a3-11eb-3161-73753f2602f0
# ╠═1ad3dcc0-84a3-11eb-0650-ff22ddfdefa7
# ╟─1ad3dcc0-84a3-11eb-076d-0540e6d350f5
# ╠═1ad3dcc0-84a3-11eb-1ddf-2bd571f2d530
# ╟─1ad3dcc0-84a3-11eb-269b-939a6a54d245
# ╠═1ad3dcc0-84a3-11eb-0064-9d5e91406741
# ╟─1ad3dcc0-84a3-11eb-1d9d-0f22b7427f4a
# ╠═1ad3dcc0-84a3-11eb-0725-3faeac94c26a
# ╟─1ad3dcc0-84a3-11eb-0f2f-475cb6e93c07
# ╠═1ad3dcc0-84a3-11eb-03f1-1b25ecaf8c24
# ╟─1ad3dcc0-84a3-11eb-2dfe-155cff91b85d
# ╠═1ad3dcc0-84a3-11eb-3f5d-fdd1bf386ff5
# ╟─1ad3dcc0-84a3-11eb-0827-d1bd591ba9c4
# ╠═1ad3dcc0-84a3-11eb-2bf0-57eef36cf88b
# ╟─1ad3dcc0-84a3-11eb-2a34-6d3e754b5a38
# ╠═1ad3dcc0-84a3-11eb-034b-a12ed06ad47f
# ╟─1ad3dcc0-84a3-11eb-354a-91b107e0a0d5
# ╠═1ad3dcc0-84a3-11eb-2688-897c9f4b386c
# ╟─1ad3dcc0-84a3-11eb-22aa-ddb614395b8e
# ╠═1ad3dcc0-84a3-11eb-0f3d-396085146f97