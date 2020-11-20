### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 45907180-2b34-11eb-2ebf-575594b730b8
include((@__DIR__)*"/shared.jl");

# ╔═╡ 45907180-2b34-11eb-23b6-0ba70371054b
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

# ╔═╡ 45907180-2b34-11eb-1285-efed3117cfe0
begin
    submit_answer(nothing; prob_num=261)
end

# ╔═╡ 45907180-2b34-11eb-0222-29b68048ee11
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

# ╔═╡ 45907180-2b34-11eb-10f0-cf515330ab13
begin
    submit_answer(nothing; prob_num=262)
end

# ╔═╡ 45907180-2b34-11eb-0523-c746e59d0315
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

# ╔═╡ 45907180-2b34-11eb-320a-87e10e39c135
begin
    submit_answer(nothing; prob_num=263)
end

# ╔═╡ 45909890-2b34-11eb-2f87-9f404e9f7fa4
html"""
<h2>Problem 254: Sums of Digit Factorials</h2>
<p>Define f(<var>n</var>) as the sum of the factorials of the digits of <var>n</var>. For example, f(342) = 3! + 4! + 2! = 32.</p>

<p>Define sf(<var>n</var>) as the sum of the digits of f(<var>n</var>). So sf(342) = 3 + 2 = 5.</p>

<p>Define g(<var>i</var>) to be the smallest positive integer <var>n</var> such that sf(<var>n</var>) = <var>i</var>. Though sf(342) is 5, sf(25) is also 5, and it can be verified that g(5) is 25.</p>

<p>Define sg(<var>i</var>) as the sum of the digits of g(<var>i</var>). So sg(5) = 2 + 5 = 7.</p>

<p>Further, it can be verified that g(20) is 267 and <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 20 is 156.</p>

<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> sg(<var>i</var>) for 1 ≤ <var>i</var> ≤ 150?</p>
"""

# ╔═╡ 45909890-2b34-11eb-087d-7dafe642394e
begin
    submit_answer(nothing; prob_num=264)
end

# ╔═╡ 45909890-2b34-11eb-18c5-d7e165d5ef8f
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

# ╔═╡ 45909890-2b34-11eb-0b3a-07124a9fb149
begin
    submit_answer(nothing; prob_num=265)
end

# ╔═╡ 45909890-2b34-11eb-3b32-493999729396
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

# ╔═╡ 45909890-2b34-11eb-0b8a-a380936dc72e
begin
    submit_answer(nothing; prob_num=266)
end

# ╔═╡ 45909890-2b34-11eb-2e4b-d36a33118903
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

# ╔═╡ 45909890-2b34-11eb-1120-971dac247af2
begin
    submit_answer(nothing; prob_num=267)
end

# ╔═╡ 45909890-2b34-11eb-008e-f755c54ab1b8
html"""
<h2>Problem 258: A lagged Fibonacci sequence</h2>
<p>A sequence is defined as:</p>
<p>
</p><ul><li><var>g</var><sub><var>k</var></sub> = 1, for 0 ≤ <var>k</var> ≤ 1999</li>
<li><var>g</var><sub><var>k</var></sub> = <var>g</var><sub><var>k</var>-2000</sub> + <var>g</var><sub><var>k</var>-1999</sub>, for <var>k</var> ≥ 2000.
</li></ul><p>Find <var>g</var><sub><var>k</var></sub> mod 20092010 for <var>k</var> = 10<sup>18</sup>.</p>
"""

# ╔═╡ 45909890-2b34-11eb-3f74-1bf76109ffa1
begin
    submit_answer(nothing; prob_num=268)
end

# ╔═╡ 45909890-2b34-11eb-1ea1-cf7b97df15ac
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

# ╔═╡ 45909890-2b34-11eb-0525-e155008c6c4b
begin
    submit_answer(nothing; prob_num=269)
end

# ╔═╡ 45909890-2b34-11eb-2216-6d95bb3638c3
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

# ╔═╡ 45909890-2b34-11eb-1921-0ff45e3fcf70
begin
    submit_answer(nothing; prob_num=270)
end

# ╔═╡ 45909890-2b34-11eb-398d-0f71077ce23f
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

# ╔═╡ 45909890-2b34-11eb-1e00-bb91d7ac2abd
begin
    submit_answer(nothing; prob_num=271)
end

# ╔═╡ 45909890-2b34-11eb-0711-531ed8121e0b
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

# ╔═╡ 45909890-2b34-11eb-3bfe-37ab16a4024a
begin
    submit_answer(nothing; prob_num=272)
end

# ╔═╡ 45909890-2b34-11eb-2393-3de1a64d39c7
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

# ╔═╡ 45909890-2b34-11eb-356e-01f3399613ad
begin
    submit_answer(nothing; prob_num=273)
end

# ╔═╡ 45909890-2b34-11eb-3669-cf31a833c41b
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

# ╔═╡ 45909890-2b34-11eb-37a3-2f1a1b20bb4a
begin
    submit_answer(nothing; prob_num=274)
end

# ╔═╡ 45909890-2b34-11eb-0110-d5d6086786af
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

# ╔═╡ 45909890-2b34-11eb-3786-5d3ee28a6e54
begin
    submit_answer(nothing; prob_num=275)
end

# ╔═╡ 45909890-2b34-11eb-3102-e90dbd28e2fc
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

# ╔═╡ 45909890-2b34-11eb-3b5d-3f31b6f2130c
begin
    submit_answer(nothing; prob_num=276)
end

# ╔═╡ 4590bfa0-2b34-11eb-064b-6baaaafd2b59
html"""
<h2>Problem 267: Billionaire</h2>
<p>You are given a unique investment opportunity.</p>
<p>Starting with £1 of capital, you can choose a fixed proportion, <var>f</var>, of your capital to bet on a fair coin toss repeatedly for 1000 tosses.</p>
<p>Your return is double your bet for heads and you lose your bet for tails.</p>
<p>For example, if <var>f</var> = 1/4,  for the first toss you bet £0.25, and if heads comes up you win £0.5 and so then have £1.5. You then bet £0.375 and if the second toss is tails, you have £1.125.</p>
<p>Choosing <var>f</var> to maximize your chances of having at least £1,000,000,000 after 1,000 flips, what is the chance that you become a billionaire?</p>
<p>All computations are assumed to be exact (no rounding), but give your answer rounded to 12 digits behind the decimal point in the form 0.abcdefghijkl.</p>
"""

# ╔═╡ 4590bfa0-2b34-11eb-1e78-03f799637c9c
begin
    submit_answer(nothing; prob_num=277)
end

# ╔═╡ 4590bfa0-2b34-11eb-32f0-fb0e209a94c1
html"""
<h2>Problem 268: Counting numbers with at least four distinct prime factors less than 100</h2>
<p>It can be verified that there are 23 positive integers less than 1000 that are divisible by at least four distinct primes less than 100.</p>

<p>Find how many positive integers less than 10<sup>16</sup> are divisible by at least four distinct primes less than 100.</p>
"""

# ╔═╡ 4590bfa0-2b34-11eb-1f54-83f420740adc
begin
    submit_answer(nothing; prob_num=278)
end

# ╔═╡ 4590bfa0-2b34-11eb-36de-51bbfc49c23a
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

# ╔═╡ 4590bfa0-2b34-11eb-295e-fd2a668915f1
begin
    submit_answer(nothing; prob_num=279)
end

# ╔═╡ 4590bfa0-2b34-11eb-1f5a-c9a8bd59c3f9
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

# ╔═╡ 4590bfa0-2b34-11eb-2f0f-b15d4b95e102
begin
    submit_answer(nothing; prob_num=280)
end

# ╔═╡ 4590bfa0-2b34-11eb-1bd6-ffede3313a63
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

# ╔═╡ 4590bfa0-2b34-11eb-36a8-87103e6653e5
begin
    submit_answer(nothing; prob_num=281)
end

# ╔═╡ 4590bfa0-2b34-11eb-1d38-257832a51b6c
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

# ╔═╡ 4590bfa0-2b34-11eb-13ed-317a07614e56
begin
    submit_answer(nothing; prob_num=282)
end

# ╔═╡ 4590bfa0-2b34-11eb-1b9a-f9c6b2c00558
html"""
<h2>Problem 273: Sum of Squares</h2>
<p>Consider equations of the form: <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>

<p>For <var>N</var>=65 there are two solutions:</p>
<p><var>a</var>=1, <var>b</var>=8 and <var>a</var>=4, <var>b</var>=7.</p>
<p>We call S(<var>N</var>) the sum of the values of <var>a</var> of all solutions of <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>N</var>, 0 ≤ <var>a</var> ≤ <var>b</var>, <var>a</var>, <var>b</var> and <var>N</var> integer.</p>
<p>Thus S(65) = 1 + 4 = 5.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>N</var>), for all squarefree <var>N</var> only divisible by primes of the form 4<var>k</var>+1 with 4<var>k</var>+1 &lt; 150.</p>
"""

# ╔═╡ 4590bfa0-2b34-11eb-0d95-1f53877a1028
begin
    submit_answer(nothing; prob_num=283)
end

# ╔═╡ 4590bfa0-2b34-11eb-1abe-2fdba194e244
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

# ╔═╡ 4590bfa0-2b34-11eb-3820-216d96fac354
begin
    submit_answer(nothing; prob_num=284)
end

# ╔═╡ 4590bfa0-2b34-11eb-3e87-57ba0a64a415
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

# ╔═╡ 4590bfa0-2b34-11eb-0a61-f163a140c746
begin
    submit_answer(nothing; prob_num=285)
end

# ╔═╡ 4590bfa0-2b34-11eb-1c7d-1b1a8dbbab86
html"""
<h2>Problem 276: Primitive Triangles</h2>
<p>Consider the triangles with integer sides a, b and c with a ≤ b ≤ c.<br />
An integer sided triangle (a,b,c) is called primitive if <dfn title="gcd(a,b,c)=gcd(a,gcd(b,c))"> gcd(a,b,c)</dfn>=1. <br />
How many primitive integer sided triangles exist with a perimeter not exceeding 10 000 000?
</p>
"""

# ╔═╡ 4590bfa0-2b34-11eb-271d-c92db1521f94
begin
    submit_answer(nothing; prob_num=286)
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