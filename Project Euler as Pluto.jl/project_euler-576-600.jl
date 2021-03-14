### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ae8eb62-84a3-11eb-17e9-fd174aee6c95
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ae8eb62-84a3-11eb-396b-c55b79ed1fbf
html"""
<h2>Problem 576: Irrational jumps</h2>
<p>
A bouncing point moves counterclockwise along a circle with circumference $1$ with  jumps of constant length $l&lt;1$, until it hits a gap of length $g&lt;1$, that is placed in a distance $d$ counterclockwise from the starting point. The gap does not include the starting point, that is $g+d&lt;1$.</p>

<p>Let $S(l,g,d)$ be the sum of the length of all jumps, until the point falls into the gap. It can be shown that $S(l,g,d)$ is finite for any irrational jump size $l$, regardless of the values of $g$ and $d$.<br />
Examples: <br />
$S(\sqrt{\frac 1 2}, 0.06, 0.7)=0.7071 \dots$, $S(\sqrt{\frac 1 2}, 0.06, 0.3543)=1.4142 \dots$ and <br /> $S(\sqrt{\frac 1 2}, 0.06, 0.2427)=16.2634 \dots$.</p>
<p>
Let $M(n, g)$ be the maximum of $ \sum S(\sqrt{\frac 1 p}, g, d)$ for all primes $p \le n$ and any valid value of $d$.<br />
Examples:<br />
$M(3, 0.06) =29.5425 \dots$, since $S(\sqrt{\frac 1 2}, 0.06, 0.2427)+S(\sqrt{\frac 1 3}, 0.06, 0.2427)=29.5425 \dots$ is the maximal reachable sum for $g=0.06$. <br />
$M(10, 0.01)=266.9010 \dots$ </p>

<p>Find $M(100, 0.00002)$, rounded to 4 decimal places.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-32a1-0d1545a0c7c0
begin
    submit_answer(nothing; prob_num=576)
end

# ╔═╡ 1ae8eb62-84a3-11eb-00c2-95d7d6a2e836
html"""
<h2>Problem 577: Counting hexagons</h2>
<p>An equilateral triangle with integer side length $n \ge 3$ is divided into $n^2$ equilateral triangles with side length 1 as shown in the diagram below.<br />
The vertices of these triangles constitute a triangular lattice with $\frac{(n+1)(n+2)} 2$ lattice points.</p>
<p>Let $H(n)$ be the number of all regular hexagons that can be found by connecting 6 of these points.</p> 
<div class="center">
<img src="project/images/p577_counting_hexagons.png" alt="p577_counting_hexagons.png" />
</div>

<p>
For example, $H(3)=1$, $H(6)=12$ and $H(20)=966$.</p>

<p>Find $\displaystyle \sum_{n=3}^{12345} H(n)$.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-07d1-9748213ce537
begin
    submit_answer(nothing; prob_num=577)
end

# ╔═╡ 1ae8eb62-84a3-11eb-2f1b-83e03a2b9ef7
html"""
<h2>Problem 578: Integers with decreasing prime powers</h2>
<p>Any positive integer can be written as a product of prime powers: <var>p</var><sub>1</sub><sup><var>a</var><sub>1</sub></sup> × <var>p</var><sub>2</sub><sup><var>a</var><sub>2</sub></sup> × ... × <var>p<sub>k</sub><sup>a<sub>k</sub></sup></var>,<br />
where <var>p<sub>i</sub></var> are distinct prime integers, <var>a<sub>i</sub></var> &gt; 0 and <var>p<sub>i</sub></var> &lt; <var>p<sub>j</sub></var> if <var>i</var> &lt; <var>j</var>.</p>

<p>A <i>decreasing prime power</i> positive integer is one for which <var>a<sub>i</sub></var> ≥ <var>a<sub>j</sub></var> if <var>i</var> &lt; <var>j</var>.<br />
For example, 1, 2, 15=3×5, 360=2<sup>3</sup>×3<sup>2</sup>×5 and 1000=2<sup>3</sup>×5<sup>3</sup> are decreasing prime power integers.</p>

<p>Let C(<var>n</var>) be the count of decreasing prime power positive integers not exceeding <var>n</var>.<br />
C(100) = 94 since all positive integers not exceeding 100 have decreasing prime powers except 18, 50, 54, 75, 90 and 98.<br />
You are given C(10<sup>6</sup>) = 922052.</p>

<p>Find C(10<sup>13</sup>).</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-0cbe-1103c179dbbf
begin
    submit_answer(nothing; prob_num=578)
end

# ╔═╡ 1ae8eb62-84a3-11eb-2cfd-8f3946689477
html"""
<h2>Problem 579: Lattice points in lattice cubes</h2>
<p>A <b>lattice cube</b> is a cube in which all vertices have integer coordinates. Let C(<var>n</var>) be the number of different lattice cubes in which the coordinates of all vertices range between (and including) 0 and <var>n</var>. Two cubes are hereby considered different if any of their vertices have different coordinates.<br />
For example, C(1)=1, C(2)=9, C(4)=100, C(5)=229, C(10)=4469 and C(50)=8154671.
</p>
<p>Different cubes may contain different numbers of lattice points.</p>
<p>
For example, the cube with the vertices<br />
(0, 0, 0), (3, 0, 0), (0, 3, 0), (0, 0, 3), (0, 3, 3), (3, 0, 3), (3, 3, 0), (3, 3, 3) contains 64 lattice points (56 lattice points on the surface including the 8 vertices and 8 points within the cube). </p>
<p>In contrast, the cube with the vertices<br />
(0, 2, 2), (1, 4, 4), (2, 0, 3), (2, 3, 0), (3, 2, 5), (3, 5, 2), (4, 1, 1), (5, 3, 3) contains only 40 lattice points (20 points on the surface and 20 points within the cube), although both cubes have the same side length 3.
</p>
<p>
Let S(<var>n</var>) be the sum of the lattice points contained in the different lattice cubes in which the coordinates of all vertices range between (and including) 0 and <var>n</var>.</p>

<p>For example, S(1)=8, S(2)=91, S(4)=1878, S(5)=5832, S(10)=387003 and S(50)=29948928129.</p>

<p>Find S(5000) mod 10<sup>9</sup>.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-33c3-a12190eb70a3
begin
    submit_answer(nothing; prob_num=579)
end

# ╔═╡ 1ae8eb62-84a3-11eb-071c-c303600c8a3e
html"""
<h2>Problem 580: Squarefree Hilbert numbers</h2>
<p>
A <b>Hilbert number</b> is any positive integer of the form $4k+1$ for integer $k\geq 0$.  We shall define a <i>squarefree Hilbert number</i> as a Hilbert number which is not divisible by the square of any Hilbert number other than one.  For example, $117$ is a squarefree Hilbert number, equaling $9\times13$.  However $6237$ is a Hilbert number that is not squarefree in this sense, as it is divisible by $9^2$.  The number $3969$ is also not squarefree, as it is divisible by both $9^2$ and $21^2$.  
</p>
<p>
There are $2327192$ squarefree Hilbert numbers below $10^7$. <br />
How many squarefree Hilbert numbers are there below $10^{16}$?
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-296f-5766d708aaea
begin
    submit_answer(nothing; prob_num=580)
end

# ╔═╡ 1ae8eb62-84a3-11eb-0ded-1397d4bf4670
html"""
<h2>Problem 581: 47-smooth triangular numbers</h2>
<p>
A number is p-smooth if it has no prime factors larger than p.<br />
Let T be the sequence of triangular numbers, ie T(<var>n</var>)=<var>n</var>(<var>n</var>+1)/2.<br />
Find the sum of all indices <var>n</var> such that T(<var>n</var>) is 47-smooth.
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-281e-c104e5f841f8
begin
    submit_answer(nothing; prob_num=581)
end

# ╔═╡ 1ae8eb62-84a3-11eb-2816-63bce9bf7151
html"""
<h2>Problem 582: Nearly isosceles 120 degree triangles</h2>
<p>
Let a, b and c be the sides of an integer sided triangle with one angle of 120 degrees, a≤b≤c and b-a≤100.<br />
Let T(<var>n</var>) be the number of such triangles with c≤<var>n</var>.<br />
T(1000)=235 and T(10<sup>8</sup>)=1245.<br />
Find T(10<sup>100</sup>).
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-00c1-9738d39140e2
begin
    submit_answer(nothing; prob_num=582)
end

# ╔═╡ 1ae8eb62-84a3-11eb-3e3a-9b7905985fef
html"""
<h2>Problem 583: Heron Envelopes</h2>
<p>
A standard envelope shape is a convex figure consisting of an isosceles triangle (the flap) placed on top of a rectangle.  An example of an envelope with integral sides is shown below.  Note that to form a sensible envelope, the perpendicular height of the flap (BCD) must be smaller than the height of the rectangle (ABDE).  
</p>

<div class="center">
<img src="project/images/p583_heron_envelope.gif" alt="p583_heron_envelope.gif" />
</div>

<p>
In the envelope illustrated, not only are all the sides integral, but also all the diagonals (AC, AD, BD, BE and CE) are integral too. Let us call an envelope with these properties a <i>Heron envelope</i>.
</p>

<p>
Let S(<var>p</var>) be the sum of the perimeters of all the Heron envelopes with a perimeter less than or equal to <var>p</var>. 
</p>
<p>
You are given that S(10<sup>4</sup>) = 884680.  Find S(10<sup>7</sup>).
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-1f8f-a7177c0cdd19
begin
    submit_answer(nothing; prob_num=583)
end

# ╔═╡ 1ae8eb62-84a3-11eb-1528-8f54126327a4
html"""
<h2>Problem 584: Birthday Problem Revisited</h2>
<p>A long long time ago in a galaxy far far away, the Wimwians, inhabitants of planet WimWi, discovered an unmanned drone that had landed on their planet. On examining the drone, they uncovered a device that sought the answer for the so called "<b>Birthday Problem</b>". The description of the problem was as follows:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>3 people with Birthdays within 1 day from each other</b>.</i></p>

<p>The description further instructed them to enter the answer into the device and send the drone into space again. Startled by this turn of events, the Wimwians consulted their best mathematicians. Each year on Wimwi has 10 days and the mathematicians assumed equally likely birthdays and ignored leap years (leap years in Wimwi have 11 days), and found 5.78688636 to be the required answer. As such, the Wimwians entered this answer and sent the drone back into space.</p>


<p>After traveling light years away, the drone then landed on planet Joka. The same events ensued except this time, the numbers in the device had changed due to some unknown technical issues. The description read:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>3 people with Birthdays within 7 days from each other</b>.</i></p>

<p>With a 100-day year on the planet, the Jokars (inhabitants of Joka) found the answer to be 8.48967364 (rounded to 8 decimal places because the device allowed only 8 places after the decimal point) assuming equally likely birthdays. They too entered the answer into the device and launched the drone into space again.</p>


<p>This time the drone landed on planet Earth. As before the numbers in the problem description had changed. It read:</p>

<p><i>If people on your planet were to enter a very large room one by one, what will be the expected number of people in the room when you first find <b>4 people with Birthdays within 7 days from each other</b>.</i></p>

<p>What would be the answer (rounded to eight places after the decimal point) the people of Earth have to enter into the device for a year with 365 days? Ignore leap years. Also assume that all birthdays are equally likely and independent of each other.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-3579-bf093e6a1f99
begin
    submit_answer(nothing; prob_num=584)
end

# ╔═╡ 1ae8eb62-84a3-11eb-3594-e37283e7b61b
html"""
<h2>Problem 585: Nested square roots</h2>
<p>Consider the term $\small \sqrt{x+\sqrt{y}+\sqrt{z}}$ that is representing a <b>nested square root</b>. $x$, $y$ and $z$ are positive integers and $y$ and $z$ are not allowed to be perfect squares, so the number below the outer square root is irrational. Still it can be shown that for some combinations of $x$, $y$ and $z$ the given term can be simplified into a sum and/or difference of simple square roots of integers, actually <b>denesting</b> the square roots in the initial expression. </p>

<p>Here are some examples of this denesting:<br />
$\small \sqrt{3+\sqrt{2}+\sqrt{2}}=\sqrt{2}+\sqrt{1}=\sqrt{2}+1$<br />
$\small \sqrt{8+\sqrt{15}+\sqrt{15}}=\sqrt{5}+\sqrt{3}$<br />
$\small \sqrt{20+\sqrt{96}+\sqrt{12}}=\sqrt{9}+\sqrt{6}+\sqrt{3}-\sqrt{2}=3+\sqrt{6}+\sqrt{3}-\sqrt{2}$<br />
$\small \sqrt{28+\sqrt{160}+\sqrt{108}}=\sqrt{15}+\sqrt{6}+\sqrt{5}-\sqrt{2}$</p>
<p>As you can see the integers used in the denested expression may also be perfect squares resulting in further simplification.</p>

<p>Let F($n$) be the number of different terms $\small \sqrt{x+\sqrt{y}+\sqrt{z}}$, that can be denested into the sum and/or difference of a finite number of square roots, given the additional condition that $0&lt;x \le n$. That is,<br />
$\small \displaystyle \sqrt{x+\sqrt{y}+\sqrt{z}}=\sum_{i=1}^k s_i\sqrt{a_i}$<br />
with $k$, $x$, $y$, $z$ and all $a_i$ being positive integers, all $s_i =\pm 1$ and $x\le n$.<br /> Furthermore $y$ and $z$  are not allowed to be perfect squares.</p>

<p>Nested roots with the same value are not considered different, for example $\small \sqrt{7+\sqrt{3}+\sqrt{27}}$, $\small \sqrt{7+\sqrt{12}+\sqrt{12}}$ and $\small \sqrt{7+\sqrt{27}+\sqrt{3}}$, that can all three be denested into $\small 2+\sqrt{3}$, would only be counted once.</p>

<p>You are given that F(10)=17, F(15)=46, F(20)=86, F(30)=213 and F(100)=2918 and F(5000)=11134074.<br />
Find F(5000000).</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-3010-03c6a5e4b83c
begin
    submit_answer(nothing; prob_num=585)
end

# ╔═╡ 1ae8eb62-84a3-11eb-0a70-431b64fea3bb
html"""
<h2>Problem 586: Binary Quadratic Form</h2>
<p>
The number 209 can be expressed as $a^2 + 3ab + b^2$ in two distinct ways:
</p>
<p>
$ \qquad 209 = 8^2 + 3\cdot 8\cdot 5 + 5^2$ <br />
$ \qquad 209 = 13^2 + 3\cdot13\cdot 1 + 1^2$
</p>
<p>
Let $f(n,r)$ be the number of integers $k$ not exceeding $n$ that can be expressed as $k=a^2 + 3ab + b^2$, with $a\gt b&gt;0$ integers, in exactly $r$ different ways.
</p>
<p>
You are given that $f(10^5, 4) = 237$ and $f(10^8, 6) = 59517$.
</p>
<p>
Find $f(10^{15}, 40)$.
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-15ac-8d99d6d5c876
begin
    submit_answer(nothing; prob_num=586)
end

# ╔═╡ 1ae8eb62-84a3-11eb-3174-1fcebe06ebc6
html"""
<h2>Problem 587: Concave triangle</h2>
<p>
A square is drawn around a circle as shown in the diagram below on the left.<br />
We shall call the blue shaded region the L-section.<br />
A line is drawn from the bottom left of the square to the top right as shown in the diagram on the right.<br />
We shall call the orange shaded region a concave triangle.
</p>
<div class="center">
<img src="project/images/p587_concave_triangle_1.png" class="dark_img" alt="p587_concave_triangle_1.png" />
</div>
<p>
It should be clear that the concave triangle occupies exactly half of the L-section.
</p>
<p>

Two circles are placed next to each other horizontally, a rectangle is drawn around both circles, and a line is drawn from the bottom left to the top right as shown in the diagram below.
</p>
<div class="center">
<img src="project/images/p587_concave_triangle_2.png" class="dark_img" alt="p587_concave_triangle_2.png" />
</div>
<p>
This time the concave triangle occupies approximately 36.46% of the L-section.
</p>
<p>
If <var>n</var> circles are placed next to each other horizontally, a rectangle is drawn around the <var>n</var> circles, and a line is drawn from the bottom left to the top right, then it can be shown that the least value of <var>n</var> for which the concave triangle occupies less than 10% of the L-section is <var>n</var> = 15.
</p>
<p>
What is the least value of <var>n</var> for which the concave triangle occupies less than 0.1% of the L-section?
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-1f5f-91f41c1fdc79
begin
    submit_answer(nothing; prob_num=587)
end

# ╔═╡ 1ae8eb62-84a3-11eb-26ff-fbc195fe9b06
html"""
<h2>Problem 588: Quintinomial coefficients</h2>
<p>
The coefficients in the expansion of $(x+1)^k$ are called <b>binomial coefficients</b>.<br />
Analoguously the coefficients in the expansion of $(x^4+x^3+x^2+x+1)^k$ are called <b>quintinomial coefficients</b>.<br /> (quintus= Latin for fifth).
</p>
<p>
Consider the expansion of $(x^4+x^3+x^2+x+1)^3$:<br />
$x^{12}+3x^{11}+6x^{10}+10x^9+15x^8+18x^7+19x^6+18x^5+15x^4+10x^3+6x^2+3x+1$<br />
As we can see 7 out of the 13 quintinomial coefficients for $k=3$ are odd.
</p>
<p>
Let $Q(k)$ be the number of odd coefficients in the expansion of $(x^4+x^3+x^2+x+1)^k$.<br />
So $Q(3)=7$.
</p>
<p>
You are given $Q(10)=17$ and $Q(100)=35$.
</p>
<p>Find  $\sum_{k=1}^{18}Q(10^k) $.
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-1a21-eb8395f62520
begin
    submit_answer(nothing; prob_num=588)
end

# ╔═╡ 1ae8eb62-84a3-11eb-39e5-8951186f6b75
html"""
<h2>Problem 589: Poohsticks Marathon</h2>
<p>
Christopher Robin and Pooh Bear love the game of Poohsticks so much that they invented a new version which allows them to play for longer before one of them wins and they have to go home for tea. The game starts as normal with both dropping a stick simultaneously on the upstream side of a bridge. But rather than the game ending when one of the sticks emerges on the downstream side, instead they fish their sticks out of the water, and drop them back in again on the upstream side. The game only ends when one of the sticks emerges from under the bridge ahead of the other one having also 'lapped' the other stick - that is, having made one additional journey under the bridge compared to the other stick.
</p>
<p>
On a particular day when playing this game, the time taken for a stick to travel under the bridge varies between a minimum of 30 seconds, and a maximum of 60 seconds. The time taken to fish a stick out of the water and drop it back in again on the other side is 5 seconds. The current under the bridge has the unusual property that the sticks' journey time is always an integral number of seconds, and it is equally likely to emerge at any of the possible times between 30 and 60 seconds (inclusive). It turns out that under these circumstances, the expected time for playing a single game is 1036.15 seconds (rounded to 2 decimal places). This time is measured from the point of dropping the sticks for the first time, to the point where the winning stick emerges from under the bridge having lapped the other.
</p>
<p>
The stream flows at different rates each day, but maintains the property that the journey time in seconds is equally distributed amongst the integers from a minimum, $n$, to a maximum, $m$, inclusive. Let the expected time of play in seconds be $E(m,n)$. Hence $E(60,30)=1036.15...$
</p>
<p>
Let $S(k)=\sum_{m=2}^k\sum_{n=1}^{m-1}E(m,n)$.
</p>
<p>
For example $S(5)=7722.82$ rounded to 2 decimal places.
</p>
<p>
Find $S(100)$ and give your answer rounded to 2 decimal places.
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-3eeb-a7c25a578e52
begin
    submit_answer(nothing; prob_num=589)
end

# ╔═╡ 1ae8eb62-84a3-11eb-09c1-11807d7fa081
html"""
<h2>Problem 590: Sets with a given Least Common Multiple</h2>
<p>
Let H(<var>n</var>) denote the number of sets of positive integers such that the least common multiple of the integers in the set equals <var>n</var>.<br />
E.g.:<br />
The integers in the following ten sets all have a least common multiple of 6:<br />
{2,3}, {1,2,3}, {6}, {1,6}, {2,6} ,{1,2,6}, {3,6}, {1,3,6}, {2,3,6} and {1,2,3,6}.<br />
Thus H(6)=10.
</p>
<p>
Let L(<var>n</var>) denote the least common multiple of the numbers 1 through <var>n</var>.<br />
E.g. L(6) is the least common multiple of the numbers 1,2,3,4,5,6 and L(6) equals 60.
</p>
<p>
Let HL(<var>n</var>) denote H(L(<var>n</var>)).<br />
You are given HL(4)=H(12)=44.
</p>
<p>
Find HL(50000). Give your answer modulo 10<sup>9</sup>.
</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-025d-879544bb8c4d
begin
    submit_answer(nothing; prob_num=590)
end

# ╔═╡ 1ae8eb62-84a3-11eb-0965-998c341f2d38
html"""
<h2>Problem 591: Best Approximations by Quadratic Integers</h2>
<p>Given a non-square integer $d$, any real $x$ can be approximated arbitrarily close by <b>quadratic integers</b> $a+b\sqrt{d}$, where $a,b$ are integers. For example, the following inequalities approximate $\pi$ with precision $10^{-13}$:<br />
$$4375636191520\sqrt{2}-6188084046055 &lt; \pi &lt; 721133315582\sqrt{2}-1019836515172 $$<br /> 
We call $BQA_d(x,n)$ the quadratic integer closest to $x$ with the absolute values of $a,b$ not exceeding $n$.<br /> We also define the integral part of a quadratic integer as $I_d(a+b\sqrt{d}) = a$.</p>

<p>You are given that:</p>
<ul><li>$BQA_2(\pi,10) = 6 - 2\sqrt{2}$</li>
<li>$BQA_5(\pi,100)=26\sqrt{5}-55$</li>
<li>$BQA_7(\pi,10^6)=560323 - 211781\sqrt{7}$</li>
<li>$I_2(BQA_2(\pi,10^{13}))=-6188084046055$</li></ul>

<p>Find the sum of $|I_d(BQA_d(\pi,10^{13}))|$ for all  non-square positive integers less than 100.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-06c6-fbf344af7ae7
begin
    submit_answer(nothing; prob_num=591)
end

# ╔═╡ 1ae8eb62-84a3-11eb-3196-557c0f57afc8
html"""
<h2>Problem 592: Factorial trailing digits 2</h2>
<p>For any <var>N</var>, let <var>f</var>(<var>N</var>) be the last twelve hexadecimal digits before the trailing zeroes in <var>N</var>!.</p>

<p>For example, the hexadecimal representation of 20! is 21C3677C82B40000,<br />
so <var>f</var>(20) is the digit sequence 21C3677C82B4.</p>

<p>Find <var>f</var>(20!). Give your answer as twelve hexadecimal digits, using uppercase for the digits A to F.</p>
"""

# ╔═╡ 1ae8eb62-84a3-11eb-275b-b952c221ef65
begin
    submit_answer(nothing; prob_num=592)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-0041-bf7f4f730ce1
html"""
<h2>Problem 593: Fleeting Medians</h2>
<p>We define two sequences $S = \{S(1), S(2), ..., S(n)\}$ and $S_2 = \{S_2(1), S_2(2), ..., S_2(n)\}$:</p>

<p>$S(k) = (p_k)^k$ mod $10007$ where $p_k$ is the $k$th prime number.</p>

<p>$S_2(k) = S(k) + S(\lfloor\frac{k}{10000}\rfloor + 1)$ where $\lfloor \cdot \rfloor$ denotes the floor function.</p>

<p>Then let $M(i, j)$ be the median of elements $S_2(i)$ through $S_2(j)$, inclusive. For example, $M(1, 10) = 2021.5$ and $M(10^2, 10^3) = 4715.0$.</p>

<p>Let $F(n, k) = \sum_{i=1}^{n-k+1} M(i, i + k - 1)$. For example, $F(100, 10) = 463628.5$ and $F(10^5, 10^4) = 675348207.5$.</p>

<p>Find $F(10^7, 10^5)$. If the sum is not an integer, use $.5$ to denote a half. Otherwise, use $.0$ instead.</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-3a47-d7928c50f617
begin
    submit_answer(nothing; prob_num=593)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-1953-c75ea0be8aee
html"""
<h2>Problem 594: Rhombus Tilings</h2>
<p>
For a polygon $P$, let $t(P)$ be the number of ways in which $P$ can be tiled using rhombi and squares with edge length 1. Distinct rotations and reflections are counted as separate tilings.
</p>
<p>
For example, if $O$ is a regular octagon with edge length 1, then $t(O) = 8$. As it happens, all these 8 tilings are rotations of one another:
</p>
<div class="center">
<img src="project/images/p594_octagon_tilings_1.png" alt="p594_octagon_tilings_1.png" />
</div>
<p>
Let $O_{a,b}$ be the equal-angled convex octagon whose edges alternate in length between $a$ and $b$.
<br />
For example, here is $O_{2,1}$, with one of its tilings:
</p>
<div class="center">
<img src="project/images/p594_octagon_tilings_2.png" alt="p594_octagon_tilings_2.png" />
</div>

<p>
You are given that $t(O_{1,1})=8$, $t(O_{2,1})=76$ and $t(O_{3,2})=456572$.
</p>
<p>
Find $t(O_{4,2})$.
</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-0c46-0d27de15ebdd
begin
    submit_answer(nothing; prob_num=594)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-20a2-dfb300e35d79
html"""
<h2>Problem 595: Incremental Random Sort</h2>
<p>
A deck of cards numbered from 1 to n is shuffled randomly such that each permutation is equally likely.
</p>
<p>
The cards are to be sorted into ascending order using the following technique:
</p><ol>
<li> Look at the initial sequence of cards.  If it is already sorted, then there is no need for further action.  Otherwise, if any subsequences of cards happen to be in the correct place relative to one another (ascending with no gaps), then those subsequences are fixed by attaching the cards together.  For example, with 7 cards initially in the order 4123756, the cards labelled 1, 2 and 3 would be attached together, as would 5 and 6.
</li></ol>
<ol start="2">
<li> The cards are 'shuffled' by being thrown into the air, but note that any correctly sequenced cards remain attached, so their orders are maintained.  The cards (or bundles of attached cards) are then picked up randomly.  You should assume that this randomisation is unbiased, despite the fact that some cards are single, and others are grouped together. 
</li></ol>
<ol start="3">
<li> Repeat steps 1 and 2 until the cards are sorted. 
</li></ol>

<p>
   Let S(n) be the expected number of shuffles needed to sort the cards. Since the order is checked before the first shuffle, S(1) = 0. You are given that S(2) = 1, and S(5) = 4213/871.
</p>
<p>
Find S(52), and give your answer rounded to 8 decimal places.
</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-301a-fb58e5ed1385
begin
    submit_answer(nothing; prob_num=595)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-06b9-372550f9d46d
html"""
<h2>Problem 596: Number of lattice points in a hyperball</h2>
<p>Let T(<var>r</var>) be the number of integer quadruplets <var>x</var>, <var>y</var>, <var>z</var>, <var>t</var> such that <var>x</var><sup>2</sup> + <var>y</var><sup>2</sup> + <var>z</var><sup>2</sup> + <var>t</var><sup>2</sup> ≤ <var>r</var><sup>2</sup>. In other words, T(<var>r</var>) is the number of lattice points in the four-dimensional hyperball of radius <var>r</var>.</p>

<p>You are given that T(2) = 89, T(5) = 3121, T(100) = 493490641 and T(10<sup>4</sup>) = 49348022079085897.</p>

<p>Find T(10<sup>8</sup>) mod 1000000007.</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-13ed-03b292a2050c
begin
    submit_answer(nothing; prob_num=596)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-1b63-09feb42efaa6
html"""
<h2>Problem 597: Torpids</h2>
The Torpids are rowing races held annually in Oxford, following some curious rules:

<ul>
<li>
A division consists of $n$ boats (typically 13), placed in order based on past performance.
</li><li>
All boats within a division start at 40 metre intervals along the river, in order with the highest-placed boat starting furthest upstream.
</li><li>
The boats all start rowing simultaneously, upstream, trying to catch the boat in front while avoiding being caught by boats behind.
</li><li>
Each boat continues rowing until <em>either</em> it reaches the finish line <em>or</em> it catches up with ("bumps") a boat in front.
</li><li>
The finish line is a distance $L$ metres (the course length, in reality about 1800 metres) upstream from the starting position of the lowest-placed boat. (Because of the staggered starting positions, higher-placed boats row a slightly shorter course than lower-placed boats.)
</li><li>
When a "bump" occurs, the "bumping" boat takes no further part in the race. The "bumped" boat must continue, however, and may even be "bumped" again by boats that started two or more places behind it.
</li><li>
After the race, boats are assigned new places within the division, based on the bumps that occurred. Specifically, for any boat $A$ that started in a lower place than $B$, then $A$ will be placed higher than $B$ in the new order if and only if one of the following occurred:
  <ol>
  <li> $A$ bumped $B$ directly </li>
  <li> $A$ bumped another boat that went on to bump $B$ </li>
  <li> $A$ bumped another boat, that bumped yet another boat, that bumped $B$ </li>
  <li> etc </li></ol>
</li></ul>

<b>NOTE</b>: For the purposes of this problem you may disregard the boats' lengths, and assume that a bump occurs precisely when the two boats draw level. (In reality, a bump is awarded as soon as physical contact is made, which usually occurs when there is much less than a full boat length's overlap.)

<p>
Suppose that, in a particular race, each boat $B_j$ rows at a steady speed $v_j = -$log$X_j$ metres per second, where the $X_j$ are chosen randomly (with uniform distribution) between 0 and 1, independently from one another. These speeds are relative to the riverbank: you may disregard the flow of the river.
</p>
<p>
Let $p(n,L)$ be the probability that the new order is an <b>even permutation</b> of the starting order, when there are $n$ boats in the division and $L$ is the course length.
</p>
<p>
For example, with $n=3$ and $L=160$, labelling the boats as $A$,$B$,$C$ in starting order with $C$ highest, the different possible outcomes of the race are as follows:
</p>
<table cellspacing="15" align="center">
 <tr>
  <th> Bumps occurring </th>
  <th> New order </th>
  <th> Permutation </th>
  <th> Probability </th>
 </tr>
 <tr align="center">  
  <td> none </td>
  <td> $A$, $B$, $C$ </td>
  <td> even </td>
  <td> $4/15$ </td>
 </tr>
 <tr align="center">  
  <td> $B$ bumps $C$ </td>
  <td> $A$, $C$, $B$ </td>
  <td> odd </td>
  <td> $8/45$ </td>
 </tr>
 <tr align="center">  
  <td> $A$ bumps $B$ </td>
  <td> $B$, $A$, $C$ </td>
  <td> odd </td>
  <td> $1/3$ </td>
 </tr>
 <tr align="center">  
  <td>     $B$ bumps $C$, then $A$ bumps $C$     </td>
  <td> $C$, $A$, $B$ </td>
  <td> even </td>
  <td> $4/27$ </td>
 </tr>
 <tr align="center">  
  <td>     $A$ bumps $B$, then $B$ bumps $C$     </td>
  <td> $C$, $B$, $A$ </td>
  <td> odd </td>
  <td> $2/27$ </td>
 </tr>
</table>
<p>
Therefore, $p(3,160) = 4/15 + 4/27 = 56/135$.
</p>
<p>
You are also given that $p(4,400)=0.5107843137$, rounded to 10 digits after the decimal point.
</p>
<p>
Find $p(13,1800)$ rounded to 10 digits after the decimal point.
</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-187f-85ebdad976f9
begin
    submit_answer(nothing; prob_num=597)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-01ce-67df66dc99d4
html"""
<h2>Problem 598: Split Divisibilities</h2>
<p>
Consider the number 48.<br />
There are five pairs of integers $a$ and $b$ ($a \leq b$) such that $a \times b=48$: (1,48), (2,24), (3,16), (4,12) and (6,8).<br />
It can be seen that both 6 and 8 have 4 divisors.<br />
So of those five pairs one consists of two integers with the same number of divisors.</p>
<p>
In general:<br />
Let $C(n)$ be the number of pairs of positive integers $a \times b=n$, ($a \leq b$) such that $a$ and $b$ have the same number of divisors; <br />so $C(48)=1$.
</p>
<p>
You are given $C(10!)=3$: (1680, 2160), (1800, 2016) and (1890,1920).</p><p> 
Find $C(100!)$</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-309f-5bac909daa7d
begin
    submit_answer(nothing; prob_num=598)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-0bf9-df7bb35193a9
html"""
<h2>Problem 599: Distinct Colourings of a Rubik's Cube</h2>
<p>
The well-known <strong>Rubik's Cube</strong> puzzle has many fascinating mathematical properties. The 2×2×2 variant has 8 cubelets with a total of 24 visible faces, each with a coloured sticker. Successively turning faces will rearrange the cubelets, although not all arrangements of cubelets are reachable without dismantling the puzzle.
</p>
<p>
Suppose that we wish to apply new stickers to a 2×2×2 Rubik's cube in a non-standard colouring. Specifically, we have $n$ different colours available (with an unlimited supply of stickers of each colour), and we place one sticker on each of the 24 faces in any arrangement that we please. We are not required to use all the colours, and if desired the same colour may appear in more than one face of a single cubelet.
</p>
<p>
We say that two such colourings $c_1,c_2$ are <em>essentially distinct</em> if a cube coloured according to $c_1$ cannot be made to match a cube coloured according to $c_2$ by performing mechanically possible Rubik's Cube moves.
</p>
<p>
For example, with two colours available, there are 183 essentially distinct colourings.
</p>
<p>
How many essentially distinct colourings are there with 10 different colours available?
</p>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-3bff-31f4e0cda59f
begin
    submit_answer(nothing; prob_num=599)
end

# ╔═╡ 1aeb5c5e-84a3-11eb-06fb-654234cb3cc1
html"""
<h2>Problem 600: Integer sided equiangular hexagons</h2>
<p>Let <var>H</var>(<var>n</var>) be the number of distinct integer sided <b>equiangular</b> convex hexagons with perimeter not exceeding <var>n</var>.<br />
Hexagons are distinct if and only if they are not <b>congruent</b>.</p>

<p>You are given <var>H</var>(6) = 1, <var>H</var>(12) = 10, <var>H</var>(100) = 31248.<br />
Find <var>H</var>(55106).</p>

<div class="center">
<img src="project/images/p600_equiangular_hexagons.png" alt="p600-equiangular-hexagons.png" border="5" />
<p><i>Equiangular hexagons with perimeter not exceeding 12</i></p>
</div>
"""

# ╔═╡ 1aeb5c5e-84a3-11eb-1d17-f7bc88340b0c
begin
    submit_answer(nothing; prob_num=600)
end

# ╔═╡ Cell order:
# ╠═1ae8eb62-84a3-11eb-17e9-fd174aee6c95
# ╟─1ae8eb62-84a3-11eb-396b-c55b79ed1fbf
# ╠═1ae8eb62-84a3-11eb-32a1-0d1545a0c7c0
# ╟─1ae8eb62-84a3-11eb-00c2-95d7d6a2e836
# ╠═1ae8eb62-84a3-11eb-07d1-9748213ce537
# ╟─1ae8eb62-84a3-11eb-2f1b-83e03a2b9ef7
# ╠═1ae8eb62-84a3-11eb-0cbe-1103c179dbbf
# ╟─1ae8eb62-84a3-11eb-2cfd-8f3946689477
# ╠═1ae8eb62-84a3-11eb-33c3-a12190eb70a3
# ╟─1ae8eb62-84a3-11eb-071c-c303600c8a3e
# ╠═1ae8eb62-84a3-11eb-296f-5766d708aaea
# ╟─1ae8eb62-84a3-11eb-0ded-1397d4bf4670
# ╠═1ae8eb62-84a3-11eb-281e-c104e5f841f8
# ╟─1ae8eb62-84a3-11eb-2816-63bce9bf7151
# ╠═1ae8eb62-84a3-11eb-00c1-9738d39140e2
# ╟─1ae8eb62-84a3-11eb-3e3a-9b7905985fef
# ╠═1ae8eb62-84a3-11eb-1f8f-a7177c0cdd19
# ╟─1ae8eb62-84a3-11eb-1528-8f54126327a4
# ╠═1ae8eb62-84a3-11eb-3579-bf093e6a1f99
# ╟─1ae8eb62-84a3-11eb-3594-e37283e7b61b
# ╠═1ae8eb62-84a3-11eb-3010-03c6a5e4b83c
# ╟─1ae8eb62-84a3-11eb-0a70-431b64fea3bb
# ╠═1ae8eb62-84a3-11eb-15ac-8d99d6d5c876
# ╟─1ae8eb62-84a3-11eb-3174-1fcebe06ebc6
# ╠═1ae8eb62-84a3-11eb-1f5f-91f41c1fdc79
# ╟─1ae8eb62-84a3-11eb-26ff-fbc195fe9b06
# ╠═1ae8eb62-84a3-11eb-1a21-eb8395f62520
# ╟─1ae8eb62-84a3-11eb-39e5-8951186f6b75
# ╠═1ae8eb62-84a3-11eb-3eeb-a7c25a578e52
# ╟─1ae8eb62-84a3-11eb-09c1-11807d7fa081
# ╠═1ae8eb62-84a3-11eb-025d-879544bb8c4d
# ╟─1ae8eb62-84a3-11eb-0965-998c341f2d38
# ╠═1ae8eb62-84a3-11eb-06c6-fbf344af7ae7
# ╟─1ae8eb62-84a3-11eb-3196-557c0f57afc8
# ╠═1ae8eb62-84a3-11eb-275b-b952c221ef65
# ╟─1aeb5c5e-84a3-11eb-0041-bf7f4f730ce1
# ╠═1aeb5c5e-84a3-11eb-3a47-d7928c50f617
# ╟─1aeb5c5e-84a3-11eb-1953-c75ea0be8aee
# ╠═1aeb5c5e-84a3-11eb-0c46-0d27de15ebdd
# ╟─1aeb5c5e-84a3-11eb-20a2-dfb300e35d79
# ╠═1aeb5c5e-84a3-11eb-301a-fb58e5ed1385
# ╟─1aeb5c5e-84a3-11eb-06b9-372550f9d46d
# ╠═1aeb5c5e-84a3-11eb-13ed-03b292a2050c
# ╟─1aeb5c5e-84a3-11eb-1b63-09feb42efaa6
# ╠═1aeb5c5e-84a3-11eb-187f-85ebdad976f9
# ╟─1aeb5c5e-84a3-11eb-01ce-67df66dc99d4
# ╠═1aeb5c5e-84a3-11eb-309f-5bac909daa7d
# ╟─1aeb5c5e-84a3-11eb-0bf9-df7bb35193a9
# ╠═1aeb5c5e-84a3-11eb-3bff-31f4e0cda59f
# ╟─1aeb5c5e-84a3-11eb-06fb-654234cb3cc1
# ╠═1aeb5c5e-84a3-11eb-1d17-f7bc88340b0c