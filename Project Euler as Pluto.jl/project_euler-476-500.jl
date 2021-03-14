### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ae0d50e-84a3-11eb-31eb-132866d0c6b5
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ae0d50e-84a3-11eb-046d-c5a5350e781a
html"""
<h2>Problem 476: Circle Packing II</h2>
<p>Let <var>R</var>(<var>a</var>, <var>b</var>, <var>c</var>) be the maximum area covered by three non-overlapping circles inside a triangle with edge lengths <var>a</var>, <var>b</var> and <var>c</var>.</p>
<p>Let <var>S</var>(<var>n</var>) be the average value of <var>R</var>(<var>a</var>, <var>b</var>, <var>c</var>) over all integer triplets (<var>a</var>, <var>b</var>, <var>c</var>) such that 1 ≤ <var>a</var> ≤ <var>b</var> ≤ <var>c</var> &lt; <var>a</var> + <var>b</var> ≤ <var>n</var></p>
<p>You are given <var>S</var>(2) = <var>R</var>(1, 1, 1) ≈ 0.31998, <var>S</var>(5) ≈ 1.25899.</p>
<p>Find <var>S</var>(1803) rounded to 5 decimal places behind the decimal point.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-041f-919d7dae7a19
begin
    submit_answer(nothing; prob_num=476)
end

# ╔═╡ 1ae0d50e-84a3-11eb-2d42-9d18893004f4
html"""
<h2>Problem 477: Number Sequence Game</h2>
<p>The number sequence game starts with a sequence <var>S</var> of <var>N</var> numbers written on a line.</p>
<p>Two players alternate turns. The players on their respective turns must select and remove either the first or the last number remaining in the sequence.</p>
<p>A player's own score is (determined by) the sum of all the numbers that player has taken. Each player attempts to maximize their own sum.</p>
If <var>N</var> = 4 and <var>S</var> = {1, 2, 10, 3}, then each player maximizes their own score as follows:
<ul><li>Player 1: removes the first number (1)</li>
<li>Player 2: removes the last number from the remaining sequence (3)</li>
<li>Player 1: removes the last number from the remaining sequence (10)</li>
<li>Player 2: removes the remaining number (2)</li>
</ul><p>Player 1 score is 1 + 10 = 11.</p>
<p>Let <var>F</var>(<var>N</var>) be the score of player 1 if both players follow the optimal strategy for the sequence <var>S</var> = {<var>s</var><sub>1</sub>, <var>s</var><sub>2</sub>, ..., <var>s<sub>N</sub></var>} defined as:</p>
<ul><li><var>s</var><sub>1</sub> = 0</li>
<li><var>s</var><sub><var>i</var>+1</sub> = (<var>s<sub>i</sub></var><sup>2</sup> + 45) modulo 1 000 000 007</li>
</ul><p>The sequence begins with <var>S</var> = {0, 45, 2070, 4284945, 753524550, 478107844, 894218625, ...}.</p>
<p>You are given <var>F</var>(2) = 45, <var>F</var>(4) = 4284990, <var>F</var>(100) = 26365463243, <var>F</var>(10<sup>4</sup>) = 2495838522951.</p>
<p>Find <var>F</var>(10<sup>8</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3c76-6dbf6eebaca0
begin
    submit_answer(nothing; prob_num=477)
end

# ╔═╡ 1ae0d50e-84a3-11eb-0d47-2fd4d59c47de
html"""
<h2>Problem 478: Mixtures</h2>
<p>Let us consider <b>mixtures</b> of three substances: <b>A</b>, <b>B</b> and <b>C</b>. A mixture can be described by a ratio of the amounts of <b>A</b>, <b>B</b>, and <b>C</b> in it, i.e., (<var>a</var> : <var>b</var> : <var>c</var>). For example, a mixture described by the ratio (2 : 3 : 5) contains 20% <b>A</b>, 30% <b>B</b> and 50% <b>C</b>.</p>

<p>For the purposes of this problem, we cannot separate the individual components from a mixture. However, we can combine different amounts of different mixtures to form mixtures with new ratios.</p>

<p>For example, say we have three mixtures with ratios (3 : 0 : 2), (3 : 6 : 11) and (3 : 3 : 4). By mixing 10 units of the first, 20 units of the second and 30 units of the third, we get a new mixture with ratio (6 : 5 : 9), since:<br />
(10·<sup>3</sup>/<sub>5</sub> + 20·<sup>3</sup>/<sub>20</sub> + 30·<sup>3</sup>/<sub>10</sub> : 10·<sup>0</sup>/<sub>5</sub> + 20·<sup>6</sup>/<sub>20</sub> + 30·<sup>3</sup>/<sub>10</sub> : 10·<sup>2</sup>/<sub>5</sub> + 20·<sup>11</sup>/<sub>20</sub> + 30·<sup>4</sup>/<sub>10</sub>)
= (18 : 15 : 27) = (6 : 5 : 9)</p>

<p>However, with the same three mixtures, it is impossible to form the ratio (3 : 2 : 1), since the amount of <b>B</b> is always less than the amount of <b>C</b>.</p>

<p>Let <var>n</var> be a positive integer. Suppose that for every triple of integers (<var>a</var>, <var>b</var>, <var>c</var>) with 0 ≤ <var>a</var>, <var>b</var>, <var>c</var> ≤ <var>n</var> and gcd(<var>a</var>, <var>b</var>, <var>c</var>) = 1, we have a mixture with ratio (<var>a</var> : <var>b</var> : <var>c</var>). Let M(<var>n</var>) be the set of all such mixtures.</p>

<p>For example, M(2) contains the 19 mixtures with the following ratios:<br />
{(0 : 0 : 1), (0 : 1 : 0), (0 : 1 : 1), (0 : 1 : 2), (0 : 2 : 1), <br />
(1 : 0 : 0), (1 : 0 : 1), (1 : 0 : 2), (1 : 1 : 0), (1 : 1 : 1), <br />
(1 : 1 : 2), (1 : 2 : 0), (1 : 2 : 1), (1 : 2 : 2), (2 : 0 : 1), <br />
(2 : 1 : 0), (2 : 1 : 1), (2 : 1 : 2), (2 : 2 : 1)}.</p>

<p>Let E(<var>n</var>) be the number of subsets of M(<var>n</var>) which can produce the mixture with ratio (1 : 1 : 1), i.e., the mixture with equal parts <b>A</b>, <b>B</b> and <b>C</b>. <br />
We can verify that E(1) = 103, E(2) = 520447, E(10) mod 11<sup>8</sup> = 82608406 and E(500) mod 11<sup>8</sup> = 13801403.<br />
Find E(10 000 000) mod 11<sup>8</sup>.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-0133-ebd3905065bd
begin
    submit_answer(nothing; prob_num=478)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1bbf-47d2c60d7420
html"""
<h2>Problem 479: Roots on the Rise</h2>
<p>Let $a_k$, $b_k$, and $c_k$ represent the three solutions (real or complex numbers) to the equation
$\frac 1 x = (\frac k x)^2(k+x^2)-k x$.</p>

<p>For instance, for $k=5$, we see that $\{a_5, b_5, c_5 \}$ is approximately $\{5.727244, -0.363622+2.057397i, -0.363622-2.057397i\}$.</p>

<p>Let $\displaystyle S(n) = \sum_{p=1}^n\sum_{k=1}^n(a_k+b_k)^p(b_k+c_k)^p(c_k+a_k)^p$. </p>

<p>Interestingly, $S(n)$ is always an integer. For example, $S(4) = 51160$.</p>

<p>Find $S(10^6)$ modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-17c2-c30b1f972999
begin
    submit_answer(nothing; prob_num=479)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1e41-ddd3e2059240
html"""
<h2>Problem 480: The Last Question</h2>
<p>Consider all the words which can be formed by selecting letters, in any order, from the phrase:</p>
<p></p><div class="center"><b>thereisasyetinsufficientdataforameaningfulanswer</b></div>
<p>Suppose those with 15 letters or less are listed in <b>alphabetical order</b> and numbered sequentially starting at 1.<br />
The list would include:</p>
<ul style="list-style-type:none;"><li>1 : a</li>
<li>2 : aa</li>
<li>3 : aaa</li>
<li>4 : aaaa</li>
<li>5 : aaaaa</li>
<li>6 : aaaaaa</li>
<li>7 : aaaaaac</li>
<li>8 : aaaaaacd</li>
<li>9 : aaaaaacde</li>
<li>10 : aaaaaacdee</li>
<li>11 : aaaaaacdeee</li>
<li>12 : aaaaaacdeeee</li>
<li>13 : aaaaaacdeeeee</li>
<li>14 : aaaaaacdeeeeee</li>
<li>15 : aaaaaacdeeeeeef</li>
<li>16 : aaaaaacdeeeeeeg</li>
<li>17 : aaaaaacdeeeeeeh</li>
<li>...</li>
<li>28 : aaaaaacdeeeeeey</li>
<li>29 : aaaaaacdeeeeef</li>
<li>30 : aaaaaacdeeeeefe</li>
<li>...</li>
<li>115246685191495242: euleoywuttttsss</li>
<li>115246685191495243: euler</li>
<li>115246685191495244: eulera</li>
<li>...</li>
<li>525069350231428029: ywuuttttssssrrr</li></ul><p>Define <var>P</var>(<var>w</var>) as the position of the word <var>w</var>.<br />
Define <var>W</var>(<var>p</var>) as the word in position <var>p</var>.<br />
We can see that <var>P</var>(<var>w</var>) and <var>W</var>(<var>p</var>) are inverses: <var>P</var>(<var>W</var>(<var>p</var>)) = <var>p</var> and <var>W</var>(<var>P</var>(<var>w</var>)) = <var>w</var>.</p>
<p>Examples:</p>
<ul style="list-style-type:none;"><li><var>W</var>(10) = aaaaaacdee</li>
<li><var>P</var>(aaaaaacdee) = 10</li>
<li><var>W</var>(115246685191495243) = euler</li>
<li><var>P</var>(euler) = 115246685191495243</li></ul><p>Find <var>W</var>(<var>P</var>(legionary) + <var>P</var>(calorimeters) - <var>P</var>(annihilate) + <var>P</var>(orchestrated) - <var>P</var>(fluttering)).<br />
Give your answer using lowercase characters (no punctuation or space).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-14c8-ff0b20919747
begin
    submit_answer(nothing; prob_num=480)
end

# ╔═╡ 1ae0d50e-84a3-11eb-363f-31f8db93c530
html"""
<h2>Problem 481: Chef Showdown</h2>
<p>A group of chefs (numbered #1, #2, etc) participate in a turn-based strategic cooking competition. On each chef's turn, he/she cooks up a dish to the best of his/her ability and gives it to a separate panel of judges for taste-testing. Let S(<var>k</var>) represent chef #<var>k</var>'s skill level (which is publicly known). More specifically, S(<var>k</var>) is the probability that chef #<var>k</var>'s dish will be assessed favorably by the judges (on any/all turns). If the dish receives a favorable rating, then the chef must choose one other chef to be eliminated from the competition. The last chef remaining in the competition is the winner.</p>

<p>The game always begins with chef #1, with the turn order iterating sequentially over the rest of the chefs still in play. Then the cycle repeats from the lowest-numbered chef. All chefs aim to optimize their chances of winning within the rules as stated, assuming that the other chefs behave in the same manner. In the event that a chef has more than one equally-optimal elimination choice, assume that the chosen chef is always the one with the next-closest turn.</p>

<p>Define W<sub>n</sub>(<var>k</var>) as the probability that chef #<var>k</var> wins in a competition with <var>n</var> chefs. If we have S(1) = 0.25, S(2) = 0.5, and S(3) = 1, then W<sub>3</sub>(1) = 0.29375.</p>

<p>Going forward, we assign S(<var>k</var>) = F<sub>k</sub>/F<sub>n+1</sub> over all 1 ≤ <var>k</var> ≤ <var>n</var>, where F<sub>k</sub> is a Fibonacci number: F<sub>k</sub> = F<sub>k-1</sub> + F<sub>k-2</sub> with base cases F<sub>1</sub> = F<sub>2</sub> = 1. Then, for example, when considering a competition with <var>n</var> = 7 chefs, we have W<sub>7</sub>(1) = 0.08965042, W<sub>7</sub>(2) = 0.20775702, W<sub>7</sub>(3) = 0.15291406, W<sub>7</sub>(4) = 0.14554098, W<sub>7</sub>(5) = 0.15905291, W<sub>7</sub>(6) = 0.10261412, and W<sub>7</sub>(7) = 0.14247050, rounded to 8 decimal places each.</p>

<p>Let E(<var>n</var>) represent the expected number of dishes cooked in a competition with <var>n</var> chefs. For instance, E(7) = 42.28176050.</p>

<p>Find E(14) rounded to 8 decimal places.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3ec5-2f60bcf5ee5d
begin
    submit_answer(nothing; prob_num=481)
end

# ╔═╡ 1ae0d50e-84a3-11eb-10df-d784cb8e6834
html"""
<h2>Problem 482: The incenter of a triangle</h2>
<p>
ABC is an integer sided triangle with incenter I and perimeter p.<br />
The segments IA, IB and IC have integral length as well. 
</p>
<p>
Let L = p + |IA| + |IB| + |IC|. 
</p>
<p>
Let S(P) = <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> L for all such triangles where p ≤ P. For example, S(10<sup>3</sup>) = 3619.
</p>
<p>
Find S(10<sup>7</sup>).
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2228-1f999f99d117
begin
    submit_answer(nothing; prob_num=482)
end

# ╔═╡ 1ae0d50e-84a3-11eb-0278-e3bbe506e23c
html"""
<h2>Problem 483: Repeated permutation</h2>
<p>
We define a <i>permutation</i> as an operation that rearranges the order of the elements {1, 2, 3, ..., n}.
There are n! such permutations, one of which leaves the elements in their initial order.
For n = 3 we have 3! = 6 permutations:<br />
- P<sub>1</sub> = keep the initial order<br />
- P<sub>2</sub> = exchange the 1<sup>st</sup> and 2<sup>nd</sup> elements<br />
- P<sub>3</sub> = exchange the 1<sup>st</sup> and 3<sup>rd</sup> elements<br />
- P<sub>4</sub> = exchange the 2<sup>nd</sup> and 3<sup>rd</sup> elements<br />
- P<sub>5</sub> = rotate the elements to the right<br />
- P<sub>6</sub> = rotate the elements to the left
</p>
<p>
If we select one of these permutations, and we re-apply the <span style="text-decoration:underline;">same</span> permutation repeatedly, we eventually restore the initial order.<br />For a permutation P<sub>i</sub>, let f(P<sub>i</sub>) be the number of steps required to restore the initial order by applying the permutation P<sub>i</sub> repeatedly.<br />For n = 3, we obtain:<br />- f(P<sub>1</sub>) = 1 : (1,2,3) → (1,2,3)<br />- f(P<sub>2</sub>) = 2 : (1,2,3) → (2,1,3) → (1,2,3)<br />- f(P<sub>3</sub>) = 2 : (1,2,3) → (3,2,1) → (1,2,3)<br />- f(P<sub>4</sub>) = 2 : (1,2,3) → (1,3,2) → (1,2,3)<br />- f(P<sub>5</sub>) = 3 : (1,2,3) → (3,1,2) → (2,3,1) → (1,2,3)<br />- f(P<sub>6</sub>) = 3 : (1,2,3) → (2,3,1) → (3,1,2) → (1,2,3)
</p>
<p>
Let g(n) be the average value of f<sup>2</sup>(P<sub>i</sub>) over all permutations P<sub>i</sub> of length n.<br />g(3) = (1<sup>2</sup> + 2<sup>2</sup> + 2<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup> + 3<sup>2</sup>)/3! = 31/6 ≈ 5.166666667e0<br />g(5) = 2081/120 ≈ 1.734166667e1<br />g(20) = 12422728886023769167301/2432902008176640000 ≈ 5.106136147e3
</p>
<p>
Find g(350) and write the answer in scientific notation rounded to 10 significant digits, using a lowercase e to separate mantissa and exponent, as in the examples above.
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3dba-fb54991fb504
begin
    submit_answer(nothing; prob_num=483)
end

# ╔═╡ 1ae0d50e-84a3-11eb-20a5-afc0a0fc1d1e
html"""
<h2>Problem 484: Arithmetic Derivative</h2>
<p>The <strong>arithmetic derivative</strong> is defined by</p>
<ul><li><var>p'</var> = 1 for any prime <var>p</var></li>
<li>(<var>ab</var>)<var>'</var> = <var>a'b</var> + <var>ab'</var> for all integers <var>a</var>, <var>b</var> (Leibniz rule)</li>
</ul><p>For example, 20<var>'</var> = 24.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <strong>gcd</strong>(<var>k</var>,<var>k'</var>) for 1 &lt; <var>k</var> ≤ 5×10<sup>15</sup>.</p>

<p><span style="font-size:smaller;">Note: <strong>gcd</strong>(<var>x</var>,<var>y</var>) denotes the greatest common divisor of <var>x</var> and <var>y</var>.</span></p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-0b7d-03b05d747ecb
begin
    submit_answer(nothing; prob_num=484)
end

# ╔═╡ 1ae0d50e-84a3-11eb-03da-7b7456dc701d
html"""
<h2>Problem 485: Maximum number of divisors</h2>
<p>
Let d(n) be the number of divisors of n.<br />
Let M(n,k) be the maximum value of d(j) for n ≤ j ≤ n+k-1.<br />
Let S(u,k) be the sum of M(n,k) for 1 ≤ n ≤ u-k+1.
</p>
<p>
You are given that S(1000,10)=17176.
</p>
<p>
Find S(100 000 000,100 000).
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2017-17a65769aa3a
begin
    submit_answer(nothing; prob_num=485)
end

# ╔═╡ 1ae0d50e-84a3-11eb-3881-81acfa54b99e
html"""
<h2>Problem 486: Palindrome-containing strings</h2>
<p>Let F<sub>5</sub>(<var>n</var>) be the number of strings <var>s</var> such that:</p>
<ul><li><var>s</var> consists only of '0's and '1's,
</li><li><var>s</var> has length at most <var>n</var>, and
</li><li><var>s</var> contains a palindromic substring of length at least 5.
</li></ul><p>For example, F<sub>5</sub>(4) = 0, F<sub>5</sub>(5) = 8, 
F<sub>5</sub>(6) = 42 and F<sub>5</sub>(11) = 3844.</p>

<p>Let D(<var>L</var>) be the number of integers <var>n</var> such that 
5 ≤ <var>n</var> ≤ <var>L</var> and F<sub>5</sub>(<var>n</var>) is divisible by 87654321.</p>

<p>For example, D(10<sup>7</sup>) = 0 and D(5·10<sup>9</sup>) = 51.</p>

<p>Find D(10<sup>18</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-293c-a3ecb836557f
begin
    submit_answer(nothing; prob_num=486)
end

# ╔═╡ 1ae0d50e-84a3-11eb-0786-519ac280acd1
html"""
<h2>Problem 487: Sums of power sums</h2>
<p>Let f<sub>k</sub>(<var>n</var>) be the sum of the <var>k</var><sup>th</sup> powers of the first <var>n</var> positive integers.</p>

<p>For example, f<sub>2</sub>(10) = 1<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup> + 4<sup>2</sup> + 5<sup>2</sup> + 6<sup>2</sup> + 7<sup>2</sup> + 8<sup>2</sup> + 9<sup>2</sup> + 10<sup>2</sup> = 385.</p>

<p>Let S<sub>k</sub>(<var>n</var>) be the sum of f<sub>k</sub>(<var>i</var>) for 1 ≤ <var>i</var> ≤ <var>n</var>. For example, S<sub>4</sub>(100) = 35375333830.</p>

<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> (S<sub>10000</sub>(10<sup>12</sup>) mod p) over all primes <var>p</var> between 2 ⋅ 10<sup>9</sup> and 2 ⋅ 10<sup>9</sup> + 2000?</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-1c1f-b127cf1c8ac4
begin
    submit_answer(nothing; prob_num=487)
end

# ╔═╡ 1ae0d50e-84a3-11eb-2afc-ed3157b1ab6b
html"""
<h2>Problem 488: Unbalanced Nim</h2>
<p>Alice and Bob have enjoyed playing <b>Nim</b> every day. However, they finally got bored of playing ordinary three-heap Nim.<br />
So, they added an extra rule:</p>

<p>- Must not make two heaps of the same size.</p>

<p>The triple (<var>a</var>,<var>b</var>,<var>c</var>) indicates the size of three heaps.<br />
Under this extra rule, (2,4,5) is one of the losing positions for the next player.</p>

<p>To illustrate:<br />
- Alice moves to (2,4,3)<br />
- Bob   moves to (0,4,3)<br />
- Alice moves to (0,2,3)<br />
- Bob   moves to (0,2,1)</p>

<p>Unlike ordinary three-heap Nim, (0,1,2) and its permutations are the end states of this game.</p>

<p>For an integer <var>N</var>, we define F(<var>N</var>) as the sum of <var>a</var>+<var>b</var>+<var>c</var> for all the losing positions for the next player, with 0 &lt; <var>a</var> &lt; <var>b</var> &lt; <var>c</var> &lt; <var>N</var>.</p>

<p>For example, F(8) = 42, because there are 4 losing positions for the next player, (1,3,5), (1,4,6), (2,3,6) and (2,4,5).<br />
We can also verify that F(128) = 496062.</p>

<p>Find the last 9 digits of F(10<sup>18</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-25d2-f56b808ebf2d
begin
    submit_answer(nothing; prob_num=488)
end

# ╔═╡ 1ae0d50e-84a3-11eb-35bf-15020d9dbefa
html"""
<h2>Problem 489: Common factors between two sequences</h2>
<p>Let <var>G</var>(<var>a</var>, <var>b</var>) be the smallest non-negative integer <var>n</var> for which <dfn title="Greatest common divisor">gcd</dfn>(<var>n</var><sup>3</sup> + <var>b</var>, (<var>n</var> + <var>a</var>)<sup>3</sup> + <var>b</var>) is maximized.<br />
For example, <var>G</var>(1, 1) = 5 because gcd(<var>n</var><sup>3</sup> + 1, (<var>n</var> + 1)<sup>3</sup> + 1) reaches its maximum value of 7 for <var>n</var> = 5, and is smaller for 0 ≤ n &lt; 5.<br />
Let <var>H</var>(<var>m</var>, <var>n</var>) = <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>G</var>(<var>a</var>, <var>b</var>) for 1 ≤ <var>a</var> ≤ <var>m</var>, 1 ≤ <var>b</var> ≤ <var>n</var>.<br />
You are given <var>H</var>(5, 5) = 128878 and <var>H</var>(10, 10) = 32936544.
</p><p>Find <var>H</var>(18, 1900).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3123-156ebdbb9ef4
begin
    submit_answer(nothing; prob_num=489)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1ddd-d96047464748
html"""
<h2>Problem 490: Jumping frog</h2>
<p>There are <var>n</var> stones in a pond, numbered 1 to <var>n</var>. Consecutive stones are spaced one unit apart.</p>

<p>A frog sits on stone 1. He wishes to visit each stone exactly once, stopping on stone <var>n</var>. However, he can only jump from one stone to another if they are at most 3 units apart. In other words, from stone <var>i</var>, he can reach a stone <var>j</var> if 1 ≤ <var>j</var> ≤ <var>n</var> and <var>j</var> is in the set {<var>i</var>-3, <var>i</var>-2, <var>i</var>-1, <var>i</var>+1, <var>i</var>+2, <var>i</var>+3}.</p>

<p>Let f(<var>n</var>) be the number of ways he can do this. For example, f(6) = 14, as shown below:<br />
1 → 2 → 3 → 4 → 5 → 6 <br />
1 → 2 → 3 → 5 → 4 → 6 <br />
1 → 2 → 4 → 3 → 5 → 6 <br />
1 → 2 → 4 → 5 → 3 → 6 <br />
1 → 2 → 5 → 3 → 4 → 6 <br />
1 → 2 → 5 → 4 → 3 → 6 <br />
1 → 3 → 2 → 4 → 5 → 6 <br />
1 → 3 → 2 → 5 → 4 → 6 <br />
1 → 3 → 4 → 2 → 5 → 6 <br />
1 → 3 → 5 → 2 → 4 → 6 <br />
1 → 4 → 2 → 3 → 5 → 6 <br />
1 → 4 → 2 → 5 → 3 → 6 <br />
1 → 4 → 3 → 2 → 5 → 6 <br />
1 → 4 → 5 → 2 → 3 → 6</p>

<p>Other examples are f(10) = 254 and f(40) = 1439682432976.</p>

<p>Let S(<var>L</var>) = ∑ f(<var>n</var>)<sup>3</sup> for 1 ≤ <var>n</var> ≤ <var>L</var>.<br />
Examples:<br />
S(10) = 18230635<br />
S(20) = 104207881192114219<br />
S(1 000) mod 10<sup>9</sup> = 225031475<br />
S(1 000 000) mod 10<sup>9</sup> = 363486179</p>

<p>Find S(10<sup>14</sup>) mod 10<sup>9</sup>.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-0142-55caf33153a9
begin
    submit_answer(nothing; prob_num=490)
end

# ╔═╡ 1ae0d50e-84a3-11eb-24b1-ad10c3659a88
html"""
<h2>Problem 491: Double pandigital number divisible by 11</h2>
<p>We call a positive integer <i>double pandigital</i> if it uses all the digits 0 to 9 exactly twice (with no leading zero). For example, 40561817703823564929 is one such number.</p>

<p>How many double pandigital numbers are divisible by 11?</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2bd6-579d2c59135e
begin
    submit_answer(nothing; prob_num=491)
end

# ╔═╡ 1ae0d50e-84a3-11eb-3fab-f52c245cd6d5
html"""
<h2>Problem 492: Exploding sequence</h2>
<p>Define the sequence a<sub>1</sub>, a<sub>2</sub>, a<sub>3</sub>, ... as:</p>
<ul><li>a<sub>1</sub> = 1</li>
<li>a<sub><var>n</var>+1</sub> = 6a<sub><var>n</var></sub><sup>2</sup> + 10a<sub><var>n</var></sub> + 3 for <var>n</var> ≥ 1.</li>
</ul><p>
Examples:<br />
a<sub>3</sub> = 2359<br />
a<sub>6</sub> = 269221280981320216750489044576319<br />
a<sub>6</sub> mod 1 000 000 007 = 203064689<br />
a<sub>100</sub> mod 1 000 000 007 = 456482974
</p>

<p>
Define B(<var>x</var>,<var>y</var>,<var>n</var>) as ∑ (a<sub><var>n</var></sub> mod <var>p</var>) for every prime <var>p</var> such that <var>x</var> ≤ <var>p</var> ≤ <var>x</var>+<var>y</var>.
</p>

<p>
Examples:<br />
B(10<sup>9</sup>, 10<sup>3</sup>, 10<sup>3</sup>) = 23674718882<br />
B(10<sup>9</sup>, 10<sup>3</sup>, 10<sup>15</sup>) = 20731563854
</p>

<p>Find B(10<sup>9</sup>, 10<sup>7</sup>, 10<sup>15</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-25a8-d30c48627bd4
begin
    submit_answer(nothing; prob_num=492)
end

# ╔═╡ 1ae0d50e-84a3-11eb-21c2-a592536143bf
html"""
<h2>Problem 493: Under The Rainbow</h2>
<p>70 coloured balls are placed in an urn, 10 for each of the seven rainbow colours.</p>
<p>What is the expected number of distinct colours in 20 randomly picked balls?</p>
<p>Give your answer with nine digits after the decimal point (a.bcdefghij).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-1e62-dd73991ace29
begin
    submit_answer(nothing; prob_num=493)
end

# ╔═╡ 1ae0d50e-84a3-11eb-2679-65b3a04dc608
html"""
<h2>Problem 494: Collatz prefix families</h2>
<p>
The Collatz sequence is defined as:
$a_{i+1} = \left\{  \large{\frac {a_i} 2 \atop 3 a_i+1} {\text{if }a_i\text{ is even} \atop \text{if }a_i\text{ is odd}} \right.$.
</p>
<p>
The Collatz conjecture states that starting from any positive integer, the sequence eventually reaches the cycle 1,4,2,1....<br />
We shall define the sequence prefix <var>p(n)</var> for the Collatz sequence starting with <var>a<sub>1</sub> = n</var> as the sub-sequence of all numbers not a power of 2 (2<sup>0</sup>=1 is considered a power of 2 for this problem). For example:<br /><var>p</var>(13) = {13, 40, 20, 10, 5} <br /><var>p</var>(8) = {}<br />
Any number invalidating the conjecture would have an infinite length sequence prefix.
</p>
<p>
Let <var>S<sub>m</sub></var> be the set of all sequence prefixes of length <var>m</var>. Two sequences {a<sub>1</sub>, a<sub>2</sub>, ..., a<sub><var>m</var></sub>} and {b<sub>1</sub>, b<sub>2</sub>, ..., b<sub><var>m</var></sub>} in <var>S<sub>m</sub></var> are said to belong to the same prefix family if a<sub>i</sub> &lt; a<sub>j</sub> if and only if b<sub>i</sub> &lt; b<sub>j</sub> for all 1 ≤ i,j ≤<var> m</var>.
</p>
<p>
For example, in <var>S</var><sub>4</sub>, {6, 3, 10, 5} is in the same family as {454, 227, 682, 341}, but not {113, 340, 170, 85}.<br />
Let <var>f(m)</var> be the number of distinct prefix families in <var>S<sub>m</sub></var>.<br />
You are given <var>f</var>(5) = 5, <var>f</var>(10) = 55, <var>f</var>(20) = 6771.
</p>
<p>
Find f(90).
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-26f4-6bb68ee2360f
begin
    submit_answer(nothing; prob_num=494)
end

# ╔═╡ 1ae0d50e-84a3-11eb-3c32-63921777d19b
html"""
<h2>Problem 495: Writing n as the product of k distinct positive integers</h2>
<p>Let <var>W</var>(<var>n</var>,<var>k</var>) be the number of ways in which <var>n</var> can be written as the product of <var>k</var> distinct positive integers.</p>
<p>For example, <var>W</var>(144,4) = 7. There are 7 ways in which 144 can be written as a product of 4 distinct positive integers:</p>
<p></p><ul><li>144 = 1×2×4×18</li>
<li>144 = 1×2×8×9</li>
<li>144 = 1×2×3×24</li>
<li>144 = 1×2×6×12</li>
<li>144 = 1×3×4×12</li>
<li>144 = 1×3×6×8</li>
<li>144 = 2×3×4×6</li>
</ul><p>Note that permutations of the integers themselves are not considered distinct.</p>
<p>Furthermore, <var>W</var>(100!,10) modulo 1 000 000 007 = 287549200.</p>
<p>Find <var>W</var>(10000!,30) modulo 1 000 000 007.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-066b-f3c2c5e09338
begin
    submit_answer(nothing; prob_num=495)
end

# ╔═╡ 1ae0d50e-84a3-11eb-2361-5dd46b7148e8
html"""
<h2>Problem 496: Incenter and circumcenter of triangle</h2>
<p>Given an integer sided triangle ABC:<br />
Let I be the incenter of ABC.<br />
Let D be the intersection between the line AI and the circumcircle of ABC (A ≠ D).</p>

<p>We define F(<var>L</var>) as the sum of BC for the triangles ABC that satisfy AC = DI and BC ≤ <var>L</var>.</p>

<p>For example, F(15) = 45 because the triangles ABC with (BC,AC,AB) = (6,4,5), (12,8,10), (12,9,7), (15,9,16) satisfy the conditions.</p>

<p>Find F(10<sup>9</sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-3006-353d1a93e66c
begin
    submit_answer(nothing; prob_num=496)
end

# ╔═╡ 1ae0d50e-84a3-11eb-25ad-af2267ae457c
html"""
<h2>Problem 497: Drunken Tower of Hanoi</h2>
<p>Bob is very familiar with the famous mathematical puzzle/game, "Tower of Hanoi," which consists of three upright rods and disks of different sizes that can slide onto any of the rods. The game begins with a stack of <var>n</var> disks placed on the leftmost rod in descending order by size. The objective of the game is to move all of the disks from the leftmost rod to the rightmost rod, given the following restrictions:</p>

<ol><li>Only one disk can be moved at a time.</li>
<li>A valid move consists of taking the top disk from one stack and placing it onto another stack (or an empty rod).</li>
<li>No disk can be placed on top of a smaller disk.</li>
</ol><p>Moving on to a variant of this game, consider a long room <var>k</var> units (square tiles) wide, labeled from 1 to <var>k</var> in ascending order. Three rods are placed at squares <var>a</var>, <var>b</var>, and <var>c</var>, and a stack of <var>n</var> disks is placed on the rod at square <var>a</var>.</p>

<p>Bob begins the game standing at square <var>b</var>. His objective is to play the Tower of Hanoi game by moving all of the disks to the rod at square <var>c</var>. However, Bob can only pick up or set down a disk if he is on the same square as the rod / stack in question.</p>

<p>Unfortunately, Bob is also drunk. On a given move, Bob will either stumble one square to the left or one square to the right with equal probability, unless Bob is at either end of the room, in which case he can only move in one direction. Despite Bob's inebriated state, he is still capable of following the rules of the game itself, as well as choosing when to pick up or put down a disk.</p>

<p>The following animation depicts a side-view of a sample game for <var>n</var> = 3, <var>k</var> = 7, <var>a</var> = 2, <var>b</var> = 4, and <var>c</var> = 6:</p>

<p align="center"><img src="project/images/p497_hanoi.gif" alt="p497_hanoi.gif" /></p>

<p>Let E(<var>n</var>,<var>k</var>,<var>a</var>,<var>b</var>,<var>c</var>) be the expected number of squares that Bob travels during a single optimally-played game. A game is played optimally if the number of disk-pickups is minimized.</p>

<p>Interestingly enough, the result is always an integer. For example, E(2,5,1,3,5) = 60 and E(3,20,4,9,17) = 2358.</p>

<p>Find the last nine digits of ∑<sub>1≤<var>n</var>≤10000</sub> E(<var>n</var>,10<sup><var>n</var></sup>,3<sup><var>n</var></sup>,6<sup><var>n</var></sup>,9<sup><var>n</var></sup>).</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2cc0-b5e7b0bb87b2
begin
    submit_answer(nothing; prob_num=497)
end

# ╔═╡ 1ae0d50e-84a3-11eb-12f3-2d9d5fcb5bbe
html"""
<h2>Problem 498: Remainder of polynomial division</h2>
<p>For positive integers <var>n</var> and <var>m</var>, we define two polynomials F<sub><var>n</var></sub>(<var>x</var>) = <var>x</var><sup><var>n</var></sup> and G<sub><var>m</var></sub>(<var>x</var>) = (<var>x</var>-1)<sup><var>m</var></sup>.<br />
We also define a polynomial R<sub><var>n</var>,<var>m</var></sub>(<var>x</var>) as the remainder of the division of F<sub><var>n</var></sub>(<var>x</var>) by G<sub><var>m</var></sub>(<var>x</var>).<br />
For example, R<sub>6,3</sub>(<var>x</var>) = 15<var>x</var><sup>2</sup> - 24<var>x</var> + 10.</p>

<p>Let C(<var>n</var>, <var>m</var>, <var>d</var>) be the absolute value of the coefficient of the <var>d</var>-th degree term of R<sub><var>n</var>,<var>m</var></sub>(<var>x</var>).<br />
We can verify that C(6, 3, 1) = 24 and C(100, 10, 4) = 227197811615775.</p>

<p>Find C(10<sup>13</sup>, 10<sup>12</sup>, 10<sup>4</sup>) mod 999999937.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-349c-67cd8cde7bab
begin
    submit_answer(nothing; prob_num=498)
end

# ╔═╡ 1ae0d50e-84a3-11eb-1ae4-4b1c6e38bb1b
html"""
<h2>Problem 499: St. Petersburg Lottery</h2>
<p>A gambler decides to participate in a special lottery. In this lottery the gambler plays a series of one or more games.<br />
Each game costs <var>m</var> pounds to play and starts with an initial pot of 1 pound. The gambler flips an unbiased coin. Every time a head appears, the pot is doubled and the gambler continues. When a tail appears, the game ends and the gambler collects the current value of the pot. The gambler is certain to win at least 1 pound, the starting value of the pot, at the cost of <var>m</var> pounds, the initial fee.</p>

<p>The game ends if the gambler's fortune falls below <var>m</var> pounds.
Let <var>p<sub>m</sub></var>(<var>s</var>) denote the probability that the gambler will never run out of money in this lottery given an initial fortune <var>s</var> and the cost per game <var>m</var>.<br />
For example <var>p</var><sub>2</sub>(2) ≈ 0.2522, <var>p</var><sub>2</sub>(5) ≈ 0.6873 and <var>p</var><sub>6</sub>(10 000) ≈ 0.9952 (note: <var>p<sub>m</sub></var>(<var>s</var>) = 0 for <var>s</var> &lt; <var>m</var>).</p>

<p>Find <var>p</var><sub>15</sub>(10<sup>9</sup>) and give your answer rounded to 7 decimal places behind the decimal point in the form 0.abcdefg.</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-2245-39ac64f55312
begin
    submit_answer(nothing; prob_num=499)
end

# ╔═╡ 1ae0d50e-84a3-11eb-192c-7926ad01232e
html"""
<h2>Problem 500: Problem 500!!!</h2>
<p>The number of divisors of 120 is 16.<br />
In fact 120 is the smallest number having 16 divisors.
</p>
<p>
Find the smallest number with 2<sup>500500</sup> divisors.<br />
Give your answer modulo 500500507.
</p>
"""

# ╔═╡ 1ae0d50e-84a3-11eb-0b65-c5ecba20579d
begin
    submit_answer(nothing; prob_num=500)
end

# ╔═╡ Cell order:
# ╠═1ae0d50e-84a3-11eb-31eb-132866d0c6b5
# ╟─1ae0d50e-84a3-11eb-046d-c5a5350e781a
# ╠═1ae0d50e-84a3-11eb-041f-919d7dae7a19
# ╟─1ae0d50e-84a3-11eb-2d42-9d18893004f4
# ╠═1ae0d50e-84a3-11eb-3c76-6dbf6eebaca0
# ╟─1ae0d50e-84a3-11eb-0d47-2fd4d59c47de
# ╠═1ae0d50e-84a3-11eb-0133-ebd3905065bd
# ╟─1ae0d50e-84a3-11eb-1bbf-47d2c60d7420
# ╠═1ae0d50e-84a3-11eb-17c2-c30b1f972999
# ╟─1ae0d50e-84a3-11eb-1e41-ddd3e2059240
# ╠═1ae0d50e-84a3-11eb-14c8-ff0b20919747
# ╟─1ae0d50e-84a3-11eb-363f-31f8db93c530
# ╠═1ae0d50e-84a3-11eb-3ec5-2f60bcf5ee5d
# ╟─1ae0d50e-84a3-11eb-10df-d784cb8e6834
# ╠═1ae0d50e-84a3-11eb-2228-1f999f99d117
# ╟─1ae0d50e-84a3-11eb-0278-e3bbe506e23c
# ╠═1ae0d50e-84a3-11eb-3dba-fb54991fb504
# ╟─1ae0d50e-84a3-11eb-20a5-afc0a0fc1d1e
# ╠═1ae0d50e-84a3-11eb-0b7d-03b05d747ecb
# ╟─1ae0d50e-84a3-11eb-03da-7b7456dc701d
# ╠═1ae0d50e-84a3-11eb-2017-17a65769aa3a
# ╟─1ae0d50e-84a3-11eb-3881-81acfa54b99e
# ╠═1ae0d50e-84a3-11eb-293c-a3ecb836557f
# ╟─1ae0d50e-84a3-11eb-0786-519ac280acd1
# ╠═1ae0d50e-84a3-11eb-1c1f-b127cf1c8ac4
# ╟─1ae0d50e-84a3-11eb-2afc-ed3157b1ab6b
# ╠═1ae0d50e-84a3-11eb-25d2-f56b808ebf2d
# ╟─1ae0d50e-84a3-11eb-35bf-15020d9dbefa
# ╠═1ae0d50e-84a3-11eb-3123-156ebdbb9ef4
# ╟─1ae0d50e-84a3-11eb-1ddd-d96047464748
# ╠═1ae0d50e-84a3-11eb-0142-55caf33153a9
# ╟─1ae0d50e-84a3-11eb-24b1-ad10c3659a88
# ╠═1ae0d50e-84a3-11eb-2bd6-579d2c59135e
# ╟─1ae0d50e-84a3-11eb-3fab-f52c245cd6d5
# ╠═1ae0d50e-84a3-11eb-25a8-d30c48627bd4
# ╟─1ae0d50e-84a3-11eb-21c2-a592536143bf
# ╠═1ae0d50e-84a3-11eb-1e62-dd73991ace29
# ╟─1ae0d50e-84a3-11eb-2679-65b3a04dc608
# ╠═1ae0d50e-84a3-11eb-26f4-6bb68ee2360f
# ╟─1ae0d50e-84a3-11eb-3c32-63921777d19b
# ╠═1ae0d50e-84a3-11eb-066b-f3c2c5e09338
# ╟─1ae0d50e-84a3-11eb-2361-5dd46b7148e8
# ╠═1ae0d50e-84a3-11eb-3006-353d1a93e66c
# ╟─1ae0d50e-84a3-11eb-25ad-af2267ae457c
# ╠═1ae0d50e-84a3-11eb-2cc0-b5e7b0bb87b2
# ╟─1ae0d50e-84a3-11eb-12f3-2d9d5fcb5bbe
# ╠═1ae0d50e-84a3-11eb-349c-67cd8cde7bab
# ╟─1ae0d50e-84a3-11eb-1ae4-4b1c6e38bb1b
# ╠═1ae0d50e-84a3-11eb-2245-39ac64f55312
# ╟─1ae0d50e-84a3-11eb-192c-7926ad01232e
# ╠═1ae0d50e-84a3-11eb-0b65-c5ecba20579d