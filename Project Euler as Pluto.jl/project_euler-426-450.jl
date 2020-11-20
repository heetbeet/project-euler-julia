### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 23019030-2b5d-11eb-1480-81e7d34342b0
include((@__DIR__)*"/shared.jl");

# ╔═╡ 23019030-2b5d-11eb-16e5-439de48d59ec
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

# ╔═╡ 23019030-2b5d-11eb-314a-670187f961fb
begin
    submit_answer(nothing; prob_num=426)
end

# ╔═╡ 2301b740-2b5d-11eb-2e38-6fe860c80a93
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

# ╔═╡ 2301b740-2b5d-11eb-38b8-7fc8870f4727
begin
    submit_answer(nothing; prob_num=427)
end

# ╔═╡ 2301b740-2b5d-11eb-2b8a-4b6f20af303b
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

# ╔═╡ 2301b740-2b5d-11eb-378d-1fc8e6b2a73d
begin
    submit_answer(nothing; prob_num=428)
end

# ╔═╡ 2301b740-2b5d-11eb-2b3f-d7fafa4dc0be
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

# ╔═╡ 2301b740-2b5d-11eb-38fc-9793cbb22747
begin
    submit_answer(nothing; prob_num=429)
end

# ╔═╡ 2301b740-2b5d-11eb-0abd-efc37c8c1891
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

# ╔═╡ 2301b740-2b5d-11eb-0648-c7fb84842729
begin
    submit_answer(nothing; prob_num=430)
end

# ╔═╡ 2301b740-2b5d-11eb-13a3-874cec8a0b2a
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

# ╔═╡ 2301b740-2b5d-11eb-34cc-d97f9a12fb65
begin
    submit_answer(nothing; prob_num=431)
end

# ╔═╡ 2301b740-2b5d-11eb-116b-4bd0e64e4c39
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

# ╔═╡ 2301b740-2b5d-11eb-0b87-35c92c8d1591
begin
    submit_answer(nothing; prob_num=432)
end

# ╔═╡ 2301b740-2b5d-11eb-27d5-5f56cb574e4e
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

# ╔═╡ 2301b740-2b5d-11eb-295f-590e9d2c2f8e
begin
    submit_answer(nothing; prob_num=433)
end

# ╔═╡ 2301b740-2b5d-11eb-1cc1-ad10a918143b
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

# ╔═╡ 2301b740-2b5d-11eb-0bbf-312eec8406c4
begin
    submit_answer(nothing; prob_num=434)
end

# ╔═╡ 2301b740-2b5d-11eb-005c-934b3988779c
html"""
<h2>Problem 435: Polynomials of Fibonacci numbers</h2>
<p>The <strong>Fibonacci numbers</strong> $\{f_n, n \ge 0\}$ are defined recursively as $f_n = f_{n-1} + f_{n-2}$ with base cases $f_0 = 0$ and $f_1 = 1$.</p>
<p>Define the polynomials $\{F_n, n \ge 0\}$ as $F_n(x) = \displaystyle{\sum_{i=0}^n f_i x^i}$.</p>
<p>For example, $F_7(x) = x + x^2 + 2x^3 + 3x^4 + 5x^5 + 8x^6 + 13x^7$, and $F_7(11) = 268\,357\,683$.</p>
<p>Let $n = 10^{15}$. Find the sum $\displaystyle{\sum_{x=0}^{100} F_n(x)}$ and give your answer modulo $1\,307\,674\,368\,000 \ (= 15!)$.</p>
"""

# ╔═╡ 2301b740-2b5d-11eb-2dca-c3a13681d6a0
begin
    submit_answer(nothing; prob_num=435)
end

# ╔═╡ 2301b740-2b5d-11eb-0684-510691f96e1b
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

# ╔═╡ 2301b740-2b5d-11eb-239d-419eb8a5b8ba
begin
    submit_answer(nothing; prob_num=436)
end

# ╔═╡ 2301b740-2b5d-11eb-234c-279d046bb99c
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

# ╔═╡ 2301b740-2b5d-11eb-0513-abd1c3d69ac4
begin
    submit_answer(nothing; prob_num=437)
end

# ╔═╡ 2301b740-2b5d-11eb-2694-a1e74da90297
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

# ╔═╡ 2301de50-2b5d-11eb-170f-99cb51cbf652
begin
    submit_answer(nothing; prob_num=438)
end

# ╔═╡ 2301de50-2b5d-11eb-3f0f-fdaabe32121f
html"""
<h2>Problem 439: Sum of sum of divisors</h2>
<p>Let <var>d</var>(<var>k</var>) be the sum of all divisors of <var>k</var>.<br />
We define the function S(<var>N</var>) = $\sum_{i=1}^N \sum_{j=1}^Nd(i \cdot j)$.<br />
For example, S(3) = <var>d</var>(1) + <var>d</var>(2) + <var>d</var>(3) + <var>d</var>(2) + <var>d</var>(4) + <var>d</var>(6) + <var>d</var>(3) + <var>d</var>(6) + <var>d</var>(9) = 59.</p>

<p>You are given that S(10<sup>3</sup>) = 563576517282 and S(10<sup>5</sup>) mod 10<sup>9</sup> = 215766508.<br />
Find S(10<sup>11</sup>) mod 10<sup>9</sup>.</p>
"""

# ╔═╡ 2301de50-2b5d-11eb-3178-e1ccfee6ef11
begin
    submit_answer(nothing; prob_num=439)
end

# ╔═╡ 2301de50-2b5d-11eb-2bc0-818ce44053bb
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

# ╔═╡ 2301de50-2b5d-11eb-24e8-9f4fd4c0bcdc
begin
    submit_answer(nothing; prob_num=440)
end

# ╔═╡ 2301de50-2b5d-11eb-3efa-af78f593ec58
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

# ╔═╡ 2301de50-2b5d-11eb-22b0-670099f25528
begin
    submit_answer(nothing; prob_num=441)
end

# ╔═╡ 2301de50-2b5d-11eb-38da-970c36979319
html"""
<h2>Problem 442: Eleven-free integers</h2>
<p>An integer is called <i>eleven-free</i> if its decimal expansion does not contain any substring representing a power of 11 except 1.</p>

<p>For example, 2404 and 13431 are eleven-free, while 911 and 4121331 are not.</p>

<p>Let E(<i>n</i>) be the <i>n</i>th positive eleven-free integer. For example, E(3) = 3, E(200) = 213 and E(500 000) = 531563.</p>

<p>Find E(10<sup>18</sup>).</p>
"""

# ╔═╡ 2301de50-2b5d-11eb-1610-659ee747158e
begin
    submit_answer(nothing; prob_num=442)
end

# ╔═╡ 2301de50-2b5d-11eb-106a-676c2f1913f4
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

# ╔═╡ 2301de50-2b5d-11eb-0fe5-818b4d3b3022
begin
    submit_answer(nothing; prob_num=443)
end

# ╔═╡ 2301de50-2b5d-11eb-1f6f-d76f63fa4251
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

# ╔═╡ 2301de50-2b5d-11eb-25af-4de182acdd53
begin
    submit_answer(nothing; prob_num=444)
end

# ╔═╡ 2301de50-2b5d-11eb-0e61-f38543161a61
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

# ╔═╡ 2301de50-2b5d-11eb-18e3-21652073d089
begin
    submit_answer(nothing; prob_num=445)
end

# ╔═╡ 2301de50-2b5d-11eb-0390-478068d2a01a
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

# ╔═╡ 2301de50-2b5d-11eb-26c4-73d497f7a969
begin
    submit_answer(nothing; prob_num=446)
end

# ╔═╡ 2301de50-2b5d-11eb-1880-99877a09a42b
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

# ╔═╡ 2301de50-2b5d-11eb-354d-5def74ad2029
begin
    submit_answer(nothing; prob_num=447)
end

# ╔═╡ 2301de50-2b5d-11eb-30a9-a7552d3e16be
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

# ╔═╡ 2301de50-2b5d-11eb-2895-a109d8bf15b2
begin
    submit_answer(nothing; prob_num=448)
end

# ╔═╡ 2301de50-2b5d-11eb-19df-1b7fb31dea16
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

# ╔═╡ 2301de50-2b5d-11eb-3c72-7d2046db0f07
begin
    submit_answer(nothing; prob_num=449)
end

# ╔═╡ 2301de50-2b5d-11eb-055c-fbca30e0c6e7
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

# ╔═╡ 2301de50-2b5d-11eb-0dfe-ab7367adce7c
begin
    submit_answer(nothing; prob_num=450)
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
# ╠═22dd8d70-2b5d-11eb-30ce-abe36c910402
# ╟─22dd8d70-2b5d-11eb-0f31-49efe5189204
# ╠═22dd8d70-2b5d-11eb-36e4-019b48eb74dc
# ╟─22dd8d70-2b5d-11eb-15ae-9fda689f028a
# ╠═22dd8d70-2b5d-11eb-0dfb-099111b6e1b3
# ╟─22dd8d70-2b5d-11eb-3030-7d566c1d797e
# ╠═22dd8d70-2b5d-11eb-0ea4-8dca50acb401
# ╟─22dd8d70-2b5d-11eb-0e35-23ca6474cf7d
# ╠═22dd8d70-2b5d-11eb-3280-a73c54387b57
# ╟─22dd8d70-2b5d-11eb-2464-ed9537689590
# ╠═22dd8d70-2b5d-11eb-2943-ffd94cccc575
# ╟─22dd8d70-2b5d-11eb-080f-7dc3133ad27f
# ╠═22dd8d70-2b5d-11eb-1429-31bbbb7d6cc5
# ╟─22dd8d70-2b5d-11eb-098e-c91b8b3d5312
# ╠═22dd8d70-2b5d-11eb-280f-dbc00e4d7de8
# ╟─22dd8d70-2b5d-11eb-1d42-d383f63aa63f
# ╠═22dd8d70-2b5d-11eb-35a7-4f6e8928908c
# ╟─22ddb480-2b5d-11eb-05c5-77cfdef309c4
# ╠═22ddb480-2b5d-11eb-2112-d9bb1d1c1625
# ╟─22ddb480-2b5d-11eb-1d1c-73bf387370a3
# ╠═22ddb480-2b5d-11eb-3947-bb0ca2a1f03d
# ╟─22ddb480-2b5d-11eb-3b87-3d5a1b38560e
# ╠═22ddb480-2b5d-11eb-1262-5bf7ca3414cf
# ╟─22ddb480-2b5d-11eb-3535-7fde9361bab7
# ╠═22ddb480-2b5d-11eb-21ae-d108a7dc578d
# ╟─22ddb480-2b5d-11eb-1fe8-ad308462499c
# ╠═22ddb480-2b5d-11eb-0212-6d80024258f2
# ╟─22dddb90-2b5d-11eb-058f-6f845677e37f
# ╠═22dddb90-2b5d-11eb-3536-496c908adf90
# ╟─22dddb90-2b5d-11eb-3481-0f838562460f
# ╠═22dddb90-2b5d-11eb-3bfe-5d4097e11f99
# ╟─22dddb90-2b5d-11eb-10a5-e3553bd61029
# ╠═22dddb90-2b5d-11eb-2841-05e67cca846f
# ╟─22dddb90-2b5d-11eb-011d-d7df6eefef7e
# ╠═22dddb90-2b5d-11eb-3e7b-e761cb8814f3
# ╟─22dddb90-2b5d-11eb-36ac-81ff7582544e
# ╠═22dddb90-2b5d-11eb-19e7-5d14a377fdd6
# ╟─22dddb90-2b5d-11eb-3fb2-ed04fca6b68a
# ╠═22dddb90-2b5d-11eb-1bcb-f3e1fc9ff082
# ╟─22dddb90-2b5d-11eb-06a4-b58f3b5f9a78
# ╠═22dddb90-2b5d-11eb-2e46-d7297d25806c
# ╟─22dddb90-2b5d-11eb-181d-b176931a71ec
# ╠═22dddb90-2b5d-11eb-0f42-b78a1e2e1cb9
# ╟─22de02a2-2b5d-11eb-1902-6f659fc2252a
# ╠═22de02a2-2b5d-11eb-14a5-73c17eae0db6
# ╟─22de02a2-2b5d-11eb-2aec-25a1323bf505
# ╠═22de02a2-2b5d-11eb-0fef-9dc7906a8dcd
# ╟─22de02a2-2b5d-11eb-1fc3-bd420e708ee5
# ╠═22de02a2-2b5d-11eb-259f-a3bda9a06c17
# ╟─22de02a2-2b5d-11eb-08e2-a3aabeec274f
# ╠═22de02a2-2b5d-11eb-0eed-27b312234036
# ╠═22df1410-2b5d-11eb-2197-4566fc4e60e9
# ╟─22df1410-2b5d-11eb-230d-b1e602807296
# ╠═22df1410-2b5d-11eb-0a03-459fbb3d03bf
# ╟─22df1410-2b5d-11eb-18f5-852e00dd1b68
# ╠═22df1410-2b5d-11eb-15bb-9bec78dcfc9a
# ╟─22df1410-2b5d-11eb-0a75-1df6ccc35627
# ╠═22df1410-2b5d-11eb-1d3b-d56e96735c11
# ╟─22df1410-2b5d-11eb-3e9d-6f98c9743b6a
# ╠═22df1410-2b5d-11eb-34e0-fb612f6f7b91
# ╟─22df1410-2b5d-11eb-3b5c-bfc6ab314256
# ╠═22df1410-2b5d-11eb-0c03-0b51d97e4d1b
# ╟─22df1410-2b5d-11eb-01cb-617bb2d0cd19
# ╠═22df1410-2b5d-11eb-35e3-4b6240756705
# ╟─22df1410-2b5d-11eb-3114-9343e3b33b13
# ╠═22df1410-2b5d-11eb-0833-35df467f1021
# ╟─22df1410-2b5d-11eb-34b2-5925ad970bda
# ╠═22df1410-2b5d-11eb-1628-2f788feea8a2
# ╟─22df3b20-2b5d-11eb-27ca-d9cefbc36036
# ╠═22df3b20-2b5d-11eb-25c7-f505101c397a
# ╟─22df3b20-2b5d-11eb-0868-7db30340d584
# ╠═22df3b20-2b5d-11eb-338c-a92fe2a930f0
# ╟─22df3b20-2b5d-11eb-2632-cb7c01dddf1f
# ╠═22df3b20-2b5d-11eb-1f5f-7fb83ce02077
# ╟─22df3b20-2b5d-11eb-1b77-01bac1c17e77
# ╠═22df3b20-2b5d-11eb-1f2b-d5e81a874851
# ╟─22df3b20-2b5d-11eb-3cbe-67d24ec44e4d
# ╠═22df3b20-2b5d-11eb-2f75-d3d063748735
# ╟─22df3b20-2b5d-11eb-30b9-772856e4674b
# ╠═22df3b20-2b5d-11eb-385a-09bbe20f2cbf
# ╟─22df3b20-2b5d-11eb-05e9-256beb06445e
# ╠═22df3b20-2b5d-11eb-1e15-971da0e2453f
# ╟─22df3b20-2b5d-11eb-2513-2bdcc33c3723
# ╠═22df3b20-2b5d-11eb-3bda-dd875c5938a2
# ╟─22df3b20-2b5d-11eb-2f3f-af88b73e0c3a
# ╠═22df3b20-2b5d-11eb-1002-5de37df0c625
# ╟─22df6230-2b5d-11eb-1a15-4d30ab3a6c50
# ╠═22df6230-2b5d-11eb-05d6-390c2b87c115
# ╟─22df6230-2b5d-11eb-2365-432479aef901
# ╠═22df6230-2b5d-11eb-25d0-9de9bdbf72c1
# ╟─22df6230-2b5d-11eb-1a23-d5d0355ccae7
# ╠═22df6230-2b5d-11eb-3486-ff6571c252f3
# ╟─22df6230-2b5d-11eb-3b5d-dba3adc0424d
# ╠═22df6230-2b5d-11eb-361f-012fa621a848
# ╟─22df6230-2b5d-11eb-06ed-f75d73af1e20
# ╠═22df6230-2b5d-11eb-2fa8-e71fddd87269
# ╟─22df6230-2b5d-11eb-184c-05b841cf650a
# ╠═22df6230-2b5d-11eb-3f73-83d97a98271e
# ╟─22df8940-2b5d-11eb-2542-df8ba5107b34
# ╠═22df8940-2b5d-11eb-300e-c59153af2e7b
# ╟─22df8940-2b5d-11eb-2433-25dee9c66d45
# ╠═22df8940-2b5d-11eb-0c6e-57c847695159
# ╠═22e26f70-2b5d-11eb-1e2b-190de2fee4cf
# ╟─22e26f70-2b5d-11eb-2022-9780eae916d3
# ╠═22e26f70-2b5d-11eb-0a6a-cb8b8348c07d
# ╟─22e29680-2b5d-11eb-2d39-b7b2230f8fa2
# ╠═22e29680-2b5d-11eb-3ea0-a761248a90f4
# ╟─22e29680-2b5d-11eb-116e-81405e1fb749
# ╠═22e29680-2b5d-11eb-192d-1525a6fb74bf
# ╟─22e29680-2b5d-11eb-1079-69eacaf4860c
# ╠═22e29680-2b5d-11eb-3fd7-d53b79113799
# ╟─22e29680-2b5d-11eb-04ee-25f8dfe9e367
# ╠═22e29680-2b5d-11eb-3cbf-97a643d05628
# ╟─22e29680-2b5d-11eb-04b4-5b44696ed582
# ╠═22e29680-2b5d-11eb-388a-a18caaf7f19d
# ╟─22e29680-2b5d-11eb-0d0a-1fedb4597ac2
# ╠═22e29680-2b5d-11eb-2da9-19f4e0cbfb44
# ╟─22e29680-2b5d-11eb-19bd-c9c6b474ed3b
# ╠═22e29680-2b5d-11eb-2860-bb47fa205692
# ╟─22e29680-2b5d-11eb-3605-a5e78f9ab1ee
# ╠═22e29680-2b5d-11eb-2762-174bbd15c3e4
# ╟─22e29680-2b5d-11eb-3dc0-f72bc76bc61a
# ╠═22e29680-2b5d-11eb-1506-d1e2f1a013e6
# ╟─22e29680-2b5d-11eb-1db1-0d7540012e0c
# ╠═22e29680-2b5d-11eb-044b-e3194ecff776
# ╟─22e29680-2b5d-11eb-2a4a-abb5a170e148
# ╠═22e29680-2b5d-11eb-181a-9539922cde66
# ╟─22e2bd90-2b5d-11eb-0ea1-8f56ac409673
# ╠═22e2bd90-2b5d-11eb-28e0-e5cb3ad1ce33
# ╟─22e2bd90-2b5d-11eb-1289-b94465758128
# ╠═22e2bd90-2b5d-11eb-1fa6-bd1ae5a44dc5
# ╟─22e2bd90-2b5d-11eb-38db-29be13293161
# ╠═22e2bd90-2b5d-11eb-3a66-dfbba8a2a934
# ╟─22e2bd90-2b5d-11eb-0098-f5f5e50fb778
# ╠═22e2bd90-2b5d-11eb-29c9-67d07af6a073
# ╟─22e2bd90-2b5d-11eb-1d88-8f0f05f69212
# ╠═22e2bd90-2b5d-11eb-38db-69cb14696107
# ╟─22e2bd90-2b5d-11eb-2053-a75a97762fd8
# ╠═22e2bd90-2b5d-11eb-0a5c-43eca718ef56
# ╟─22e2bd90-2b5d-11eb-3262-4fc715a4a1c6
# ╠═22e2bd90-2b5d-11eb-1db1-b1e56386ebb8
# ╟─22e2bd90-2b5d-11eb-1361-41bd4e7940e6
# ╠═22e2bd90-2b5d-11eb-38ba-b7c81dc61a85
# ╟─22e2bd90-2b5d-11eb-068f-d36f4e600684
# ╠═22e2bd90-2b5d-11eb-0f35-13b546782f04
# ╟─22e2bd90-2b5d-11eb-1810-3d5a39cb8004
# ╠═22e2bd90-2b5d-11eb-3378-3da1fffbf133
# ╟─22e2bd90-2b5d-11eb-12a9-afeb7aae9e36
# ╠═22e2bd90-2b5d-11eb-1bcb-616eb36ff032
# ╟─22e2bd90-2b5d-11eb-0257-17468ecc6e71
# ╠═22e2bd90-2b5d-11eb-35e9-31593fdebb15
# ╟─22e2bd90-2b5d-11eb-2dd8-053709c20895
# ╠═22e2bd90-2b5d-11eb-12c1-6fde18c56bb0
# ╠═22e3f610-2b5d-11eb-136f-6732c6179af1
# ╟─22e3f610-2b5d-11eb-028c-8b6b87282d2a
# ╠═22e3f610-2b5d-11eb-3db3-2ff8bfdf5585
# ╟─22e3f610-2b5d-11eb-381d-7f1950b0bb00
# ╠═22e3f610-2b5d-11eb-0bfc-11b0ba263537
# ╟─22e41d20-2b5d-11eb-2494-c380c3b3a50a
# ╠═22e41d20-2b5d-11eb-1215-3f8b6facc1b8
# ╟─22e41d20-2b5d-11eb-3707-e1ab6a4841fc
# ╠═22e41d20-2b5d-11eb-0d7a-017f5afb8dd9
# ╟─22e41d20-2b5d-11eb-2abf-93d72fad9d6b
# ╠═22e41d20-2b5d-11eb-3c97-d7e687894145
# ╟─22e41d20-2b5d-11eb-37aa-cbe7efb1bd9a
# ╠═22e41d20-2b5d-11eb-0939-c1831698c8cc
# ╟─22e41d20-2b5d-11eb-3d17-59ecb1ff2bc9
# ╠═22e41d20-2b5d-11eb-3a62-1be450e46139
# ╟─22e41d20-2b5d-11eb-20d5-5944cf9ebe00
# ╠═22e41d20-2b5d-11eb-2a21-b7298072410e
# ╟─22e41d20-2b5d-11eb-00e4-99e8b28a94ee
# ╠═22e41d20-2b5d-11eb-1503-cb0cd5d30f5b
# ╟─22e41d20-2b5d-11eb-060f-f50eaf916224
# ╠═22e41d20-2b5d-11eb-362d-0de577794da6
# ╟─22e41d20-2b5d-11eb-39d4-15b044c678d8
# ╠═22e41d20-2b5d-11eb-2164-97643a75b7e9
# ╟─22e44430-2b5d-11eb-1332-43472461f067
# ╠═22e44430-2b5d-11eb-2bb5-9f08a172d151
# ╟─22e44430-2b5d-11eb-00e6-89af964a74a2
# ╠═22e44430-2b5d-11eb-3e8d-7923f8210c51
# ╟─22e44430-2b5d-11eb-1e23-6faab01bdf96
# ╠═22e44430-2b5d-11eb-3de6-99ff5d9b6f39
# ╟─22e44430-2b5d-11eb-2421-776704f35067
# ╠═22e44430-2b5d-11eb-0170-1f9933bed32f
# ╟─22e44430-2b5d-11eb-214a-0f8b06563f47
# ╠═22e44430-2b5d-11eb-0234-1340e58fbd64
# ╟─22e44430-2b5d-11eb-0b3f-4dca3eb68993
# ╠═22e44430-2b5d-11eb-3fcd-51c229d0ed5f
# ╟─22e44430-2b5d-11eb-1785-1f82aba72e07
# ╠═22e44430-2b5d-11eb-0328-15f7dbf8650e
# ╟─22e44430-2b5d-11eb-075e-0fbc3e60a1cd
# ╠═22e44430-2b5d-11eb-17a2-3f8c8c3a379f
# ╟─22e44430-2b5d-11eb-2123-e9e5f935206d
# ╠═22e44430-2b5d-11eb-15ea-b1d38c67f073
# ╟─22e44430-2b5d-11eb-1a6c-634b890267f2
# ╠═22e44430-2b5d-11eb-3a4d-b5e873db1dba
# ╟─22e44430-2b5d-11eb-1505-3f7dbd756ceb
# ╠═22e44430-2b5d-11eb-2274-573c546d4e32
# ╟─22e46b40-2b5d-11eb-29ca-37e9f3decfd5
# ╠═22e46b40-2b5d-11eb-3b0e-b771da38f5ab
# ╟─22e46b40-2b5d-11eb-12ac-3f6b604b7457
# ╠═22e46b40-2b5d-11eb-1fbd-97a64312d694
# ╟─22e46b40-2b5d-11eb-344e-993f3ea7480e
# ╠═22e46b40-2b5d-11eb-0079-07c8a2dfcb08
# ╠═22e6b530-2b5d-11eb-13b9-03a8d61528cd
# ╟─22e6b530-2b5d-11eb-24e9-bf62980df24c
# ╠═22e6b530-2b5d-11eb-3bc2-dd70c8aa3806
# ╟─22e6b530-2b5d-11eb-30aa-275a98f40c9f
# ╠═22e6b530-2b5d-11eb-2407-93c5840886a9
# ╟─22e6b530-2b5d-11eb-35a8-73d0fdd2cdcc
# ╠═22e6b530-2b5d-11eb-3638-e3e5a18eb93f
# ╟─22e6b530-2b5d-11eb-17c8-51033798208b
# ╠═22e6b530-2b5d-11eb-1451-c1feeab421d3
# ╟─22e6b530-2b5d-11eb-3309-83802c034dab
# ╠═22e6b530-2b5d-11eb-158b-89ebbf6e37a0
# ╟─22e6b530-2b5d-11eb-0087-032e0d3d2655
# ╠═22e6b530-2b5d-11eb-1157-210876d7f98c
# ╟─22e6b530-2b5d-11eb-1325-099d912d6a4a
# ╠═22e6b530-2b5d-11eb-0df0-c338c55360ff
# ╟─22e6b530-2b5d-11eb-34ce-a77db849940f
# ╠═22e6b530-2b5d-11eb-3aa5-db78fbc6e530
# ╟─22e6dc40-2b5d-11eb-2d02-87d333656509
# ╠═22e6dc40-2b5d-11eb-146e-9195b0082115
# ╟─22e6dc40-2b5d-11eb-01e2-6b09f727d2e0
# ╠═22e6dc40-2b5d-11eb-2243-7d3db8578030
# ╟─22e6dc40-2b5d-11eb-079b-e30b376b2181
# ╠═22e6dc40-2b5d-11eb-2dbb-97350278452f
# ╟─22e6dc40-2b5d-11eb-086a-6fe0915d32a4
# ╠═22e6dc40-2b5d-11eb-0f01-2f614bf9366d
# ╟─22e6dc40-2b5d-11eb-2669-231fe76b0228
# ╠═22e6dc40-2b5d-11eb-0eb1-79cc0f48a853
# ╟─22e6dc40-2b5d-11eb-19eb-9510ae92d6a9
# ╠═22e6dc40-2b5d-11eb-29fd-73ba751ce445
# ╟─22e6dc40-2b5d-11eb-02ae-670a4645c990
# ╠═22e6dc40-2b5d-11eb-3114-37b06dd38068
# ╟─22e6dc40-2b5d-11eb-07a8-bd7d4475eec7
# ╠═22e6dc40-2b5d-11eb-298c-2ba31aa7feda
# ╟─22e6dc40-2b5d-11eb-3951-ff0e3847a617
# ╠═22e6dc40-2b5d-11eb-294c-89993e5b7fc1
# ╟─22e6dc40-2b5d-11eb-3407-23310a3ca41d
# ╠═22e6dc40-2b5d-11eb-26af-5b3b1028569d
# ╟─22e6dc40-2b5d-11eb-2594-930eacb79df1
# ╠═22e6dc40-2b5d-11eb-1791-7508fc2602a7
# ╟─22e6dc40-2b5d-11eb-0a17-79b42b7fefcd
# ╠═22e6dc40-2b5d-11eb-058d-195d24e9d562
# ╟─22e6dc40-2b5d-11eb-0225-af9983eebc81
# ╠═22e6dc40-2b5d-11eb-1143-53ce5d5bff24
# ╟─22e7034e-2b5d-11eb-3f89-fba77f961adb
# ╠═22e7034e-2b5d-11eb-0493-415e09b7ffb8
# ╟─22e7034e-2b5d-11eb-3889-dbcce468a48c
# ╠═22e7034e-2b5d-11eb-3e07-d302f885b917
# ╟─22e7034e-2b5d-11eb-399e-616c8f3f3a7e
# ╠═22e7034e-2b5d-11eb-2134-df64ceb3db14
# ╟─22e7034e-2b5d-11eb-1a4d-c7c528c9926a
# ╠═22e7034e-2b5d-11eb-2bd6-bdb40a785cde
# ╠═22e7edb0-2b5d-11eb-2e2b-6b2295156a33
# ╟─22e7edb0-2b5d-11eb-04e1-03d5e012e590
# ╠═22e7edb0-2b5d-11eb-0277-9304b1f2f44e
# ╟─22e7edb0-2b5d-11eb-0db9-9536bf795892
# ╠═22e7edb0-2b5d-11eb-0f3b-b3909391103b
# ╟─22e7edb0-2b5d-11eb-2c65-b5d03d0bdeb8
# ╠═22e7edb0-2b5d-11eb-1152-a1b9b6c7cb31
# ╟─22e7edb0-2b5d-11eb-1eac-4989362cd6d4
# ╠═22e7edb0-2b5d-11eb-39d6-1b3bca046ecc
# ╟─22e7edb0-2b5d-11eb-2e11-edf2fc01e07b
# ╠═22e7edb0-2b5d-11eb-2bb9-1bcf4b75f473
# ╟─22e814c0-2b5d-11eb-1602-53af70befcdd
# ╠═22e814c0-2b5d-11eb-34db-831baf8770cb
# ╟─22e814c0-2b5d-11eb-06bf-3da39d6ff73c
# ╠═22e814c0-2b5d-11eb-16da-b39400161cbd
# ╟─22e814c0-2b5d-11eb-1769-41edcb0b9c4c
# ╠═22e814c0-2b5d-11eb-3169-ad9d78efaa7a
# ╟─22e814c0-2b5d-11eb-0487-4b6514e9a2a0
# ╠═22e814c0-2b5d-11eb-17de-9da7c8ffe6fd
# ╟─22e814c0-2b5d-11eb-19bf-2b3fdf5f3929
# ╠═22e814c0-2b5d-11eb-23c2-cf1ca9d64209
# ╟─22e814c0-2b5d-11eb-19af-f5da9439e40a
# ╠═22e814c0-2b5d-11eb-1866-d5cb5bde6a61
# ╟─22e814c0-2b5d-11eb-332b-b97d4d02f9cb
# ╠═22e814c0-2b5d-11eb-3c31-b3e6e5b14ac5
# ╟─22e814c0-2b5d-11eb-2562-1f5e46f27936
# ╠═22e814c0-2b5d-11eb-0394-eb819328e726
# ╟─22e814c0-2b5d-11eb-0537-7bb418b9d000
# ╠═22e814c0-2b5d-11eb-2d60-7f2f608be981
# ╟─22e814c0-2b5d-11eb-2a46-356d43185378
# ╠═22e814c0-2b5d-11eb-186b-b7262b7ea932
# ╟─22e814c0-2b5d-11eb-0721-d396341215cf
# ╠═22e814c0-2b5d-11eb-0274-99854e0cd0e6
# ╟─22e814c0-2b5d-11eb-0077-3dbf7080694c
# ╠═22e814c0-2b5d-11eb-003e-4bfaa6418496
# ╟─22e814c0-2b5d-11eb-29f6-e1171775db09
# ╠═22e814c0-2b5d-11eb-39f2-7be324ccc639
# ╟─22e814c0-2b5d-11eb-3e4d-a76ae866ff06
# ╠═22e814c0-2b5d-11eb-38d4-f79cd5a1c929
# ╟─22e814c0-2b5d-11eb-359b-e5e749bae0ee
# ╠═22e814c0-2b5d-11eb-1563-e9936ce902dd
# ╟─22e83bd0-2b5d-11eb-1547-f3085e978db8
# ╠═22e83bd0-2b5d-11eb-34e7-8bfb2687ee99
# ╟─22e83bd0-2b5d-11eb-3f6a-6d208ef5a2aa
# ╠═22e83bd0-2b5d-11eb-2648-d59730e65c66
# ╟─22e83bd0-2b5d-11eb-1e75-7bd1ef12fc5a
# ╠═22e83bd0-2b5d-11eb-1457-cd5c365e0841
# ╟─22e83bd0-2b5d-11eb-0fe2-29517a1e99a4
# ╠═22e83bd0-2b5d-11eb-1c5b-f13f563c874a
# ╟─22e83bd0-2b5d-11eb-0fa7-6de991f509c5
# ╠═22e83bd0-2b5d-11eb-246d-a734cd86bf07
# ╠═22eb2200-2b5d-11eb-1adb-05e409b40989
# ╟─22eb2200-2b5d-11eb-3483-2938c630027b
# ╠═22eb2200-2b5d-11eb-0314-2b633f4113a0
# ╟─22eb4910-2b5d-11eb-3436-7dd1bd60610c
# ╠═22eb4910-2b5d-11eb-3e17-a52d480325f6
# ╟─22eb4910-2b5d-11eb-2448-d3cd3658ae21
# ╠═22eb4910-2b5d-11eb-3417-99b9c682f170
# ╟─22eb4910-2b5d-11eb-07ec-ab008be7cf1b
# ╠═22eb4910-2b5d-11eb-1925-5ffd06ac082e
# ╟─22eb4910-2b5d-11eb-2611-81ea3aabf42d
# ╠═22eb4910-2b5d-11eb-03b9-ed52f9c91383
# ╟─22eb4910-2b5d-11eb-0c55-41c0197b5916
# ╠═22eb4910-2b5d-11eb-3610-55456bb96762
# ╟─22eb4910-2b5d-11eb-353d-c3f4bd0257c4
# ╠═22eb4910-2b5d-11eb-26cf-5bcd0e157899
# ╟─22eb4910-2b5d-11eb-1db5-655b92e63494
# ╠═22eb4910-2b5d-11eb-1abe-df9fc2754586
# ╟─22eb4910-2b5d-11eb-0625-0b3c7a9bea39
# ╠═22eb4910-2b5d-11eb-0c23-e39d4513fb13
# ╟─22eb4910-2b5d-11eb-14f9-abcb018134d2
# ╠═22eb4910-2b5d-11eb-3eff-cdbba2d52e16
# ╟─22eb4910-2b5d-11eb-10b3-f16b7b002aab
# ╠═22eb4910-2b5d-11eb-3760-b79ca7e349ba
# ╟─22eb4910-2b5d-11eb-2446-279dbe0d4da7
# ╠═22eb4910-2b5d-11eb-3d2e-b5135915d144
# ╟─22eb7020-2b5d-11eb-0918-639bd1992287
# ╠═22eb7020-2b5d-11eb-1b24-83e9770ac0d4
# ╟─22eb7020-2b5d-11eb-0312-2d963507dd55
# ╠═22eb7020-2b5d-11eb-1c0d-8540a69fa332
# ╟─22eb7020-2b5d-11eb-23b9-1518f75296a4
# ╠═22eb7020-2b5d-11eb-0667-6da4c695032f
# ╟─22eb7020-2b5d-11eb-21c9-8ddd8db9aa58
# ╠═22eb7020-2b5d-11eb-3076-0120dcaa719d
# ╟─22eb7020-2b5d-11eb-32fa-13505c8783bf
# ╠═22eb7020-2b5d-11eb-15ed-a3fec62ef9aa
# ╟─22eb7020-2b5d-11eb-1e0f-61f2ab599841
# ╠═22eb7020-2b5d-11eb-31f7-09b009e2e2fa
# ╟─22eb7020-2b5d-11eb-25e9-770da986c3a6
# ╠═22eb7020-2b5d-11eb-39d1-6dd8bf3dfcd9
# ╟─22eb7020-2b5d-11eb-2cd8-3dfcefb9437d
# ╠═22eb7020-2b5d-11eb-038c-1f494eb47df8
# ╟─22eb7020-2b5d-11eb-017f-8dde0814c191
# ╠═22eb7020-2b5d-11eb-0b6f-91d6d5eb191d
# ╟─22eb7020-2b5d-11eb-3980-b902db24a49c
# ╠═22eb7020-2b5d-11eb-383e-7d432a5f492d
# ╟─22eb9730-2b5d-11eb-0aa6-877b1218e536
# ╠═22eb9730-2b5d-11eb-2392-037f526e04b7
# ╟─22eb9730-2b5d-11eb-0d28-45628c07a799
# ╠═22eb9730-2b5d-11eb-0e1a-ed8eca50294d
# ╟─22eb9730-2b5d-11eb-17f4-ab17c21a4958
# ╠═22eb9730-2b5d-11eb-18ea-15e6d71aad91
# ╠═22edba10-2b5d-11eb-002a-91d87dcb21b0
# ╟─22edba10-2b5d-11eb-3113-d98f12e08c49
# ╠═22edba10-2b5d-11eb-1b2e-0bf9b0fbc055
# ╟─22edba10-2b5d-11eb-3ed4-a77c1a433274
# ╠═22edba10-2b5d-11eb-3f06-01adf62bf218
# ╟─22edba10-2b5d-11eb-3309-810a661adfba
# ╠═22edba10-2b5d-11eb-04e3-c3589a540e96
# ╟─22edba10-2b5d-11eb-0f46-8ddba9371501
# ╠═22edba10-2b5d-11eb-1f65-cdaac4b77296
# ╟─22edba10-2b5d-11eb-34ac-7f4cb7c48749
# ╠═22edba10-2b5d-11eb-1508-f3cb9414e1bf
# ╟─22edba10-2b5d-11eb-320a-ebfb1c946591
# ╠═22edba10-2b5d-11eb-35d1-85dddaad76fb
# ╟─22edba10-2b5d-11eb-0cb5-5307580983d6
# ╠═22edba10-2b5d-11eb-14ba-e3da2c5deafe
# ╟─22ede120-2b5d-11eb-3d75-574d3b4a6e6c
# ╠═22ede120-2b5d-11eb-239f-b14a8051cc5e
# ╟─22ede120-2b5d-11eb-0e90-b517034ca91c
# ╠═22ede120-2b5d-11eb-250a-231eead3818c
# ╟─22ede120-2b5d-11eb-010d-cd7c2c409e52
# ╠═22ede120-2b5d-11eb-07b7-bdb2ff754cb3
# ╟─22ede120-2b5d-11eb-1cd6-b78d3c181cd0
# ╠═22ede120-2b5d-11eb-1c6d-13fc69e092b2
# ╟─22ede120-2b5d-11eb-1f1b-e78b34e6ecc1
# ╠═22ede120-2b5d-11eb-3623-770f62d341c4
# ╟─22ede120-2b5d-11eb-385c-998fefcffcdc
# ╠═22ede120-2b5d-11eb-182b-cbaecc1f367f
# ╟─22ede120-2b5d-11eb-12b0-733834378ee9
# ╠═22ede120-2b5d-11eb-26eb-2d52a2defc56
# ╟─22ede120-2b5d-11eb-2b39-1ffc9cfe1d90
# ╠═22ede120-2b5d-11eb-10f5-4be133464618
# ╟─22ede120-2b5d-11eb-3ae3-ff8b46b870ca
# ╠═22ede120-2b5d-11eb-1eef-5b37aa5c5aa7
# ╟─22ee082e-2b5d-11eb-3d79-81130c835ee0
# ╠═22ee082e-2b5d-11eb-3887-eba8f2e0471c
# ╟─22ee082e-2b5d-11eb-1fba-676d626ca14e
# ╠═22ee082e-2b5d-11eb-0c1e-690c6c98621e
# ╟─22ee082e-2b5d-11eb-1843-19b77424a06f
# ╠═22ee082e-2b5d-11eb-3393-572599cc5462
# ╟─22ee082e-2b5d-11eb-293c-9f0d177ea6bb
# ╠═22ee082e-2b5d-11eb-2206-8f142b6b4710
# ╟─22ee082e-2b5d-11eb-1437-1370b103b352
# ╠═22ee082e-2b5d-11eb-0152-57eb7f8bee61
# ╟─22ee082e-2b5d-11eb-0345-3392aab354fe
# ╠═22ee082e-2b5d-11eb-25e7-bdda0fc413c6
# ╟─22ee082e-2b5d-11eb-0a7e-d3f00b2d00c2
# ╠═22ee082e-2b5d-11eb-3597-0d7f56e78aaa
# ╟─22eecb80-2b5d-11eb-2bf7-9b758099f0e1
# ╠═22eecb80-2b5d-11eb-092d-c5a2e2e585e8
# ╟─22eecb80-2b5d-11eb-2d5e-2b4634549f50
# ╠═22eecb80-2b5d-11eb-0464-69afd8c6f7ba
# ╠═22f05220-2b5d-11eb-04cd-5bd576ef099c
# ╟─22f05220-2b5d-11eb-1e28-97ffa1ea7a49
# ╠═22f05220-2b5d-11eb-12ad-7d9afa888073
# ╟─22f05220-2b5d-11eb-2c19-89801c551250
# ╠═22f05220-2b5d-11eb-27df-edb88c0533ca
# ╟─22f05220-2b5d-11eb-39bd-557598b630c0
# ╠═22f05220-2b5d-11eb-01c5-0dac41ebcdf0
# ╟─22f05220-2b5d-11eb-2337-87ffc2b40fd9
# ╠═22f05220-2b5d-11eb-116a-07a1276780a6
# ╟─22f05220-2b5d-11eb-3a23-074a05392439
# ╠═22f05220-2b5d-11eb-3e3a-218a1fbfa1cf
# ╟─22f05220-2b5d-11eb-060a-8517a5c58834
# ╠═22f05220-2b5d-11eb-1799-ef9997213d78
# ╟─22f05220-2b5d-11eb-0816-55590a5b7624
# ╠═22f05220-2b5d-11eb-01db-255c7a064d6b
# ╟─22f07930-2b5d-11eb-2020-29df064ed6d8
# ╠═22f07930-2b5d-11eb-0df5-1d7114fcc1f9
# ╟─22f07930-2b5d-11eb-2c71-2df9d4d47605
# ╠═22f07930-2b5d-11eb-19b6-0be1e62e5788
# ╟─22f07930-2b5d-11eb-0f88-676d7eb2e4de
# ╠═22f07930-2b5d-11eb-0e37-65f6e76833cf
# ╟─22f07930-2b5d-11eb-15c6-dd2d316cf45c
# ╠═22f07930-2b5d-11eb-3515-1f36e00b51b8
# ╟─22f07930-2b5d-11eb-08d2-5f097e8de9a6
# ╠═22f07930-2b5d-11eb-280e-d325de2a51cf
# ╟─22f07930-2b5d-11eb-33e4-bfb5524f575f
# ╠═22f07930-2b5d-11eb-2202-1594a3fb000b
# ╟─22f07930-2b5d-11eb-15af-fd37e3c04ce0
# ╠═22f07930-2b5d-11eb-35fb-45a93a4b5288
# ╟─22f07930-2b5d-11eb-06dd-17561303425a
# ╠═22f07930-2b5d-11eb-30fb-cd25788530a7
# ╟─22f07930-2b5d-11eb-0d06-3174eaf7a13b
# ╠═22f07930-2b5d-11eb-27e5-8b390a6595b8
# ╟─22f07930-2b5d-11eb-03a1-7ba7360e5a8f
# ╠═22f07930-2b5d-11eb-0c27-37409540867b
# ╟─22f07930-2b5d-11eb-0fcb-3fb89ba7514b
# ╠═22f07930-2b5d-11eb-07f7-fde18a6be865
# ╟─22f07930-2b5d-11eb-09c2-db7a6e82a93e
# ╠═22f07930-2b5d-11eb-3c01-9df2c2312681
# ╟─22f0a040-2b5d-11eb-2f3a-4f174e3a6b8c
# ╠═22f0a040-2b5d-11eb-2dfb-f9171666562c
# ╟─22f0a040-2b5d-11eb-23cd-952753fb01f2
# ╠═22f0a040-2b5d-11eb-2f0c-3f16545b4ff9
# ╟─22f0a040-2b5d-11eb-071c-8968d12812b6
# ╠═22f0a040-2b5d-11eb-1e76-c1e956aa137a
# ╟─22f0a040-2b5d-11eb-3b92-3b27580bb6d7
# ╠═22f0a040-2b5d-11eb-2d18-bfe363bd07e5
# ╟─22f0a040-2b5d-11eb-174d-2b19c6b7268e
# ╠═22f0a040-2b5d-11eb-3534-2d4804ebf65e
# ╟─22f0a040-2b5d-11eb-183d-4fa97e66643e
# ╠═22f0a040-2b5d-11eb-1dcd-a3936f21c589
# ╠═22f470d0-2b5d-11eb-0e33-5d3e4b87da0f
# ╟─22f470d0-2b5d-11eb-074b-e5ba69c0373e
# ╠═22f470d0-2b5d-11eb-0ce1-b9c8a9577895
# ╟─22f470d0-2b5d-11eb-0503-b9c88d869012
# ╠═22f470d0-2b5d-11eb-0295-2deea34e8495
# ╟─22f470d0-2b5d-11eb-3b14-05debd37ccd6
# ╠═22f470d0-2b5d-11eb-0abd-637ef006a218
# ╟─22f470d0-2b5d-11eb-294d-110f28a19919
# ╠═22f470d0-2b5d-11eb-01bd-5f39d6b5380e
# ╟─22f470d0-2b5d-11eb-22ce-83ce9de86434
# ╠═22f470d0-2b5d-11eb-3e89-edeb803b20a9
# ╟─22f470d0-2b5d-11eb-2902-bbe84a0277a8
# ╠═22f470d0-2b5d-11eb-056f-3b5950af64c5
# ╟─22f470d0-2b5d-11eb-14ca-6978b004c797
# ╠═22f470d0-2b5d-11eb-073e-bd2cf0c70fec
# ╟─22f470d0-2b5d-11eb-035e-1bf17abad073
# ╠═22f470d0-2b5d-11eb-0208-37fce1884906
# ╟─22f470d0-2b5d-11eb-3e13-073212c23c9a
# ╠═22f470d0-2b5d-11eb-1fe6-6545a35a001d
# ╟─22f470d0-2b5d-11eb-0dc5-ad94b31d30c4
# ╠═22f470d0-2b5d-11eb-09a5-efe7b8639941
# ╟─22f497e2-2b5d-11eb-2094-73c9ef30b44a
# ╠═22f497e2-2b5d-11eb-122b-1fa3664f9e90
# ╟─22f497e2-2b5d-11eb-0734-cfcd1f32f47a
# ╠═22f497e2-2b5d-11eb-2a3e-8b2743e6da9a
# ╟─22f497e2-2b5d-11eb-2007-a3b8c442ffcd
# ╠═22f497e2-2b5d-11eb-0eeb-0da11eae546a
# ╟─22f497e2-2b5d-11eb-2e01-7fc60eb01f9b
# ╠═22f497e2-2b5d-11eb-0010-9f95a40ea950
# ╟─22f497e2-2b5d-11eb-2ef4-635fe17ec4fd
# ╠═22f497e2-2b5d-11eb-1448-470754cf09c7
# ╟─22f497e2-2b5d-11eb-25a9-0f07c0a7388c
# ╠═22f497e2-2b5d-11eb-1bd0-078fc8326a9f
# ╟─22f497e2-2b5d-11eb-2a8f-83388c321ec0
# ╠═22f497e2-2b5d-11eb-2360-9bf1e8977fd2
# ╟─22f497e2-2b5d-11eb-1db6-297cb16e7560
# ╠═22f497e2-2b5d-11eb-3422-d7681e5b7609
# ╟─22f497e2-2b5d-11eb-3343-e7e8741113b8
# ╠═22f497e2-2b5d-11eb-2270-1f118ce75f5d
# ╟─22f497e2-2b5d-11eb-05c2-3f006100c1db
# ╠═22f497e2-2b5d-11eb-080e-63f640de5f9a
# ╟─22f497e2-2b5d-11eb-3597-2f987ca10ca7
# ╠═22f497e2-2b5d-11eb-001c-49fc6c064d6e
# ╟─22f497e2-2b5d-11eb-32c7-b70117acf39c
# ╠═22f497e2-2b5d-11eb-2fae-83de9978ad29
# ╟─22f4bef0-2b5d-11eb-2de1-b3e01fbcee4a
# ╠═22f4bef0-2b5d-11eb-0362-b175d48ee40e
# ╟─22f4bef0-2b5d-11eb-0f29-5b330fc442e9
# ╠═22f4bef0-2b5d-11eb-3c00-9f1d070c25d8
# ╟─22f4bef0-2b5d-11eb-07b3-f11b368af729
# ╠═22f4bef0-2b5d-11eb-258c-87803aa08a5f
# ╠═22fe0dc0-2b5d-11eb-17ec-6d2029ad2ed0
# ╟─22fe0dc0-2b5d-11eb-03d2-9df1353f2e6e
# ╠═22fe0dc0-2b5d-11eb-31f6-eb21a03837b8
# ╟─22fe0dc0-2b5d-11eb-1735-93c6e74c0de6
# ╠═22fe0dc0-2b5d-11eb-0a1e-a94090472296
# ╟─22fe0dc0-2b5d-11eb-0db3-e9453377c276
# ╠═22fe0dc0-2b5d-11eb-08ab-b3525bcc62eb
# ╟─22fe0dc0-2b5d-11eb-0f8b-89b9d3467f16
# ╠═22fe0dc0-2b5d-11eb-3fdf-5dfe7ee10113
# ╟─22fe0dc0-2b5d-11eb-2b5c-5ffcf3762fec
# ╠═22fe0dc0-2b5d-11eb-3f2f-cb7226d1bac0
# ╟─22fe0dc0-2b5d-11eb-27f9-793aa1d2fa8a
# ╠═22fe0dc0-2b5d-11eb-239f-cbe36bd60339
# ╟─22fe34d0-2b5d-11eb-2b6d-b562923b5dab
# ╠═22fe34d0-2b5d-11eb-0fe2-6914313982ee
# ╟─22fe34d0-2b5d-11eb-2a84-a3f42ee4529e
# ╠═22fe34d0-2b5d-11eb-02b8-d72b0db5d3c6
# ╟─22fe34d0-2b5d-11eb-1f2e-8f9a358c5bca
# ╠═22fe34d0-2b5d-11eb-0e7c-619e6e6e90d6
# ╟─22fe34d0-2b5d-11eb-0957-e7b797352c5b
# ╠═22fe34d0-2b5d-11eb-2ea7-e190e340ec89
# ╟─22fe34d0-2b5d-11eb-10b7-6920e49173a4
# ╠═22fe34d0-2b5d-11eb-08c6-e5dc3be316b1
# ╟─22fe34d0-2b5d-11eb-0666-ddc0059f07db
# ╠═22fe34d0-2b5d-11eb-1ebd-332a633c2afc
# ╟─22fe34d0-2b5d-11eb-0afc-ed65e3d010dd
# ╠═22fe34d0-2b5d-11eb-12bb-fb08ceb6a30d
# ╟─22fe34d0-2b5d-11eb-11c0-998d374e8169
# ╠═22fe34d0-2b5d-11eb-3a28-894e1bae216c
# ╟─22fe34d0-2b5d-11eb-0dfe-c3cca06e5cc3
# ╠═22fe34d0-2b5d-11eb-20c5-69b2067fda25
# ╟─22fe34d0-2b5d-11eb-3e6f-478be352b35b
# ╠═22fe34d0-2b5d-11eb-2a9a-234506dd7ecc
# ╟─22fe34d0-2b5d-11eb-2e71-3f98f79d8eea
# ╠═22fe34d0-2b5d-11eb-1d94-e933d0c00401
# ╟─22fe5be0-2b5d-11eb-09b2-811dfd797096
# ╠═22fe5be0-2b5d-11eb-1f10-7f79be5b3d31
# ╟─22fe5be0-2b5d-11eb-0a25-473f4bce0e68
# ╠═22fe5be0-2b5d-11eb-10be-ed8f48755290
# ╟─22fe5be0-2b5d-11eb-099e-bd131a90c06c
# ╠═22fe5be0-2b5d-11eb-0475-0f16f46d02f1
# ╟─22fe5be0-2b5d-11eb-05d9-2933649ab868
# ╠═22fe5be0-2b5d-11eb-0c62-f1fc334ea173
# ╟─22fe5be0-2b5d-11eb-034a-7db9d2dc36d0
# ╠═22fe5be0-2b5d-11eb-08c8-6bf73de0d98e
# ╟─22fe5be0-2b5d-11eb-36a6-d9d01d662f7d
# ╠═22fe5be0-2b5d-11eb-24a4-15bab5433f09
# ╟─22fe5be0-2b5d-11eb-2eb6-e380d98b64e6
# ╠═22fe5be0-2b5d-11eb-3664-e5e589d98295
# ╟─22fe5be0-2b5d-11eb-3fba-8f142d708749
# ╠═22fe5be0-2b5d-11eb-0efd-b542b157b0c6
# ╠═23019030-2b5d-11eb-1480-81e7d34342b0
# ╟─23019030-2b5d-11eb-16e5-439de48d59ec
# ╠═23019030-2b5d-11eb-314a-670187f961fb
# ╟─2301b740-2b5d-11eb-2e38-6fe860c80a93
# ╠═2301b740-2b5d-11eb-38b8-7fc8870f4727
# ╟─2301b740-2b5d-11eb-2b8a-4b6f20af303b
# ╠═2301b740-2b5d-11eb-378d-1fc8e6b2a73d
# ╟─2301b740-2b5d-11eb-2b3f-d7fafa4dc0be
# ╠═2301b740-2b5d-11eb-38fc-9793cbb22747
# ╟─2301b740-2b5d-11eb-0abd-efc37c8c1891
# ╠═2301b740-2b5d-11eb-0648-c7fb84842729
# ╟─2301b740-2b5d-11eb-13a3-874cec8a0b2a
# ╠═2301b740-2b5d-11eb-34cc-d97f9a12fb65
# ╟─2301b740-2b5d-11eb-116b-4bd0e64e4c39
# ╠═2301b740-2b5d-11eb-0b87-35c92c8d1591
# ╟─2301b740-2b5d-11eb-27d5-5f56cb574e4e
# ╠═2301b740-2b5d-11eb-295f-590e9d2c2f8e
# ╟─2301b740-2b5d-11eb-1cc1-ad10a918143b
# ╠═2301b740-2b5d-11eb-0bbf-312eec8406c4
# ╟─2301b740-2b5d-11eb-005c-934b3988779c
# ╠═2301b740-2b5d-11eb-2dca-c3a13681d6a0
# ╟─2301b740-2b5d-11eb-0684-510691f96e1b
# ╠═2301b740-2b5d-11eb-239d-419eb8a5b8ba
# ╟─2301b740-2b5d-11eb-234c-279d046bb99c
# ╠═2301b740-2b5d-11eb-0513-abd1c3d69ac4
# ╟─2301b740-2b5d-11eb-2694-a1e74da90297
# ╠═2301de50-2b5d-11eb-170f-99cb51cbf652
# ╟─2301de50-2b5d-11eb-3f0f-fdaabe32121f
# ╠═2301de50-2b5d-11eb-3178-e1ccfee6ef11
# ╟─2301de50-2b5d-11eb-2bc0-818ce44053bb
# ╠═2301de50-2b5d-11eb-24e8-9f4fd4c0bcdc
# ╟─2301de50-2b5d-11eb-3efa-af78f593ec58
# ╠═2301de50-2b5d-11eb-22b0-670099f25528
# ╟─2301de50-2b5d-11eb-38da-970c36979319
# ╠═2301de50-2b5d-11eb-1610-659ee747158e
# ╟─2301de50-2b5d-11eb-106a-676c2f1913f4
# ╠═2301de50-2b5d-11eb-0fe5-818b4d3b3022
# ╟─2301de50-2b5d-11eb-1f6f-d76f63fa4251
# ╠═2301de50-2b5d-11eb-25af-4de182acdd53
# ╟─2301de50-2b5d-11eb-0e61-f38543161a61
# ╠═2301de50-2b5d-11eb-18e3-21652073d089
# ╟─2301de50-2b5d-11eb-0390-478068d2a01a
# ╠═2301de50-2b5d-11eb-26c4-73d497f7a969
# ╟─2301de50-2b5d-11eb-1880-99877a09a42b
# ╠═2301de50-2b5d-11eb-354d-5def74ad2029
# ╟─2301de50-2b5d-11eb-30a9-a7552d3e16be
# ╠═2301de50-2b5d-11eb-2895-a109d8bf15b2
# ╟─2301de50-2b5d-11eb-19df-1b7fb31dea16
# ╠═2301de50-2b5d-11eb-3c72-7d2046db0f07
# ╟─2301de50-2b5d-11eb-055c-fbca30e0c6e7
# ╠═2301de50-2b5d-11eb-0dfe-ab7367adce7c