### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4432dfd0-8435-11eb-174a-fb41acf1c339
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4432dfd0-8435-11eb-1cc9-f1786a690345
html"""
<h2>Problem 251: Cardano Triplets</h2>
<p>
A triplet of positive integers (<var>a</var>,<var>b</var>,<var>c</var>) is called a Cardano Triplet if it satisfies the condition:</p>
$$\sqrt[3]{a + b \sqrt{c}} + \sqrt[3]{a - b \sqrt{c}} = 1$$

<p>
For example, (2,1,5) is a Cardano Triplet.
</p>
<p>
There exist 149 Cardano Triplets for which <var>a</var>+<var>b</var>+<var>c</var> ≤ 1000.
</p>
<p>
Find how many Cardano Triplets exist such that <var>a</var>+<var>b</var>+<var>c</var> ≤ 110,000,000.
 
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-355d-21379b3c0305
begin
    submit_answer(nothing; prob_num=251)
end

# ╔═╡ 4432dfd0-8435-11eb-317f-a726ab694657
html"""
<h2>Problem 252: Convex Holes</h2>
<p>
Given a set of points on a plane, we define a convex hole to be a convex polygon having as vertices any of the given points and not containing any of the given points in its interior (in addition to the vertices, other given points may lie on the perimeter of the polygon). 
</p>
<p>
As an example, the image below shows a set of twenty points and a few such convex holes. 
The convex hole shown as a red heptagon has an area equal to 1049694.5 square units, which is the highest possible area for a convex hole on the given set of points.
</p>
<div class="center">
<img src="project/images/p252_convexhole.gif" class="dark_img" alt="" /></div>
<p>
</p><p>For our example, we used the first 20 points (<var>T</var><sub>2<var>k</var>−1</sub>, <var>T</var><sub>2<var>k</var></sub>), for <var>k</var> = 1,2,…,20, produced with the pseudo-random number generator:</p>

<center><table class="p252"><tr><td style="text-align:right;"><var>S</var><sub>0</sub></td>
    <td>=<sub> </sub></td>
    <td>290797<sub> </sub></td>
  </tr><tr><td><var>S</var><sub><var>n</var>+1</sub></td>
    <td>=<sub> </sub></td>
    <td><var>S</var><sub><var>n</var></sub><sup>2</sup> mod 50515093</td>
  </tr><tr><td style="text-align:right;"><var>T</var><sub><var>n</var></sub></td>
    <td>=<sub> </sub></td>
    <td>( <var>S</var><sub><var>n</var></sub> mod 2000 ) − 1000<sup> </sup></td>
  </tr></table></center>

<p>
<i>i.e.</i> (527, 144), (−488, 732), (−454, −947), …
</p>
<p>
What is the maximum area for a convex hole on the set containing the first 500 points in the pseudo-random sequence?<br /> Specify your answer including one digit after the decimal point.
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1f4c-2942893d51a8
begin
    submit_answer(nothing; prob_num=252)
end

# ╔═╡ 4432dfd0-8435-11eb-2b17-6f30e02f4e6a
html"""
<h2>Problem 253: Tidying up</h2>
<p>A small child has a “number caterpillar” consisting of forty jigsaw pieces, each with one number on it, which, when connected together in a line, reveal the numbers 1 to 40 in order.</p>

<p>Every night, the child's father has to pick up the pieces of the caterpillar that have been scattered across the play room. He picks up the pieces at random and places them in the correct order.<br /> As the caterpillar is built up in this way, it forms distinct segments that gradually merge together.<br /> The number of segments starts at zero (no pieces placed), generally increases up to about eleven or twelve, then tends to drop again before finishing at a single segment (all pieces placed).</p><p>

</p><p>For example:</p>
<div class="center">
<table class="grid" style="margin:0 auto;"><tr><th width="80" align="center"><b>Piece Placed</b></th>
<th width="80" align="center"><b>Segments So Far</b></th></tr>
<tr><td align="center">12</td><td align="center">1</td></tr><tr><td align="center">4</td><td align="center">2</td></tr><tr><td align="center">29</td><td align="center">3</td></tr><tr><td align="center">6</td><td align="center">4</td></tr><tr><td align="center">34</td><td align="center">5</td></tr><tr><td align="center">5</td><td align="center">4</td></tr><tr><td align="center">35</td><td align="center">4</td></tr><tr><td align="center">…</td><td align="center">…</td></tr></table></div>

<p>Let <var>M</var> be the maximum number of segments encountered during a random tidy-up of the caterpillar.<br />
For a caterpillar of ten pieces, the number of possibilities for each <var>M</var> is</p>
<div class="center">
<table class="grid" style="margin:0 auto;"><tr><th width="50" align="center"><b><var>M</var></b></th>
<th width="90" align="center"><b>Possibilities</b></th></tr>
<tr><td align="center">1</td><td align="right">512      </td></tr><tr><td align="center">2</td><td align="right">250912      </td></tr><tr><td align="center">3</td><td align="right">1815264      </td></tr><tr><td align="center">4</td><td align="right">1418112      </td></tr><tr><td align="center">5</td><td align="right">144000      </td></tr></table></div>

<p>so the most likely value of <var>M</var> is 3 and the average value is <sup>385643</sup>⁄<sub>113400</sub> = 3.400732, rounded to six decimal places.</p>

<p>The most likely value of <var>M</var> for a forty-piece caterpillar is 11; but what is the average value of <var>M</var>?</p>
<p>Give your answer rounded to six decimal places.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-11f1-1bcf876ca869
begin
    submit_answer(nothing; prob_num=253)
end

# ╔═╡ 4432dfd0-8435-11eb-0755-73b30921a627
html"""
<h2>Problem 254: Sums of Digit Factorials</h2>
<p>Define f(<var>n</var>) as the sum of the factorials of the digits of <var>n</var>. For example, f(342) = 3! + 4! + 2! = 32.</p>

<p>Define sf(<var>n</var>) as the sum of the digits of f(<var>n</var>). So sf(342) = 3 + 2 = 5.</p>

<p>Define g(<var>i</var>) to be the smallest positive integer <var>n</var> such that sf(<var>n</var>) = <var>i</var>. Though sf(342) is 5, sf(25) is also 5, and it can be verified that g(5) is 25.</p>

<p>Define sg(<var>i</var>) as the sum of the digits of g(<var>i</var>). So sg(5) = 2 + 5 = 7.</p>

<p>Further, it can be verified that g(20) is 267 and <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 20 is 156.</p>

<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 150?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-3b19-43ab4aab665f
begin
    submit_answer(nothing; prob_num=254)
end

# ╔═╡ 4432dfd0-8435-11eb-285e-4bd9b01d8bfc
html"""
<h2>Problem 255: Rounded Square Roots</h2>
<p>We define the <i>rounded-square-root</i> of a positive integer <var>n</var> as the square root of <var>n</var> rounded to the nearest integer.</p>

<p>The following procedure (essentially Heron's method adapted to integer arithmetic) finds the rounded-square-root of <var>n</var>:</p>
<p>Let <var>d</var> be the number of digits of the number <var>n</var>.<br />
If <var>d</var> is odd, set $x_0 = 2 \times 10^{(d-1)/2}$.<br />
If <var>d</var> is even, set $x_0 = 7 \times 10^{(d-2)/2}$.<br />
Repeat:</p>
$$x_{k+1} = \Biggl\lfloor{\dfrac{x_k + \lceil{n / x_k}\rceil}{2}}\Biggr\rfloor$$

<p>until $x_{k+1} = x_k$.</p>
<p>As an example, let us find the rounded-square-root of <var>n</var> = 4321.<br /><var>n</var> has 4 digits, so $x_0 = 7 \times 10^{(4-2)/2} = 70$.<br />
$$x_1 = \Biggl\lfloor{\dfrac{70 + \lceil{4321 / 70}\rceil}{2}}\Biggr\rfloor = 66$$
$$x_2 = \Biggl\lfloor{\dfrac{66 + \lceil{4321 / 66}\rceil}{2}}\Biggr\rfloor = 66$$

Since $x_2 = x_1$, we stop here.<br />
So, after just two iterations, we have found that the rounded-square-root of 4321 is 66 (the actual square root is 65.7343137…).
</p>
<p>The number of iterations required when using this method is surprisingly low.<br />
For example, we can find the rounded-square-root of a 5-digit integer (10,000 ≤ <var>n</var> ≤ 99,999) with an average of 3.2102888889 iterations (the average value was rounded to 10 decimal places).
</p>
<p>Using the procedure described above, what is the average number of iterations required to find the rounded-square-root of a 14-digit number (10<sup>13</sup> ≤ <var>n</var> &lt; 10<sup>14</sup>)?<br />
Give your answer rounded to 10 decimal places.
</p>
<p>Note: The symbols $\lfloor x \rfloor$ and $\lceil x \rceil$ represent the <dfn title="the largest integer not greater than x">floor function</dfn> and <dfn title="the smallest integer not less than x">ceiling function</dfn> respectively.
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-000d-a5c2cac01502
begin
    submit_answer(nothing; prob_num=255)
end

# ╔═╡ 4432dfd0-8435-11eb-1e8e-5bf788addec2
html"""
<h2>Problem 256: Tatami-Free Rooms</h2>
<span style="font-size:10pt;">
</span><p>Tatami are rectangular mats, used to completely cover the floor of a room, without overlap.</p>

<p>Assuming that the only type of available tatami has dimensions 1×2, there are obviously some limitations for the shape and size of the rooms that can be covered.</p>

<p>For this problem, we consider only rectangular rooms with integer dimensions <var>a</var>, <var>b</var> and even size <var>s</var> = <var>a</var>·<var>b</var>.<br />
We use the term 'size' to denote the floor surface area of the room, and — without loss of generality — we add the condition <var>a</var> ≤ <var>b</var>.</p>

<p>There is one rule to follow when laying out tatami: there must be no points where corners of four different mats meet.<br />
For example, consider the two arrangements below for a 4×4 room:</p>
<div align="center">
<img src="project/images/p256_tatami3.gif" alt="p256_tatami3.gif" /><br /></div>

<p>The arrangement on the left is acceptable, whereas the one on the right is not: a red "<span style="color:#FF0000;"><b>X</b></span>" in the middle, marks the point where four tatami meet.</p>

<p>Because of this rule, certain even-sized rooms cannot be covered with tatami: we call them tatami-free rooms.<br />
Further, we define <var>T</var>(<var>s</var>) as the number of tatami-free rooms of size <var>s</var>.</p>

<p>The smallest tatami-free room has size <var>s</var> = 70 and dimensions 7×10.<br />
All the other rooms of size <var>s</var> = 70 can be covered with tatami; they are: 1×70, 2×35 and 5×14.<br />
Hence, <var>T</var>(70) = 1.</p>

<p>Similarly, we can verify that <var>T</var>(1320) = 5 because there are exactly 5 tatami-free rooms of size <var>s</var> = 1320:<br />
20×66, 22×60, 24×55, 30×44 and 33×40.<br />
In fact, <var>s</var> = 1320 is the smallest room-size <var>s</var> for which <var>T</var>(<var>s</var>) = 5.</p>

<p>Find the smallest room-size <var>s</var> for which <var>T</var>(<var>s</var>) = 200.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-3122-59fc08a730be
begin
    submit_answer(nothing; prob_num=256)
end

# ╔═╡ 4432dfd0-8435-11eb-0385-c955e1e4956d
html"""
<h2>Problem 257: Angular Bisectors</h2>
<span style="font-size:11pt;">
</span><p>Given is an integer sided triangle ABC with sides a ≤ b ≤ c. 
(AB = c, BC = a and AC = b).<br />
The angular bisectors of the triangle intersect the sides at points E, F and G (see picture below).
</p>
<div align="center">
<img src="project/images/p257_bisector.gif" class="dark_img" alt="p257_bisector.gif" /><br /></div>
<p>
The segments EF, EG and FG partition the triangle ABC into four smaller triangles: AEG, BFE, CGF and EFG.<br />
It can be proven that for each of these four triangles the ratio area(ABC)/area(subtriangle) is rational.<br />
However, there exist triangles for which some or all of these ratios are integral.
</p>
<p>
How many triangles ABC with perimeter≤100,000,000 exist so that the ratio area(ABC)/area(AEG) is integral?
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-30ff-8b686147bff6
begin
    submit_answer(nothing; prob_num=257)
end

# ╔═╡ 4432dfd0-8435-11eb-0cd6-dd5a106cf885
html"""
<h2>Problem 258: A lagged Fibonacci sequence</h2>
<p>A sequence is defined as:</p>
<p>
</p><ul><li><var>g</var><sub><var>k</var></sub> = 1, for 0 ≤ <var>k</var> ≤ 1999</li>
<li><var>g</var><sub><var>k</var></sub> = <var>g</var><sub><var>k</var>-2000</sub> + <var>g</var><sub><var>k</var>-1999</sub>, for <var>k</var> ≥ 2000.
</li></ul><p>Find <var>g</var><sub><var>k</var></sub> mod 20092010 for <var>k</var> = 10<sup>18</sup>.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1006-bfdf33c4f2bf
begin
    submit_answer(nothing; prob_num=258)
end

# ╔═╡ 4432dfd0-8435-11eb-18d2-0333f01771dc
html"""
<h2>Problem 259: Reachable Numbers</h2>
<p>A positive integer will be called <i>reachable</i> if it can result from an arithmetic expression obeying the following rules:</p>

<ul><li>Uses the digits 1 through 9, in that order and exactly once each.</li>
<li>Any successive digits can be concatenated (for example, using the digits 2, 3 and 4 we obtain the number 234).</li>
<li>Only the four usual binary arithmetic operations (addition, subtraction, multiplication and division) are allowed.</li>
<li>Each operation can be used any number of times, or not at all.</li>
<li><dfn title="A minus sign applied to a single operand (as opposed to a subtraction operator between two operands)">Unary minus</dfn> is not allowed.</li>
<li>Any number of (possibly nested) parentheses may be used to define the order of operations.</li>
</ul><p>For example, 42 is reachable, since (1/23) * ((4*5)-6) * (78-9) = 42.</p>

<p>What is the sum of all positive reachable integers?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-0e48-296811d287ad
begin
    submit_answer(nothing; prob_num=259)
end

# ╔═╡ 4432dfd0-8435-11eb-3fe6-d7ad00555a67
html"""
<h2>Problem 260: Stone Game</h2>
<p>A game is played with three piles of stones and two players.<br />
On each player's turn, the player may remove one or more stones from the piles. However, if the player takes stones from more than one pile, then the same number of stones must be removed from each of the selected piles.</p>

<p>In other words, the player chooses some $N \gt 0$ and removes:</p>

<ul>
<li>$N$ stones from any single pile; or</li>
<li>$N$ stones from each of any two piles ($2N$ total); or</li>
<li>$N$ stones from each of the three piles ($3N$ total).</li>
</ul>

<p>The player taking the last stone(s) wins the game.</p>

<p>A <dfn>winning configuration</dfn> is one where the first player can force a win.<br />
For example, $(0,0,13)$, $(0,11,11)$, and $(5,5,5)$ are winning configurations because the first player can immediately remove all stones.</p>

<p>A <dfn>losing configuration</dfn> is one where the second player can force a win, no matter what the first player does.<br />
For example, $(0,1,2)$ and $(1,3,3)$ are losing configurations: any legal move leaves a winning configuration for the second player.</p>

<p>Consider all losing configurations $(x_i, y_i, z_i)$ where $x_i \le y_i \le z_i \le 100$.<br />
We can verify that $\sum (x_i + y_i + z_i) = 173895$ for these.</p>

<p>Find $\sum (x_i + y_i + z_i)$ where $(x_i, y_i, z_i)$ ranges over the losing configurations with $x_i \le y_i \le z_i \le 1000$.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-0ddb-81ec653b6115
begin
    submit_answer(nothing; prob_num=260)
end

# ╔═╡ 4432dfd0-8435-11eb-24db-dd3b9d829f3e
html"""
<h2>Problem 261: Pivotal Square Sums</h2>
<p>Let us call a positive integer <var>k</var> a <var>square-pivot</var>, if there is a pair of integers <var>m</var> &gt; 0 and <var>n</var> ≥ <var>k</var>, such that the sum of the (<var>m</var>+1) consecutive squares up to <var>k</var> equals the sum of the <var>m</var> consecutive squares from (<var>n</var>+1) on:</p>
<div align="center">
(<var>k</var>-<var>m</var>)<sup>2</sup> + ... + <var>k</var><sup>2</sup> = (<var>n</var>+1)<sup>2</sup> + ... + (<var>n</var>+<var>m</var>)<sup>2</sup>.</div>

<p>Some small square-pivots are
</p><ul><li><b>4</b>: 3<sup>2</sup> + <b>4</b><sup>2</sup>
 = 5<sup>2</sup></li>
<li><b>21</b>: 20<sup>2</sup> + <b>21</b><sup>2</sup> = 29<sup>2</sup></li>
<li><b>24</b>: 21<sup>2</sup> + 22<sup>2</sup> + 23<sup>2</sup> + <b>24</b><sup>2</sup> = 25<sup>2</sup> + 26<sup>2</sup> + 27<sup>2</sup></li>
<li><b>110</b>: 108<sup>2</sup> + 109<sup>2</sup> + <b>110</b><sup>2</sup> = 133<sup>2</sup> + 134<sup>2</sup></li></ul><p>Find the sum of all <b>distinct</b> square-pivots ≤ 10<sup>10</sup>.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-209e-3d51cea6e87c
begin
    submit_answer(nothing; prob_num=261)
end

# ╔═╡ 4432dfd0-8435-11eb-0ec1-17f20b6d2d14
html"""
<h2>Problem 262: Mountain Range</h2>
<p>The following equation represents the <i>continuous</i> topography of a mountainous region, giving the <dfn title="height above sea level">elevation</dfn> <var>h</var> at any point (<var>x</var>,<var>y</var>):</p>

<div align="center">
<img src="project/images/p262_formula1.gif" class="dark_img" alt="p262_formula1.gif" /><br /></div>

<p>A mosquito intends to fly from A(200,200) to B(1400,1400), without leaving the area given by 0 ≤ <var>x</var>, <var>y</var> ≤ 1600.</p>

<p>Because of the intervening mountains, it first rises straight up to a point A', having elevation <var>f</var>. Then, while remaining at the same elevation <var>f</var>, it flies around any obstacles until it arrives at a point B' directly above B.</p>

<p>First, determine <var>f<sub>min</sub></var> which is the minimum constant elevation allowing such a trip from A to B, while remaining in the specified area.<br />
Then, find the length of the shortest path between A' and B', while flying at that constant elevation <var>f<sub>min</sub></var>.</p>

<p>Give that length as your answer, rounded to three decimal places.</p>

<p><font><u>Note</u>: For convenience, the elevation function shown above is repeated below, in a form suitable for most programming languages:<br />
h=( 5000-0.005*(x*x+y*y+x*y)+12.5*(x+y) ) * exp( -abs(0.000001*(x*x+y*y)-0.0015*(x+y)+0.7) )</font></p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1419-f55a7cefa6e2
begin
    submit_answer(nothing; prob_num=262)
end

# ╔═╡ 4432dfd0-8435-11eb-0a0e-193c54f97e34
html"""
<h2>Problem 263: An engineers' dream come true</h2>
<p>
Consider the number 6. The divisors of 6 are: 1,2,3 and 6.<br />
Every number from 1 up to and including 6 can be written as a sum of distinct divisors of 6:<br />
1=1, 2=2, 3=1+2, 4=1+3, 5=2+3, 6=6.<br />
A number <var>n</var> is called a practical number if every number from 1 up to and including <var>n</var> can be expressed as a sum of distinct divisors of <var>n</var>.
</p>
<p>
A pair of consecutive prime numbers with a difference of six is called a sexy pair (since "sex" is the Latin word for "six"). The first sexy pair is (23, 29).
</p>
<p>
We may occasionally find a triple-pair, which means three consecutive sexy prime pairs, such that the second member of each pair is the first member of the next pair.
</p>
<p>
We shall call a number <var>n</var> such that :
</p><ul><li>(<var>n</var>-9, <var>n</var>-3), (<var>n</var>-3,<var>n</var>+3), (<var>n</var>+3, <var>n</var>+9) form a triple-pair, and 
</li><li>the numbers <var>n</var>-8, <var>n</var>-4, <var>n</var>, <var>n</var>+4 and <var>n</var>+8 are all practical,
</li></ul> 
an engineers’ paradise.

<p>
Find the sum of the first four engineers’ paradises.
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-32e7-877e5081f99a
begin
    submit_answer(nothing; prob_num=263)
end

# ╔═╡ 4432dfd0-8435-11eb-2ef5-b7d925b15460
html"""
<h2>Problem 264: Triangle Centres</h2>
<p>Consider all the triangles having:
</p><ul><li>All their vertices on <dfn title="Integer coordinates">lattice points</dfn>.</li>
<li><dfn title="Centre of the circumscribed circle">Circumcentre</dfn> at the origin O.</li>
<li><dfn title="Point where the three altitudes meet">Orthocentre</dfn> at the point H(5, 0).</li>
</ul><p>There are nine such triangles having a perimeter ≤ 50.<br />
Listed and shown in ascending order of their perimeter, they are:</p>

<p></p><table><tr><td>A(-4, 3), B(5, 0), C(4, -3)<br />
A(4, 3), B(5, 0), C(-4, -3)<br />
A(-3, 4), B(5, 0), C(3, -4)<br /><br /><br />
A(3, 4), B(5, 0), C(-3, -4)<br />
A(0, 5), B(5, 0), C(0, -5)<br />
A(1, 8), B(8, -1), C(-4, -7)<br /><br /><br />
A(8, 1), B(1, -8), C(-4, 7)<br />
A(2, 9), B(9, -2), C(-6, -7)<br />
A(9, 2), B(2, -9), C(-6, 7)<br /></td>
<td><img src="project/images/p264_TriangleCentres.gif" class="dark_img" alt="p264_TriangleCentres.gif" /></td>
</tr></table><p>The sum of their perimeters, rounded to four decimal places, is 291.0089.</p>

<p>Find all such triangles with a perimeter ≤ 10<sup>5</sup>.<br />
Enter as your answer the sum of their perimeters rounded to four decimal places.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1c9a-e33e10639cde
begin
    submit_answer(nothing; prob_num=264)
end

# ╔═╡ 4432dfd0-8435-11eb-3f9d-cb84b889b434
html"""
<h2>Problem 265: Binary Circles</h2>
<p>2<sup>N</sup> binary digits can be placed in a circle so that all the N-digit clockwise subsequences are distinct.</p>

<p>For N=3, two such circular arrangements are possible, ignoring rotations:</p>
<div align="center"><img src="project/images/p265_BinaryCircles.gif" class="dark_img" alt="p265_BinaryCircles.gif" /></div>

<p>For the first arrangement, the 3-digit subsequences, in clockwise order, are:<br /> 000, 001, 010, 101, 011, 111, 110 and 100.</p>

<p>Each circular arrangement can be encoded as a number by concatenating the binary digits starting with the subsequence of all zeros as the most significant bits and proceeding clockwise. The two arrangements for N=3 are thus represented as 23 and 29:
</p><div align="center">00010111 <sub>2</sub> = 23</div>
<div align="center">00011101 <sub>2</sub> = 29</div>

<p>Calling S(N) the sum of the unique numeric representations, we can see that S(3) = 23 + 29 = 52.</p>

<p>Find S(5).</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-0179-416d004bdda1
begin
    submit_answer(nothing; prob_num=265)
end

# ╔═╡ 4432dfd0-8435-11eb-1c83-05e60dab6884
html"""
<h2>Problem 266: Pseudo Square Root</h2>
<p>
The divisors of 12 are: 1,2,3,4,6 and 12.<br />
The largest divisor of 12 that does not exceed the square root of 12 is 3.<br />
We shall call the largest divisor of an integer <var>n</var> that does not exceed the square root of <var>n</var> the pseudo square root (PSR) of <var>n</var>.<br />
It can be seen that PSR(3102)=47.
</p>
<p>
Let <var>p</var> be the product of the primes below 190.<br />
Find PSR(<var>p</var>) mod 10<sup>16</sup>.
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1846-f74abbae12ed
begin
    submit_answer(nothing; prob_num=266)
end

# ╔═╡ 4432dfd0-8435-11eb-0920-c597351e877d
html"""
<h2>Problem 267: Billionaire</h2>
<p>You are given a unique investment opportunity.</p>
<p>Starting with £1 of capital, you can choose a fixed proportion, <var>f</var>, of your capital to bet on a fair coin toss repeatedly for 1000 tosses.</p>
<p>Your return is double your bet for heads and you lose your bet for tails.</p>
<p>For example, if <var>f</var> = 1/4,  for the first toss you bet £0.25, and if heads comes up you win £0.5 and so then have £1.5. You then bet £0.375 and if the second toss is tails, you have £1.125.</p>
<p>Choosing <var>f</var> to maximize your chances of having at least £1,000,000,000 after 1,000 flips, what is the chance that you become a billionaire?</p>
<p>All computations are assumed to be exact (no rounding), but give your answer rounded to 12 digits behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-3ecf-9d9d3eb780af
begin
    submit_answer(nothing; prob_num=267)
end

# ╔═╡ 4432dfd0-8435-11eb-1dd0-d55aeacb17eb
html"""
<h2>Problem 268: Counting numbers with at least four distinct prime factors less than 100</h2>
<p>It can be verified that there are 23 positive integers less than 1000 that are divisible by at least four distinct primes less than 100.</p>

<p>Find how many positive integers less than 10<sup>16</sup> are divisible by at least four distinct primes less than 100.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-0c1d-add90586890b
begin
    submit_answer(nothing; prob_num=268)
end

# ╔═╡ 4432dfd0-8435-11eb-30f6-91a463a9b831
html"""
<h2>Problem 269: Polynomials with at least one integer root</h2>
<p>A root or zero of a polynomial P(<var>x</var>) is a solution to the equation P(<var>x</var>) = 0. <br />
Define P<sub><var>n</var></sub> as the polynomial whose coefficients are the digits of <var>n</var>.<br />
For example, P<sub>5703</sub>(<var>x</var>) = 5<var>x</var><sup>3</sup> + 7<var>x</var><sup>2</sup> + 3.</p>

<p>We can see that:</p><ul><li>P<sub><var>n</var></sub>(0) is the last digit of <var>n</var>,</li>
<li>P<sub><var>n</var></sub>(1) is the sum of the digits of <var>n</var>,</li>
<li>P<sub><var>n</var></sub>(10) is <var>n</var> itself.</li></ul><p>Define Z(<var>k</var>) as the number of positive integers, <var>n</var>, not exceeding <var>k</var> for which the polynomial P<sub><var>n</var></sub> has at least one integer root.</p>

<p>It can be verified that Z(100 000) is 14696.</p>

<p>What is Z(10<sup>16</sup>)?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-2437-f75bd8d9fbce
begin
    submit_answer(nothing; prob_num=269)
end

# ╔═╡ 4432dfd0-8435-11eb-0cb0-1dd21935face
html"""
<h2>Problem 270: Cutting Squares</h2>
<p>A square piece of paper with integer dimensions N×N is placed with a corner at the origin and two of its sides along the <var>x</var>- and <var>y</var>-axes. Then, we cut it up respecting the following rules:
</p><ul><li>We only make straight cuts between two points lying on different sides of the square, and having integer coordinates.</li>
<li>Two cuts cannot cross, but several cuts can meet at the same border point.</li>
<li>Proceed until no more legal cuts can be made.</li>
</ul><p>Counting any reflections or rotations as distinct, we call C(N) the number of ways to cut an N×N square. For example, C(1) = 2 and C(2) = 30 (shown below).</p>
<div align="center"><img src="project/images/p270_CutSquare.gif" alt="p270_CutSquare.gif" /></div>

<p>What is C(30) mod 10<sup>8</sup> ?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-3c05-99939411ac81
begin
    submit_answer(nothing; prob_num=270)
end

# ╔═╡ 4432dfd0-8435-11eb-35f3-33a2ea8c9d28
html"""
<h2>Problem 271: Modular Cubes, part 1</h2>
<p>
For a positive number <var>n</var>, define S(<var>n</var>) as the sum of the integers <var>x,</var> for which 1&lt;<var>x</var>&lt;<var>n</var> and<br /><var>x</var><sup>3</sup>≡1 mod <var>n</var>.
</p>
<p>
When <var>n</var>=91, there are 8 possible values for <var>x</var>, namely : 9, 16, 22, 29, 53, 74, 79, 81.<br />
Thus, S(91)=9+16+22+29+53+74+79+81=363.</p>
<p>
Find S(13082761331670030).
</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-356c-49c751621b33
begin
    submit_answer(nothing; prob_num=271)
end

# ╔═╡ 4432dfd0-8435-11eb-06a5-53a85dca581e
html"""
<h2>Problem 272: Modular Cubes, part 2</h2>
<p>
For a positive number <var>n</var>, define C(<var>n</var>) as the number of the integers <var>x,</var> for which 1&lt;<var>x</var>&lt;<var>n</var> and<br /><var>x</var><sup>3</sup>≡1 mod <var>n</var>.
</p>
<p>
When <var>n</var>=91, there are 8 possible values for <var>x</var>, namely : 9, 16, 22, 29, 53, 74, 79, 81.<br />
Thus, C(91)=8.</p>
<p>
Find the sum of the positive numbers <var>n</var>≤10<sup>11</sup> for which C(<var>n</var>)=242.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-28e2-cf9c19d72715
begin
    submit_answer(nothing; prob_num=272)
end

# ╔═╡ 4432dfd0-8435-11eb-31d6-5fdafc928b94
html"""
<h2>Problem 273: Sum of Squares</h2>
<p>Consider equations of the form: <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>

<p>For <var>N</var>=65 there are two solutions:</p>
<p><var>a</var>=1, <var>b</var>=8 and <var>a</var>=4, <var>b</var>=7.</p>
<p>We call S(<var>N</var>) the sum of the values of <var>a</var> of all solutions of <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>
<p>Thus S(65) = 1 + 4 = 5.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>N</var>), for all squarefree <var>N</var> only divisible by primes of the form 4<var>k</var>+1 with 4<var>k</var>+1 &lt; 150.</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-2fba-47b7316e87d6
begin
    submit_answer(nothing; prob_num=273)
end

# ╔═╡ 4432dfd0-8435-11eb-3d78-491b57c6084f
html"""
<h2>Problem 274: Divisibility Multipliers</h2>
<p>For each integer <var>p</var> &gt; 1 coprime to 10 there is a positive <em>divisibility multiplier</em> <var>m</var> &lt; <var>p</var> which preserves divisibility by <var>p</var> for the following function on any positive integer, <var>n</var>:</p>

<p><var>f</var>(<var>n</var>) = (all but the last digit of <var>n</var>) + (the last digit of <var>n</var>) * <var>m</var></p>

<p>That is, if <var>m</var> is the divisibility multiplier for <var>p</var>, then <var>f</var>(<var>n</var>) is divisible by <var>p</var> if and only if <var>n</var> is divisible by <var>p</var>.</p>

<p>(When <var>n</var> is much larger than <var>p</var>, <var>f</var>(<var>n</var>) will be less than <var>n</var> and repeated application of <var>f</var> provides a multiplicative divisibility test for <var>p</var>.)</p>

<p>For example, the divisibility multiplier for 113 is 34.</p>

<p><var>f</var>(76275) = 7627 + 5 * 34 = 7797 : 76275 and 7797 are both divisible by 113<br /><var>f</var>(12345) = 1234 + 5 * 34 = 1404 : 12345 and 1404 are both not divisible by 113</p>

<p>The sum of the divisibility multipliers for the primes that are coprime to 10 and less than 1000 is 39517. What is the sum of the divisibility multipliers for the primes that are coprime to 10 and less than 10<sup>7</sup>?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-080c-377bd1bd99de
begin
    submit_answer(nothing; prob_num=274)
end

# ╔═╡ 4432dfd0-8435-11eb-38b1-59d489587aea
html"""
<h2>Problem 275: Balanced Sculptures</h2>
<p>Let us define a <i>balanced sculpture</i> of order <var>n</var> as follows:
</p><ul><li>A <dfn title="An arrangement of identical squares connected through shared edges; holes are allowed.">polyomino</dfn> made up of <var>n</var>+1 tiles known as the <i>blocks</i> (<var>n</var> tiles)<br /> and the <i>plinth</i> (remaining tile);</li>
<li>the plinth has its centre at position (<var>x</var> = 0, <var>y</var> = 0);</li>
<li>the blocks have <var>y</var>-coordinates greater than zero (so the plinth is the unique lowest tile);</li>
<li>the centre of mass of all the blocks, combined, has <var>x</var>-coordinate equal to zero.</li>
</ul><p>When counting the sculptures, any arrangements which are simply reflections about the <var>y</var>-axis, are <u>not</u> counted as distinct. For example, the 18 balanced sculptures of order 6 are shown below; note that each pair of mirror images (about the <var>y</var>-axis) is counted as one sculpture:</p>
<div align="center"><img src="project/images/p275_sculptures2.gif" alt="p275_sculptures2.gif" /></div>

<p>There are 964 balanced sculptures of order 10 and 360505 of order 15.<br />How many balanced sculptures are there of order 18?</p>
"""

# ╔═╡ 4432dfd0-8435-11eb-1b8e-214fccb305bd
begin
    submit_answer(nothing; prob_num=275)
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