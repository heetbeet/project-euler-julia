### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22dc2de0-2b5d-11eb-1727-ad72593c7c94
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22dc2de0-2b5d-11eb-3e10-8fcb3c79352c
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

# ╔═╡ 22dc2de0-2b5d-11eb-0205-e9baba9b4630
begin
    submit_answer(nothing; prob_num=126)
end

# ╔═╡ 22dc2de0-2b5d-11eb-0caf-cd253d36063b
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

# ╔═╡ 22dc2de0-2b5d-11eb-18eb-a97aa92e5632
begin
    submit_answer(nothing; prob_num=127)
end

# ╔═╡ 22dc2de0-2b5d-11eb-33aa-c72e0eb9035d
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

# ╔═╡ 22dc2de0-2b5d-11eb-142b-2725beafb9e0
begin
    submit_answer(nothing; prob_num=128)
end

# ╔═╡ 22dc54f0-2b5d-11eb-1a48-9734cb528172
html"""
<h2>Problem 129: Repunit divisibility</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>The least value of <i>n</i> for which A(<i>n</i>) first exceeds ten is 17.</p>
<p>Find the least value of <i>n</i> for which A(<i>n</i>) first exceeds one-million.</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-0d78-e99ec2b363bd
begin
    submit_answer(nothing; prob_num=129)
end

# ╔═╡ 22dc54f0-2b5d-11eb-160c-9f03249f5707
html"""
<h2>Problem 130: Composites with prime repunit property</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>; for example, R(6) = 111111.</p>
<p>Given that <i>n</i> is a positive integer and GCD(<i>n</i>, 10) = 1, it can be shown that there always exists a value, <i>k</i>, for which R(<i>k</i>) is divisible by <i>n</i>, and let A(<i>n</i>) be the least such value of <i>k</i>; for example, A(7) = 6 and A(41) = 5.</p>
<p>You are given that for all primes, <i>p</i> &gt; 5, that <i>p</i> − 1 is divisible by A(<i>p</i>). For example, when <i>p</i> = 41, A(41) = 5, and 40 is divisible by 5.</p>
<p>However, there are rare composite values for which this is also true; the first five examples being 91, 259, 451, 481, and 703.</p>
<p>Find the sum of the first twenty-five composite values of <i>n</i> for which<br />GCD(<i>n</i>, 10) = 1 and <i>n</i> − 1 is divisible by A(<i>n</i>).</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-09bb-1bf289d31422
begin
    submit_answer(nothing; prob_num=130)
end

# ╔═╡ 22dc54f0-2b5d-11eb-3df9-81ec99781ffd
html"""
<h2>Problem 131: Prime cube partnership</h2>
<p>There are some prime values, <i>p</i>, for which there exists a positive integer, <i>n</i>, such that the expression <i>n</i><sup>3</sup> + <i>n</i><sup>2</sup><i>p</i> is a perfect cube.</p>
<p>For example, when <i>p</i> = 19, 8<sup>3</sup> + 8<sup>2</sup>×19 = 12<sup>3</sup>.</p>
<p>What is perhaps most surprising is that for each prime with this property the value of <i>n</i> is unique, and there are only four such primes below one-hundred.</p>
<p>How many primes below one million have this remarkable property?</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-19e7-1911a414dc6e
begin
    submit_answer(nothing; prob_num=131)
end

# ╔═╡ 22dc54f0-2b5d-11eb-1e32-e98647522efb
html"""
<h2>Problem 132: Large repunit factors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<i>k</i>) to be a repunit of length <i>k</i>.</p>
<p>For example, R(10) = 1111111111 = 11×41×271×9091, and the sum of these prime factors is 9414.</p>
<p>Find the sum of the first forty prime factors of R(10<sup>9</sup>).</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-0a39-f385e03e152a
begin
    submit_answer(nothing; prob_num=132)
end

# ╔═╡ 22dc54f0-2b5d-11eb-396b-f55998f544f6
html"""
<h2>Problem 133: Repunit nonfactors</h2>
<p>A number consisting entirely of ones is called a repunit. We shall define R(<var>k</var>) to be a repunit of length <var>k</var>; for example, R(6) = 111111.</p>
<p>Let us consider repunits of the form R(10<sup><var>n</var></sup>).</p>
<p>Although R(10), R(100), or R(1000) are not divisible by 17, R(10000) is divisible by 17. Yet there is no value of <var>n</var> for which R(10<sup><var>n</var></sup>) will divide by 19. In fact, it is remarkable that 11, 17, 41, and 73 are the only four primes below one-hundred that can  be a factor of R(10<sup><var>n</var></sup>).</p>
<p>Find the sum of all the primes below one-hundred thousand that will never be a factor of R(10<sup><var>n</var></sup>).</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-0eb7-23adab35ce08
begin
    submit_answer(nothing; prob_num=133)
end

# ╔═╡ 22dc54f0-2b5d-11eb-11c1-df272cccdf13
html"""
<h2>Problem 134: Prime pair connection</h2>
<p>Consider the consecutive primes <i>p</i><sub>1</sub> = 19 and <i>p</i><sub>2</sub> = 23. It can be verified that 1219 is the smallest number such that the last digits are formed by <i>p</i><sub>1</sub> whilst also being divisible by <i>p</i><sub>2</sub>.</p>
<p>In fact, with the exception of <i>p</i><sub>1</sub> = 3 and <i>p</i><sub>2</sub> = 5, for every pair of consecutive primes, <i>p</i><sub>2</sub> &gt; <i>p</i><sub>1</sub>, there exist values of <i>n</i> for which the last digits are formed by <i>p</i><sub>1</sub> and <i>n</i> is divisible by <i>p</i><sub>2</sub>. Let <i>S</i> be the smallest of these values of <i>n</i>.</p>
<p>Find ∑ <i>S</i> for every pair of consecutive primes with 5 ≤ <i>p</i><sub>1</sub> ≤ 1000000.</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-0edf-450fd114b9f0
begin
    submit_answer(nothing; prob_num=134)
end

# ╔═╡ 22dc54f0-2b5d-11eb-2660-13f587c321ba
html"""
<h2>Problem 135: Same differences</h2>
<p>Given the positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression, the least value of the positive integer, <i>n</i>, for which the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly two solutions is <i>n</i> = 27:</p>
<p class="center">34<sup>2</sup> − 27<sup>2</sup> − 20<sup>2</sup> = 12<sup>2</sup> − 9<sup>2</sup> − 6<sup>2</sup> = 27</p>
<p>It turns out that <i>n</i> = 1155 is the least value which has exactly ten solutions.</p>
<p>How many values of <i>n</i> less than one million have exactly ten distinct solutions?</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-1c06-ab2f1d85120b
begin
    submit_answer(nothing; prob_num=135)
end

# ╔═╡ 22dc54f0-2b5d-11eb-2952-15f5a02b2971
html"""
<h2>Problem 136: Singleton difference</h2>
<p>The positive integers, <i>x</i>, <i>y</i>, and <i>z</i>, are consecutive terms of an arithmetic progression. Given that <i>n</i> is a positive integer, the equation, <i>x</i><sup>2</sup> − <i>y</i><sup>2</sup> − <i>z</i><sup>2</sup> = <i>n</i>, has exactly one solution when <i>n</i> = 20:</p>
<p class="center">13<sup>2</sup> − 10<sup>2</sup> − 7<sup>2</sup> = 20</p>
<p>In fact there are twenty-five values of <i>n</i> below one hundred for which the equation has a unique solution.</p>
<p>How many values of <i>n</i> less than fifty million have exactly one solution?</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-05fa-55401c160df8
begin
    submit_answer(nothing; prob_num=136)
end

# ╔═╡ 22dc54f0-2b5d-11eb-2e92-29780c9ff182
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

# ╔═╡ 22dc54f0-2b5d-11eb-2d09-f1f5088b05d4
begin
    submit_answer(nothing; prob_num=137)
end

# ╔═╡ 22dc54f0-2b5d-11eb-3b32-83515e42ed1f
html"""
<h2>Problem 138: Special isosceles triangles</h2>
<p>Consider the isosceles triangle with base length, $b = 16$, and legs, $L = 17$.</p>
<div class="center">
<img src="project/images/p138.png" width="230" height="228" class="dark_img" alt="" /></div>
<p>By using the Pythagorean theorem it can be seen that the height of the triangle, $h = \sqrt{17^2 - 8^2} = 15$, which is one less than the base length.</p>
<p>With $b = 272$ and $L = 305$, we get $h = 273$, which is one more than the base length, and this is the second smallest isosceles triangle with the property that $h = b \pm 1$.</p>
<p>Find $\sum L$ for the twelve smallest isosceles triangles for which $h = b \pm 1$ and $b$, $L$ are positive integers.</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-05bb-c38562f7ba53
begin
    submit_answer(nothing; prob_num=138)
end

# ╔═╡ 22dc54f0-2b5d-11eb-3f79-8ffb74b35249
html"""
<h2>Problem 139: Pythagorean tiles</h2>
<p>Let (<i>a</i>, <i>b</i>, <i>c</i>) represent the three sides of a right angle triangle with integral length sides. It is possible to place four such triangles together to form a square with length <i>c</i>.</p>
<p>For example, (3, 4, 5) triangles can be placed together to form a 5 by 5 square with a 1 by 1 hole in the middle and it can be seen that the 5 by 5 square can be tiled with twenty-five 1 by 1 squares.</p>
<div class="center">
<img src="project/images/p139.png" class="dark_img" alt="" /></div>
<p>However, if (5, 12, 13) triangles were used then the hole would measure 7 by 7 and these could not be used to tile the 13 by 13 square.</p>
<p>Given that the perimeter of the right triangle is less than one-hundred million, how many Pythagorean triangles would allow such a tiling to take place?</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-2e6d-97d75c70c45f
begin
    submit_answer(nothing; prob_num=139)
end

# ╔═╡ 22dc54f0-2b5d-11eb-3e8a-a51d131063b7
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

# ╔═╡ 22dc54f0-2b5d-11eb-1d4f-d3cddf936994
begin
    submit_answer(nothing; prob_num=140)
end

# ╔═╡ 22dc54f0-2b5d-11eb-02ca-2fd032bb2ba1
html"""
<h2>Problem 141: Investigating progressive numbers, <i>n</i>, which are also square</h2>
<p>A positive integer, <i>n</i>, is divided by <i>d</i> and the quotient and remainder are <i>q</i> and <i>r</i> respectively. In addition <i>d</i>, <i>q</i>, and <i>r</i> are consecutive positive integer terms in a geometric sequence, but not necessarily in that order.</p>
<p>For example, 58 divided by 6 has quotient 9 and remainder 4. It can also be seen that 4, 6, 9 are consecutive terms in a geometric sequence (common ratio 3/2).<br />
We will call such numbers, <i>n</i>, progressive.</p>
<p>Some progressive numbers, such as 9 and 10404 = 102<sup>2</sup>, happen to also be perfect squares.<br /> The sum of all progressive perfect squares below one hundred thousand is 124657.</p>
<p>Find the sum of all progressive perfect squares below one trillion (10<sup>12</sup>).</p>
"""

# ╔═╡ 22dc54f0-2b5d-11eb-07ca-b9632e6a3301
begin
    submit_answer(nothing; prob_num=141)
end

# ╔═╡ 22dc7c02-2b5d-11eb-2d14-41d385ede412
html"""
<h2>Problem 142: Perfect Square Collection</h2>
<p>Find the smallest x + y + z with integers x &gt; y &gt; z &gt; 0 such that x + y, x − y, x + z, x − z, y + z, y − z are all perfect squares.</p>
"""

# ╔═╡ 22dc7c02-2b5d-11eb-3c38-1b8ce8429d7b
begin
    submit_answer(nothing; prob_num=142)
end

# ╔═╡ 22dc7c02-2b5d-11eb-09ce-11dbefe66f3e
html"""
<h2>Problem 143: Investigating the Torricelli point of a triangle</h2>
<p>Let ABC be a triangle with all interior angles being less than 120 degrees. Let X be any point inside the triangle and let XA = p, XC = q, and XB = r.</p>
<p>Fermat challenged Torricelli to find the position of X such that p + q + r was minimised.</p>
<p>Torricelli was able to prove that if equilateral triangles AOB, BNC and AMC are constructed on each side of triangle ABC, the circumscribed circles of AOB, BNC, and AMC will intersect at a single point, T, inside the triangle. Moreover he proved that T, called the Torricelli/Fermat point, minimises p + q + r. Even more remarkable, it can be shown that when the sum is minimised, AN = BM = CO = p + q + r and that AN, BM and CO also intersect at T.</p>
<div class="center"><img src="project/images/p143_torricelli.png" class="dark_img" alt="" /></div>
<p>If the sum is minimised and a, b, c, p, q and r are all positive integers we shall call triangle ABC a Torricelli triangle. For example, a = 399, b = 455, c = 511 is an example of a Torricelli triangle, with p + q + r = 784.</p>
<p>Find the sum of all distinct values of p + q + r ≤ 120000 for Torricelli triangles.</p>
"""

# ╔═╡ 22dc7c02-2b5d-11eb-3de2-23258ebaafc4
begin
    submit_answer(nothing; prob_num=143)
end

# ╔═╡ 22dc7c02-2b5d-11eb-2182-93d464bdd10d
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

# ╔═╡ 22dc7c02-2b5d-11eb-2e69-75ef0ecf2eae
begin
    submit_answer(nothing; prob_num=144)
end

# ╔═╡ 22dc7c02-2b5d-11eb-0016-0b80fc32c3f7
html"""
<h2>Problem 145: How many reversible numbers are there below one-billion?</h2>
<p>Some positive integers <i>n</i> have the property that the sum [ <i>n</i> + reverse(<i>n</i>) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers <em>reversible</em>; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either <i>n</i> or reverse(<i>n</i>).</p>

<p>There are 120 reversible numbers below one-thousand.</p>

<p>How many reversible numbers are there below one-billion (10<sup>9</sup>)?</p>
"""

# ╔═╡ 22dc7c02-2b5d-11eb-2d96-31ad56cb46f9
begin
    submit_answer(nothing; prob_num=145)
end

# ╔═╡ 22dc7c02-2b5d-11eb-0820-d5ab79f035ba
html"""
<h2>Problem 146: Investigating a Prime Pattern </h2>
<p>The smallest positive integer <i>n</i> for which the numbers <i>n</i><sup>2</sup>+1, <i>n</i><sup>2</sup>+3, <i>n</i><sup>2</sup>+7, <i>n</i><sup>2</sup>+9, <i>n</i><sup>2</sup>+13, and <i>n</i><sup>2</sup>+27 are consecutive primes is 10. The sum of all such integers <i>n</i> below one-million is 1242490.</p>

<p>What is the sum of all such integers <i>n</i> below 150 million?</p>
"""

# ╔═╡ 22dc7c02-2b5d-11eb-3d2c-15b77f941362
begin
    submit_answer(nothing; prob_num=146)
end

# ╔═╡ 22dc7c02-2b5d-11eb-3918-0b60801deda3
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

# ╔═╡ 22dc7c02-2b5d-11eb-2525-f1b87fdd77a6
begin
    submit_answer(nothing; prob_num=147)
end

# ╔═╡ 22dc7c02-2b5d-11eb-028e-65ef8bc3f396
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

# ╔═╡ 22dc7c02-2b5d-11eb-0d3d-577e55fe882a
begin
    submit_answer(nothing; prob_num=148)
end

# ╔═╡ 22dc7c02-2b5d-11eb-256a-6378d5cd2388
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

# ╔═╡ 22dc7c02-2b5d-11eb-35d9-17df002ec5cf
begin
    submit_answer(nothing; prob_num=149)
end

# ╔═╡ 22dc7c02-2b5d-11eb-14b5-09b1dd43a62a
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

# ╔═╡ 22dc7c02-2b5d-11eb-1815-4de50a53e477
begin
    submit_answer(nothing; prob_num=150)
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