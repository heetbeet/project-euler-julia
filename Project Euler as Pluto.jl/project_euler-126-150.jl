### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4587e600-2b34-11eb-2349-49238d8ed37e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4587e600-2b34-11eb-215c-65567e7723de
html"""
<h2>Problem 126: Cuboid layers</h2>
<p>The minimum number of cubes to cover every visible face on a cuboid measuring 3 x 2 x 1 is twenty-two.</p>
<div class="center">
<img src="project/images/p126.png" class="dark_img" alt="" /><br /></div>
<p>If we then add a second layer to this solid it would require forty-six cubes to cover every visible face, the third layer would require seventy-eight cubes, and the fourth layer would require one-hundred and eighteen cubes to cover every visible face.</p>
<p>However, the first layer on a cuboid measuring 5 x 1 x 1 also requires twenty-two cubes; similarly the first layer on cuboids measuring 5 x 3 x 1, 7 x 2 x 1, and 11 x 1 x 1 all contain forty-six cubes.</p>
<p>We shall define C(<i>n</i>) to represent the number of cuboids that contain <i>n</i> cubes in one of its layers. So C(22) = 2, C(46) = 4, C(78) = 5, and C(118) = 8.</p>
<p>It turns out that 154 is the least value of <i>n</i> for which C(<i>n</i>) = 10.</p>
<p>Find the least value of <i>n</i> for which C(<i>n</i>) = 1000.</p>
"""

# ╔═╡ 4587e600-2b34-11eb-130b-fde7b5eb0535
begin
    submit_answer(nothing; prob_num=131)
end

# ╔═╡ 4587e600-2b34-11eb-359b-31cc429a8bb1
html"""
<h2>Problem 127: abc-hits</h2>
<p>The radical of <i>n</i>, rad(<i>n</i>), is the product of distinct prime factors of <i>n</i>. For example, 504 = 2<sup>3</sup> × 3<sup>2</sup> × 7, so rad(504) = 2 × 3 × 7 = 42.</p>
<p>We shall define the triplet of positive integers (<i>a</i>, <i>b</i>, <i>c</i>) to be an abc-hit if:</p>
<ol><li>GCD(<i>a,</i> <i>b</i>) = GCD(<i>a</i>, <i>c</i>) = GCD(<i>b</i>, <i>c</i>) = 1</li>
<li><i>a</i> &lt; <i>b</i></li>
<li><i>a</i> + <i>b</i> = <i>c</i></li>
<li>rad(<i>abc</i>) &lt; <i>c</i></li>
</ol><p>For example, (5, 27, 32) is an abc-hit, because:</p>
<ol><li>GCD(5, 27) = GCD(5, 32) = GCD(27, 32) = 1</li>
<li>5 &lt; 27</li>
<li>5 + 27 = 32</li>
<li>rad(4320) = 30 &lt; 32</li>
</ol><p>It turns out that abc-hits are quite rare and there are only thirty-one abc-hits for <i>c</i> &lt; 1000, with ∑<i>c</i> = 12523.</p>
<p>Find ∑<i>c</i> for <i>c</i> &lt; 120000.</p>
"""

# ╔═╡ 4587e600-2b34-11eb-0bbd-736d5ba4f68c
begin
    submit_answer(nothing; prob_num=132)
end

# ╔═╡ 4587e600-2b34-11eb-0966-c9a3ed106c67
html"""
<h2>Problem 128: Hexagonal tile differences</h2>
<p>A hexagonal tile with number 1 is surrounded by a ring of six hexagonal tiles, starting at "12 o'clock" and numbering the tiles 2 to 7 in an anti-clockwise direction.</p>
<p>New rings are added in the same fashion, with the next rings being numbered 8 to 19, 20 to 37, 38 to 61, and so on. The diagram below shows the first three rings.</p>
<div class="center">
<img src="project/images/p128.png" class="dark_img" alt="" /></div>
<p>By finding the difference between tile <i>n</i> and each of its six neighbours we shall define PD(<i>n</i>) to be the number of those differences which are prime.</p>
<p>For example, working clockwise around tile 8 the differences are 12, 29, 11, 6, 1, and 13. So PD(8) = 3.</p>
<p>In the same way, the differences around tile 17 are 1, 17, 16, 1, 11, and 10, hence PD(17) = 2.</p>
<p>It can be shown that the maximum value of PD(<i>n</i>) is 3.</p>
<p>If all of the tiles for which PD(<i>n</i>) = 3 are listed in ascending order to form a sequence, the 10th tile would be 271.</p>
<p>Find the 2000th tile in this sequence.</p>
"""

# ╔═╡ 4587e600-2b34-11eb-0a5b-450855dea6b6
begin
    submit_answer(nothing; prob_num=133)
end

# ╔═╡ 4587e600-2b34-11eb-0dc8-f1e55e21eaf2
html"""
<h2>Problem 129: Repunit divisibility</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>The least value of <i>n</i> for which A(<i>n</i>) first exceeds ten is 17.</p>
<p>Find the least value of <i>n</i> for which A(<i>n</i>) first exceeds one-million.</p>
"""

# ╔═╡ 4587e600-2b34-11eb-0990-35217addd5cd
begin
    submit_answer(nothing; prob_num=134)
end

# ╔═╡ 4587e600-2b34-11eb-2e3f-6b87c02cd161
html"""
<h2>Problem 130: Composites with prime repunit property</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>You are given that for all primes, <i>p</i> &gt; 5, that <i>p</i> − 1 is divisible by A(<i>p</i>). For example, when <i>p</i> = 41, A(41) = 5, and 40 is divisible by 5.</p>
<p>However, there are rare composite values for which this is also true; the first five examples being 91, 259, 451, 481, and 703.</p>
<p>Find the sum of the first twenty-five composite values of <i>n</i> for which<br />GCD(<i>n</i>, 10) = 1 and <i>n</i> − 1 is divisible by A(<i>n</i>).</p>
"""

# ╔═╡ 4587e600-2b34-11eb-08dd-e9cd3893fe50
begin
    submit_answer(nothing; prob_num=135)
end

# ╔═╡ 4587e600-2b34-11eb-1ff4-9788a69be311
html"""
<h2>Problem 131: Prime cube partnership</h2>
<p>There are some prime values, <i>p</i>, for which there exists a positive integer, <i>n</i>, such that the expression <i>n</i><sup>3</sup> + <i>n</i><sup>2</sup><i>p</i> is a perfect cube.</p>
<p>For example, when <i>p</i> = 19, 8<sup>3</sup> + 8<sup>2</sup>×19 = 12<sup>3</sup>.</p>
<p>What is perhaps most surprising is that for each prime with this property the value of <i>n</i> is unique, and there are only four such primes below one-hundred.</p>
<p>How many primes below one million have this remarkable property?</p>
"""

# ╔═╡ 4587e600-2b34-11eb-2d24-c9758fa1d652
begin
    submit_answer(nothing; prob_num=136)
end

# ╔═╡ 45880d10-2b34-11eb-1395-75435cf6ad46
html"""
<h2>Problem 132: Large repunit factors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>.</p>
<p>For example, R(10) = 1111111111 = 11×41×271×9091, and the sum of these prime factors is 9414.</p>
<p>Find the sum of the first forty prime factors of R(10<sup>9</sup>).</p>
"""

# ╔═╡ 45880d10-2b34-11eb-0098-2bfb5bf663a2
begin
    submit_answer(nothing; prob_num=137)
end

# ╔═╡ 45880d10-2b34-11eb-2ea9-43e3d4ca6a9e
html"""
<h2>Problem 133: Repunit nonfactors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<var>k</var>) to be a repunit of length <var>k</var>; for example, R(6) = 111111.</p>
<p>Let us consider repunits of the form R(10<sup><var>n</var></sup>).</p>
<p>Although R(10), R(100), or R(1000) are not divisible by 17, R(10000) is divisible by 17. Yet there is no value of <var>n</var> for which R(10<sup><var>n</var></sup>) will divide by 19. In fact, it is remarkable that 11, 17, 41, and 73 are the only four primes below one-hundred that can  be a factor of R(10<sup><var>n</var></sup>).</p>
<p>Find the sum of all the primes below one-hundred thousand that will never be a factor of R(10<sup><var>n</var></sup>).</p>
"""

# ╔═╡ 45880d10-2b34-11eb-1cf5-9980627e1a62
begin
    submit_answer(nothing; prob_num=138)
end

# ╔═╡ 45880d10-2b34-11eb-2258-01972eb025af
html"""
<h2>Problem 134: Prime pair connection</h2>
<p>Consider the consecutive primes <i>p</i><sub>1</sub> = 19 and <i>p</i><sub>2</sub> = 23. It can be verified that 1219 is the smallest number such that the last digits are formed by <i>p</i><sub>1</sub> whilst also being divisible by <i>p</i><sub>2</sub>.</p>
<p>In fact, with the exception of <i>p</i><sub>1</sub> = 3 and <i>p</i><sub>2</sub> = 5, for every pair of consecutive primes, <i>p</i><sub>2</sub> &gt; <i>p</i><sub>1</sub>, there exist values of <i>n</i> for which the last digits are formed by <i>p</i><sub>1</sub> and <i>n</i> is divisible by <i>p</i><sub>2</sub>. Let <i>S</i> be the smallest of these values of <i>n</i>.</p>
<p>Find ∑ <i>S</i> for every pair of consecutive primes with 5 ≤ <i>p</i><sub>1</sub> ≤ 1000000.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-0626-a92b17469052
begin
    submit_answer(nothing; prob_num=139)
end

# ╔═╡ 45880d10-2b34-11eb-2296-09c06efc21cc
html"""
<h2>Problem 135: Same differences</h2>
<p>Given the positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression, the least value of the positive integer, <i>n</i>, for which the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly two solutions is <i>n</i> = 27:</p>
<p class="center">34<sup>2</sup> − 27<sup>2</sup> − 20<sup>2</sup> = 12<sup>2</sup> − 9<sup>2</sup> − 6<sup>2</sup> = 27</p>
<p>It turns out that <i>n</i> = 1155 is the least value which has exactly ten solutions.</p>
<p>How many values of <i>n</i> less than one million have exactly ten distinct solutions?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-2b5d-b332f79dbbd0
begin
    submit_answer(nothing; prob_num=140)
end

# ╔═╡ 45880d10-2b34-11eb-391d-631e76eac96a
html"""
<h2>Problem 136: Singleton difference</h2>
<p>The positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression. Given that <i>n</i> is a positive integer, the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly one solution when <i>n</i> = 20:</p>
<p class="center">13<sup>2</sup> − 10<sup>2</sup> − 7<sup>2</sup> = 20</p>
<p>In fact there are twenty-five values of <i>n</i> below one hundred for which the equation has a unique solution.</p>
<p>How many values of <i>n</i> less than fifty million have exactly one solution?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-3263-3b2e75455379
begin
    submit_answer(nothing; prob_num=141)
end

# ╔═╡ 45880d10-2b34-11eb-3e82-2d19ef5ac7c0
html"""
<h2>Problem 137: Fibonacci golden nuggets</h2>
<p>Consider the infinite polynomial series $A_F(x) = x F_1 + x^2 F_2 + x^3 F_3 + \dots$, where $F_k$ is the $k$th term in the Fibonacci sequence: $1, 1, 2, 3, 5, 8, \dots$; that is, $F_k = F_{k-1} + F_{k-2}$, $F_1 = 1$ and $F_2 = 1$.</p>
<p>For this problem we shall be interested in values of $x$ for which $A_F(x)$ is a positive integer.</p>

<table class="p236" cellpadding="0" cellspacing="0" border="0"><tr><td valign="top">Surprisingly</td><td>$\begin{align*} 
A_F(\tfrac{1}{2})
 &amp;= (\tfrac{1}{2})\times 1 + (\tfrac{1}{2})^2\times 1 + (\tfrac{1}{2})^3\times 2 + (\tfrac{1}{2})^4\times 3 + (\tfrac{1}{2})^5\times 5 + \cdots \\ 
 &amp;= \tfrac{1}{2} + \tfrac{1}{4} + \tfrac{2}{8} + \tfrac{3}{16} + \tfrac{5}{32} + \cdots \\
 &amp;= 2
\end{align*}$</td>
</tr></table>

<p>The corresponding values of <i>x</i> for the first five natural numbers are shown below.</p>
<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><th>$x$</th><th width="50">$A_F(x)$</th>
</tr><tr><td>$\sqrt{2}-1$</td><td>1</td>
</tr><tr><td>$\tfrac{1}{2}$</td><td>2</td>
</tr><tr><td>$\frac{\sqrt{13}-2}{3}$</td><td>3</td>
</tr><tr><td>$\frac{\sqrt{89}-5}{8}$</td><td>4</td>
</tr><tr><td>$\frac{\sqrt{34}-3}{5}$</td><td>5</td>
</tr></table></div>
<p>We shall call $A_F(x)$ a golden nugget if $x$ is rational, because they become increasingly rarer; for example, the 10th golden nugget is 74049690.</p>
<p>Find the 15th golden nugget.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-1f5a-f5fed279b32d
begin
    submit_answer(nothing; prob_num=142)
end

# ╔═╡ 45880d10-2b34-11eb-34e9-a92ae00c786f
html"""
<h2>Problem 138: Special isosceles triangles</h2>
<p>Consider the isosceles triangle with base length, $b = 16$, and legs, $L = 17$.</p>
<div class="center">
<img src="project/images/p138.png" width="230" height="228" class="dark_img" alt="" /></div>
<p>By using the Pythagorean theorem it can be seen that the height of the triangle, $h = \sqrt{17^2 - 8^2} = 15$, which is one less than the base length.</p>
<p>With $b = 272$ and $L = 305$, we get $h = 273$, which is one more than the base length, and this is the second smallest isosceles triangle with the property that $h = b \pm 1$.</p>
<p>Find $\sum L$ for the twelve smallest isosceles triangles for which $h = b \pm 1$ and $b$, $L$ are positive integers.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-0203-d5254a1b6331
begin
    submit_answer(nothing; prob_num=143)
end

# ╔═╡ 45880d10-2b34-11eb-0905-21c59d35213c
html"""
<h2>Problem 139: Pythagorean tiles</h2>
<p>Let (<i>a</i>, <i>b</i>, <i>c</i>) represent the three sides of a right angle triangle with integral length sides. It is possible to place four such triangles together to form a square with length <i>c</i>.</p>
<p>For example, (3, 4, 5) triangles can be placed together to form a 5 by 5 square with a 1 by 1 hole in the middle and it can be seen that the 5 by 5 square can be tiled with twenty-five 1 by 1 squares.</p>
<div class="center">
<img src="project/images/p139.png" class="dark_img" alt="" /></div>
<p>However, if (5, 12, 13) triangles were used then the hole would measure 7 by 7 and these could not be used to tile the 13 by 13 square.</p>
<p>Given that the perimeter of the right triangle is less than one-hundred million, how many Pythagorean triangles would allow such a tiling to take place?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-03a4-55cad53da3d2
begin
    submit_answer(nothing; prob_num=144)
end

# ╔═╡ 45880d10-2b34-11eb-02f7-f387723ea7b0
html"""
<h2>Problem 140: Modified Fibonacci golden nuggets</h2>
<p>Consider the infinite polynomial series $A_G(x) = x G_1 + x^2 G_2 + x^3 G_3 + \cdots$, where $G_k$ is the $k$th term of the second order recurrence relation $G_k = G_{k-1} + G_{k-2}$, $G_1 = 1$ and $G_2 = 4$; that is, $1, 4, 5, 9, 14, 23, \dots$ .</p>
<p>For this problem we shall be concerned with values of $x$ for which $A_G(x)$ is a positive integer.</p>
<p>The corresponding values of $x$ for the first five natural numbers are shown below.</p>
<div class="center">
<table cellspacing="0" cellpadding="2" border="1" align="center"><tr><th>$x$</th><th width="50">$A_G(x)$</th>
</tr><tr><td>$\frac{\sqrt{5}-1}{4}$</td><td>1</td>
</tr><tr><td>$\tfrac{2}{5}$</td><td>2</td>
</tr><tr><td>$\frac{\sqrt{22}-2}{6}$</td><td>3</td>
</tr><tr><td>$\frac{\sqrt{137}-5}{14}$</td><td>4</td>
</tr><tr><td>$\tfrac{1}{2}$</td><td>5</td>
</tr></table></div>
<p>We shall call $A_G(x)$ a golden nugget if $x$ is rational, because they become increasingly rarer; for example, the 20th golden nugget is 211345365.</p>
<p>Find the sum of the first thirty golden nuggets.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-10e2-4940b10ec753
begin
    submit_answer(nothing; prob_num=145)
end

# ╔═╡ 45880d10-2b34-11eb-2550-ef78ffaefb6d
html"""
<h2>Problem 141: Investigating progressive numbers, <i>n</i>, which are also square</h2>
<p>A positive integer, <i>n</i>, is divided by <i>d</i> and the quotient and remainder are <i>q</i> and <i>r</i> respectively. In addition <i>d</i>, <i>q</i>, and <i>r</i> are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.</p>
<p>For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).<br />
We will call such numbers, <i>n</i>, progressive.</p>
<p>Some progressive numbers, such as 9 and 10404 = 102<sup>2</sup>, happen to also be perfect squares.<br /> The sum of all progressive perfect squares below one hundred thousand is 124657.</p>
<p>Find the sum of all progressive perfect squares below one trillion (10<sup>12</sup>).</p>
"""

# ╔═╡ 45880d10-2b34-11eb-2564-e113014e5fc9
begin
    submit_answer(nothing; prob_num=146)
end

# ╔═╡ 45880d10-2b34-11eb-3396-cbbec430d3b4
html"""
<h2>Problem 142: Perfect Square Collection</h2>
<p>Find the smallest x + y + z with integers x &gt; y &gt; z &gt; 0 such that x + y, x − y, x + z, x − z, y + z, y − z are all perfect squares.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-1c8f-27791f812eb3
begin
    submit_answer(nothing; prob_num=147)
end

# ╔═╡ 45880d10-2b34-11eb-1a36-e1ec7fa308b0
html"""
<h2>Problem 143: Investigating the Torricelli point of a triangle</h2>
<p>Let ABC be a triangle with all interior angles being less than 120 degrees. Let X be any point inside the triangle and let XA = p, XC = q, and XB = r.</p>
<p>Fermat challenged Torricelli to find the position of X such that p + q + r was minimised.</p>
<p>Torricelli was able to prove that if equilateral triangles AOB, BNC and AMC are constructed on each side of triangle ABC, the circumscribed circles of AOB, BNC, and AMC will intersect at a single point, T, inside the triangle. Moreover he proved that T, called the Torricelli/Fermat point, minimises p + q + r. Even more remarkable, it can be shown that when the sum is minimised, AN = BM = CO = p + q + r and that AN, BM and CO also intersect at T.</p>
<div class="center"><img src="project/images/p143_torricelli.png" class="dark_img" alt="" /></div>
<p>If the sum is minimised and a, b, c, p, q and r are all positive integers we shall call triangle ABC a Torricelli triangle. For example, a = 399, b = 455, c = 511 is an example of a Torricelli triangle, with p + q + r = 784.</p>
<p>Find the sum of all distinct values of p + q + r ≤ 120000 for Torricelli triangles.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-2030-f537e8fe3aae
begin
    submit_answer(nothing; prob_num=148)
end

# ╔═╡ 45880d10-2b34-11eb-0761-158bd16a6933
html"""
<h2>Problem 144: Investigating multiple reflections of a laser beam</h2>
<p>In laser physics, a "white cell" is a mirror system that acts as a delay line for the laser beam. The beam enters the cell, bounces around on the mirrors, and eventually works its way back out.</p>
<p>The specific white cell we will be considering is an ellipse with the equation 4<i>x</i><sup>2</sup> + <i>y</i><sup>2</sup> = 100</p>
<p>The section corresponding to −0.01 ≤ <i>x</i> ≤ +0.01 at the top is missing, allowing the light to enter and exit through the hole.</p>
<div class="center"><img src="project/images/p144_1.png" class="dark_img" style="margin:10px 20px;" alt="" /><img src="project/images/p144_2.gif" class="dark_img" style="margin:10px 20px;" alt="" /></div>
<p>The light beam in this problem starts at the point (0.0,10.1) just outside the white cell, and the beam first impacts the mirror at (1.4,-9.6).</p>
<p>Each time the laser beam hits the surface of the ellipse, it follows the usual law of reflection "angle of incidence equals angle of reflection." That is, both the incident and reflected beams make the same angle with the normal line at the point of incidence.</p>
<p>In the figure on the left, the red line shows the first two points of contact between the laser beam and the wall of the white cell; the blue line shows the line tangent to the ellipse at the point of incidence of the first bounce.</p><p>The slope <i>m</i> of the tangent line at any point (<i>x</i>,<i>y</i>) of the given ellipse is: <i>m</i> = −4<i>x</i>/<i>y</i></p><p>The normal line is perpendicular to this tangent line at the point of incidence.</p>
<p>The animation on the right shows the first 10 reflections of the beam.</p>

<p>How many times does the beam hit the internal surface of the white cell before exiting?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-06ae-1f31b1b77c7f
begin
    submit_answer(nothing; prob_num=149)
end

# ╔═╡ 45880d10-2b34-11eb-3103-dd60d33efa71
html"""
<h2>Problem 145: How many reversible numbers are there below one-billion?</h2>
<p>Some positive integers <i>n</i> have the property that the sum [ <i>n</i> + reverse(<i>n</i>) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers <em>reversible</em>; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either <i>n</i> or reverse(<i>n</i>).</p>

<p>There are 120 reversible numbers below one-thousand.</p>

<p>How many reversible numbers are there below one-billion (10<sup>9</sup>)?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-1a62-cbc5237f8960
begin
    submit_answer(nothing; prob_num=150)
end

# ╔═╡ 45880d10-2b34-11eb-3e78-c1ad4c29d007
html"""
<h2>Problem 146: Investigating a Prime Pattern </h2>
<p>The smallest positive integer <i>n</i> for which the numbers <i>n</i><sup>2</sup>+1, <i>n</i><sup>2</sup>+3, <i>n</i><sup>2</sup>+7, <i>n</i><sup>2</sup>+9, <i>n</i><sup>2</sup>+13, and <i>n</i><sup>2</sup>+27 are consecutive primes is 10. The sum of all such integers <i>n</i> below one-million is 1242490.</p>

<p>What is the sum of all such integers <i>n</i> below 150 million?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-3d06-ff0a6ec495e8
begin
    submit_answer(nothing; prob_num=151)
end

# ╔═╡ 45880d10-2b34-11eb-0030-31c1874099ca
html"""
<h2>Problem 147: Rectangles in cross-hatched grids</h2>
<p>In a 3x2 cross-hatched grid, a total of 37 different rectangles could be situated within that grid as indicated in the sketch.</p>
<div class="center"><img src="project/images/p147.png" class="dark_img" alt="" /></div>
<p>There are 5 grids smaller than 3x2, vertical and horizontal dimensions being important, i.e. 1x1, 2x1, 3x1, 1x2 and 2x2. If each of them is cross-hatched, the following number of different rectangles could be situated within those smaller grids:</p>
<table class="grid" style="margin:0 auto;">
<tr><td style="width:50px;">1x1</td><td style="width:50px;">1</td></tr>
<tr><td>2x1</td><td>4</td></tr>
<tr><td>3x1</td><td>8</td></tr>
<tr><td>1x2</td><td>4</td></tr>
<tr><td>2x2</td><td>18</td></tr>
</table>

<p>Adding those to the 37 of the 3x2 grid, a total of 72 different rectangles could be situated within 3x2 and smaller grids.</p>

<p>How many different rectangles could be situated within 47x43 and smaller grids?</p>
"""

# ╔═╡ 45880d10-2b34-11eb-16e9-1d54061d1d8f
begin
    submit_answer(nothing; prob_num=152)
end

# ╔═╡ 45880d10-2b34-11eb-0de6-b9cb19f5c286
html"""
<h2>Problem 148: Exploring Pascal's triangle</h2>
<p>We can easily verify that none of the entries in the first seven rows of Pascal's triangle are divisible by 7:</p>
<table cellpadding="0" cellspacing="0" border="0" align="center"><tr><td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> 1</td>
</tr><tr><td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> 1</td>
<td> </td>
<td> 1</td>
</tr><tr><td> </td>
<td> </td>
<td> </td>
<td> </td>
<td> 1</td>
<td> </td>
<td> 2</td>
<td> </td>
<td> 1</td>
</tr><tr><td> </td>
<td> </td>
<td> </td>
<td> 1</td>
<td> </td>
<td> 3</td>
<td> </td>
<td> 3</td>
<td> </td>
<td> 1</td>
</tr><tr><td> </td>
<td> </td>
<td> 1</td>
<td> </td>
<td> 4</td>
<td> </td>
<td> 6</td>
<td> </td>
<td> 4</td>
<td> </td>
<td> 1</td>
</tr><tr><td> </td>
<td> 1</td>
<td> </td>
<td> 5</td>
<td> </td>
<td>10</td>
<td> </td>
<td>10</td>
<td> </td>
<td> 5</td>
<td> </td>
<td> 1</td>
</tr><tr><td>1</td>
<td> </td>
<td> 6</td>
<td> </td>
<td>15</td>
<td> </td>
<td>20</td>
<td> </td>
<td>15</td>
<td> </td>
<td> 6</td>
<td> </td>
<td> 1</td>
</tr></table><p>However, if we check the first one hundred rows, we will find that only 2361 of the 5050 entries are <i>not</i> divisible by 7.</p>

<p>Find the number of entries which are <i>not</i> divisible by 7 in the first one billion (10<sup>9</sup>) rows of Pascal's triangle.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-0e1d-2d539b5c4eb2
begin
    submit_answer(nothing; prob_num=153)
end

# ╔═╡ 45880d10-2b34-11eb-0e40-15bd1b85a996
html"""
<h2>Problem 149: Searching for a maximum-sum subsequence</h2>
<p>Looking at the table below, it is easy to verify that the maximum possible sum of adjacent numbers in any direction (horizontal, vertical, diagonal or anti-diagonal) <span style="white-space:nowrap;">is 16 (= 8 + 7 + 1).</span></p>

<div class="center">
<table border="1" cellpadding="6" cellspacing="0" style="margin:auto;"><tbody align="right"><tr><td>−2</td><td>5</td><td>3</td><td>2</td></tr><tr><td>9</td><td>−6</td><td>5</td><td>1</td></tr><tr><td>3</td><td>2</td><td>7</td><td>3</td></tr><tr><td>−1</td><td>8</td><td>−4</td><td>  8</td></tr></tbody></table></div>

<p>Now, let us repeat the search, but on a much larger scale:</p>

<p>First, generate four million pseudo-random numbers using a specific form of what is known as a "Lagged Fibonacci Generator":</p>

<p>For 1 ≤ <i>k</i> ≤ 55, <i>s</i><sub><i>k</i></sub> = [100003 − 200003<i>k</i> + 300007<i>k</i><sup>3</sup>] (modulo 1000000) − 500000.<br />
For 56 ≤ <i>k</i> ≤ 4000000, <i>s</i><sub><i>k</i></sub> = [<i>s</i><sub><i>k−24</i></sub> + <i>s</i><sub><i>k−55</i></sub> + 1000000] (modulo 1000000) − 500000.</p>

<p>Thus, <i>s</i><sub>10</sub> = −393027 and <i>s</i><sub>100</sub> = 86613.</p>

<p>The terms of <i>s</i> are then arranged in a 2000×2000 table, using the first 2000 numbers to fill the first row (sequentially), the next 2000 numbers to fill the second row, and so on.</p>

<p>Finally, find the greatest sum of (any number of) adjacent entries in any direction (horizontal, vertical, diagonal or anti-diagonal).</p>
"""

# ╔═╡ 45880d10-2b34-11eb-39f8-f5e21e2d0209
begin
    submit_answer(nothing; prob_num=154)
end

# ╔═╡ 45880d10-2b34-11eb-142c-eb6fdc323fba
html"""
<h2>Problem 150: Searching a triangular array for a sub-triangle having minimum-sum</h2>
<p>In a triangular array of positive and negative integers, we wish to find a sub-triangle such that the sum of the numbers it contains is the smallest possible.</p>
<p>In the example below, it can be easily verified that the marked triangle satisfies this condition having a sum of −42.</p>
<div class="center">
<img src="project/images/p150.gif" class="dark_img" alt="" /></div>
<p>We wish to make such a triangular array with one thousand rows, so we generate 500500 pseudo-random numbers <span style="font-style:italic;">s<sub>k</sub></span> in the range ±2<sup>19</sup>, using a type of random number generator (known as a Linear Congruential Generator) as follows:</p>
<p class="margin_left"><span style="font-style:italic;">t</span> := 0
<br />
for k = 1 up to k = 500500:
<br />
    <span style="font-style:italic;">t</span> := (615949*<span style="font-style:italic;">t</span> + 797807) modulo 2<sup>20</sup><br />
    <span style="font-style:italic;">s<sub>k</sub></span> := <span style="font-style:italic;">t</span>−2<sup>19</sup></p>
<p>Thus: <span style="font-style:italic;">s<sub>1</sub></span> = 273519, <span style="font-style:italic;">s<sub>2</sub></span> = −153582, <span style="font-style:italic;">s<sub>3</sub></span> = 450905 etc</p>
<p>Our triangular array is then formed using the pseudo-random numbers thus:</p>
<div style="text-align:center;font-style:italic;">
s<sub>1</sub><br />
s<sub>2</sub>  s<sub>3</sub><br />
s<sub>4</sub>  s<sub>5</sub>  s<sub>6</sub>  
<br />
s<sub>7</sub>  s<sub>8</sub>  s<sub>9</sub>  s<sub>10</sub><br />
...
</div>
<p>Sub-triangles can start at any element of the array and extend down as far as we like (taking-in the two elements directly below it from the next row, the three elements directly below from the row after that, and so on).
<br />
The "sum of a sub-triangle" is defined as the sum of all the elements it contains.
<br />
Find the smallest possible sub-triangle sum.</p>
"""

# ╔═╡ 45880d10-2b34-11eb-3e37-3d8b8b0e0354
begin
    submit_answer(nothing; prob_num=155)
end

# ╔═╡ 45880d10-2b34-11eb-2c60-ebd28448014c
html"""
<h2>Problem 151: Paper sheets of standard sizes: an expected-value problem</h2>
<p>A printing shop runs 16 batches (jobs) every week and each batch requires a sheet of special colour-proofing paper of size A5.</p>

<p>Every Monday morning, the supervisor opens a new envelope, containing a large sheet of the special paper with size A1.</p>

<p>The supervisor proceeds to cut it in half, thus getting two sheets of size A2. Then one of the sheets is cut in half to get two sheets of size A3 and so on until an A5-size sheet is obtained, which is needed for the first batch of the week.</p>

<p>All the unused sheets are placed back in the envelope.</p>

<div class="center"><img src="project/images/p151.png" class="dark_img" alt="" /></div>

<p>At the beginning of each subsequent batch, the supervisor takes from the envelope one sheet of paper at random. If it is of size A5, then it is used. If it is larger, then the 'cut-in-half' procedure is repeated until an A5-size sheet is obtained, and any remaining sheets are always placed back in the envelope.</p>

<p>Excluding the first and last batch of the week, find the expected number of times (during each week) that the supervisor finds a single sheet of paper in the envelope.</p>

<p>Give your answer rounded to six decimal places using the format x.xxxxxx .</p>
"""

# ╔═╡ 45880d10-2b34-11eb-2087-ab3db1ce733b
begin
    submit_answer(nothing; prob_num=156)
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