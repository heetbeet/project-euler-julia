### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ac49a80-84a3-11eb-2dad-25295e614fb0
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ac49a80-84a3-11eb-14c1-5308349560ca
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

# ╔═╡ 1ac49a80-84a3-11eb-3c17-dd477357e715
begin
    submit_answer(nothing; prob_num=251)
end

# ╔═╡ 1ac49a80-84a3-11eb-1ab7-cfd55b9d79e3
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

# ╔═╡ 1ac49a80-84a3-11eb-305e-43dc698637b4
begin
    submit_answer(nothing; prob_num=252)
end

# ╔═╡ 1ac49a80-84a3-11eb-2fb9-f39c7884447d
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

# ╔═╡ 1ac49a80-84a3-11eb-00e9-ed72606a99b6
begin
    submit_answer(nothing; prob_num=253)
end

# ╔═╡ 1ac49a80-84a3-11eb-16b3-89c960ad0fa0
html"""
<h2>Problem 254: Sums of Digit Factorials</h2>
<p>Define f(<var>n</var>) as the sum of the factorials of the digits of <var>n</var>. For example, f(342) = 3! + 4! + 2! = 32.</p>

<p>Define sf(<var>n</var>) as the sum of the digits of f(<var>n</var>). So sf(342) = 3 + 2 = 5.</p>

<p>Define g(<var>i</var>) to be the smallest positive integer <var>n</var> such that sf(<var>n</var>) = <var>i</var>. Though sf(342) is 5, sf(25) is also 5, and it can be verified that g(5) is 25.</p>

<p>Define sg(<var>i</var>) as the sum of the digits of g(<var>i</var>). So sg(5) = 2 + 5 = 7.</p>

<p>Further, it can be verified that g(20) is 267 and <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 20 is 156.</p>

<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 150?</p>
"""

# ╔═╡ 1ac49a80-84a3-11eb-15a9-0dccf0a85da9
begin
    submit_answer(nothing; prob_num=254)
end

# ╔═╡ 1ac49a80-84a3-11eb-3474-296e0eaaa85e
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

# ╔═╡ 1ac49a80-84a3-11eb-183f-d56d5597b921
begin
    submit_answer(nothing; prob_num=255)
end

# ╔═╡ 1ac49a80-84a3-11eb-0017-ed6105d87485
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

# ╔═╡ 1ac49a80-84a3-11eb-3742-2708c22893ce
begin
    submit_answer(nothing; prob_num=256)
end

# ╔═╡ 1ac49a80-84a3-11eb-2f08-59a0489e2f76
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

# ╔═╡ 1ac49a80-84a3-11eb-38f0-ef49ee568f7a
begin
    submit_answer(nothing; prob_num=257)
end

# ╔═╡ 1ac49a80-84a3-11eb-19d3-09db6b7d28b8
html"""
<h2>Problem 258: A lagged Fibonacci sequence</h2>
<p>A sequence is defined as:</p>
<p>
</p><ul><li><var>g</var><sub><var>k</var></sub> = 1, for 0 ≤ <var>k</var> ≤ 1999</li>
<li><var>g</var><sub><var>k</var></sub> = <var>g</var><sub><var>k</var>-2000</sub> + <var>g</var><sub><var>k</var>-1999</sub>, for <var>k</var> ≥ 2000.
</li></ul><p>Find <var>g</var><sub><var>k</var></sub> mod 20092010 for <var>k</var> = 10<sup>18</sup>.</p>
"""

# ╔═╡ 1ac49a80-84a3-11eb-3999-ed58bcdb1f24
begin
    submit_answer(nothing; prob_num=258)
end

# ╔═╡ 1ac49a80-84a3-11eb-3b36-0bc7bb564a8d
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

# ╔═╡ 1ac49a80-84a3-11eb-1f40-633fc5642e3c
begin
    submit_answer(nothing; prob_num=259)
end

# ╔═╡ 1ac49a80-84a3-11eb-2e46-f730a027ab62
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

# ╔═╡ 1ac49a80-84a3-11eb-3575-2f39d295732b
begin
    submit_answer(nothing; prob_num=260)
end

# ╔═╡ 1ac49a80-84a3-11eb-3606-075157a589fd
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

# ╔═╡ 1ac49a80-84a3-11eb-00b0-cf99917df8a2
begin
    submit_answer(nothing; prob_num=261)
end

# ╔═╡ 1ac49a80-84a3-11eb-12dc-df0aa35d86c4
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

# ╔═╡ 1ac49a80-84a3-11eb-1add-1b9899794388
begin
    submit_answer(nothing; prob_num=262)
end

# ╔═╡ 1ac49a80-84a3-11eb-0e9e-2740bbe39d78
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

# ╔═╡ 1ac49a80-84a3-11eb-1e75-ddf7a804d184
begin
    submit_answer(nothing; prob_num=263)
end

# ╔═╡ 1ac49a80-84a3-11eb-1e1f-7d1f9766310b
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

# ╔═╡ 1ac49a80-84a3-11eb-3ae0-d99d36fe2d63
begin
    submit_answer(nothing; prob_num=264)
end

# ╔═╡ 1ac49a80-84a3-11eb-2583-33d72bd966d6
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

# ╔═╡ 1ac49a80-84a3-11eb-03bb-8348dd1471c7
begin
    submit_answer(nothing; prob_num=265)
end

# ╔═╡ 1ac49a80-84a3-11eb-06a8-87baa12ada23
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

# ╔═╡ 1ac49a80-84a3-11eb-217e-15864b6dcf02
begin
    submit_answer(nothing; prob_num=266)
end

# ╔═╡ 1ac49a80-84a3-11eb-37bb-ebf399dd77c8
html"""
<h2>Problem 267: Billionaire</h2>
<p>You are given a unique investment opportunity.</p>
<p>Starting with £1 of capital, you can choose a fixed proportion, <var>f</var>, of your capital to bet on a fair coin toss repeatedly for 1000 tosses.</p>
<p>Your return is double your bet for heads and you lose your bet for tails.</p>
<p>For example, if <var>f</var> = 1/4,  for the first toss you bet £0.25, and if heads comes up you win £0.5 and so then have £1.5. You then bet £0.375 and if the second toss is tails, you have £1.125.</p>
<p>Choosing <var>f</var> to maximize your chances of having at least £1,000,000,000 after 1,000 flips, what is the chance that you become a billionaire?</p>
<p>All computations are assumed to be exact (no rounding), but give your answer rounded to 12 digits behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 1ac49a80-84a3-11eb-39ce-3902cc4866c5
begin
    submit_answer(nothing; prob_num=267)
end

# ╔═╡ 1ac70b80-84a3-11eb-13bb-7f4fe4a0dc4c
html"""
<h2>Problem 268: Counting numbers with at least four distinct prime factors less than 100</h2>
<p>It can be verified that there are 23 positive integers less than 1000 that are divisible by at least four distinct primes less than 100.</p>

<p>Find how many positive integers less than 10<sup>16</sup> are divisible by at least four distinct primes less than 100.</p>
"""

# ╔═╡ 1ac70b80-84a3-11eb-2b35-a3147d2b4a3e
begin
    submit_answer(nothing; prob_num=268)
end

# ╔═╡ 1ac70b80-84a3-11eb-1a8a-017a5c9571d4
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

# ╔═╡ 1ac70b80-84a3-11eb-21b2-073bdd19b07b
begin
    submit_answer(nothing; prob_num=269)
end

# ╔═╡ 1ac70b80-84a3-11eb-1690-43566957358a
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

# ╔═╡ 1ac70b80-84a3-11eb-2b8f-052dae3d1693
begin
    submit_answer(nothing; prob_num=270)
end

# ╔═╡ 1ac70b80-84a3-11eb-24f9-0fc716c35b47
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

# ╔═╡ 1ac70b80-84a3-11eb-3767-91b6164a4a5a
begin
    submit_answer(nothing; prob_num=271)
end

# ╔═╡ 1ac70b80-84a3-11eb-1afd-8fa0ea9f4307
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

# ╔═╡ 1ac70b80-84a3-11eb-1002-0bbe486d38a9
begin
    submit_answer(nothing; prob_num=272)
end

# ╔═╡ 1ac70b80-84a3-11eb-0513-930cd6f8aa79
html"""
<h2>Problem 273: Sum of Squares</h2>
<p>Consider equations of the form: <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>

<p>For <var>N</var>=65 there are two solutions:</p>
<p><var>a</var>=1, <var>b</var>=8 and <var>a</var>=4, <var>b</var>=7.</p>
<p>We call S(<var>N</var>) the sum of the values of <var>a</var> of all solutions of <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>
<p>Thus S(65) = 1 + 4 = 5.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>N</var>), for all squarefree <var>N</var> only divisible by primes of the form 4<var>k</var>+1 with 4<var>k</var>+1 &lt; 150.</p>
"""

# ╔═╡ 1ac70b80-84a3-11eb-1a45-7da090f8cd50
begin
    submit_answer(nothing; prob_num=273)
end

# ╔═╡ 1ac70b80-84a3-11eb-02a4-91b94d28369c
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

# ╔═╡ 1ac70b80-84a3-11eb-3400-3fc125755150
begin
    submit_answer(nothing; prob_num=274)
end

# ╔═╡ 1ac70b80-84a3-11eb-2742-3f83aeb9baf2
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

# ╔═╡ 1ac70b80-84a3-11eb-05c6-f5fea8174f70
begin
    submit_answer(nothing; prob_num=275)
end

# ╔═╡ Cell order:
# ╠═1ac49a80-84a3-11eb-2dad-25295e614fb0
# ╟─1ac49a80-84a3-11eb-14c1-5308349560ca
# ╠═1ac49a80-84a3-11eb-3c17-dd477357e715
# ╟─1ac49a80-84a3-11eb-1ab7-cfd55b9d79e3
# ╠═1ac49a80-84a3-11eb-305e-43dc698637b4
# ╟─1ac49a80-84a3-11eb-2fb9-f39c7884447d
# ╠═1ac49a80-84a3-11eb-00e9-ed72606a99b6
# ╟─1ac49a80-84a3-11eb-16b3-89c960ad0fa0
# ╠═1ac49a80-84a3-11eb-15a9-0dccf0a85da9
# ╟─1ac49a80-84a3-11eb-3474-296e0eaaa85e
# ╠═1ac49a80-84a3-11eb-183f-d56d5597b921
# ╟─1ac49a80-84a3-11eb-0017-ed6105d87485
# ╠═1ac49a80-84a3-11eb-3742-2708c22893ce
# ╟─1ac49a80-84a3-11eb-2f08-59a0489e2f76
# ╠═1ac49a80-84a3-11eb-38f0-ef49ee568f7a
# ╟─1ac49a80-84a3-11eb-19d3-09db6b7d28b8
# ╠═1ac49a80-84a3-11eb-3999-ed58bcdb1f24
# ╟─1ac49a80-84a3-11eb-3b36-0bc7bb564a8d
# ╠═1ac49a80-84a3-11eb-1f40-633fc5642e3c
# ╟─1ac49a80-84a3-11eb-2e46-f730a027ab62
# ╠═1ac49a80-84a3-11eb-3575-2f39d295732b
# ╟─1ac49a80-84a3-11eb-3606-075157a589fd
# ╠═1ac49a80-84a3-11eb-00b0-cf99917df8a2
# ╟─1ac49a80-84a3-11eb-12dc-df0aa35d86c4
# ╠═1ac49a80-84a3-11eb-1add-1b9899794388
# ╟─1ac49a80-84a3-11eb-0e9e-2740bbe39d78
# ╠═1ac49a80-84a3-11eb-1e75-ddf7a804d184
# ╟─1ac49a80-84a3-11eb-1e1f-7d1f9766310b
# ╠═1ac49a80-84a3-11eb-3ae0-d99d36fe2d63
# ╟─1ac49a80-84a3-11eb-2583-33d72bd966d6
# ╠═1ac49a80-84a3-11eb-03bb-8348dd1471c7
# ╟─1ac49a80-84a3-11eb-06a8-87baa12ada23
# ╠═1ac49a80-84a3-11eb-217e-15864b6dcf02
# ╟─1ac49a80-84a3-11eb-37bb-ebf399dd77c8
# ╠═1ac49a80-84a3-11eb-39ce-3902cc4866c5
# ╟─1ac70b80-84a3-11eb-13bb-7f4fe4a0dc4c
# ╠═1ac70b80-84a3-11eb-2b35-a3147d2b4a3e
# ╟─1ac70b80-84a3-11eb-1a8a-017a5c9571d4
# ╠═1ac70b80-84a3-11eb-21b2-073bdd19b07b
# ╟─1ac70b80-84a3-11eb-1690-43566957358a
# ╠═1ac70b80-84a3-11eb-2b8f-052dae3d1693
# ╟─1ac70b80-84a3-11eb-24f9-0fc716c35b47
# ╠═1ac70b80-84a3-11eb-3767-91b6164a4a5a
# ╟─1ac70b80-84a3-11eb-1afd-8fa0ea9f4307
# ╠═1ac70b80-84a3-11eb-1002-0bbe486d38a9
# ╟─1ac70b80-84a3-11eb-0513-930cd6f8aa79
# ╠═1ac70b80-84a3-11eb-1a45-7da090f8cd50
# ╟─1ac70b80-84a3-11eb-02a4-91b94d28369c
# ╠═1ac70b80-84a3-11eb-3400-3fc125755150
# ╟─1ac70b80-84a3-11eb-2742-3f83aeb9baf2
# ╠═1ac70b80-84a3-11eb-05c6-f5fea8174f70