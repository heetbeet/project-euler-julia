### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ad3dcc0-84a3-11eb-2516-6f57179f41ae
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ad3dcc0-84a3-11eb-37f1-49a632db3264
html"""
<h2>Problem 426: Box-ball system</h2>
<p>
Consider an infinite row of boxes. Some of the boxes contain a ball. For example, an initial configuration of 2 consecutive occupied boxes followed by 2 empty boxes, 2 occupied boxes, 1 empty box, and 2 occupied boxes can be denoted by the sequence (2, 2, 2, 1, 2), in which the number of consecutive occupied and empty boxes appear alternately.
</p>
<p>
A turn consists of moving each ball exactly once according to the following rule: Transfer the leftmost ball which has not been moved to the nearest empty box to its right.
</p>
<p>
After one turn the sequence (2, 2, 2, 1, 2) becomes (2, 2, 1, 2, 3) as can be seen below; note that we begin the new sequence starting at the first occupied box.
</p>

<div align="center">
<img src="project/images/p426_baxball1.gif" alt="p426_baxball1.gif" /></div>

<p>
A system like this is called a <b>Box-Ball System</b> or <b>BBS</b> for short.
</p>
<p>
It can be shown that after a sufficient number of turns, the system evolves to a state where the consecutive numbers of occupied boxes is invariant. In the example below, the consecutive numbers of <b>occupied boxes</b> evolves to [1, 2, 3]; we shall call this the final state.
</p>

<div align="center">
<img src="project/images/p426_baxball2.gif" alt="p426_baxball2.gif" /></div>

<p>
We define the sequence {<var>t</var><sub><var>i</var></sub>}:<br /></p><ul><li><var>s</var><sub>0</sub> = 290797
</li><li><var>s</var><sub><var>k</var>+1</sub> = <var>s</var><sub><var>k</var></sub><sup>2</sup> mod 50515093
</li><li><var>t</var><sub><var>k</var></sub> = (<var>s</var><sub><var>k</var></sub> mod 64) + 1
</li></ul><p>
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10</sub>), the final state becomes [1, 3, 10, 24, 51, 75].<br />
Starting from the initial configuration (<var>t</var><sub>0</sub>, <var>t</var><sub>1</sub>, …, <var>t</var><sub>10 000 000</sub>), find the final state.<br />
Give as your answer the sum of the squares of the elements of the final state. For example, if the final state is [1, 2, 3] then 14 ( = 1<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup>) is your answer.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-12c5-d9e5984c4632
begin
    submit_answer(nothing; prob_num=426)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1388-b1ec2deb64ea
html"""
<h2>Problem 427: n-sequences</h2>
<p>A sequence of integers S = {s<sub><var>i</var></sub>} is called an <var>n-sequence</var> if it has <var>n</var> elements and each element s<sub><var>i</var></sub> satisfies 1 ≤ s<sub><var>i</var></sub> ≤ <var>n</var>. Thus there are <var>n</var><sup><var>n</var></sup> distinct <var>n</var>-sequences in total.
For example, the sequence S = {1, 5, 5, 10, 7, 7, 7, 2, 3, 7} is a 10-sequence.</p>

<p>For any sequence S, let L(S) be the length of the longest contiguous subsequence of S with the same value.
For example, for the given sequence S above, L(S) = 3, because of the three consecutive 7's.</p>

<p>Let <var>f</var>(<var>n</var>) = ∑ L(S) for all <var>n</var>-sequences S.</p>

<p>For example, <var>f</var>(3) = 45, <var>f</var>(7) = 1403689 and <var>f</var>(11) = 481496895121.</p>

<p>Find <var>f</var>(7 500 000) mod 1 000 000 009.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1501-9bdecda64ffb
begin
    submit_answer(nothing; prob_num=427)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-211e-cf292d2fbcad
html"""
<h2>Problem 428: Necklace of circles</h2>
<p>Let <var>a</var>, <var>b</var> and <var>c</var> be positive numbers.<br />
Let W, X, Y, Z be four collinear points where |WX| = <var>a</var>, |XY| = <var>b</var>, |YZ| = <var>c</var> and |WZ| = <var>a</var> + <var>b</var> + <var>c</var>.<br />
Let C<sub>in</sub> be the circle having the diameter XY.<br />
Let C<sub>out</sub> be the circle having the diameter WZ.<br /></p>

<p>
The triplet (<var>a</var>, <var>b</var>, <var>c</var>) is called a <em>necklace triplet</em> if you can place <var>k</var> ≥ 3 distinct circles C<sub>1</sub>, C<sub>2</sub>, ..., C<sub><var>k</var></sub> such that:
</p><ul><li>C<sub><var>i</var></sub> has no common interior points with any C<sub><var>j</var></sub> for 1 ≤ <var>i</var>, <var>j</var> ≤ <var>k</var> and <var>i</var> ≠ <var>j</var>,
</li><li>C<sub><var>i</var></sub> is tangent to both C<sub>in</sub> and C<sub>out</sub> for 1 ≤ <var>i</var> ≤ <var>k</var>,
</li><li>C<sub><var>i</var></sub> is tangent to C<sub><var>i</var>+1</sub> for 1 ≤ <var>i</var> &lt; <var>k</var>, and
</li><li>C<sub><var>k</var></sub> is tangent to C<sub>1</sub>.
</li></ul><p>
For example, (5, 5, 5) and (4, 3, 21) are necklace triplets, while it can be shown that (2, 2, 5) is not.
</p>
<p align="center"><img src="project/images/p428_necklace.png" class="dark_img" alt="p428_necklace.png" /></p>

<p>
Let T(<var>n</var>) be the number of necklace triplets (<var>a</var>, <var>b</var>, <var>c</var>) such that <var>a</var>, <var>b</var> and <var>c</var> are positive integers, and <var>b</var> ≤ <var>n</var>.
For example, T(1) = 9, T(20) = 732 and T(3000) = 438106.
</p>
<p>
Find T(1 000 000 000).
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1b7b-6986ea794d0d
begin
    submit_answer(nothing; prob_num=428)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-18bd-0dee1587af70
html"""
<h2>Problem 429: Sum of squares of unitary divisors</h2>
<p>
A unitary divisor <var>d</var> of a number <var>n</var> is a divisor of <var>n</var> that has the property gcd(<var>d, n/d</var>) = 1.<br />
The unitary divisors of 4! = 24 are 1, 3, 8 and 24.<br />
The sum of their squares is 1<sup>2</sup> + 3<sup>2</sup> + 8<sup>2</sup> + 24<sup>2</sup> = 650.
</p>
<p>
Let S(<var>n</var>) represent the sum of the squares of the unitary divisors of <var>n</var>. Thus S(4!)=650.
</p>
<p>
Find S(100 000 000!) modulo 1 000 000 009.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-32e3-fdd235e0cf53
begin
    submit_answer(nothing; prob_num=429)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-01b3-2d59152c63fd
html"""
<h2>Problem 430: Range flips</h2>
<p><var>N</var> disks are placed in a row, indexed 1 to <var>N</var> from left to right.<br />
Each disk has a black side and white side. Initially all disks show their white side.</p>

<p>At each turn, two, not necessarily distinct, integers <var>A</var> and <var>B</var> between 1 and <var>N</var> (inclusive) are chosen uniformly at random.<br />
All disks with an index from <var>A</var> to <var>B</var> (inclusive) are flipped.</p>

<p>The following example shows the case <var>N</var> = 8. At the first turn <var>A</var> = 5 and <var>B</var> = 2, and at the second turn <var>A</var> = 4 and <var>B</var> = 6.</p>

<p align="center"><img src="project/images/p430_flips.gif" class="dark_img" alt="p430_flips.gif" /></p>

<p>Let E(<var>N</var>, <var>M</var>) be the expected number of disks that show their white side after <var>M</var> turns.<br />
We can verify that E(3, 1) = 10/9, E(3, 2) = 5/3, E(10, 4) ≈ 5.157 and E(100, 10) ≈ 51.893.</p>

<p>Find E(10<sup>10</sup>, 4000).<br />
Give your answer rounded to 2 decimal places behind the decimal point.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0ece-f5f6f55e042b
begin
    submit_answer(nothing; prob_num=430)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-310c-5bc2b308a1b7
html"""
<h2>Problem 431: Square Space Silo</h2>
<p>Fred the farmer arranges to have a new storage silo installed on his farm and having an obsession for all things square he is absolutely devastated when he discovers that it is circular. Quentin, the representative from the company that installed the silo, explains that they only manufacture cylindrical silos, but he points out that it is resting on a square base. Fred is not amused and insists that it is removed from his property.</p>

<p>Quick thinking Quentin explains that when granular materials are delivered from above a conical slope is formed and the natural angle made with the horizontal is called the angle of repose. For example if the angle of repose, $\alpha = 30$ degrees, and grain is delivered at the centre of the silo then a perfect cone will form towards the top of the cylinder. In the case of this silo, which has a diameter of 6m, the amount of space wasted would be approximately 32.648388556 m<sup>3</sup>. However, if grain is delivered at a point on the top which has a horizontal distance of $x$ metres from the centre then a cone with a strangely curved and sloping base is formed. He shows Fred a picture.</p>

<div class="center">
   <img src="project/images/p431_grain_silo.png" class="dark_img" alt="p431_grain_silo.png" /></div>

<p>We shall let the amount of space wasted in cubic metres be given by $V(x)$. If $x = 1.114785284$, which happens to have three squared decimal places, then the amount of space wasted, $V(1.114785284) \approx 36$. Given the range of possible solutions to this problem there is exactly one other option: $V(2.511167869) \approx 49$. It would be like knowing that the square is king of the silo, sitting in splendid glory on top of your grain.</p>

<p>Fred's eyes light up with delight at this elegant resolution, but on closer inspection of Quentin's drawings and calculations his happiness turns to despondency once more. Fred points out to Quentin that it's the radius of the silo that is 6 metres, not the diameter, and the angle of repose for his grain is 40 degrees. However, if Quentin can find a set of solutions for this particular silo then he will be more than happy to keep it.</p>

<p>If Quick thinking Quentin is to satisfy frustratingly fussy Fred the farmer's appetite for all things square then determine the values of $x$ for all possible square space wastage options and calculate $\sum x$ correct to 9 decimal places.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-016e-8578ab05dec3
begin
    submit_answer(nothing; prob_num=431)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-327d-1b7d364a3bc1
html"""
<h2>Problem 432: Totient sum</h2>
<p>
Let S(<var>n,m</var>) = ∑φ(<var>n × i</var>) for 1 ≤ <var>i ≤ m</var>. (φ is Euler's totient function)<br />
You are given that S(510510,10<sup>6</sup> )= 45480596821125120. 
</p>
<p>
Find S(510510,10<sup>11</sup>).<br />
Give the last 9 digits of your answer.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-3cfa-2d73f46dc467
begin
    submit_answer(nothing; prob_num=432)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-36a9-9b636e827e0a
html"""
<h2>Problem 433: Steps in Euclid's algorithm</h2>
<p>
Let E(<var>x</var><sub>0</sub>, <var>y</var><sub>0</sub>) be the number of steps it takes to determine the greatest common divisor of <var>x</var><sub>0</sub> and <var>y</var><sub>0</sub> with <b>Euclid's algorithm</b>. More formally:<br /><var>x</var><sub>1</sub> = <var>y</var><sub>0</sub>, <var>y</var><sub>1</sub> = <var>x</var><sub>0</sub> mod <var>y</var><sub>0</sub><br /><var>x<sub>n</sub></var> = <var>y</var><sub><var>n</var>-1</sub>, <var>y</var><sub><var>n</var></sub> = <var>x</var><sub><var>n</var>-1</sub> mod <var>y</var><sub><var>n</var>-1</sub><br />
E(<var>x</var><sub>0</sub>, <var>y</var><sub>0</sub>) is the smallest <var>n</var> such that <var>y</var><sub><var>n</var></sub> = 0.
</p>
<p>
We have E(1,1) = 1, E(10,6) = 3 and E(6,10) = 4.
</p>
<p>
Define S(N) as the sum of E(<var>x,y</var>) for 1 ≤ <var>x,y</var> ≤ N.<br />
We have S(1) = 1, S(10) = 221 and S(100) = 39826.
</p>
<p>
Find S(5·10<sup>6</sup>).
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1959-7917cde497de
begin
    submit_answer(nothing; prob_num=433)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0eb0-fbce4af5ef93
html"""
<h2>Problem 434: Rigid graphs</h2>
<p>Recall that a graph is a collection of vertices and edges connecting the vertices, and that two vertices connected by an edge are called adjacent.<br />
Graphs can be embedded in Euclidean space by associating each vertex with a point in the Euclidean space.<br />
A <strong>flexible</strong> graph is an embedding of a graph where it is possible to move one or more vertices continuously so that the distance between at least two nonadjacent vertices is altered while the distances between each pair of adjacent vertices is kept constant.<br />
A <strong>rigid</strong> graph is an embedding of a graph which is not flexible.<br />
Informally, a graph is rigid if by replacing the vertices with fully rotating hinges and the edges with rods that are unbending and inelastic, no parts of the graph can be moved independently from the rest of the graph.
</p>
<p>The <strong>grid graphs</strong> embedded in the Euclidean plane are not rigid, as the following animation demonstrates:</p>
<div class="center"><img src="project/images/p434_rigid.gif" class="dark_img" alt="p434_rigid.gif" /></div>
<p>However, one can make them rigid by adding diagonal edges to the cells. For example, for the 2x3 grid graph, there are 19 ways to make the graph rigid:</p>
<div class="center"><img src="project/images/p434_rigid23.png" class="dark_img" alt="p434_rigid23.png" /></div>
<p>Note that for the purposes of this problem, we do not consider changing the orientation of a diagonal edge or adding both diagonal edges to a cell as a different way of making a grid graph rigid.
</p>
<p>Let <var>R</var>(<var>m</var>,<var>n</var>) be the number of ways to make the <var>m</var> × <var>n</var> grid graph rigid. <br />
E.g. <var>R</var>(2,3) = 19 and <var>R</var>(5,5) = 23679901
</p>
<p>Define <var>S</var>(<var>N</var>) as <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>R</var>(<var>i</var>,<var>j</var>) for 1 ≤ <var>i</var>, <var>j</var> ≤ <var>N</var>.<br />
E.g. <var>S</var>(5) = 25021721.<br />
Find <var>S</var>(100), give your answer modulo 1000000033.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1374-b7d470bd5334
begin
    submit_answer(nothing; prob_num=434)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-13d6-4d597f472821
html"""
<h2>Problem 435: Polynomials of Fibonacci numbers</h2>
<p>The <strong>Fibonacci numbers</strong> $\{f_n, n \ge 0\}$ are defined recursively as $f_n = f_{n-1} + f_{n-2}$ with base cases $f_0 = 0$ and $f_1 = 1$.</p>
<p>Define the polynomials $\{F_n, n \ge 0\}$ as $F_n(x) = \displaystyle{\sum_{i=0}^n f_i x^i}$.</p>
<p>For example, $F_7(x) = x + x^2 + 2x^3 + 3x^4 + 5x^5 + 8x^6 + 13x^7$, and $F_7(11) = 268\,357\,683$.</p>
<p>Let $n = 10^{15}$. Find the sum $\displaystyle{\sum_{x=0}^{100} F_n(x)}$ and give your answer modulo $1\,307\,674\,368\,000 \ (= 15!)$.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0c61-1584c655ed91
begin
    submit_answer(nothing; prob_num=435)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-18a7-859eb7485981
html"""
<h2>Problem 436: Unfair wager</h2>
<p>Julie proposes the following wager to her sister Louise.<br />
She suggests they play a game of chance to determine who will wash the dishes.<br />
For this game, they shall use a generator of independent random numbers uniformly distributed between 0 and 1.<br />
The game starts with <var>S</var> = 0.<br />
The first player, Louise, adds to <var>S</var> different random numbers from the generator until <var>S</var> &gt; 1 and records her last random number '<var>x</var>'.<br />
The second player, Julie, continues adding to <var>S</var> different random numbers from the generator until <var>S</var> &gt; 2 and records her last random number '<var>y</var>'.<br />
The player with the highest number wins and the loser washes the dishes, i.e. if <var>y</var> &gt; <var>x</var> the second player wins.</p>

<p>For example, if the first player draws 0.62 and 0.44, the first player turn ends since 0.62+0.44 &gt; 1 and <var>x</var> = 0.44.<br />
If the second players draws 0.1, 0.27 and 0.91, the second player turn ends since 0.62+0.44+0.1+0.27+0.91 &gt; 2 and <var>y</var> = 0.91.
Since <var>y</var> &gt; <var>x</var>, the second player wins.</p>

<p>Louise thinks about it for a second, and objects: "That's not fair".<br />
What is the probability that the second player wins?<br />
Give your answer rounded to 10 places behind the decimal point in the form 0.abcdefghij</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-3511-eddd3c9718b1
begin
    submit_answer(nothing; prob_num=436)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-2fe1-33aae7041aab
html"""
<h2>Problem 437: Fibonacci primitive roots</h2>
<p>
When we calculate 8<sup>n</sup> modulo 11 for n=0 to 9 we get: 1, 8, 9, 6, 4, 10, 3, 2, 5, 7.<br />
As we see all possible values from 1 to 10 occur. So 8 is a <b>primitive root</b> of 11.<br />
But there is more:<br />
If we take a closer look we see:<br />
1+8=9<br />
8+9=17≡6 mod 11<br />
9+6=15≡4 mod 11<br />
6+4=10<br />
4+10=14≡3 mod 11<br />
10+3=13≡2 mod 11<br />
3+2=5<br />
2+5=7<br />
5+7=12≡1 mod 11.
</p>
So the powers of 8 mod 11 are cyclic with period 10, and 8<sup>n</sup> + 8<sup>n+1</sup> ≡ 8<sup>n+2</sup> (mod 11).<br />
8 is called a <b>Fibonacci primitive root</b> of 11.<br />
Not every prime has a Fibonacci primitive root.<br />
There are 323 primes less than 10000 with one or more Fibonacci primitive roots and the sum of these primes is 1480491.<br />
Find the sum of the primes less than 100,000,000 with at least one Fibonacci primitive root.
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-116c-717a7eba0004
begin
    submit_answer(nothing; prob_num=437)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-02db-014921082a2f
html"""
<h2>Problem 438: Integer part of polynomial equation's solutions</h2>
<p>
For an <var>n</var>-tuple of integers <var>t</var> = (<var>a</var><sub>1</sub>, ..., <var>a</var><sub><var>n</var></sub>), let (<var>x</var><sub>1</sub>, ..., <var>x</var><sub><var>n</var></sub>) be the solutions of the polynomial equation <var>x</var><sup><var>n</var></sup> + <var>a</var><sub>1</sub><var>x</var><sup><var>n</var>-1</sup> + <var>a</var><sub>2</sub><var>x</var><sup><var>n</var>-2</sup> + ... + <var>a</var><sub><var>n</var>-1</sub><var>x</var> + <var>a</var><sub><var>n</var></sub> = 0.
</p>
<p>
Consider the following two conditions:
</p><ul><li><var>x</var><sub>1</sub>, ..., <var>x</var><sub><var>n</var></sub> are all real.
</li><li>If <var>x</var><sub>1</sub>, ..., <var>x</var><sub><var>n</var></sub> are sorted, ⌊<var>x</var><sub><var>i</var></sub>⌋ = <var>i</var> for 1 ≤ <var>i</var> ≤ <var>n</var>. (⌊·⌋: floor function.)
</li></ul><p>
In the case of <var>n</var> = 4, there are 12 <var>n</var>-tuples of integers which satisfy both conditions.<br />
We define S(<var>t</var>) as the sum of the absolute values of the integers in <var>t</var>.<br />
For <var>n</var> = 4 we can verify that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>t</var>) = 2087 for all <var>n</var>-tuples <var>t</var> which satisfy both conditions.
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> S(<var>t</var>) for <var>n</var> = 7.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-3746-e77af084a08f
begin
    submit_answer(nothing; prob_num=438)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-2cab-099eaeaa97aa
html"""
<h2>Problem 439: Sum of sum of divisors</h2>
<p>Let <var>d</var>(<var>k</var>) be the sum of all divisors of <var>k</var>.<br />
We define the function S(<var>N</var>) = $\sum_{i=1}^N \sum_{j=1}^Nd(i \cdot j)$.<br />
For example, S(3) = <var>d</var>(1) + <var>d</var>(2) + <var>d</var>(3) + <var>d</var>(2) + <var>d</var>(4) + <var>d</var>(6) + <var>d</var>(3) + <var>d</var>(6) + <var>d</var>(9) = 59.</p>

<p>You are given that S(10<sup>3</sup>) = 563576517282 and S(10<sup>5</sup>) mod 10<sup>9</sup> = 215766508.<br />
Find S(10<sup>11</sup>) mod 10<sup>9</sup>.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-10d2-214efd6b8190
begin
    submit_answer(nothing; prob_num=439)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1a02-2d1143c905cc
html"""
<h2>Problem 440: GCD and Tiling</h2>
<p>We want to tile a board of length <var>n</var> and height 1 completely, with either 1 × 2 blocks or 1 × 1 blocks with a single decimal digit on top:</p>
<div class="center">
<img src="project/images/p440_tiles.png" alt="p440_tiles.png" />
</div>
<p>For example, here are some of the ways to tile a board of length <var>n</var> = 8:</p>

<div class="center">
<img src="project/images/p440_some8.png" alt="p440_some8.png" />
</div>
<p>Let T(<var>n</var>) be the number of ways to tile a board of length <var>n</var> as described above.</p>

<p>For example, T(1) = 10 and T(2) = 101.</p>

<p>Let S(<var>L</var>) be the triple sum <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span><sub><var>a</var>,<var>b</var>,<var>c</var></sub> gcd(T(<var>c</var><sup><var>a</var></sup>), T(<var>c</var><sup><var>b</var></sup>)) for 1 ≤ <var>a</var>, <var>b</var>, <var>c</var> ≤ <var>L</var>.<br />
For example:<br />
S(2) = 10444<br />
S(3) = 1292115238446807016106539989<br />
S(4) mod 987 898 789 = 670616280.</p>

<p>Find S(2000) mod 987 898 789.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-2745-3fdbc8026def
begin
    submit_answer(nothing; prob_num=440)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-34b0-49917c49fe8e
html"""
<h2>Problem 441: The inverse summation of coprime couples</h2>
<p>
For an integer <var>M</var>, we define R(<var>M</var>) as the sum of 1/(<var>p</var>·<var>q</var>) for all the integer pairs <var>p</var> and <var>q</var> which satisfy all of these conditions:
</p>
<ul><li> 1 ≤ <var>p</var> &lt; <var>q</var> ≤ <var>M</var></li>
<li> <var>p</var> + <var>q</var> ≥ <var>M</var></li>
<li> <var>p</var> and <var>q</var> are coprime.</li>
</ul><p>
We also define S(<var>N</var>) as the sum of R(<var>i</var>) for 2 ≤ <var>i</var> ≤ <var>N</var>.<br />
We can verify that S(2) = R(2) = 1/2, S(10) ≈ 6.9147 and S(100) ≈ 58.2962.
</p>
<p>
Find S(10<sup>7</sup>). Give your answer rounded to four decimal places.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-137b-230b3491dc00
begin
    submit_answer(nothing; prob_num=441)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-098c-754938932687
html"""
<h2>Problem 442: Eleven-free integers</h2>
<p>An integer is called <i>eleven-free</i> if its decimal expansion does not contain any substring representing a power of 11 except 1.</p>

<p>For example, 2404 and 13431 are eleven-free, while 911 and 4121331 are not.</p>

<p>Let E(<i>n</i>) be the <i>n</i>th positive eleven-free integer. For example, E(3) = 3, E(200) = 213 and E(500 000) = 531563.</p>

<p>Find E(10<sup>18</sup>).</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-264f-69e401120bb7
begin
    submit_answer(nothing; prob_num=442)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0a12-73277c5e2748
html"""
<h2>Problem 443: GCD sequence</h2>
<p>Let g(<var>n</var>) be a sequence defined as follows:<br />
g(4) = 13,<br />
g(<var>n</var>) = g(<var>n</var>-1) + gcd(<var>n</var>, g(<var>n</var>-1)) for <var>n</var> &gt; 4.</p>

<p>The first few values are:</p>
<div align="center">
    <table cellspacing="1" cellpadding="5" border="0" align="center"><tr><td><var>n</var></td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td><td>17</td><td>18</td><td>19</td><td>20</td><td>...</td>
    </tr><tr><td>g(<var>n</var>)</td><td>13</td><td>14</td><td>16</td><td>17</td><td>18</td><td>27</td><td>28</td><td>29</td><td>30</td><td>31</td><td>32</td><td>33</td><td>34</td><td>51</td><td>54</td><td>55</td><td>60</td><td>...</td>
    </tr></table></div>

<p>You are given that g(1 000) = 2524 and g(1 000 000) = 2624152.</p>

<p>Find g(10<sup>15</sup>).</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0787-1763d452e8d9
begin
    submit_answer(nothing; prob_num=443)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-089a-1d61ab4127a5
html"""
<h2>Problem 444: The Roundtable Lottery</h2>
<p>A group of $p$ people decide to sit down at a round table and play a lottery-ticket trading game. Each person starts off with a randomly-assigned, unscratched lottery ticket. Each ticket, when scratched, reveals a whole-pound prize ranging anywhere from £1 to £$p$, with no two tickets alike. The goal of the game is for all of the players to maximize the winnings of the ticket they hold upon leaving the game.</p>

<p>An arbitrary person is chosen to be the first player. Going around the table, each player has only one of two options:</p>

<ol>
<li>The player can choose to scratch the ticket and reveal its worth to everyone at the table.</li>
<li>If the player's ticket is unscratched, then the player may trade it with a previous player's scratched ticket, and then leaves the game with that ticket. The previous player then scratches the newly-acquired ticket and reveals its worth to everyone at the table.</li>
</ol>

<p>The game ends once all tickets have been scratched. All players still remaining at the table must leave with their currently-held tickets.</p>

<p>Assume that players will use the optimal strategy for maximizing the expected value of their ticket winnings.</p>

<p>Let $E(p)$ represent the expected number of players left at the table when the game ends in a game consisting of $p$ players.<br />
E.g. $E(111) = 5.2912$ when rounded to 5 significant digits.</p>

<p>Let $S_1(N) = \sum \limits_{p = 1}^{N} {E(p)}$.<br />
Let $S_k(N) = \sum \limits_{p = 1}^{N} {S_{k-1}(p)}$ for $k \gt 1$.</p>

<p>Find $S_{20}(10^{14})$ and write the answer in scientific notation rounded to 10 significant digits. Use a lowercase e to separate mantissa and exponent. For example, the answer for $S_3(100)$ would be 5.983679014e5.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0a1f-670312dd1625
begin
    submit_answer(nothing; prob_num=444)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-17cf-739aa62e66be
html"""
<h2>Problem 445: Retractions A</h2>
<p>
For every integer $n&gt;1$, the family of functions $f_{n,a,b}$ is defined 
by  <br />
$f_{n,a,b}(x)\equiv a x + b \mod n\,\,\, $ for $a,b,x$ integer and  $0&lt; a &lt;n, 0 \le b &lt; n,0 \le x &lt; n$. </p>
<p>
We will call $f_{n,a,b}$ a <i>retraction</i> if $\,\,\, f_{n,a,b}(f_{n,a,b}(x)) \equiv f_{n,a,b}(x) \mod n \,\,\,$ for every $0 \le x &lt; n$.<br />
Let $R(n)$ be the number of retractions for $n$.
</p>
<p>
You are given that<br />
$\displaystyle \sum_{k=1}^{99\,999} R(\binom {100\,000} k)  \equiv 628701600 \mod 1\,000\,000\,007$.</p>
<p> 
Find $\displaystyle \sum_{k=1}^{9\,999\,999} R(\binom {10\,000\,000} k)$.<br />
Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0a67-c5a8dd7ad1d2
begin
    submit_answer(nothing; prob_num=445)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-052d-650d47743060
html"""
<h2>Problem 446: Retractions B</h2>
<p>
For every integer $n&gt;1$, the family of functions $f_{n,a,b}$ is defined 
by  <br />
$f_{n,a,b}(x)\equiv a x + b \mod n\,\,\, $ for $a,b,x$ integer and  $0&lt; a &lt;n, 0 \le b &lt; n,0 \le x &lt; n$. </p>
<p>
We will call $f_{n,a,b}$ a <i>retraction</i> if $\,\,\, f_{n,a,b}(f_{n,a,b}(x)) \equiv f_{n,a,b}(x) \mod n \,\,\,$ for every $0 \le x &lt; n$.<br />
Let $R(n)$ be the number of retractions for $n$.
</p>
<p>
$\displaystyle F(N)=\sum_{n=1}^NR(n^4+4)$. <br /> 
$F(1024)=77532377300600$.<br /></p>
<p>
Find $F(10^7)$.<br />
Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-2e61-d93405c74bad
begin
    submit_answer(nothing; prob_num=446)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-3132-cff1ed5b02cd
html"""
<h2>Problem 447: Retractions C</h2>
<p>
For every integer $n&gt;1$, the family of functions $f_{n,a,b}$ is defined 
by  <br />
$f_{n,a,b}(x)\equiv a x + b \mod n\,\,\, $ for $a,b,x$ integer and  $0&lt; a &lt;n, 0 \le b &lt; n,0 \le x &lt; n$. </p>
<p>
We will call $f_{n,a,b}$ a <i>retraction</i> if $\,\,\, f_{n,a,b}(f_{n,a,b}(x)) \equiv f_{n,a,b}(x) \mod n \,\,\,$ for every $0 \le x &lt; n$.<br />
Let $R(n)$ be the number of retractions for $n$.
</p>
<p>
$\displaystyle F(N)=\sum_{n=2}^N R(n)$. <br /> 
$F(10^7)\equiv 638042271 \mod 1\,000\,000\,007$.<br /></p>
<p>
Find $F(10^{14})$.<br />
Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1267-cf107821eb71
begin
    submit_answer(nothing; prob_num=447)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-0d0d-dd9de2508a68
html"""
<h2>Problem 448: Average least common multiple</h2>
<p>
The function <b>lcm</b>(a,b) denotes the least common multiple of a and b.<br />
Let A(n) be the average of the values of lcm(n,i) for 1≤i≤n.<br />
E.g: A(2)=(2+2)/2=2 and A(10)=(10+10+30+20+10+30+70+40+90+10)/10=32. 
</p>
Let S(n)=<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> A(k) for 1≤k≤n.<br />
S(100)=122726.

<p>
Find S(99999999019) mod 999999017.
</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-0ec4-99c228086142
begin
    submit_answer(nothing; prob_num=448)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-1f30-676de8302e15
html"""
<h2>Problem 449: Chocolate covered candy</h2>
<p>Phil the confectioner is making a new batch of chocolate covered candy. Each candy centre is shaped like an ellipsoid of revolution defined by the equation:
$b^2 x^2 + b^2 y^2 + a^2 z^2 = a^2 b^2$.</p>

<p>Phil wants to know how much chocolate is needed to cover one candy centre with a uniform coat of chocolate one millimeter thick.
</p>

<p>If $a = 1$ mm and $b = 1$ mm, the amount of chocolate required is $\dfrac{28}{3} \pi$ mm<sup>3</sup></p>

<p>If $a = 2$ mm and $b = 1$ mm, the amount of chocolate required is approximately 60.35475635 mm<sup>3</sup>.</p>

<p>Find the amount of chocolate in mm<sup>3</sup> required if $a = 3$ mm and $b  =1$ mm. Give your answer as the number rounded to 8 decimal places behind the decimal point.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-1836-c557cdce822d
begin
    submit_answer(nothing; prob_num=449)
end

# ╔═╡ 1ad3dcc0-84a3-11eb-21e1-4de049e1488d
html"""
<h2>Problem 450: Hypocycloid and Lattice points</h2>
<p>A hypocycloid is the curve drawn by a point on a small circle rolling inside a larger circle. The parametric equations of a hypocycloid centered at the origin, and starting at the right most point is given by:</p>

<p>$$x(t) = (R - r) \cos(t) + r \cos(\frac {R - r} r t)$$
$$y(t) = (R - r) \sin(t) - r \sin(\frac {R - r} r t)$$</p>

<p>Where $R$ is the radius of the large circle and $r$ the radius of the small circle.</p>

<p>Let $C(R, r)$ be the set of distinct points with integer coordinates on the hypocycloid with radius <var>R</var> and <var>r</var> and for which there is a corresponding value of <var>t</var> such that $\sin(t)$ and $\cos(t)$ are rational numbers.</p>
<p>
Let $S(R, r) = \sum_{(x,y) \in C(R, r)} |x| + |y|$ be the sum of the absolute values of the $x$ and $y$ coordinates of the points in $C(R, r)$.</p>

<p>Let $T(N) = \sum_{R = 3}^N \sum_{r=1}^{\lfloor \frac {R - 1} 2 \rfloor} S(R, r)$ be the sum of $S(R, r)$ for <var>R</var> and <var>r</var> positive integers, $R\leq N$  and $2r &lt; R$.</p>

<p>You are given:</p>
<table>
<tr>
<td class="right">$C(3, 1)$</td><td>=</td><td>$\{(3, 0), (-1, 2), (-1,0), (-1,-2)\}$</td>
</tr>
<tr>
<td>$C(2500, 1000)$</td><td>=</td><td>$\{(2500, 0), (772, 2376), (772, -2376), (516, 1792), (516, -1792), (500, 0), (68, 504), (68, -504),$</td>
</tr>
<tr>
<td colspan="2"> </td><td>$(-1356, 1088), (-1356, -1088), (-1500, 1000), (-1500, -1000)\}$</td>
</tr>
</table>

<p><i>Note:</i> $(-625, 0)$ is not an element of $C(2500, 1000)$ because $\sin(t)$ is not a rational number for the corresponding values of $t$.</p>

<p>$S(3, 1) = (|3| + |0|) + (|-1| + |2|) + (|-1| + |0|) + (|-1| + |-2|) = 10$</p>

<p>$T(3) = 10; T(10) = 524; T(100) = 580442; T(10^3) = 583108600$.</p>

<p>Find $T(10^6)$.</p>
"""

# ╔═╡ 1ad3dcc0-84a3-11eb-2256-0d0561cb31a2
begin
    submit_answer(nothing; prob_num=450)
end

# ╔═╡ Cell order:
# ╠═1ad3dcc0-84a3-11eb-2516-6f57179f41ae
# ╟─1ad3dcc0-84a3-11eb-37f1-49a632db3264
# ╠═1ad3dcc0-84a3-11eb-12c5-d9e5984c4632
# ╟─1ad3dcc0-84a3-11eb-1388-b1ec2deb64ea
# ╠═1ad3dcc0-84a3-11eb-1501-9bdecda64ffb
# ╟─1ad3dcc0-84a3-11eb-211e-cf292d2fbcad
# ╠═1ad3dcc0-84a3-11eb-1b7b-6986ea794d0d
# ╟─1ad3dcc0-84a3-11eb-18bd-0dee1587af70
# ╠═1ad3dcc0-84a3-11eb-32e3-fdd235e0cf53
# ╟─1ad3dcc0-84a3-11eb-01b3-2d59152c63fd
# ╠═1ad3dcc0-84a3-11eb-0ece-f5f6f55e042b
# ╟─1ad3dcc0-84a3-11eb-310c-5bc2b308a1b7
# ╠═1ad3dcc0-84a3-11eb-016e-8578ab05dec3
# ╟─1ad3dcc0-84a3-11eb-327d-1b7d364a3bc1
# ╠═1ad3dcc0-84a3-11eb-3cfa-2d73f46dc467
# ╟─1ad3dcc0-84a3-11eb-36a9-9b636e827e0a
# ╠═1ad3dcc0-84a3-11eb-1959-7917cde497de
# ╟─1ad3dcc0-84a3-11eb-0eb0-fbce4af5ef93
# ╠═1ad3dcc0-84a3-11eb-1374-b7d470bd5334
# ╟─1ad3dcc0-84a3-11eb-13d6-4d597f472821
# ╠═1ad3dcc0-84a3-11eb-0c61-1584c655ed91
# ╟─1ad3dcc0-84a3-11eb-18a7-859eb7485981
# ╠═1ad3dcc0-84a3-11eb-3511-eddd3c9718b1
# ╟─1ad3dcc0-84a3-11eb-2fe1-33aae7041aab
# ╠═1ad3dcc0-84a3-11eb-116c-717a7eba0004
# ╟─1ad3dcc0-84a3-11eb-02db-014921082a2f
# ╠═1ad3dcc0-84a3-11eb-3746-e77af084a08f
# ╟─1ad3dcc0-84a3-11eb-2cab-099eaeaa97aa
# ╠═1ad3dcc0-84a3-11eb-10d2-214efd6b8190
# ╟─1ad3dcc0-84a3-11eb-1a02-2d1143c905cc
# ╠═1ad3dcc0-84a3-11eb-2745-3fdbc8026def
# ╟─1ad3dcc0-84a3-11eb-34b0-49917c49fe8e
# ╠═1ad3dcc0-84a3-11eb-137b-230b3491dc00
# ╟─1ad3dcc0-84a3-11eb-098c-754938932687
# ╠═1ad3dcc0-84a3-11eb-264f-69e401120bb7
# ╟─1ad3dcc0-84a3-11eb-0a12-73277c5e2748
# ╠═1ad3dcc0-84a3-11eb-0787-1763d452e8d9
# ╟─1ad3dcc0-84a3-11eb-089a-1d61ab4127a5
# ╠═1ad3dcc0-84a3-11eb-0a1f-670312dd1625
# ╟─1ad3dcc0-84a3-11eb-17cf-739aa62e66be
# ╠═1ad3dcc0-84a3-11eb-0a67-c5a8dd7ad1d2
# ╟─1ad3dcc0-84a3-11eb-052d-650d47743060
# ╠═1ad3dcc0-84a3-11eb-2e61-d93405c74bad
# ╟─1ad3dcc0-84a3-11eb-3132-cff1ed5b02cd
# ╠═1ad3dcc0-84a3-11eb-1267-cf107821eb71
# ╟─1ad3dcc0-84a3-11eb-0d0d-dd9de2508a68
# ╠═1ad3dcc0-84a3-11eb-0ec4-99c228086142
# ╟─1ad3dcc0-84a3-11eb-1f30-676de8302e15
# ╠═1ad3dcc0-84a3-11eb-1836-c557cdce822d
# ╟─1ad3dcc0-84a3-11eb-21e1-4de049e1488d
# ╠═1ad3dcc0-84a3-11eb-2256-0d0561cb31a2