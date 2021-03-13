### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 445f1ff2-8435-11eb-0d38-7118e89c3a8e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 445f1ff2-8435-11eb-0cdf-a309b3e7465b
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

# ╔═╡ 445f1ff2-8435-11eb-09de-456da9fc8750
begin
    submit_answer(nothing; prob_num=426)
end

# ╔═╡ 445f1ff2-8435-11eb-3a84-d92dec4064f5
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

# ╔═╡ 445f1ff2-8435-11eb-1050-e1d60e886eb4
begin
    submit_answer(nothing; prob_num=427)
end

# ╔═╡ 445f1ff2-8435-11eb-189f-cb7aba46318e
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

# ╔═╡ 445f1ff2-8435-11eb-2d42-f3a3a84d116a
begin
    submit_answer(nothing; prob_num=428)
end

# ╔═╡ 445f1ff2-8435-11eb-1835-0d846dcc2755
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

# ╔═╡ 445f1ff2-8435-11eb-0b68-2b47d1c73bdc
begin
    submit_answer(nothing; prob_num=429)
end

# ╔═╡ 445f1ff2-8435-11eb-20f7-6f12af72d590
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

# ╔═╡ 445f1ff2-8435-11eb-3e43-63f9ceb48572
begin
    submit_answer(nothing; prob_num=430)
end

# ╔═╡ 445f1ff2-8435-11eb-15f0-3d8ad3850655
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

# ╔═╡ 445f1ff2-8435-11eb-0572-538a990f333a
begin
    submit_answer(nothing; prob_num=431)
end

# ╔═╡ 445f1ff2-8435-11eb-361f-bb4cf2bdd301
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

# ╔═╡ 445f1ff2-8435-11eb-3e6b-ad6b58ba9ec8
begin
    submit_answer(nothing; prob_num=432)
end

# ╔═╡ 445f1ff2-8435-11eb-3043-5768ea889de4
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

# ╔═╡ 445f1ff2-8435-11eb-3179-45b19f3dc43b
begin
    submit_answer(nothing; prob_num=433)
end

# ╔═╡ 445f1ff2-8435-11eb-3c10-75ed602276e4
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

# ╔═╡ 445f1ff2-8435-11eb-1eae-6f71b9610b8f
begin
    submit_answer(nothing; prob_num=434)
end

# ╔═╡ 445f1ff2-8435-11eb-030e-adf4d3e06c20
html"""
<h2>Problem 435: Polynomials of Fibonacci numbers</h2>
<p>The <strong>Fibonacci numbers</strong> $\{f_n, n \ge 0\}$ are defined recursively as $f_n = f_{n-1} + f_{n-2}$ with base cases $f_0 = 0$ and $f_1 = 1$.</p>
<p>Define the polynomials $\{F_n, n \ge 0\}$ as $F_n(x) = \displaystyle{\sum_{i=0}^n f_i x^i}$.</p>
<p>For example, $F_7(x) = x + x^2 + 2x^3 + 3x^4 + 5x^5 + 8x^6 + 13x^7$, and $F_7(11) = 268\,357\,683$.</p>
<p>Let $n = 10^{15}$. Find the sum $\displaystyle{\sum_{x=0}^{100} F_n(x)}$ and give your answer modulo $1\,307\,674\,368\,000 \ (= 15!)$.</p>
"""

# ╔═╡ 445f1ff2-8435-11eb-141b-7bac88363838
begin
    submit_answer(nothing; prob_num=435)
end

# ╔═╡ 445f1ff2-8435-11eb-3241-fbafb66b3b96
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

# ╔═╡ 445f1ff2-8435-11eb-1970-6fd51d72470e
begin
    submit_answer(nothing; prob_num=436)
end

# ╔═╡ 445f1ff2-8435-11eb-0279-83691afafd11
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

# ╔═╡ 445f1ff2-8435-11eb-2e93-e331c0a8efaa
begin
    submit_answer(nothing; prob_num=437)
end

# ╔═╡ 445f1ff2-8435-11eb-371f-873ad4232208
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

# ╔═╡ 445f1ff2-8435-11eb-297d-534989583d48
begin
    submit_answer(nothing; prob_num=438)
end

# ╔═╡ 445f1ff2-8435-11eb-2833-b943290d6438
html"""
<h2>Problem 439: Sum of sum of divisors</h2>
<p>Let <var>d</var>(<var>k</var>) be the sum of all divisors of <var>k</var>.<br />
We define the function S(<var>N</var>) = $\sum_{i=1}^N \sum_{j=1}^Nd(i \cdot j)$.<br />
For example, S(3) = <var>d</var>(1) + <var>d</var>(2) + <var>d</var>(3) + <var>d</var>(2) + <var>d</var>(4) + <var>d</var>(6) + <var>d</var>(3) + <var>d</var>(6) + <var>d</var>(9) = 59.</p>

<p>You are given that S(10<sup>3</sup>) = 563576517282 and S(10<sup>5</sup>) mod 10<sup>9</sup> = 215766508.<br />
Find S(10<sup>11</sup>) mod 10<sup>9</sup>.</p>
"""

# ╔═╡ 445f1ff2-8435-11eb-3ffa-c7d6c7fe3b58
begin
    submit_answer(nothing; prob_num=439)
end

# ╔═╡ 445f1ff2-8435-11eb-0af2-6101b701f09f
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

# ╔═╡ 445f1ff2-8435-11eb-12c7-e98047c6d8ad
begin
    submit_answer(nothing; prob_num=440)
end

# ╔═╡ 445f1ff2-8435-11eb-0763-fb74add15af1
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

# ╔═╡ 445f1ff2-8435-11eb-1b8f-bbe811834b1a
begin
    submit_answer(nothing; prob_num=441)
end

# ╔═╡ 445f1ff2-8435-11eb-1460-dd0c2ca6e384
html"""
<h2>Problem 442: Eleven-free integers</h2>
<p>An integer is called <i>eleven-free</i> if its decimal expansion does not contain any substring representing a power of 11 except 1.</p>

<p>For example, 2404 and 13431 are eleven-free, while 911 and 4121331 are not.</p>

<p>Let E(<i>n</i>) be the <i>n</i>th positive eleven-free integer. For example, E(3) = 3, E(200) = 213 and E(500 000) = 531563.</p>

<p>Find E(10<sup>18</sup>).</p>
"""

# ╔═╡ 445f1ff2-8435-11eb-2573-f5912ee0c095
begin
    submit_answer(nothing; prob_num=442)
end

# ╔═╡ 445f1ff2-8435-11eb-1c73-2fc3a4133da5
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

# ╔═╡ 445f1ff2-8435-11eb-2c88-3b1614817972
begin
    submit_answer(nothing; prob_num=443)
end

# ╔═╡ 445f1ff2-8435-11eb-28ac-e71dd306fdc3
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

# ╔═╡ 445f1ff2-8435-11eb-114b-1fdaf89d1943
begin
    submit_answer(nothing; prob_num=444)
end

# ╔═╡ 445f1ff2-8435-11eb-0f78-eb058a0036b9
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

# ╔═╡ 445f1ff2-8435-11eb-2611-0bf257052e06
begin
    submit_answer(nothing; prob_num=445)
end

# ╔═╡ 445f1ff2-8435-11eb-2588-5b3582089e50
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

# ╔═╡ 445f1ff2-8435-11eb-30d0-7be960db7b7a
begin
    submit_answer(nothing; prob_num=446)
end

# ╔═╡ 445f1ff2-8435-11eb-2723-63648b39ffdf
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

# ╔═╡ 445f1ff2-8435-11eb-07e1-bb6b4520b89b
begin
    submit_answer(nothing; prob_num=447)
end

# ╔═╡ 445f1ff2-8435-11eb-0f0d-6dde2f772f81
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

# ╔═╡ 445f1ff2-8435-11eb-2a85-13de56466572
begin
    submit_answer(nothing; prob_num=448)
end

# ╔═╡ 445f1ff2-8435-11eb-23a1-b50ff79ff902
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

# ╔═╡ 445f1ff2-8435-11eb-2e19-b9a027f6e014
begin
    submit_answer(nothing; prob_num=449)
end

# ╔═╡ 445f1ff2-8435-11eb-11c2-ef9bf3e099f2
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

# ╔═╡ 445f1ff2-8435-11eb-1073-cd808a05edc9
begin
    submit_answer(nothing; prob_num=450)
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
# ╠═4433ca30-8435-11eb-27a4-19ca1a0057cf
# ╟─4433ca30-8435-11eb-19ce-af3d48013010
# ╠═4433ca30-8435-11eb-0167-234e2609d255
# ╟─4433ca30-8435-11eb-14f7-4d6ee9543f1f
# ╠═4433ca30-8435-11eb-1acd-cf0ae0ea3f76
# ╟─4433ca30-8435-11eb-2be7-8b73b8b604a4
# ╠═4433ca30-8435-11eb-03dd-ff1273a0b148
# ╟─4433ca30-8435-11eb-0212-6f55d1653482
# ╠═4433ca30-8435-11eb-0d67-dff382e28c7e
# ╟─4433ca30-8435-11eb-1aed-4527124599fa
# ╠═4433ca30-8435-11eb-3eff-ab79bfb76fa8
# ╟─4433ca30-8435-11eb-16ce-fbd8cd0e3b31
# ╠═4433ca30-8435-11eb-21de-955796745322
# ╟─4433ca30-8435-11eb-02a8-69bdf5f9d988
# ╠═4433ca30-8435-11eb-3e8e-f984862168dc
# ╟─4433ca30-8435-11eb-2ac6-11ad994c7fef
# ╠═4433ca30-8435-11eb-2cd2-65bf5b3ec8bb
# ╟─4433ca30-8435-11eb-0e54-ffda476991d4
# ╠═4433ca30-8435-11eb-1bc2-f1a8c4421b41
# ╟─4433ca30-8435-11eb-3ecd-676d01777581
# ╠═4433ca30-8435-11eb-03c2-b72ca5a19329
# ╟─4433ca30-8435-11eb-023f-b9e531db4d2e
# ╠═4433ca30-8435-11eb-1abb-bb138b7cbf10
# ╟─4433ca30-8435-11eb-172f-afd4354c1496
# ╠═4433ca30-8435-11eb-1b60-4368ee9aa6e0
# ╟─4433ca30-8435-11eb-22e6-5f78db1ab8e1
# ╠═4433ca30-8435-11eb-3908-3d80a7c1957a
# ╟─4433ca30-8435-11eb-16ef-93772f640102
# ╠═4433ca30-8435-11eb-0508-ef74bbab2171
# ╟─4433ca30-8435-11eb-1ea0-b7867f539629
# ╠═4433ca30-8435-11eb-1776-0d00eb63eb56
# ╟─4433ca30-8435-11eb-28c0-4362546df4a9
# ╠═4433ca30-8435-11eb-0bac-35afa1b79fba
# ╟─4433ca30-8435-11eb-2bc9-617494df68a9
# ╠═4433ca30-8435-11eb-3c7f-a316afdc4292
# ╟─4433ca30-8435-11eb-2dc8-ab560a153202
# ╠═4433ca30-8435-11eb-1aa2-6783b90dfd7a
# ╟─4433ca30-8435-11eb-061b-4f5253f0d8de
# ╠═4433ca30-8435-11eb-38e8-d93d88f8c17d
# ╟─4433ca30-8435-11eb-33bd-3b8f09a30d78
# ╠═4433ca30-8435-11eb-2ca8-c7c0bd34ef68
# ╟─4433ca30-8435-11eb-3568-9fc14fbc2f5f
# ╠═4433ca30-8435-11eb-1cb0-1fdea3935acf
# ╟─4433ca30-8435-11eb-0bc1-07b3be67aec6
# ╠═4433ca30-8435-11eb-352c-d327403f5fb3
# ╟─4433ca30-8435-11eb-2693-8dc51b71b366
# ╠═4433ca30-8435-11eb-070f-5baed3d08bc6
# ╟─4433ca30-8435-11eb-0cd4-077421cb92d4
# ╠═4433ca30-8435-11eb-3abc-19e6171279c4
# ╟─4433ca30-8435-11eb-0600-0d87bc5c05ee
# ╠═4433ca30-8435-11eb-392b-376cdc0fdeb7
# ╠═44430c70-8435-11eb-1c44-97c2a36d745e
# ╟─44430c70-8435-11eb-2a13-4fdfb7a36db4
# ╠═44430c70-8435-11eb-37f0-dde80aa0ebb6
# ╟─44430c70-8435-11eb-226c-4bf0e95d33c6
# ╠═44430c70-8435-11eb-0751-85d873cc41ed
# ╟─44430c70-8435-11eb-123b-fb065ae4ec7b
# ╠═44430c70-8435-11eb-21ff-537ab6e639f9
# ╟─44430c70-8435-11eb-2554-a1697629f17f
# ╠═44430c70-8435-11eb-184a-d169db5ef715
# ╟─44430c70-8435-11eb-31dc-f51dfc14cdf3
# ╠═44430c70-8435-11eb-1761-fdd5c079c64f
# ╟─44430c70-8435-11eb-10b4-2bd3a4675ec4
# ╠═44430c70-8435-11eb-211b-c375cba968b3
# ╟─44430c70-8435-11eb-28a0-9bcccb782c5b
# ╠═44430c70-8435-11eb-2eb7-a7e479a64fe8
# ╟─44430c70-8435-11eb-2d2c-01d04e8964c6
# ╠═44430c70-8435-11eb-2615-55a48bd407c0
# ╟─44430c70-8435-11eb-2f1f-f9f658fd5e15
# ╠═44430c70-8435-11eb-0937-53cc871a9e44
# ╟─44430c70-8435-11eb-3b1f-edf10c4220f2
# ╠═44430c70-8435-11eb-03bb-f7f3010392a4
# ╟─44430c70-8435-11eb-0de6-874e103c8d8b
# ╠═44430c70-8435-11eb-3fe4-f148b0e432df
# ╟─44430c70-8435-11eb-14e5-212eb28dcdc1
# ╠═44430c70-8435-11eb-125d-b1d0eb9fe5e5
# ╟─44430c70-8435-11eb-1647-fd5436ee322a
# ╠═44430c70-8435-11eb-2411-ff115b76b7a4
# ╟─44430c70-8435-11eb-1ca4-c5ad2a91eca6
# ╠═44430c70-8435-11eb-151e-3bfbf9b635cf
# ╟─44430c70-8435-11eb-0d7b-6f55aad0375e
# ╠═44430c70-8435-11eb-10cd-1fffa1ef38b6
# ╟─44430c70-8435-11eb-0300-d521069e2e6a
# ╠═44430c70-8435-11eb-1de1-0184e22197bd
# ╟─44430c70-8435-11eb-24ad-57d327e66df0
# ╠═44430c70-8435-11eb-3bca-cd3a6e8d4d27
# ╟─44430c70-8435-11eb-2ef7-09effc1efbb1
# ╠═44430c70-8435-11eb-08f6-a94bbed2a960
# ╟─44430c70-8435-11eb-0770-194c4dbbe8e0
# ╠═44430c70-8435-11eb-3870-e1e07ddacc97
# ╟─44430c70-8435-11eb-0377-c140fd6996a4
# ╠═44430c70-8435-11eb-3348-39fbfcdbac7c
# ╟─44430c70-8435-11eb-2502-0b3a31836f5b
# ╠═44430c70-8435-11eb-2fd3-c98078849685
# ╟─44430c70-8435-11eb-0e8f-c94b1b09b73e
# ╠═44430c70-8435-11eb-1e3e-c7eb5ff7bebd
# ╟─44430c70-8435-11eb-29e2-27eb6fd08afa
# ╠═44430c70-8435-11eb-19fa-67b722e1e3cc
# ╟─44430c70-8435-11eb-3697-7d4adf6b45bf
# ╠═44430c70-8435-11eb-0ec5-018feb813655
# ╟─44430c70-8435-11eb-0172-cd6032719da6
# ╠═44430c70-8435-11eb-0703-fbed1a58d80a
# ╠═444ef350-8435-11eb-2335-3ff3ac194344
# ╟─444ef350-8435-11eb-0fb8-4ba2067d8a03
# ╠═444ef350-8435-11eb-36b7-31425fdd2d9a
# ╟─444ef350-8435-11eb-0995-f9b1b7b11d1f
# ╠═444ef350-8435-11eb-1647-05338c2e4184
# ╟─444ef350-8435-11eb-10b3-3748bb2f2055
# ╠═444ef350-8435-11eb-13bc-fde149da462d
# ╟─444ef350-8435-11eb-002e-c797b8a3fd33
# ╠═444ef350-8435-11eb-27b6-2f59a4f50a00
# ╟─444ef350-8435-11eb-34cd-a3b51fc6fab9
# ╠═444ef350-8435-11eb-121b-27beb4b3f794
# ╟─444ef350-8435-11eb-097d-c1fbf0a7634d
# ╠═444ef350-8435-11eb-100a-ad107a86c0ba
# ╟─444ef350-8435-11eb-1a5f-e3f4076d41dc
# ╠═444ef350-8435-11eb-0f8c-cf968389dc46
# ╟─444ef350-8435-11eb-3f7f-7338a9af0139
# ╠═444ef350-8435-11eb-0a40-9d5e5e21b7ac
# ╟─444ef350-8435-11eb-22ba-cbd14ae5db0c
# ╠═444ef350-8435-11eb-0b12-e37036015005
# ╟─444ef350-8435-11eb-1328-0be0e486bf46
# ╠═444ef350-8435-11eb-3377-75acbbe584ea
# ╟─444ef350-8435-11eb-1163-8d6b34f5fa33
# ╠═444ef350-8435-11eb-0bd3-adccc4a655cc
# ╟─444ef350-8435-11eb-1218-5df6246514ba
# ╠═444ef350-8435-11eb-397f-6dc7e13038e5
# ╟─444ef350-8435-11eb-2122-a5fb7dd924d9
# ╠═444ef350-8435-11eb-0711-458f21942855
# ╟─444ef350-8435-11eb-2351-479f90866122
# ╠═444ef350-8435-11eb-0dd8-855b8bbbed06
# ╟─444ef350-8435-11eb-154a-af0299b7b4c9
# ╠═444ef350-8435-11eb-0cf3-314ea02850f4
# ╟─444ef350-8435-11eb-1594-f9db81c63aea
# ╠═444ef350-8435-11eb-08e8-61fde6e59140
# ╟─444ef350-8435-11eb-3466-51886a74e20c
# ╠═444ef350-8435-11eb-02d6-1111278a217b
# ╟─444ef350-8435-11eb-3358-b7a28199d6d9
# ╠═444ef350-8435-11eb-07e9-9ffe605b3e7f
# ╟─444ef350-8435-11eb-1c51-1d6049d046e9
# ╠═444ef350-8435-11eb-1f7f-79d755947181
# ╟─444ef350-8435-11eb-28e9-497ace0a4ec0
# ╠═444ef350-8435-11eb-38f8-294de576b094
# ╟─444ef350-8435-11eb-29f1-75c92272ba01
# ╠═444ef350-8435-11eb-1585-2788c3004389
# ╟─444ef350-8435-11eb-3063-8b3cdb570982
# ╠═444ef350-8435-11eb-23ee-45bd3a030763
# ╟─444ef350-8435-11eb-08d5-c396dfaf7752
# ╠═444ef350-8435-11eb-2d1e-13bee8f62166
# ╟─444ef350-8435-11eb-2dbb-79a00b4ebc20
# ╠═444ef350-8435-11eb-1c1b-c525a4bfe267
# ╟─444ef350-8435-11eb-231b-1d121ee34f25
# ╠═444ef350-8435-11eb-2e4c-99b4d58917e9
# ╠═44524eb0-8435-11eb-0f64-db1ab8934c4b
# ╟─44524eb0-8435-11eb-16d8-f7085d51a5a9
# ╠═44524eb0-8435-11eb-0998-c96e44d85103
# ╟─44524eb0-8435-11eb-21eb-63a197190d88
# ╠═44524eb0-8435-11eb-2a77-e17ecc81776c
# ╟─44524eb0-8435-11eb-0c9d-e94c645689d1
# ╠═44524eb0-8435-11eb-0382-c70b1ef33706
# ╟─44524eb0-8435-11eb-126c-cd97884361ac
# ╠═44524eb0-8435-11eb-3688-039eff225aab
# ╟─44524eb0-8435-11eb-0866-55408aa1dad0
# ╠═44524eb0-8435-11eb-0dae-334e873a2012
# ╟─44524eb0-8435-11eb-2451-f18b096b490c
# ╠═44524eb0-8435-11eb-1174-bbc1e841adda
# ╟─44524eb0-8435-11eb-3a2d-a11a88b1d698
# ╠═44524eb0-8435-11eb-092f-4f05497cb428
# ╟─44524eb0-8435-11eb-1fc3-a3eae72656d4
# ╠═44524eb0-8435-11eb-0999-bdace9dc656a
# ╟─44524eb0-8435-11eb-289c-93b9cc052f2b
# ╠═44524eb0-8435-11eb-0c9b-0f8976783252
# ╟─44524eb0-8435-11eb-1042-67f5e7adb29e
# ╠═44524eb0-8435-11eb-3b13-b9b283621632
# ╟─44524eb0-8435-11eb-1e67-a3a305133d95
# ╠═44524eb0-8435-11eb-08c4-333fee8d9924
# ╟─44524eb0-8435-11eb-0f7e-25513dfce0f7
# ╠═44524eb0-8435-11eb-1454-399e1d300d98
# ╟─44524eb0-8435-11eb-378f-e15364e0e466
# ╠═44524eb0-8435-11eb-3b23-df4945d72e26
# ╟─44524eb0-8435-11eb-0c57-9fc88e67dbff
# ╠═44524eb0-8435-11eb-2484-db383eff1459
# ╟─44524eb0-8435-11eb-1459-9fd22255ffaf
# ╠═44524eb0-8435-11eb-2784-23b639d63979
# ╟─44524eb0-8435-11eb-392b-1bbb60578c20
# ╠═44524eb0-8435-11eb-016f-31b8205739f4
# ╟─44524eb0-8435-11eb-3aa0-3dfe530f9c5c
# ╠═44524eb0-8435-11eb-2505-37e23d25b428
# ╟─44524eb0-8435-11eb-0c5c-6369245ef0e9
# ╠═44524eb0-8435-11eb-0a2c-49f31fa28e1f
# ╟─44524eb0-8435-11eb-1ec0-bd8ca996a622
# ╠═44524eb0-8435-11eb-22f0-3fce1222ce95
# ╟─44524eb0-8435-11eb-2295-9f52b4fb70b9
# ╠═44524eb0-8435-11eb-10d9-174cf4a3a9fe
# ╟─44524eb0-8435-11eb-0643-47b8f2c16ddf
# ╠═44524eb0-8435-11eb-0326-4f0cca0e272e
# ╟─44524eb0-8435-11eb-0065-65c2b1f75800
# ╠═44524eb0-8435-11eb-1cde-c594645d31b4
# ╟─44524eb0-8435-11eb-0245-69935f2f6342
# ╠═44524eb0-8435-11eb-1916-49d2abb281d6
# ╟─44524eb0-8435-11eb-3529-5b29826ae442
# ╠═44524eb0-8435-11eb-1b7d-0d2211ba3e5f
# ╟─44524eb0-8435-11eb-39ea-5b3b9a7af5db
# ╠═44524eb0-8435-11eb-1ae6-b5cdedbfbd0c
# ╠═4454bfb0-8435-11eb-3d08-4f2456abcff9
# ╟─4454bfb0-8435-11eb-2402-af246e8f7ddf
# ╠═4454bfb0-8435-11eb-1c75-9dd65f095984
# ╟─4457099e-8435-11eb-171d-b90b7599fedc
# ╠═4457099e-8435-11eb-161e-4f01521953e4
# ╟─4457099e-8435-11eb-2c87-4376b2c9a232
# ╠═4457099e-8435-11eb-3b8b-07d83cf18bda
# ╟─4457099e-8435-11eb-37e9-f17532d74b63
# ╠═4457099e-8435-11eb-25f1-2d75f5463436
# ╟─4457099e-8435-11eb-3fe7-816608dbffa5
# ╠═4457099e-8435-11eb-3de1-9d615abadd96
# ╟─4457099e-8435-11eb-171f-4d26fd72937d
# ╠═4457099e-8435-11eb-2c04-075564ce7af3
# ╟─4457099e-8435-11eb-2944-5b40b3cb25b8
# ╠═4457099e-8435-11eb-3cd4-4f467cdadf6b
# ╟─4457099e-8435-11eb-1fee-7305b5be6c3c
# ╠═4457099e-8435-11eb-1cd3-4ff076bcdcf8
# ╟─4457099e-8435-11eb-1790-4f06c54ab3bb
# ╠═4457099e-8435-11eb-120c-91d7f6913255
# ╟─4457099e-8435-11eb-3aa4-1bfc60100aca
# ╠═4457099e-8435-11eb-041a-43043e9cc221
# ╟─4457099e-8435-11eb-10d4-2fc84c3d3049
# ╠═4457099e-8435-11eb-3849-45e426357a89
# ╟─4457099e-8435-11eb-0175-b7da127efdd8
# ╠═4457099e-8435-11eb-0e77-135a0eb2a55f
# ╟─4457099e-8435-11eb-3aaf-8b50ffb820b1
# ╠═4457099e-8435-11eb-29ad-c3e195762999
# ╟─4457099e-8435-11eb-18c5-477e733e4847
# ╠═4457099e-8435-11eb-14bb-fb4374b4813a
# ╟─4457099e-8435-11eb-32ab-0de0f244ad62
# ╠═4457099e-8435-11eb-2df3-9111891846b4
# ╟─4457099e-8435-11eb-1bd9-c7b42eeae1ee
# ╠═4457099e-8435-11eb-1b62-912a905ac79f
# ╟─4457099e-8435-11eb-219d-51afb7ba4254
# ╠═4457099e-8435-11eb-2605-af15adab131c
# ╟─4457099e-8435-11eb-1d3a-bb60adeb145e
# ╠═4457099e-8435-11eb-30c6-a52d656414fe
# ╟─4457099e-8435-11eb-35f8-9f7e9ddbd957
# ╠═4457099e-8435-11eb-2a23-539d9150a076
# ╟─4457099e-8435-11eb-1032-4feb79c05990
# ╠═4457099e-8435-11eb-3834-3753189cf0fc
# ╟─4457099e-8435-11eb-35e1-ffa8cc259c64
# ╠═4457099e-8435-11eb-1a28-cdf1bceb1fc7
# ╟─4457099e-8435-11eb-316c-bfa6c1b96f9d
# ╠═4457099e-8435-11eb-2695-731ef7d33240
# ╟─4457099e-8435-11eb-1f12-2581a528bac2
# ╠═4457099e-8435-11eb-3ca8-67d55487f2c9
# ╟─4457099e-8435-11eb-22db-43c4311e04b5
# ╠═4457099e-8435-11eb-35be-5501ebef0710
# ╟─4457099e-8435-11eb-0704-3133d4b4cb3d
# ╠═4457099e-8435-11eb-06e1-714557089ded
# ╠═445a6500-8435-11eb-1905-a7f2f006b980
# ╟─445a6500-8435-11eb-39e8-b5dbdd23f598
# ╠═445a6500-8435-11eb-242d-cd7f68940369
# ╟─445a6500-8435-11eb-1636-57fa223a57be
# ╠═445a6500-8435-11eb-330a-152831a7d993
# ╟─445a6500-8435-11eb-25fc-691fbad2a782
# ╠═445a6500-8435-11eb-1763-ef840e053898
# ╟─445a6500-8435-11eb-0ff3-81d53774d086
# ╠═445a6500-8435-11eb-1537-213691432426
# ╟─445a6500-8435-11eb-1f5e-d58f1e2117b4
# ╠═445a6500-8435-11eb-2e91-276e17a83022
# ╟─445a6500-8435-11eb-2bc7-33ce27b97940
# ╠═445a6500-8435-11eb-07c2-69217e629df1
# ╟─445a6500-8435-11eb-1c74-a1008ed01a4c
# ╠═445a6500-8435-11eb-2b8e-db9fe4a5b5c1
# ╟─445a6500-8435-11eb-0ed6-c9d0ffeebb5b
# ╠═445a6500-8435-11eb-182d-5bf11c772290
# ╟─445a6500-8435-11eb-1e2d-5d71941230ed
# ╠═445a6500-8435-11eb-15c1-c959a82806b3
# ╟─445a6500-8435-11eb-3293-f143de7299d1
# ╠═445a6500-8435-11eb-0f45-3d2f233f976b
# ╟─445a6500-8435-11eb-08a2-ff2352df28e8
# ╠═445a6500-8435-11eb-3f54-7d0724558476
# ╟─445a6500-8435-11eb-3a56-8bcbd70be77b
# ╠═445a6500-8435-11eb-233c-a3b07619d809
# ╟─445a6500-8435-11eb-33e6-7d831e5e259d
# ╠═445a6500-8435-11eb-35cb-6951aad49954
# ╟─445a6500-8435-11eb-108d-d1ddac0e6f64
# ╠═445a6500-8435-11eb-1928-7394837d1696
# ╟─445a6500-8435-11eb-25e3-19767ff4d329
# ╠═445a6500-8435-11eb-1149-032a765b18be
# ╟─445a6500-8435-11eb-29ca-6f563bbd2be9
# ╠═445a6500-8435-11eb-2008-e32523c14e64
# ╟─445caef0-8435-11eb-22b9-3f48c51694c8
# ╠═445caef0-8435-11eb-3f55-59510c483218
# ╟─445caef0-8435-11eb-22b4-61d453bd8182
# ╠═445caef0-8435-11eb-0dcf-2de1f1339314
# ╟─445caef0-8435-11eb-1e6c-ebf18e3959df
# ╠═445caef0-8435-11eb-3c72-67ba1b90763c
# ╟─445caef0-8435-11eb-164d-071070944288
# ╠═445caef0-8435-11eb-0875-5bcabf3d086d
# ╟─445caef0-8435-11eb-1954-25c4a07fbe8f
# ╠═445caef0-8435-11eb-2112-cd25a50a590e
# ╟─445caef0-8435-11eb-3a0f-698aa1ce7aa7
# ╠═445caef0-8435-11eb-14f3-0fde9c363c25
# ╟─445caef0-8435-11eb-0625-176f86b91977
# ╠═445caef0-8435-11eb-2b10-657af93f2ee9
# ╟─445caef0-8435-11eb-3d66-5be3086f2e9a
# ╠═445caef0-8435-11eb-08c0-432758d767c2
# ╟─445caef0-8435-11eb-06fa-6fa3c64f881e
# ╠═445caef0-8435-11eb-146a-e1211732c441
# ╠═445f1ff2-8435-11eb-0d38-7118e89c3a8e
# ╟─445f1ff2-8435-11eb-0cdf-a309b3e7465b
# ╠═445f1ff2-8435-11eb-09de-456da9fc8750
# ╟─445f1ff2-8435-11eb-3a84-d92dec4064f5
# ╠═445f1ff2-8435-11eb-1050-e1d60e886eb4
# ╟─445f1ff2-8435-11eb-189f-cb7aba46318e
# ╠═445f1ff2-8435-11eb-2d42-f3a3a84d116a
# ╟─445f1ff2-8435-11eb-1835-0d846dcc2755
# ╠═445f1ff2-8435-11eb-0b68-2b47d1c73bdc
# ╟─445f1ff2-8435-11eb-20f7-6f12af72d590
# ╠═445f1ff2-8435-11eb-3e43-63f9ceb48572
# ╟─445f1ff2-8435-11eb-15f0-3d8ad3850655
# ╠═445f1ff2-8435-11eb-0572-538a990f333a
# ╟─445f1ff2-8435-11eb-361f-bb4cf2bdd301
# ╠═445f1ff2-8435-11eb-3e6b-ad6b58ba9ec8
# ╟─445f1ff2-8435-11eb-3043-5768ea889de4
# ╠═445f1ff2-8435-11eb-3179-45b19f3dc43b
# ╟─445f1ff2-8435-11eb-3c10-75ed602276e4
# ╠═445f1ff2-8435-11eb-1eae-6f71b9610b8f
# ╟─445f1ff2-8435-11eb-030e-adf4d3e06c20
# ╠═445f1ff2-8435-11eb-141b-7bac88363838
# ╟─445f1ff2-8435-11eb-3241-fbafb66b3b96
# ╠═445f1ff2-8435-11eb-1970-6fd51d72470e
# ╟─445f1ff2-8435-11eb-0279-83691afafd11
# ╠═445f1ff2-8435-11eb-2e93-e331c0a8efaa
# ╟─445f1ff2-8435-11eb-371f-873ad4232208
# ╠═445f1ff2-8435-11eb-297d-534989583d48
# ╟─445f1ff2-8435-11eb-2833-b943290d6438
# ╠═445f1ff2-8435-11eb-3ffa-c7d6c7fe3b58
# ╟─445f1ff2-8435-11eb-0af2-6101b701f09f
# ╠═445f1ff2-8435-11eb-12c7-e98047c6d8ad
# ╟─445f1ff2-8435-11eb-0763-fb74add15af1
# ╠═445f1ff2-8435-11eb-1b8f-bbe811834b1a
# ╟─445f1ff2-8435-11eb-1460-dd0c2ca6e384
# ╠═445f1ff2-8435-11eb-2573-f5912ee0c095
# ╟─445f1ff2-8435-11eb-1c73-2fc3a4133da5
# ╠═445f1ff2-8435-11eb-2c88-3b1614817972
# ╟─445f1ff2-8435-11eb-28ac-e71dd306fdc3
# ╠═445f1ff2-8435-11eb-114b-1fdaf89d1943
# ╟─445f1ff2-8435-11eb-0f78-eb058a0036b9
# ╠═445f1ff2-8435-11eb-2611-0bf257052e06
# ╟─445f1ff2-8435-11eb-2588-5b3582089e50
# ╠═445f1ff2-8435-11eb-30d0-7be960db7b7a
# ╟─445f1ff2-8435-11eb-2723-63648b39ffdf
# ╠═445f1ff2-8435-11eb-07e1-bb6b4520b89b
# ╟─445f1ff2-8435-11eb-0f0d-6dde2f772f81
# ╠═445f1ff2-8435-11eb-2a85-13de56466572
# ╟─445f1ff2-8435-11eb-23a1-b50ff79ff902
# ╠═445f1ff2-8435-11eb-2e19-b9a027f6e014
# ╟─445f1ff2-8435-11eb-11c2-ef9bf3e099f2
# ╠═445f1ff2-8435-11eb-1073-cd808a05edc9