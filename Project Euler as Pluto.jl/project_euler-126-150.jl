### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1abd6e90-84a3-11eb-1d5c-ab844ee1f152
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1abd6e90-84a3-11eb-0e98-c3fc036b9af0
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

# ╔═╡ 1abd6e90-84a3-11eb-068b-4bbcbf8a1c31
begin
    submit_answer(nothing; prob_num=126)
end

# ╔═╡ 1abd6e90-84a3-11eb-2886-ef6b264c300a
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

# ╔═╡ 1abd6e90-84a3-11eb-0600-6bd8922454ee
begin
    submit_answer(nothing; prob_num=127)
end

# ╔═╡ 1abd6e90-84a3-11eb-0cdb-6db526869614
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

# ╔═╡ 1abd6e90-84a3-11eb-3e66-8375f2bc8239
begin
    submit_answer(nothing; prob_num=128)
end

# ╔═╡ 1abd6e90-84a3-11eb-137c-05e4d2246897
html"""
<h2>Problem 129: Repunit divisibility</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>The least value of <i>n</i> for which A(<i>n</i>) first exceeds ten is 17.</p>
<p>Find the least value of <i>n</i> for which A(<i>n</i>) first exceeds one-million.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-16d6-2d204c9701ab
begin
    submit_answer(nothing; prob_num=129)
end

# ╔═╡ 1abd6e90-84a3-11eb-0864-fd1581a3a7b1
html"""
<h2>Problem 130: Composites with prime repunit property</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>You are given that for all primes, <i>p</i> &gt; 5, that <i>p</i> − 1 is divisible by A(<i>p</i>). For example, when <i>p</i> = 41, A(41) = 5, and 40 is divisible by 5.</p>
<p>However, there are rare composite values for which this is also true; the first five examples being 91, 259, 451, 481, and 703.</p>
<p>Find the sum of the first twenty-five composite values of <i>n</i> for which<br />GCD(<i>n</i>, 10) = 1 and <i>n</i> − 1 is divisible by A(<i>n</i>).</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2119-153c69391743
begin
    submit_answer(nothing; prob_num=130)
end

# ╔═╡ 1abd6e90-84a3-11eb-27d2-db742007930b
html"""
<h2>Problem 131: Prime cube partnership</h2>
<p>There are some prime values, <i>p</i>, for which there exists a positive integer, <i>n</i>, such that the expression <i>n</i><sup>3</sup> + <i>n</i><sup>2</sup><i>p</i> is a perfect cube.</p>
<p>For example, when <i>p</i> = 19, 8<sup>3</sup> + 8<sup>2</sup>×19 = 12<sup>3</sup>.</p>
<p>What is perhaps most surprising is that for each prime with this property the value of <i>n</i> is unique, and there are only four such primes below one-hundred.</p>
<p>How many primes below one million have this remarkable property?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-1958-cb2294945ffc
begin
    submit_answer(nothing; prob_num=131)
end

# ╔═╡ 1abd6e90-84a3-11eb-39d9-9129fb09cffe
html"""
<h2>Problem 132: Large repunit factors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>.</p>
<p>For example, R(10) = 1111111111 = 11×41×271×9091, and the sum of these prime factors is 9414.</p>
<p>Find the sum of the first forty prime factors of R(10<sup>9</sup>).</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-15da-93e5f432f471
begin
    submit_answer(nothing; prob_num=132)
end

# ╔═╡ 1abd6e90-84a3-11eb-1f77-a781f41bfc89
html"""
<h2>Problem 133: Repunit nonfactors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<var>k</var>) to be a repunit of length <var>k</var>; for example, R(6) = 111111.</p>
<p>Let us consider repunits of the form R(10<sup><var>n</var></sup>).</p>
<p>Although R(10), R(100), or R(1000) are not divisible by 17, R(10000) is divisible by 17. Yet there is no value of <var>n</var> for which R(10<sup><var>n</var></sup>) will divide by 19. In fact, it is remarkable that 11, 17, 41, and 73 are the only four primes below one-hundred that can  be a factor of R(10<sup><var>n</var></sup>).</p>
<p>Find the sum of all the primes below one-hundred thousand that will never be a factor of R(10<sup><var>n</var></sup>).</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3056-b7daaeb3b758
begin
    submit_answer(nothing; prob_num=133)
end

# ╔═╡ 1abd6e90-84a3-11eb-2bc8-cf99379c1858
html"""
<h2>Problem 134: Prime pair connection</h2>
<p>Consider the consecutive primes <i>p</i><sub>1</sub> = 19 and <i>p</i><sub>2</sub> = 23. It can be verified that 1219 is the smallest number such that the last digits are formed by <i>p</i><sub>1</sub> whilst also being divisible by <i>p</i><sub>2</sub>.</p>
<p>In fact, with the exception of <i>p</i><sub>1</sub> = 3 and <i>p</i><sub>2</sub> = 5, for every pair of consecutive primes, <i>p</i><sub>2</sub> &gt; <i>p</i><sub>1</sub>, there exist values of <i>n</i> for which the last digits are formed by <i>p</i><sub>1</sub> and <i>n</i> is divisible by <i>p</i><sub>2</sub>. Let <i>S</i> be the smallest of these values of <i>n</i>.</p>
<p>Find ∑ <i>S</i> for every pair of consecutive primes with 5 ≤ <i>p</i><sub>1</sub> ≤ 1000000.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-0a0f-83f850b48862
begin
    submit_answer(nothing; prob_num=134)
end

# ╔═╡ 1abd6e90-84a3-11eb-2866-85e223fd653f
html"""
<h2>Problem 135: Same differences</h2>
<p>Given the positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression, the least value of the positive integer, <i>n</i>, for which the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly two solutions is <i>n</i> = 27:</p>
<p class="center">34<sup>2</sup> − 27<sup>2</sup> − 20<sup>2</sup> = 12<sup>2</sup> − 9<sup>2</sup> − 6<sup>2</sup> = 27</p>
<p>It turns out that <i>n</i> = 1155 is the least value which has exactly ten solutions.</p>
<p>How many values of <i>n</i> less than one million have exactly ten distinct solutions?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-25a4-779ad9ec3981
begin
    submit_answer(nothing; prob_num=135)
end

# ╔═╡ 1abd6e90-84a3-11eb-3c68-03cd2cf04d88
html"""
<h2>Problem 136: Singleton difference</h2>
<p>The positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression. Given that <i>n</i> is a positive integer, the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly one solution when <i>n</i> = 20:</p>
<p class="center">13<sup>2</sup> − 10<sup>2</sup> − 7<sup>2</sup> = 20</p>
<p>In fact there are twenty-five values of <i>n</i> below one hundred for which the equation has a unique solution.</p>
<p>How many values of <i>n</i> less than fifty million have exactly one solution?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-0439-d937338d3b56
begin
    submit_answer(nothing; prob_num=136)
end

# ╔═╡ 1abd6e90-84a3-11eb-04ba-c95532594c3e
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

# ╔═╡ 1abd6e90-84a3-11eb-03d8-e726e4e526a3
begin
    submit_answer(nothing; prob_num=137)
end

# ╔═╡ 1abd6e90-84a3-11eb-26c0-4fabbdea5e78
html"""
<h2>Problem 138: Special isosceles triangles</h2>
<p>Consider the isosceles triangle with base length, $b = 16$, and legs, $L = 17$.</p>
<div class="center">
<img src="project/images/p138.png" width="230" height="228" class="dark_img" alt="" /></div>
<p>By using the Pythagorean theorem it can be seen that the height of the triangle, $h = \sqrt{17^2 - 8^2} = 15$, which is one less than the base length.</p>
<p>With $b = 272$ and $L = 305$, we get $h = 273$, which is one more than the base length, and this is the second smallest isosceles triangle with the property that $h = b \pm 1$.</p>
<p>Find $\sum L$ for the twelve smallest isosceles triangles for which $h = b \pm 1$ and $b$, $L$ are positive integers.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3bf1-618d39d4a036
begin
    submit_answer(nothing; prob_num=138)
end

# ╔═╡ 1abd6e90-84a3-11eb-147c-c7f7351ce240
html"""
<h2>Problem 139: Pythagorean tiles</h2>
<p>Let (<i>a</i>, <i>b</i>, <i>c</i>) represent the three sides of a right angle triangle with integral length sides. It is possible to place four such triangles together to form a square with length <i>c</i>.</p>
<p>For example, (3, 4, 5) triangles can be placed together to form a 5 by 5 square with a 1 by 1 hole in the middle and it can be seen that the 5 by 5 square can be tiled with twenty-five 1 by 1 squares.</p>
<div class="center">
<img src="project/images/p139.png" class="dark_img" alt="" /></div>
<p>However, if (5, 12, 13) triangles were used then the hole would measure 7 by 7 and these could not be used to tile the 13 by 13 square.</p>
<p>Given that the perimeter of the right triangle is less than one-hundred million, how many Pythagorean triangles would allow such a tiling to take place?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-05a4-3386ade3d792
begin
    submit_answer(nothing; prob_num=139)
end

# ╔═╡ 1abd6e90-84a3-11eb-20a1-5b7ba8804e7c
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

# ╔═╡ 1abd6e90-84a3-11eb-0fd8-ed37a024f87e
begin
    submit_answer(nothing; prob_num=140)
end

# ╔═╡ 1abd6e90-84a3-11eb-059d-7bef47ffbde7
html"""
<h2>Problem 141: Investigating progressive numbers, <i>n</i>, which are also square</h2>
<p>A positive integer, <i>n</i>, is divided by <i>d</i> and the quotient and remainder are <i>q</i> and <i>r</i> respectively. In addition <i>d</i>, <i>q</i>, and <i>r</i> are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.</p>
<p>For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).<br />
We will call such numbers, <i>n</i>, progressive.</p>
<p>Some progressive numbers, such as 9 and 10404 = 102<sup>2</sup>, happen to also be perfect squares.<br /> The sum of all progressive perfect squares below one hundred thousand is 124657.</p>
<p>Find the sum of all progressive perfect squares below one trillion (10<sup>12</sup>).</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-328b-8f65382d4a83
begin
    submit_answer(nothing; prob_num=141)
end

# ╔═╡ 1abd6e90-84a3-11eb-1b00-09c54d44e57d
html"""
<h2>Problem 142: Perfect Square Collection</h2>
<p>Find the smallest x + y + z with integers x &gt; y &gt; z &gt; 0 such that x + y, x − y, x + z, x − z, y + z, y − z are all perfect squares.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-15cc-7d52e8451735
begin
    submit_answer(nothing; prob_num=142)
end

# ╔═╡ 1abd6e90-84a3-11eb-20a6-f54da26ec9c0
html"""
<h2>Problem 143: Investigating the Torricelli point of a triangle</h2>
<p>Let ABC be a triangle with all interior angles being less than 120 degrees. Let X be any point inside the triangle and let XA = p, XC = q, and XB = r.</p>
<p>Fermat challenged Torricelli to find the position of X such that p + q + r was minimised.</p>
<p>Torricelli was able to prove that if equilateral triangles AOB, BNC and AMC are constructed on each side of triangle ABC, the circumscribed circles of AOB, BNC, and AMC will intersect at a single point, T, inside the triangle. Moreover he proved that T, called the Torricelli/Fermat point, minimises p + q + r. Even more remarkable, it can be shown that when the sum is minimised, AN = BM = CO = p + q + r and that AN, BM and CO also intersect at T.</p>
<div class="center"><img src="project/images/p143_torricelli.png" class="dark_img" alt="" /></div>
<p>If the sum is minimised and a, b, c, p, q and r are all positive integers we shall call triangle ABC a Torricelli triangle. For example, a = 399, b = 455, c = 511 is an example of a Torricelli triangle, with p + q + r = 784.</p>
<p>Find the sum of all distinct values of p + q + r ≤ 120000 for Torricelli triangles.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-06dc-0507052e194c
begin
    submit_answer(nothing; prob_num=143)
end

# ╔═╡ 1abd6e90-84a3-11eb-0846-e7264a6385ed
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

# ╔═╡ 1abd6e90-84a3-11eb-1867-755082364d49
begin
    submit_answer(nothing; prob_num=144)
end

# ╔═╡ 1abd6e90-84a3-11eb-0f55-2b7329bd5137
html"""
<h2>Problem 145: How many reversible numbers are there below one-billion?</h2>
<p>Some positive integers <i>n</i> have the property that the sum [ <i>n</i> + reverse(<i>n</i>) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers <em>reversible</em>; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either <i>n</i> or reverse(<i>n</i>).</p>

<p>There are 120 reversible numbers below one-thousand.</p>

<p>How many reversible numbers are there below one-billion (10<sup>9</sup>)?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-13ff-0f9fc2ffcbe3
begin
    submit_answer(nothing; prob_num=145)
end

# ╔═╡ 1abd6e90-84a3-11eb-0db9-b33e4196ad76
html"""
<h2>Problem 146: Investigating a Prime Pattern </h2>
<p>The smallest positive integer <i>n</i> for which the numbers <i>n</i><sup>2</sup>+1, <i>n</i><sup>2</sup>+3, <i>n</i><sup>2</sup>+7, <i>n</i><sup>2</sup>+9, <i>n</i><sup>2</sup>+13, and <i>n</i><sup>2</sup>+27 are consecutive primes is 10. The sum of all such integers <i>n</i> below one-million is 1242490.</p>

<p>What is the sum of all such integers <i>n</i> below 150 million?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-35c0-fbaa04ffb755
begin
    submit_answer(nothing; prob_num=146)
end

# ╔═╡ 1abd6e90-84a3-11eb-296d-bd1c97cfc031
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

# ╔═╡ 1abd6e90-84a3-11eb-2fab-a97281f13dbf
begin
    submit_answer(nothing; prob_num=147)
end

# ╔═╡ 1abd6e90-84a3-11eb-27e9-c71560e9bf31
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

# ╔═╡ 1abd6e90-84a3-11eb-1ce9-0da1f7af0464
begin
    submit_answer(nothing; prob_num=148)
end

# ╔═╡ 1abd6e90-84a3-11eb-1858-8f257175aa4a
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

# ╔═╡ 1abd6e90-84a3-11eb-2a31-2becf2317457
begin
    submit_answer(nothing; prob_num=149)
end

# ╔═╡ 1abd6e90-84a3-11eb-11c3-7fee6133c578
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

# ╔═╡ 1abd6e90-84a3-11eb-2798-930797c5851a
begin
    submit_answer(nothing; prob_num=150)
end

# ╔═╡ Cell order:
# ╠═1abd6e90-84a3-11eb-1d5c-ab844ee1f152
# ╟─1abd6e90-84a3-11eb-0e98-c3fc036b9af0
# ╠═1abd6e90-84a3-11eb-068b-4bbcbf8a1c31
# ╟─1abd6e90-84a3-11eb-2886-ef6b264c300a
# ╠═1abd6e90-84a3-11eb-0600-6bd8922454ee
# ╟─1abd6e90-84a3-11eb-0cdb-6db526869614
# ╠═1abd6e90-84a3-11eb-3e66-8375f2bc8239
# ╟─1abd6e90-84a3-11eb-137c-05e4d2246897
# ╠═1abd6e90-84a3-11eb-16d6-2d204c9701ab
# ╟─1abd6e90-84a3-11eb-0864-fd1581a3a7b1
# ╠═1abd6e90-84a3-11eb-2119-153c69391743
# ╟─1abd6e90-84a3-11eb-27d2-db742007930b
# ╠═1abd6e90-84a3-11eb-1958-cb2294945ffc
# ╟─1abd6e90-84a3-11eb-39d9-9129fb09cffe
# ╠═1abd6e90-84a3-11eb-15da-93e5f432f471
# ╟─1abd6e90-84a3-11eb-1f77-a781f41bfc89
# ╠═1abd6e90-84a3-11eb-3056-b7daaeb3b758
# ╟─1abd6e90-84a3-11eb-2bc8-cf99379c1858
# ╠═1abd6e90-84a3-11eb-0a0f-83f850b48862
# ╟─1abd6e90-84a3-11eb-2866-85e223fd653f
# ╠═1abd6e90-84a3-11eb-25a4-779ad9ec3981
# ╟─1abd6e90-84a3-11eb-3c68-03cd2cf04d88
# ╠═1abd6e90-84a3-11eb-0439-d937338d3b56
# ╟─1abd6e90-84a3-11eb-04ba-c95532594c3e
# ╠═1abd6e90-84a3-11eb-03d8-e726e4e526a3
# ╟─1abd6e90-84a3-11eb-26c0-4fabbdea5e78
# ╠═1abd6e90-84a3-11eb-3bf1-618d39d4a036
# ╟─1abd6e90-84a3-11eb-147c-c7f7351ce240
# ╠═1abd6e90-84a3-11eb-05a4-3386ade3d792
# ╟─1abd6e90-84a3-11eb-20a1-5b7ba8804e7c
# ╠═1abd6e90-84a3-11eb-0fd8-ed37a024f87e
# ╟─1abd6e90-84a3-11eb-059d-7bef47ffbde7
# ╠═1abd6e90-84a3-11eb-328b-8f65382d4a83
# ╟─1abd6e90-84a3-11eb-1b00-09c54d44e57d
# ╠═1abd6e90-84a3-11eb-15cc-7d52e8451735
# ╟─1abd6e90-84a3-11eb-20a6-f54da26ec9c0
# ╠═1abd6e90-84a3-11eb-06dc-0507052e194c
# ╟─1abd6e90-84a3-11eb-0846-e7264a6385ed
# ╠═1abd6e90-84a3-11eb-1867-755082364d49
# ╟─1abd6e90-84a3-11eb-0f55-2b7329bd5137
# ╠═1abd6e90-84a3-11eb-13ff-0f9fc2ffcbe3
# ╟─1abd6e90-84a3-11eb-0db9-b33e4196ad76
# ╠═1abd6e90-84a3-11eb-35c0-fbaa04ffb755
# ╟─1abd6e90-84a3-11eb-296d-bd1c97cfc031
# ╠═1abd6e90-84a3-11eb-2fab-a97281f13dbf
# ╟─1abd6e90-84a3-11eb-27e9-c71560e9bf31
# ╠═1abd6e90-84a3-11eb-1ce9-0da1f7af0464
# ╟─1abd6e90-84a3-11eb-1858-8f257175aa4a
# ╠═1abd6e90-84a3-11eb-2a31-2becf2317457
# ╟─1abd6e90-84a3-11eb-11c3-7fee6133c578
# ╠═1abd6e90-84a3-11eb-2798-930797c5851a