### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44212c90-8435-11eb-3fdf-e9445d6c552e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44212c90-8435-11eb-27e2-57b1de17dcee
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

# ╔═╡ 44212c90-8435-11eb-29cf-edb59940be3f
begin
    submit_answer(nothing; prob_num=126)
end

# ╔═╡ 44212c90-8435-11eb-0b5c-4756706a5591
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

# ╔═╡ 44212c90-8435-11eb-32fc-8365fa9c013b
begin
    submit_answer(nothing; prob_num=127)
end

# ╔═╡ 44212c90-8435-11eb-2357-35dd0af2083e
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

# ╔═╡ 44212c90-8435-11eb-379c-8d6b95ee011b
begin
    submit_answer(nothing; prob_num=128)
end

# ╔═╡ 44212c90-8435-11eb-3c7a-fdd3b37a53d0
html"""
<h2>Problem 129: Repunit divisibility</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>The least value of <i>n</i> for which A(<i>n</i>) first exceeds ten is 17.</p>
<p>Find the least value of <i>n</i> for which A(<i>n</i>) first exceeds one-million.</p>
"""

# ╔═╡ 44212c90-8435-11eb-0e97-8fcda40ea9b5
begin
    submit_answer(nothing; prob_num=129)
end

# ╔═╡ 44212c90-8435-11eb-113a-bd37bef9468b
html"""
<h2>Problem 130: Composites with prime repunit property</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>You are given that for all primes, <i>p</i> &gt; 5, that <i>p</i> − 1 is divisible by A(<i>p</i>). For example, when <i>p</i> = 41, A(41) = 5, and 40 is divisible by 5.</p>
<p>However, there are rare composite values for which this is also true; the first five examples being 91, 259, 451, 481, and 703.</p>
<p>Find the sum of the first twenty-five composite values of <i>n</i> for which<br />GCD(<i>n</i>, 10) = 1 and <i>n</i> − 1 is divisible by A(<i>n</i>).</p>
"""

# ╔═╡ 44212c90-8435-11eb-196d-91f5790245e8
begin
    submit_answer(nothing; prob_num=130)
end

# ╔═╡ 44212c90-8435-11eb-0207-3542d33e3ab8
html"""
<h2>Problem 131: Prime cube partnership</h2>
<p>There are some prime values, <i>p</i>, for which there exists a positive integer, <i>n</i>, such that the expression <i>n</i><sup>3</sup> + <i>n</i><sup>2</sup><i>p</i> is a perfect cube.</p>
<p>For example, when <i>p</i> = 19, 8<sup>3</sup> + 8<sup>2</sup>×19 = 12<sup>3</sup>.</p>
<p>What is perhaps most surprising is that for each prime with this property the value of <i>n</i> is unique, and there are only four such primes below one-hundred.</p>
<p>How many primes below one million have this remarkable property?</p>
"""

# ╔═╡ 44212c90-8435-11eb-0f20-5725f118358f
begin
    submit_answer(nothing; prob_num=131)
end

# ╔═╡ 44212c90-8435-11eb-3fb4-e1176df31f87
html"""
<h2>Problem 132: Large repunit factors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>.</p>
<p>For example, R(10) = 1111111111 = 11×41×271×9091, and the sum of these prime factors is 9414.</p>
<p>Find the sum of the first forty prime factors of R(10<sup>9</sup>).</p>
"""

# ╔═╡ 44212c90-8435-11eb-2b3b-41bd702346a1
begin
    submit_answer(nothing; prob_num=132)
end

# ╔═╡ 44212c90-8435-11eb-32cd-a3c0afc99006
html"""
<h2>Problem 133: Repunit nonfactors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<var>k</var>) to be a repunit of length <var>k</var>; for example, R(6) = 111111.</p>
<p>Let us consider repunits of the form R(10<sup><var>n</var></sup>).</p>
<p>Although R(10), R(100), or R(1000) are not divisible by 17, R(10000) is divisible by 17. Yet there is no value of <var>n</var> for which R(10<sup><var>n</var></sup>) will divide by 19. In fact, it is remarkable that 11, 17, 41, and 73 are the only four primes below one-hundred that can  be a factor of R(10<sup><var>n</var></sup>).</p>
<p>Find the sum of all the primes below one-hundred thousand that will never be a factor of R(10<sup><var>n</var></sup>).</p>
"""

# ╔═╡ 44212c90-8435-11eb-186c-b380b83cebaf
begin
    submit_answer(nothing; prob_num=133)
end

# ╔═╡ 44212c90-8435-11eb-2ef9-85e9809a81e2
html"""
<h2>Problem 134: Prime pair connection</h2>
<p>Consider the consecutive primes <i>p</i><sub>1</sub> = 19 and <i>p</i><sub>2</sub> = 23. It can be verified that 1219 is the smallest number such that the last digits are formed by <i>p</i><sub>1</sub> whilst also being divisible by <i>p</i><sub>2</sub>.</p>
<p>In fact, with the exception of <i>p</i><sub>1</sub> = 3 and <i>p</i><sub>2</sub> = 5, for every pair of consecutive primes, <i>p</i><sub>2</sub> &gt; <i>p</i><sub>1</sub>, there exist values of <i>n</i> for which the last digits are formed by <i>p</i><sub>1</sub> and <i>n</i> is divisible by <i>p</i><sub>2</sub>. Let <i>S</i> be the smallest of these values of <i>n</i>.</p>
<p>Find ∑ <i>S</i> for every pair of consecutive primes with 5 ≤ <i>p</i><sub>1</sub> ≤ 1000000.</p>
"""

# ╔═╡ 44212c90-8435-11eb-069c-779f44cb188c
begin
    submit_answer(nothing; prob_num=134)
end

# ╔═╡ 44212c90-8435-11eb-1c0e-5d33203277f6
html"""
<h2>Problem 135: Same differences</h2>
<p>Given the positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression, the least value of the positive integer, <i>n</i>, for which the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly two solutions is <i>n</i> = 27:</p>
<p class="center">34<sup>2</sup> − 27<sup>2</sup> − 20<sup>2</sup> = 12<sup>2</sup> − 9<sup>2</sup> − 6<sup>2</sup> = 27</p>
<p>It turns out that <i>n</i> = 1155 is the least value which has exactly ten solutions.</p>
<p>How many values of <i>n</i> less than one million have exactly ten distinct solutions?</p>
"""

# ╔═╡ 44212c90-8435-11eb-2f94-5b22e2e11d35
begin
    submit_answer(nothing; prob_num=135)
end

# ╔═╡ 44212c90-8435-11eb-02f9-0bfe1d083d34
html"""
<h2>Problem 136: Singleton difference</h2>
<p>The positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression. Given that <i>n</i> is a positive integer, the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly one solution when <i>n</i> = 20:</p>
<p class="center">13<sup>2</sup> − 10<sup>2</sup> − 7<sup>2</sup> = 20</p>
<p>In fact there are twenty-five values of <i>n</i> below one hundred for which the equation has a unique solution.</p>
<p>How many values of <i>n</i> less than fifty million have exactly one solution?</p>
"""

# ╔═╡ 44212c90-8435-11eb-1ce5-ad542542c1b1
begin
    submit_answer(nothing; prob_num=136)
end

# ╔═╡ 44212c90-8435-11eb-3842-cd3ae077dcae
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

# ╔═╡ 44212c90-8435-11eb-2596-7b2c3d8d5fbd
begin
    submit_answer(nothing; prob_num=137)
end

# ╔═╡ 44212c90-8435-11eb-14a3-07fc0c50b2e4
html"""
<h2>Problem 138: Special isosceles triangles</h2>
<p>Consider the isosceles triangle with base length, $b = 16$, and legs, $L = 17$.</p>
<div class="center">
<img src="project/images/p138.png" width="230" height="228" class="dark_img" alt="" /></div>
<p>By using the Pythagorean theorem it can be seen that the height of the triangle, $h = \sqrt{17^2 - 8^2} = 15$, which is one less than the base length.</p>
<p>With $b = 272$ and $L = 305$, we get $h = 273$, which is one more than the base length, and this is the second smallest isosceles triangle with the property that $h = b \pm 1$.</p>
<p>Find $\sum L$ for the twelve smallest isosceles triangles for which $h = b \pm 1$ and $b$, $L$ are positive integers.</p>
"""

# ╔═╡ 44212c90-8435-11eb-34af-8f1a0c436543
begin
    submit_answer(nothing; prob_num=138)
end

# ╔═╡ 44212c90-8435-11eb-3c88-67e8898a5998
html"""
<h2>Problem 139: Pythagorean tiles</h2>
<p>Let (<i>a</i>, <i>b</i>, <i>c</i>) represent the three sides of a right angle triangle with integral length sides. It is possible to place four such triangles together to form a square with length <i>c</i>.</p>
<p>For example, (3, 4, 5) triangles can be placed together to form a 5 by 5 square with a 1 by 1 hole in the middle and it can be seen that the 5 by 5 square can be tiled with twenty-five 1 by 1 squares.</p>
<div class="center">
<img src="project/images/p139.png" class="dark_img" alt="" /></div>
<p>However, if (5, 12, 13) triangles were used then the hole would measure 7 by 7 and these could not be used to tile the 13 by 13 square.</p>
<p>Given that the perimeter of the right triangle is less than one-hundred million, how many Pythagorean triangles would allow such a tiling to take place?</p>
"""

# ╔═╡ 44212c90-8435-11eb-12c8-61708d7a6159
begin
    submit_answer(nothing; prob_num=139)
end

# ╔═╡ 44212c90-8435-11eb-2e40-fb055b75751f
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

# ╔═╡ 44212c90-8435-11eb-288d-439f684354e3
begin
    submit_answer(nothing; prob_num=140)
end

# ╔═╡ 44212c90-8435-11eb-16da-15be4aab828c
html"""
<h2>Problem 141: Investigating progressive numbers, <i>n</i>, which are also square</h2>
<p>A positive integer, <i>n</i>, is divided by <i>d</i> and the quotient and remainder are <i>q</i> and <i>r</i> respectively. In addition <i>d</i>, <i>q</i>, and <i>r</i> are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.</p>
<p>For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).<br />
We will call such numbers, <i>n</i>, progressive.</p>
<p>Some progressive numbers, such as 9 and 10404 = 102<sup>2</sup>, happen to also be perfect squares.<br /> The sum of all progressive perfect squares below one hundred thousand is 124657.</p>
<p>Find the sum of all progressive perfect squares below one trillion (10<sup>12</sup>).</p>
"""

# ╔═╡ 44212c90-8435-11eb-02e7-8d96b0260917
begin
    submit_answer(nothing; prob_num=141)
end

# ╔═╡ 44212c90-8435-11eb-1b1e-27657b30053f
html"""
<h2>Problem 142: Perfect Square Collection</h2>
<p>Find the smallest x + y + z with integers x &gt; y &gt; z &gt; 0 such that x + y, x − y, x + z, x − z, y + z, y − z are all perfect squares.</p>
"""

# ╔═╡ 44212c90-8435-11eb-1152-53111c2e9f1b
begin
    submit_answer(nothing; prob_num=142)
end

# ╔═╡ 44212c90-8435-11eb-3d90-09c6bbd34518
html"""
<h2>Problem 143: Investigating the Torricelli point of a triangle</h2>
<p>Let ABC be a triangle with all interior angles being less than 120 degrees. Let X be any point inside the triangle and let XA = p, XC = q, and XB = r.</p>
<p>Fermat challenged Torricelli to find the position of X such that p + q + r was minimised.</p>
<p>Torricelli was able to prove that if equilateral triangles AOB, BNC and AMC are constructed on each side of triangle ABC, the circumscribed circles of AOB, BNC, and AMC will intersect at a single point, T, inside the triangle. Moreover he proved that T, called the Torricelli/Fermat point, minimises p + q + r. Even more remarkable, it can be shown that when the sum is minimised, AN = BM = CO = p + q + r and that AN, BM and CO also intersect at T.</p>
<div class="center"><img src="project/images/p143_torricelli.png" class="dark_img" alt="" /></div>
<p>If the sum is minimised and a, b, c, p, q and r are all positive integers we shall call triangle ABC a Torricelli triangle. For example, a = 399, b = 455, c = 511 is an example of a Torricelli triangle, with p + q + r = 784.</p>
<p>Find the sum of all distinct values of p + q + r ≤ 120000 for Torricelli triangles.</p>
"""

# ╔═╡ 44212c90-8435-11eb-2028-61285347371c
begin
    submit_answer(nothing; prob_num=143)
end

# ╔═╡ 44212c90-8435-11eb-0d84-274cde3a7174
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

# ╔═╡ 44212c90-8435-11eb-2128-7f32ba9b6c66
begin
    submit_answer(nothing; prob_num=144)
end

# ╔═╡ 44212c90-8435-11eb-00a3-6b45332fa845
html"""
<h2>Problem 145: How many reversible numbers are there below one-billion?</h2>
<p>Some positive integers <i>n</i> have the property that the sum [ <i>n</i> + reverse(<i>n</i>) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers <em>reversible</em>; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either <i>n</i> or reverse(<i>n</i>).</p>

<p>There are 120 reversible numbers below one-thousand.</p>

<p>How many reversible numbers are there below one-billion (10<sup>9</sup>)?</p>
"""

# ╔═╡ 44212c90-8435-11eb-18e8-79674f49563d
begin
    submit_answer(nothing; prob_num=145)
end

# ╔═╡ 44212c90-8435-11eb-1622-015ae15b8ca1
html"""
<h2>Problem 146: Investigating a Prime Pattern </h2>
<p>The smallest positive integer <i>n</i> for which the numbers <i>n</i><sup>2</sup>+1, <i>n</i><sup>2</sup>+3, <i>n</i><sup>2</sup>+7, <i>n</i><sup>2</sup>+9, <i>n</i><sup>2</sup>+13, and <i>n</i><sup>2</sup>+27 are consecutive primes is 10. The sum of all such integers <i>n</i> below one-million is 1242490.</p>

<p>What is the sum of all such integers <i>n</i> below 150 million?</p>
"""

# ╔═╡ 44212c90-8435-11eb-1159-7be7eeb3af59
begin
    submit_answer(nothing; prob_num=146)
end

# ╔═╡ 44212c90-8435-11eb-1903-45ec69924fdc
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

# ╔═╡ 44212c90-8435-11eb-1173-a11cfba99e58
begin
    submit_answer(nothing; prob_num=147)
end

# ╔═╡ 44212c90-8435-11eb-13af-3937eb2aa8bd
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

# ╔═╡ 44212c90-8435-11eb-1f81-5b7a412c4896
begin
    submit_answer(nothing; prob_num=148)
end

# ╔═╡ 44212c90-8435-11eb-2ffc-dd2edb7d3e4f
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

# ╔═╡ 44212c90-8435-11eb-13ee-f930e22ba0d1
begin
    submit_answer(nothing; prob_num=149)
end

# ╔═╡ 44212c90-8435-11eb-196b-672fda0550d4
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

# ╔═╡ 44212c90-8435-11eb-14d5-ab5d2863ed1a
begin
    submit_answer(nothing; prob_num=150)
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