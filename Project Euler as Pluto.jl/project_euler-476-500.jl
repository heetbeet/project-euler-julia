### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 45a58020-2b34-11eb-05a7-f16e9bd3b01a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 45a58020-2b34-11eb-11cb-c5f55fc54c7b
html"""
<h2>Problem 476: Circle Packing II</h2>
<p>Let <var>R</var>(<var>a</var>, <var>b</var>, <var>c</var>) be the maximum area covered by three non-overlapping circles inside a triangle with edge lengths <var>a</var>, <var>b</var> and <var>c</var>.</p>
<p>Let <var>S</var>(<var>n</var>) be the average value of <var>R</var>(<var>a</var>, <var>b</var>, <var>c</var>) over all integer triplets (<var>a</var>, <var>b</var>, <var>c</var>) such that 1 ≤ <var>a</var> ≤ <var>b</var> ≤ <var>c</var> &lt; <var>a</var> + <var>b</var> ≤ <var>n</var></p>
<p>You are given <var>S</var>(2) = <var>R</var>(1, 1, 1) ≈ 0.31998, <var>S</var>(5) ≈ 1.25899.</p>
<p>Find <var>S</var>(1803) rounded to 5 decimal places behind the decimal point.</p>
"""

# ╔═╡ 45a58020-2b34-11eb-1a13-49bee81068f6
begin
    submit_answer(nothing; prob_num=495)
end

# ╔═╡ 45a58020-2b34-11eb-3be9-9b285e634c01
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

# ╔═╡ 45a58020-2b34-11eb-3551-1f660b353f2a
begin
    submit_answer(nothing; prob_num=496)
end

# ╔═╡ 45a58020-2b34-11eb-1aa3-4b1a3076aed5
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

# ╔═╡ 45a58020-2b34-11eb-158b-a7c0778f07da
begin
    submit_answer(nothing; prob_num=497)
end

# ╔═╡ 45a58020-2b34-11eb-1a1f-5bfb7ee621d6
html"""
<h2>Problem 479: Roots on the Rise</h2>
<p>Let $a_k$, $b_k$, and $c_k$ represent the three solutions (real or complex numbers) to the equation
$\frac 1 x = (\frac k x)^2(k+x^2)-k x$.</p>

<p>For instance, for $k=5$, we see that $\{a_5, b_5, c_5 \}$ is approximately $\{5.727244, -0.363622+2.057397i, -0.363622-2.057397i\}$.</p>

<p>Let $\displaystyle S(n) = \sum_{p=1}^n\sum_{k=1}^n(a_k+b_k)^p(b_k+c_k)^p(c_k+a_k)^p$. </p>

<p>Interestingly, $S(n)$ is always an integer. For example, $S(4) = 51160$.</p>

<p>Find $S(10^6)$ modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 45a58020-2b34-11eb-04d3-d967d8ae83ff
begin
    submit_answer(nothing; prob_num=498)
end

# ╔═╡ 45a58020-2b34-11eb-234e-e12cbccda74b
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

# ╔═╡ 45a58020-2b34-11eb-2b15-1fccd234bc1f
begin
    submit_answer(nothing; prob_num=499)
end

# ╔═╡ 45a58020-2b34-11eb-09a4-7738f138f137
html"""
<h2>Problem 481: Chef Showdown</h2>
<p>A group of chefs (numbered #1, #2, etc) participate in a turn-based strategic cooking competition. On each chef's turn, he/she cooks up a dish to the best of his/her ability and gives it to a separate panel of judges for taste-testing. Let S(<var>k</var>) represent chef #<var>k</var>'s skill level (which is publicly known). More specifically, S(<var>k</var>) is the probability that chef #<var>k</var>'s dish will be assessed favorably by the judges (on any/all turns). If the dish receives a favorable rating, then the chef must choose one other chef to be eliminated from the competition. The last chef remaining in the competition is the winner.</p>

<p>The game always begins with chef #1, with the turn order iterating sequentially over the rest of the chefs still in play. Then the cycle repeats from the lowest-numbered chef. All chefs aim to optimize their chances of winning within the rules as stated, assuming that the other chefs behave in the same manner. In the event that a chef has more than one equally-optimal elimination choice, assume that the chosen chef is always the one with the next-closest turn.</p>

<p>Define W<sub>n</sub>(<var>k</var>) as the probability that chef #<var>k</var> wins in a competition with <var>n</var> chefs. If we have S(1) = 0.25, S(2) = 0.5, and S(3) = 1, then W<sub>3</sub>(1) = 0.29375.</p>

<p>Going forward, we assign S(<var>k</var>) = F<sub>k</sub>/F<sub>n+1</sub> over all 1 ≤ <var>k</var> ≤ <var>n</var>, where F<sub>k</sub> is a Fibonacci number: F<sub>k</sub> = F<sub>k-1</sub> + F<sub>k-2</sub> with base cases F<sub>1</sub> = F<sub>2</sub> = 1. Then, for example, when considering a competition with <var>n</var> = 7 chefs, we have W<sub>7</sub>(1) = 0.08965042, W<sub>7</sub>(2) = 0.20775702, W<sub>7</sub>(3) = 0.15291406, W<sub>7</sub>(4) = 0.14554098, W<sub>7</sub>(5) = 0.15905291, W<sub>7</sub>(6) = 0.10261412, and W<sub>7</sub>(7) = 0.14247050, rounded to 8 decimal places each.</p>

<p>Let E(<var>n</var>) represent the expected number of dishes cooked in a competition with <var>n</var> chefs. For instance, E(7) = 42.28176050.</p>

<p>Find E(14) rounded to 8 decimal places.</p>
"""

# ╔═╡ 45a58020-2b34-11eb-26b3-1bcdcdc25fb5
begin
    submit_answer(nothing; prob_num=500)
end

# ╔═╡ 45a58020-2b34-11eb-02d1-1f18bb8d04ac
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

# ╔═╡ 45a58020-2b34-11eb-3467-fbdb5b20fe00
begin
    submit_answer(nothing; prob_num=501)
end

# ╔═╡ 45a58020-2b34-11eb-21e6-85ab2d32897d
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

# ╔═╡ 45a58020-2b34-11eb-087c-fd10abf2be84
begin
    submit_answer(nothing; prob_num=502)
end

# ╔═╡ 45a58020-2b34-11eb-3eac-df283798840c
html"""
<h2>Problem 484: Arithmetic Derivative</h2>
<p>The <strong>arithmetic derivative</strong> is defined by</p>
<ul><li><var>p'</var> = 1 for any prime <var>p</var></li>
<li>(<var>ab</var>)<var>'</var> = <var>a'b</var> + <var>ab'</var> for all integers <var>a</var>, <var>b</var> (Leibniz rule)</li>
</ul><p>For example, 20<var>'</var> = 24.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <strong>gcd</strong>(<var>k</var>,<var>k'</var>) for 1 &lt; <var>k</var> ≤ 5×10<sup>15</sup>.</p>

<p><span style="font-size:smaller;">Note: <strong>gcd</strong>(<var>x</var>,<var>y</var>) denotes the greatest common divisor of <var>x</var> and <var>y</var>.</span></p>
"""

# ╔═╡ 45a58020-2b34-11eb-0f25-15fffd15f745
begin
    submit_answer(nothing; prob_num=503)
end

# ╔═╡ 45a58020-2b34-11eb-38c0-c377d34beb96
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

# ╔═╡ 45a58020-2b34-11eb-384a-21839d74b228
begin
    submit_answer(nothing; prob_num=504)
end

# ╔═╡ 45a58020-2b34-11eb-1563-5366bb52f3b2
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

# ╔═╡ 45a58020-2b34-11eb-132e-97ecb69e8ab0
begin
    submit_answer(nothing; prob_num=505)
end

# ╔═╡ 45a58020-2b34-11eb-3081-632a46d8d8a8
html"""
<h2>Problem 487: Sums of power sums</h2>
<p>Let f<sub>k</sub>(<var>n</var>) be the sum of the <var>k</var><sup>th</sup> powers of the first <var>n</var> positive integers.</p>

<p>For example, f<sub>2</sub>(10) = 1<sup>2</sup> + 2<sup>2</sup> + 3<sup>2</sup> + 4<sup>2</sup> + 5<sup>2</sup> + 6<sup>2</sup> + 7<sup>2</sup> + 8<sup>2</sup> + 9<sup>2</sup> + 10<sup>2</sup> = 385.</p>

<p>Let S<sub>k</sub>(<var>n</var>) be the sum of f<sub>k</sub>(<var>i</var>) for 1 ≤ <var>i</var> ≤ <var>n</var>. For example, S<sub>4</sub>(100) = 35375333830.</p>

<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> (S<sub>10000</sub>(10<sup>12</sup>) mod p) over all primes <var>p</var> between 2 ⋅ 10<sup>9</sup> and 2 ⋅ 10<sup>9</sup> + 2000?</p>
"""

# ╔═╡ 45a58020-2b34-11eb-30c3-8d45f6a35809
begin
    submit_answer(nothing; prob_num=506)
end

# ╔═╡ 45a58020-2b34-11eb-3901-9595b19bd014
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

# ╔═╡ 45a58020-2b34-11eb-30fc-afc67ce1f075
begin
    submit_answer(nothing; prob_num=507)
end

# ╔═╡ 45a58020-2b34-11eb-1ca1-076c30280294
html"""
<h2>Problem 489: Common factors between two sequences</h2>
<p>Let <var>G</var>(<var>a</var>, <var>b</var>) be the smallest non-negative integer <var>n</var> for which <dfn title="Greatest common divisor">gcd</dfn>(<var>n</var><sup>3</sup> + <var>b</var>, (<var>n</var> + <var>a</var>)<sup>3</sup> + <var>b</var>) is maximized.<br />
For example, <var>G</var>(1, 1) = 5 because gcd(<var>n</var><sup>3</sup> + 1, (<var>n</var> + 1)<sup>3</sup> + 1) reaches its maximum value of 7 for <var>n</var> = 5, and is smaller for 0 ≤ n &lt; 5.<br />
Let <var>H</var>(<var>m</var>, <var>n</var>) = <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>G</var>(<var>a</var>, <var>b</var>) for 1 ≤ <var>a</var> ≤ <var>m</var>, 1 ≤ <var>b</var> ≤ <var>n</var>.<br />
You are given <var>H</var>(5, 5) = 128878 and <var>H</var>(10, 10) = 32936544.
</p><p>Find <var>H</var>(18, 1900).</p>
"""

# ╔═╡ 45a58020-2b34-11eb-0544-110df4836f12
begin
    submit_answer(nothing; prob_num=508)
end

# ╔═╡ 45a58020-2b34-11eb-2f79-c7c9cf8b53a3
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

# ╔═╡ 45a58020-2b34-11eb-2d94-a7ca4df7d33b
begin
    submit_answer(nothing; prob_num=509)
end

# ╔═╡ 45a58020-2b34-11eb-237c-f592ca6de877
html"""
<h2>Problem 491: Double pandigital number divisible by 11</h2>
<p>We call a positive integer <i>double pandigital</i> if it uses all the digits 0 to 9 exactly twice (with no leading zero). For example, 40561817703823564929 is one such number.</p>

<p>How many double pandigital numbers are divisible by 11?</p>
"""

# ╔═╡ 45a58020-2b34-11eb-38fe-756d8201af8f
begin
    submit_answer(nothing; prob_num=510)
end

# ╔═╡ 45a58020-2b34-11eb-25f1-ab3a8eae5590
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

# ╔═╡ 45a58020-2b34-11eb-08fd-9f9a13f6b762
begin
    submit_answer(nothing; prob_num=511)
end

# ╔═╡ 45a58020-2b34-11eb-1b74-15e939383835
html"""
<h2>Problem 493: Under The Rainbow</h2>
<p>70 coloured balls are placed in an urn, 10 for each of the seven rainbow colours.</p>
<p>What is the expected number of distinct colours in 20 randomly picked balls?</p>
<p>Give your answer with nine digits after the decimal point (a.bcdefghij).</p>
"""

# ╔═╡ 45a58020-2b34-11eb-3de3-55ddeccc15af
begin
    submit_answer(nothing; prob_num=512)
end

# ╔═╡ 45a5a730-2b34-11eb-14f0-e7e8829e687c
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

# ╔═╡ 45a5a730-2b34-11eb-1142-e7f3c556e3ed
begin
    submit_answer(nothing; prob_num=513)
end

# ╔═╡ 45a5a730-2b34-11eb-2cc3-3f3bf2a53d7c
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

# ╔═╡ 45a5a730-2b34-11eb-17f7-d9a4e18985dc
begin
    submit_answer(nothing; prob_num=514)
end

# ╔═╡ 45a5a730-2b34-11eb-3fab-3b4442e4f745
html"""
<h2>Problem 496: Incenter and circumcenter of triangle</h2>
<p>Given an integer sided triangle ABC:<br />
Let I be the incenter of ABC.<br />
Let D be the intersection between the line AI and the circumcircle of ABC (A ≠ D).</p>

<p>We define F(<var>L</var>) as the sum of BC for the triangles ABC that satisfy AC = DI and BC ≤ <var>L</var>.</p>

<p>For example, F(15) = 45 because the triangles ABC with (BC,AC,AB) = (6,4,5), (12,8,10), (12,9,7), (15,9,16) satisfy the conditions.</p>

<p>Find F(10<sup>9</sup>).</p>
"""

# ╔═╡ 45a5a730-2b34-11eb-08e4-3b32b522bd15
begin
    submit_answer(nothing; prob_num=515)
end

# ╔═╡ 45a5a730-2b34-11eb-19b1-bbf9aac9c2e4
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

# ╔═╡ 45a5a730-2b34-11eb-2a2e-87b172014ab6
begin
    submit_answer(nothing; prob_num=516)
end

# ╔═╡ 45a5a730-2b34-11eb-3544-0706faf735ae
html"""
<h2>Problem 498: Remainder of polynomial division</h2>
<p>For positive integers <var>n</var> and <var>m</var>, we define two polynomials F<sub><var>n</var></sub>(<var>x</var>) = <var>x</var><sup><var>n</var></sup> and G<sub><var>m</var></sub>(<var>x</var>) = (<var>x</var>-1)<sup><var>m</var></sup>.<br />
We also define a polynomial R<sub><var>n</var>,<var>m</var></sub>(<var>x</var>) as the remainder of the division of F<sub><var>n</var></sub>(<var>x</var>) by G<sub><var>m</var></sub>(<var>x</var>).<br />
For example, R<sub>6,3</sub>(<var>x</var>) = 15<var>x</var><sup>2</sup> - 24<var>x</var> + 10.</p>

<p>Let C(<var>n</var>, <var>m</var>, <var>d</var>) be the absolute value of the coefficient of the <var>d</var>-th degree term of R<sub><var>n</var>,<var>m</var></sub>(<var>x</var>).<br />
We can verify that C(6, 3, 1) = 24 and C(100, 10, 4) = 227197811615775.</p>

<p>Find C(10<sup>13</sup>, 10<sup>12</sup>, 10<sup>4</sup>) mod 999999937.</p>
"""

# ╔═╡ 45a5a730-2b34-11eb-30f0-2709ad9a27ce
begin
    submit_answer(nothing; prob_num=517)
end

# ╔═╡ 45a5a730-2b34-11eb-2e04-fbfb5ae06ed6
html"""
<h2>Problem 499: St. Petersburg Lottery</h2>
<p>A gambler decides to participate in a special lottery. In this lottery the gambler plays a series of one or more games.<br />
Each game costs <var>m</var> pounds to play and starts with an initial pot of 1 pound. The gambler flips an unbiased coin. Every time a head appears, the pot is doubled and the gambler continues. When a tail appears, the game ends and the gambler collects the current value of the pot. The gambler is certain to win at least 1 pound, the starting value of the pot, at the cost of <var>m</var> pounds, the initial fee.</p>

<p>The game ends if the gambler's fortune falls below <var>m</var> pounds.
Let <var>p<sub>m</sub></var>(<var>s</var>) denote the probability that the gambler will never run out of money in this lottery given an initial fortune <var>s</var> and the cost per game <var>m</var>.<br />
For example <var>p</var><sub>2</sub>(2) ≈ 0.2522, <var>p</var><sub>2</sub>(5) ≈ 0.6873 and <var>p</var><sub>6</sub>(10 000) ≈ 0.9952 (note: <var>p<sub>m</sub></var>(<var>s</var>) = 0 for <var>s</var> &lt; <var>m</var>).</p>

<p>Find <var>p</var><sub>15</sub>(10<sup>9</sup>) and give your answer rounded to 7 decimal places behind the decimal point in the form 0.abcdefg.</p>
"""

# ╔═╡ 45a5a730-2b34-11eb-1de4-6f0b0510389e
begin
    submit_answer(nothing; prob_num=518)
end

# ╔═╡ 45a5a730-2b34-11eb-080f-a73a55b0cb0b
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

# ╔═╡ 45a5a730-2b34-11eb-037e-e732c7760979
begin
    submit_answer(nothing; prob_num=519)
end

# ╔═╡ 45a5a730-2b34-11eb-0bf9-87d897123494
html"""
<h2>Problem 501: Eight Divisors</h2>
<p>The eight divisors of 24 are 1, 2, 3, 4, 6, 8, 12 and 24.
The ten numbers not exceeding 100 having exactly eight divisors are 24, 30, 40, 42, 54, 56, 66, 70, 78 and 88.
Let <var>f</var>(<var>n</var>) be the count of numbers not exceeding <var>n</var> with exactly eight divisors.<br />
You are given <var>f</var>(100) = 10, <var>f</var>(1000) = 180 and <var>f</var>(10<sup>6</sup>) = 224427.<br />
Find <var>f</var>(10<sup>12</sup>).</p>
"""

# ╔═╡ 45a5a730-2b34-11eb-2138-353571fc833c
begin
    submit_answer(nothing; prob_num=520)
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
# ╠═4591aa00-2b34-11eb-2324-d9504e374a8c
# ╟─4591aa00-2b34-11eb-1907-ab72fbaf4666
# ╠═4591aa00-2b34-11eb-367b-33d71b92d8db
# ╟─4591aa00-2b34-11eb-3b2f-2398ea057c5a
# ╠═4591aa00-2b34-11eb-32e2-a302131ec96e
# ╟─4591aa00-2b34-11eb-372e-019bf26439c5
# ╠═4591aa00-2b34-11eb-1725-2d2f33d27ce8
# ╟─4591aa00-2b34-11eb-0bf6-451fdafa72e2
# ╠═4591aa00-2b34-11eb-255b-ff45ad022f6c
# ╟─4591aa00-2b34-11eb-3000-7f99a6f75503
# ╠═4591aa00-2b34-11eb-3384-d1e193ab9e78
# ╟─4591aa00-2b34-11eb-2ce0-c7d31d2e7251
# ╠═4591aa00-2b34-11eb-31ae-85106d33d2f0
# ╟─4591aa00-2b34-11eb-1073-27fcbcd379c8
# ╠═4591aa00-2b34-11eb-2be3-138f8593cdfd
# ╟─4591aa00-2b34-11eb-3eeb-21676931b997
# ╠═4591aa00-2b34-11eb-1d93-3774264c998a
# ╟─4591aa00-2b34-11eb-3431-d3dbc02a945c
# ╠═4591aa00-2b34-11eb-2f02-e1a68b9f02ae
# ╟─4591aa00-2b34-11eb-3845-a7c554f72ca0
# ╠═4591aa00-2b34-11eb-2289-7db6d32c3988
# ╟─4591aa00-2b34-11eb-0388-0b1a64633ac3
# ╠═4591aa00-2b34-11eb-2939-f59e66011b66
# ╟─4591d10e-2b34-11eb-1d7a-4fe747e755b3
# ╠═4591d10e-2b34-11eb-3116-636a8759a815
# ╟─4591d10e-2b34-11eb-1b4d-27fbcfe356ce
# ╠═4591d10e-2b34-11eb-01f1-09e43b4edc77
# ╟─4591d10e-2b34-11eb-1938-0f49e5c4b16e
# ╠═4591d10e-2b34-11eb-10d0-b5143b24cf0b
# ╟─4591d10e-2b34-11eb-2b10-13acf6cfb8f0
# ╠═4591d10e-2b34-11eb-02af-492aae19803d
# ╟─4591d10e-2b34-11eb-17b6-593659062587
# ╠═4591d10e-2b34-11eb-1db4-5bf3bf1d5659
# ╟─4591d10e-2b34-11eb-1aeb-ad5f4d3cc41d
# ╠═4591d10e-2b34-11eb-2f57-c5f32a8a973a
# ╟─4591d10e-2b34-11eb-34c1-4d8a7ccdcad8
# ╠═4591d10e-2b34-11eb-21cc-e99d12224387
# ╟─4591d10e-2b34-11eb-267f-51dda8152291
# ╠═4591d10e-2b34-11eb-20f2-65d3f1087fa4
# ╟─4591d10e-2b34-11eb-070a-cdbbe072b513
# ╠═4591d10e-2b34-11eb-1caa-77c732ecf0f7
# ╟─4591d10e-2b34-11eb-06bf-3b123f6f22c9
# ╠═4591d10e-2b34-11eb-32e1-f97c79e67c67
# ╟─4591d10e-2b34-11eb-04e8-158f02ae9fcd
# ╠═4591d10e-2b34-11eb-07ad-2925196cbe4a
# ╟─4591d10e-2b34-11eb-2d0f-e97461944263
# ╠═4591d10e-2b34-11eb-1a8a-7511357f22f0
# ╟─4591d10e-2b34-11eb-32d1-3d00bf638cb6
# ╠═4591d10e-2b34-11eb-0284-697b2e8dc0f7
# ╟─4591f820-2b34-11eb-21aa-f9c2dd9efa71
# ╠═4591f820-2b34-11eb-3c79-e3290ad0f021
# ╟─4591f820-2b34-11eb-0fbe-dd4d67373945
# ╠═4591f820-2b34-11eb-23a8-ff30e3a46097
# ╠═4593f3f0-2b34-11eb-228a-7b179121ac41
# ╟─4593f3f0-2b34-11eb-1157-f3f35282917f
# ╠═4593f3f0-2b34-11eb-2e40-3561336cddf5
# ╟─4593f3f0-2b34-11eb-3016-6536b8868940
# ╠═4593f3f0-2b34-11eb-1d76-730462bd3003
# ╟─4593f3f0-2b34-11eb-2b58-7bc755f50537
# ╠═4593f3f0-2b34-11eb-2a77-43e6d971e901
# ╟─4593f3f0-2b34-11eb-31de-cd13c480f6a1
# ╠═4593f3f0-2b34-11eb-1d05-516c43e2831f
# ╟─4593f3f0-2b34-11eb-119b-199ff252dda4
# ╠═4593f3f0-2b34-11eb-0385-7ffc2df5d33a
# ╟─4593f3f0-2b34-11eb-2ef1-63177b0c9622
# ╠═4593f3f0-2b34-11eb-1c81-1f7a01539567
# ╟─4593f3f0-2b34-11eb-1729-b73c2362921d
# ╠═4593f3f0-2b34-11eb-0a33-6d3342bff921
# ╟─4593f3f0-2b34-11eb-32c0-e927f3082744
# ╠═4593f3f0-2b34-11eb-1757-95464c74846d
# ╟─4593f3f0-2b34-11eb-0a6a-c38bc3504a57
# ╠═4593f3f0-2b34-11eb-24cc-6bfa33d1a828
# ╟─45941b00-2b34-11eb-114d-b9e0f5956011
# ╠═45941b00-2b34-11eb-1a9c-150c0df9b3a3
# ╟─45941b00-2b34-11eb-1531-ef3ea83b8f71
# ╠═45941b00-2b34-11eb-0fdb-8fd855c9e2bd
# ╟─45941b00-2b34-11eb-39b2-434ffa779f31
# ╠═45941b00-2b34-11eb-12d8-d9cefa8591d0
# ╟─45941b00-2b34-11eb-2732-4fa44514d7ec
# ╠═45941b00-2b34-11eb-3437-03a7ad348e08
# ╟─45941b00-2b34-11eb-0a81-1b6b081f35e4
# ╠═45941b00-2b34-11eb-2b82-bdb090980074
# ╟─45941b00-2b34-11eb-3182-15f05ae3e910
# ╠═45941b00-2b34-11eb-276d-abc327313e1c
# ╟─45941b00-2b34-11eb-3a60-fd3dbbeb6493
# ╠═45941b00-2b34-11eb-2bcd-f98f8a84d438
# ╟─45941b00-2b34-11eb-3211-e9358e77dec6
# ╠═45941b00-2b34-11eb-0a1a-8ff37fb03b38
# ╟─45941b00-2b34-11eb-068c-2f015dbd76b1
# ╠═45941b00-2b34-11eb-19d8-e94dc57453b9
# ╟─45941b00-2b34-11eb-0ea9-67f8c9c2efbc
# ╠═45941b00-2b34-11eb-250b-299447f566a9
# ╟─45941b00-2b34-11eb-1349-074b654d8d94
# ╠═45941b00-2b34-11eb-165a-f76504f9b90b
# ╟─45941b00-2b34-11eb-2e1a-83dc4cb58aa3
# ╠═45941b00-2b34-11eb-2f5d-93c20dbbc956
# ╟─45941b00-2b34-11eb-30df-cda1d0f8001c
# ╠═45941b00-2b34-11eb-0ca1-b3cbc547a522
# ╟─45941b00-2b34-11eb-2b5c-7983af364962
# ╠═45941b00-2b34-11eb-0e05-3bfa013446e7
# ╟─45941b00-2b34-11eb-01da-236bed5f6de2
# ╠═45941b00-2b34-11eb-27f2-25e2187d3e55
# ╟─45941b00-2b34-11eb-2f74-c9040cbc6a9a
# ╠═45941b00-2b34-11eb-268f-7f04e8a6e989
# ╟─45941b00-2b34-11eb-23bc-11ea72d4f9f7
# ╠═45941b00-2b34-11eb-07f5-9b1f6c7481a4
# ╠═4595537e-2b34-11eb-2689-c37ed97febc1
# ╟─4595537e-2b34-11eb-15f3-9b44237abe89
# ╠═4595537e-2b34-11eb-2c63-2b0b3166b1f1
# ╟─4595537e-2b34-11eb-2ffe-0f80d47a375d
# ╠═4595537e-2b34-11eb-21de-490762fee463
# ╟─4595537e-2b34-11eb-0438-378be0ca1a9b
# ╠═4595537e-2b34-11eb-1248-77415a335134
# ╟─4595537e-2b34-11eb-2b18-6d43036dd40d
# ╠═4595537e-2b34-11eb-2392-e3f9cd32009e
# ╟─4595537e-2b34-11eb-2a8d-434076f0ddb7
# ╠═4595537e-2b34-11eb-1c77-c3e68aba1967
# ╟─4595537e-2b34-11eb-0b1d-8574601df713
# ╠═4595537e-2b34-11eb-0f66-dfd46adfa3d7
# ╟─4595537e-2b34-11eb-1c3c-ddace3eebc79
# ╠═4595537e-2b34-11eb-07d7-0b7792aee5fa
# ╟─4595537e-2b34-11eb-28c1-611fe7ff4a08
# ╠═4595537e-2b34-11eb-3825-4b03253e4402
# ╟─4595537e-2b34-11eb-25f7-3db270216783
# ╠═4595537e-2b34-11eb-1014-1761a99fda59
# ╟─4595537e-2b34-11eb-0fe2-23dcccc23273
# ╠═4595537e-2b34-11eb-103a-e5eee2f0bf4d
# ╟─4595537e-2b34-11eb-2e78-6bcaeb745d4e
# ╠═4595537e-2b34-11eb-013b-fd7ed8c1b6ac
# ╟─45957a90-2b34-11eb-38f2-af96536da433
# ╠═45957a90-2b34-11eb-03b9-71d767e6b9bd
# ╟─45957a90-2b34-11eb-2851-013592b34e02
# ╠═45957a90-2b34-11eb-326c-27969b7aca9c
# ╟─45957a90-2b34-11eb-0175-81b8c73448ff
# ╠═45957a90-2b34-11eb-254b-65e0cb453c06
# ╟─45957a90-2b34-11eb-2c3c-7b0fc1f5cc63
# ╠═45957a90-2b34-11eb-075a-47243795e090
# ╟─45957a90-2b34-11eb-0a8e-33bf7541b3b6
# ╠═45957a90-2b34-11eb-10a0-27ac4852ed63
# ╟─45957a90-2b34-11eb-2e32-b9533badbbb6
# ╠═45957a90-2b34-11eb-3406-6d65953f5872
# ╟─45957a90-2b34-11eb-2dda-d10b8308ad7c
# ╠═45957a90-2b34-11eb-1c2a-17af73ba742e
# ╟─45957a90-2b34-11eb-1f9e-0dec15a788f0
# ╠═45957a90-2b34-11eb-209e-699de44bb5b8
# ╟─45957a90-2b34-11eb-1a80-6beb2eaf7c03
# ╠═45957a90-2b34-11eb-1933-07541d0ab0db
# ╟─45957a90-2b34-11eb-230e-45cb3698fcfb
# ╠═45957a90-2b34-11eb-3c05-7f2057f52e57
# ╟─45957a90-2b34-11eb-1899-6b8e04b8c0a6
# ╠═45957a90-2b34-11eb-257c-c3388da7087d
# ╟─45957a90-2b34-11eb-1273-2dd1ba89fed1
# ╠═45957a90-2b34-11eb-3067-3d0a2bcf2570
# ╟─45957a90-2b34-11eb-1232-0b75dfaecb16
# ╠═45957a90-2b34-11eb-0db6-1f0c9f1ac3e2
# ╟─45957a90-2b34-11eb-27f6-dd662bde5a1f
# ╠═45957a90-2b34-11eb-0016-d52cb9566e79
# ╟─45957a90-2b34-11eb-2d21-df19d7879d59
# ╠═45957a90-2b34-11eb-19c2-3da1b5d59048
# ╠═459839b0-2b34-11eb-064f-4933f4ab52c2
# ╟─459839b0-2b34-11eb-2871-1dc6cdff46f5
# ╠═459839b0-2b34-11eb-0533-c7b1f37cac78
# ╟─459839b0-2b34-11eb-1552-4d1c9ced47a9
# ╠═459839b0-2b34-11eb-1729-25b0fe1d934c
# ╟─459839b0-2b34-11eb-13e5-4fa89f502df0
# ╠═459839b0-2b34-11eb-264b-3531fd9508e8
# ╟─459839b0-2b34-11eb-3bae-5ff59d1ecaed
# ╠═459839b0-2b34-11eb-260b-f5887e88e5ca
# ╟─459860c2-2b34-11eb-304b-d7c05aaa345b
# ╠═459860c2-2b34-11eb-08c4-2f6f5b478866
# ╟─459860c2-2b34-11eb-0ecd-fb369166758b
# ╠═459860c2-2b34-11eb-1fb2-e132215d0fc5
# ╟─459860c2-2b34-11eb-1764-e9eeab1c2977
# ╠═459860c2-2b34-11eb-154d-41804e588b73
# ╟─459860c2-2b34-11eb-341f-c18abadcb439
# ╠═459860c2-2b34-11eb-2826-0de1a79b7be1
# ╟─459860c2-2b34-11eb-1613-e105988161f8
# ╠═459860c2-2b34-11eb-1784-6d358d340229
# ╟─459860c2-2b34-11eb-11b3-41566a4d02d8
# ╠═459860c2-2b34-11eb-17e6-6108be09ec0b
# ╟─459860c2-2b34-11eb-35a7-e180a4999f9b
# ╠═459860c2-2b34-11eb-192c-f9df535141ba
# ╟─459860c2-2b34-11eb-118b-014a904878c5
# ╠═459860c2-2b34-11eb-03b4-b9694795facf
# ╟─459860c2-2b34-11eb-09c0-f31057a48280
# ╠═459860c2-2b34-11eb-1d28-5db203dc1443
# ╟─459860c2-2b34-11eb-1c0f-cf15d5a58ffc
# ╠═459860c2-2b34-11eb-0644-cbdda347c3b7
# ╟─459860c2-2b34-11eb-2143-551ba310e722
# ╠═459860c2-2b34-11eb-0255-7fcf5ec3dcbe
# ╟─459860c2-2b34-11eb-1233-af366f348cde
# ╠═459860c2-2b34-11eb-291e-dd921dad94a9
# ╟─459860c2-2b34-11eb-29d0-bbcdbc04a0b6
# ╠═459860c2-2b34-11eb-15f2-115e4a9bf05b
# ╟─459860c2-2b34-11eb-0921-cfff97c657d2
# ╠═459860c2-2b34-11eb-3bc8-3bb6134b4797
# ╟─459860c2-2b34-11eb-0618-55607c8c694a
# ╠═459860c2-2b34-11eb-33cf-79620fc62834
# ╟─459860c2-2b34-11eb-0757-3bc22ef19324
# ╠═459860c2-2b34-11eb-11e4-0fb50d776ef1
# ╟─459860c2-2b34-11eb-2a73-ed33eee8fbb1
# ╠═459860c2-2b34-11eb-0f34-119b144940eb
# ╟─459860c2-2b34-11eb-0592-41e41a5869bf
# ╠═459860c2-2b34-11eb-373b-bdff869e2392
# ╟─459860c2-2b34-11eb-3e09-d1b166fc3796
# ╠═459860c2-2b34-11eb-19f4-93847b786eab
# ╟─459887d0-2b34-11eb-0949-8973e13d962d
# ╠═459887d0-2b34-11eb-3303-fd0a26bfbec5
# ╟─459887d0-2b34-11eb-067d-b94593694eb7
# ╠═459887d0-2b34-11eb-045f-b3e2d262bce4
# ╟─459887d0-2b34-11eb-10ce-d7c0729ead77
# ╠═459887d0-2b34-11eb-2c11-49e1c9b2e801
# ╠═459a83a0-2b34-11eb-28b0-d7ad77d15053
# ╟─459a83a0-2b34-11eb-048f-b94f012b226e
# ╠═459a83a0-2b34-11eb-0acb-335d361c5005
# ╟─459a83a0-2b34-11eb-12f6-cd304dbfe5c9
# ╠═459a83a0-2b34-11eb-153a-b958ab28b478
# ╟─459a83a0-2b34-11eb-2e0a-0541084547c3
# ╠═459a83a0-2b34-11eb-1b73-cb8fa07b11f0
# ╟─459a83a0-2b34-11eb-2940-bf074b05cdc6
# ╠═459a83a0-2b34-11eb-3bb0-cf0703399c1c
# ╟─459a83a0-2b34-11eb-08f3-63b0aa51da7d
# ╠═459a83a0-2b34-11eb-18ef-859b264ce9c2
# ╟─459a83a0-2b34-11eb-1756-5b18c98efcf8
# ╠═459a83a0-2b34-11eb-13a4-19bff43ab2d0
# ╟─459a83a0-2b34-11eb-216a-c96451d446a6
# ╠═459a83a0-2b34-11eb-36dc-8358c127c3bd
# ╟─459aaab0-2b34-11eb-3edd-db2c4442d87b
# ╠═459aaab0-2b34-11eb-329b-1356c8d7034d
# ╟─459aaab0-2b34-11eb-3acf-b10d885a2dcf
# ╠═459aaab0-2b34-11eb-23aa-dd4b5126703b
# ╟─459aaab0-2b34-11eb-2657-c300bbaed5f3
# ╠═459aaab0-2b34-11eb-0259-c94f6efe1577
# ╟─459aaab0-2b34-11eb-0d4a-ef6d64ff4aa7
# ╠═459aaab0-2b34-11eb-3120-6746351b204f
# ╟─459aaab0-2b34-11eb-1669-b72731a1aef5
# ╠═459aaab0-2b34-11eb-3285-998a880efb1a
# ╟─459aaab0-2b34-11eb-3adc-1b8fc090bea1
# ╠═459aaab0-2b34-11eb-3fee-81aa7cbc34dd
# ╟─459aaab0-2b34-11eb-2031-a3d45a62e2ce
# ╠═459aaab0-2b34-11eb-3e8b-45243a5287b7
# ╟─459aaab0-2b34-11eb-31f7-17f29eb799bd
# ╠═459aaab0-2b34-11eb-3bc0-6bc3b78d364b
# ╟─459aaab0-2b34-11eb-1de6-29432d0b6aab
# ╠═459aaab0-2b34-11eb-2a98-fd4649f90aaf
# ╟─459aaab0-2b34-11eb-3bab-07cc0eea0993
# ╠═459aaab0-2b34-11eb-3815-2dd9003b963f
# ╟─459aaab0-2b34-11eb-3de0-45b56da46cd2
# ╠═459aaab0-2b34-11eb-184f-4ba8eee9750f
# ╟─459aaab0-2b34-11eb-2400-61c0a9f7b4c8
# ╠═459aaab0-2b34-11eb-2a9b-291b2d751982
# ╟─459aaab0-2b34-11eb-2067-8d678d6de09d
# ╠═459aaab0-2b34-11eb-3122-97c388e9df0d
# ╟─459aaab0-2b34-11eb-0caf-df0d99b344df
# ╠═459aaab0-2b34-11eb-22d8-1933c1756bdf
# ╟─459aaab0-2b34-11eb-03bc-7573eebb297d
# ╠═459aaab0-2b34-11eb-02ae-c360e466d6ef
# ╟─459aaab0-2b34-11eb-0f82-f12b89eea821
# ╠═459aaab0-2b34-11eb-1820-33bffe2dbe2d
# ╟─459aaab0-2b34-11eb-0446-41f541a50fc1
# ╠═459aaab0-2b34-11eb-3d24-8717d39511d3
# ╟─459aaab0-2b34-11eb-117b-df1045612c6c
# ╠═459aaab0-2b34-11eb-06df-21d567eeb43a
# ╟─459aaab0-2b34-11eb-2b07-e95c394969a5
# ╠═459aaab0-2b34-11eb-130e-05015d182d63
# ╠═459cf4a0-2b34-11eb-2269-51f069f894d9
# ╟─459cf4a0-2b34-11eb-334e-e9d7620a06a7
# ╠═459cf4a0-2b34-11eb-35a8-5d315915ebdf
# ╟─459cf4a0-2b34-11eb-14d2-bd6c431ef729
# ╠═459cf4a0-2b34-11eb-1b69-4330ad906598
# ╟─459cf4a0-2b34-11eb-2a57-d73d71baaaba
# ╠═459cf4a0-2b34-11eb-207b-5bcabb1f000e
# ╟─459cf4a0-2b34-11eb-23d5-816f933452e6
# ╠═459cf4a0-2b34-11eb-1ec2-117161961a94
# ╟─459cf4a0-2b34-11eb-19fb-cd77ef942f46
# ╠═459cf4a0-2b34-11eb-070d-471c2b635f8f
# ╟─459cf4a0-2b34-11eb-155a-bf02198f1011
# ╠═459cf4a0-2b34-11eb-33a0-19d80be455b7
# ╟─459cf4a0-2b34-11eb-2c7b-7165bb504b19
# ╠═459cf4a0-2b34-11eb-128e-69fbd1011cbc
# ╟─459cf4a0-2b34-11eb-2353-d97d92a2acfb
# ╠═459cf4a0-2b34-11eb-332c-8dbe9ffeced3
# ╟─459cf4a0-2b34-11eb-2afa-953bfc0d7e3f
# ╠═459cf4a0-2b34-11eb-121f-094b1dec7ab9
# ╟─459cf4a0-2b34-11eb-0e41-f16416546fd0
# ╠═459cf4a0-2b34-11eb-2fec-ad48755a885c
# ╟─459cf4a0-2b34-11eb-047f-4f93f15b4ed2
# ╠═459cf4a0-2b34-11eb-2101-71c9653f6e19
# ╟─459cf4a0-2b34-11eb-3dde-2563344678e1
# ╠═459cf4a0-2b34-11eb-07bb-39ea6926ce8d
# ╟─459cf4a0-2b34-11eb-20ba-6f1064ce223a
# ╠═459cf4a0-2b34-11eb-3abc-1d3eb2fe917e
# ╟─459cf4a0-2b34-11eb-1286-ff49f475933b
# ╠═459cf4a0-2b34-11eb-3e6a-415c28a536d3
# ╟─459cf4a0-2b34-11eb-33e8-9b02431b616b
# ╠═459cf4a0-2b34-11eb-2089-47e0d71af82b
# ╟─459cf4a0-2b34-11eb-3365-c1c202add128
# ╠═459cf4a0-2b34-11eb-10a4-4fd2f974c5c2
# ╟─459cf4a0-2b34-11eb-1ea4-6d30922212e7
# ╠═459cf4a0-2b34-11eb-3913-eb1fa2e6d6bd
# ╟─459cf4a0-2b34-11eb-204a-4177ac599e7b
# ╠═459cf4a0-2b34-11eb-3b3a-e94705516f8c
# ╟─459cf4a0-2b34-11eb-1997-1b32a9078df8
# ╠═459cf4a0-2b34-11eb-2ef0-3b260649d561
# ╟─459d1bb0-2b34-11eb-2b18-41d2bea2952d
# ╠═459d1bb0-2b34-11eb-332c-57bacea1c85a
# ╟─459d1bb0-2b34-11eb-1470-e57ee1ca23f0
# ╠═459d1bb0-2b34-11eb-1c99-d7f0acf12263
# ╟─459d1bb0-2b34-11eb-1cdc-0bf7b3f23d99
# ╠═459d1bb0-2b34-11eb-07a3-5b2e0ccffda2
# ╟─459d1bb0-2b34-11eb-37af-19932763c4cc
# ╠═459d1bb0-2b34-11eb-347f-95c993c81b4d
# ╟─459d1bb0-2b34-11eb-31ec-6923bd409e7c
# ╠═459d1bb0-2b34-11eb-3b38-7550a8409663
# ╟─459d1bb0-2b34-11eb-279e-a3deb1882e4f
# ╠═459d1bb0-2b34-11eb-2011-f93e8291d321
# ╟─459d1bb0-2b34-11eb-2290-c5c2155b5abb
# ╠═459d1bb0-2b34-11eb-22dc-613950a9c7de
# ╠═459f3e90-2b34-11eb-07d3-71e66af0edfd
# ╟─459f3e90-2b34-11eb-035d-293fa47a614b
# ╠═459f3e90-2b34-11eb-0dc8-37ba471288c8
# ╟─459f65a2-2b34-11eb-28ef-2b3f1265287b
# ╠═459f65a2-2b34-11eb-2fab-eb99746476b3
# ╟─459f65a2-2b34-11eb-1d5e-5fffe3684b85
# ╠═459f65a2-2b34-11eb-2673-b7f9fb110e97
# ╟─459f65a2-2b34-11eb-0c54-d34e65657867
# ╠═459f65a2-2b34-11eb-30b5-9bef7003f7ef
# ╟─459f65a2-2b34-11eb-0af4-73a15d124b96
# ╠═459f65a2-2b34-11eb-310b-239435bb78f7
# ╟─459f65a2-2b34-11eb-27a9-57e45eeb57ba
# ╠═459f65a2-2b34-11eb-11e0-45374b076ebd
# ╟─459f65a2-2b34-11eb-1751-597c48601d45
# ╠═459f65a2-2b34-11eb-3fc4-613d18faefd1
# ╟─459f65a2-2b34-11eb-3124-bfcdf068758d
# ╠═459f65a2-2b34-11eb-1420-2b19b99a391b
# ╟─459f65a2-2b34-11eb-2014-bdf19bd40aee
# ╠═459f65a2-2b34-11eb-3ffd-657433e19f55
# ╟─459f65a2-2b34-11eb-18d3-5f00d4dfd76e
# ╠═459f65a2-2b34-11eb-1bba-19b24c985899
# ╟─459f65a2-2b34-11eb-332a-1ff739dc7b02
# ╠═459f65a2-2b34-11eb-3102-b73628cb183b
# ╟─459f65a2-2b34-11eb-160f-d7ec31eaddca
# ╠═459f65a2-2b34-11eb-1444-99005d4745bd
# ╟─459f65a2-2b34-11eb-3d18-f710c1ffc32f
# ╠═459f65a2-2b34-11eb-119d-976b7184b295
# ╟─459f65a2-2b34-11eb-04e9-cb5eb006ba0f
# ╠═459f65a2-2b34-11eb-3fb3-7138edfcb71f
# ╟─459f65a2-2b34-11eb-293f-b7f0c91b9da2
# ╠═459f65a2-2b34-11eb-39c4-5152091165ea
# ╟─459f65a2-2b34-11eb-30c6-97f0b7143fb5
# ╠═459f65a2-2b34-11eb-1d1c-b335b960635d
# ╟─459f65a2-2b34-11eb-0cce-bdd88a168b25
# ╠═459f65a2-2b34-11eb-2861-8b7edc104b3f
# ╟─459f65a2-2b34-11eb-3c4e-b5f1167db19a
# ╠═459f65a2-2b34-11eb-2550-497a1393165d
# ╟─459f65a2-2b34-11eb-0a1a-7d20713d2ff1
# ╠═459f65a2-2b34-11eb-1ea1-4509d4a46eec
# ╟─459f65a2-2b34-11eb-2873-1f6be3f125fd
# ╠═459f65a2-2b34-11eb-1d18-797af520360a
# ╟─459f65a2-2b34-11eb-1257-497fe7a71206
# ╠═459f65a2-2b34-11eb-2015-6198aa41ed25
# ╟─459f8cb0-2b34-11eb-1143-a508a2c032d0
# ╠═459f8cb0-2b34-11eb-3775-8b9694c59962
# ╟─459f8cb0-2b34-11eb-2122-55925ff10992
# ╠═459f8cb0-2b34-11eb-26c7-5fa3c40f81cf
# ╟─459f8cb0-2b34-11eb-1ea2-eb12591407b0
# ╠═459f8cb0-2b34-11eb-1416-4b3842d24789
# ╟─459f8cb0-2b34-11eb-0e79-494b5afc8ff5
# ╠═459f8cb0-2b34-11eb-2cf9-ab85b79b7da2
# ╟─459f8cb0-2b34-11eb-0181-594d76b60237
# ╠═459f8cb0-2b34-11eb-2adf-f37035ee30e6
# ╠═45a224c0-2b34-11eb-2ecd-45721b19c624
# ╟─45a224c0-2b34-11eb-2b44-15616ec9b6ed
# ╠═45a224c0-2b34-11eb-19e9-cdd138d958cb
# ╟─45a24bd0-2b34-11eb-020c-7984a9b074d7
# ╠═45a24bd0-2b34-11eb-3622-0b0749ef8bce
# ╟─45a24bd0-2b34-11eb-335d-45d113640f68
# ╠═45a24bd0-2b34-11eb-1a68-411239951238
# ╟─45a24bd0-2b34-11eb-2021-d56645e6631d
# ╠═45a24bd0-2b34-11eb-148e-97c9f9bbf2bf
# ╟─45a24bd0-2b34-11eb-3f69-998ed686fcf3
# ╠═45a24bd0-2b34-11eb-22bc-572e7c989b85
# ╟─45a24bd0-2b34-11eb-132a-bfa38e0d3da7
# ╠═45a24bd0-2b34-11eb-3bdb-f5135d2dec6a
# ╟─45a24bd0-2b34-11eb-33ac-998a8e0e986b
# ╠═45a24bd0-2b34-11eb-3399-1b5bf4898c40
# ╟─45a24bd0-2b34-11eb-301f-354aabdec572
# ╠═45a24bd0-2b34-11eb-2691-ddbb93a97277
# ╟─45a24bd0-2b34-11eb-1caf-c5e68b7a5366
# ╠═45a24bd0-2b34-11eb-2e4b-ddc85e0166e8
# ╟─45a24bd0-2b34-11eb-3fe5-055ed9bd3c9a
# ╠═45a24bd0-2b34-11eb-344a-1393889f16a4
# ╟─45a24bd0-2b34-11eb-1bc0-c1c0c3be7408
# ╠═45a24bd0-2b34-11eb-3e4a-9f279a79c055
# ╟─45a24bd0-2b34-11eb-1914-07d51f6dadca
# ╠═45a24bd0-2b34-11eb-1f1c-6dc431c887b1
# ╟─45a24bd0-2b34-11eb-034c-0bf457a03739
# ╠═45a24bd0-2b34-11eb-1051-97439654350e
# ╟─45a24bd0-2b34-11eb-3291-3985dc7c3304
# ╠═45a24bd0-2b34-11eb-21a0-45d7a8ff5c1d
# ╟─45a24bd0-2b34-11eb-173c-9d3ded94e6d2
# ╠═45a24bd0-2b34-11eb-2db7-4fd42d2fe523
# ╟─45a24bd0-2b34-11eb-341a-d37eafa467ff
# ╠═45a24bd0-2b34-11eb-38cf-2f576dea2a44
# ╟─45a24bd0-2b34-11eb-1bde-bdcff68962ab
# ╠═45a24bd0-2b34-11eb-18d9-fd6a03975faa
# ╟─45a24bd0-2b34-11eb-1575-3318d5610add
# ╠═45a24bd0-2b34-11eb-24be-e13dbd9036cd
# ╟─45a272e0-2b34-11eb-0a2e-078663a8543e
# ╠═45a272e0-2b34-11eb-2728-2d8ab8a2feb9
# ╟─45a272e0-2b34-11eb-2382-5567954c1c3b
# ╠═45a272e0-2b34-11eb-14ac-758844e57d6c
# ╟─45a272e0-2b34-11eb-215c-9fcad67cdfe1
# ╠═45a272e0-2b34-11eb-308f-cb366f2a37b8
# ╟─45a272e0-2b34-11eb-3240-2b1723abd570
# ╠═45a272e0-2b34-11eb-1396-2d84faac57c3
# ╟─45a272e0-2b34-11eb-1985-73c9e421d7bc
# ╠═45a272e0-2b34-11eb-186b-9f529910039e
# ╟─45a272e0-2b34-11eb-1479-f74585fd7f32
# ╠═45a272e0-2b34-11eb-04e5-6fa6113138e2
# ╟─45a272e0-2b34-11eb-0491-69095671b49c
# ╠═45a272e0-2b34-11eb-0154-4df8d08d1355
# ╟─45a272e0-2b34-11eb-34a3-71fe8c8b5853
# ╠═45a272e0-2b34-11eb-20b8-21a402217878
# ╠═45a58020-2b34-11eb-05a7-f16e9bd3b01a
# ╟─45a58020-2b34-11eb-11cb-c5f55fc54c7b
# ╠═45a58020-2b34-11eb-1a13-49bee81068f6
# ╟─45a58020-2b34-11eb-3be9-9b285e634c01
# ╠═45a58020-2b34-11eb-3551-1f660b353f2a
# ╟─45a58020-2b34-11eb-1aa3-4b1a3076aed5
# ╠═45a58020-2b34-11eb-158b-a7c0778f07da
# ╟─45a58020-2b34-11eb-1a1f-5bfb7ee621d6
# ╠═45a58020-2b34-11eb-04d3-d967d8ae83ff
# ╟─45a58020-2b34-11eb-234e-e12cbccda74b
# ╠═45a58020-2b34-11eb-2b15-1fccd234bc1f
# ╟─45a58020-2b34-11eb-09a4-7738f138f137
# ╠═45a58020-2b34-11eb-26b3-1bcdcdc25fb5
# ╟─45a58020-2b34-11eb-02d1-1f18bb8d04ac
# ╠═45a58020-2b34-11eb-3467-fbdb5b20fe00
# ╟─45a58020-2b34-11eb-21e6-85ab2d32897d
# ╠═45a58020-2b34-11eb-087c-fd10abf2be84
# ╟─45a58020-2b34-11eb-3eac-df283798840c
# ╠═45a58020-2b34-11eb-0f25-15fffd15f745
# ╟─45a58020-2b34-11eb-38c0-c377d34beb96
# ╠═45a58020-2b34-11eb-384a-21839d74b228
# ╟─45a58020-2b34-11eb-1563-5366bb52f3b2
# ╠═45a58020-2b34-11eb-132e-97ecb69e8ab0
# ╟─45a58020-2b34-11eb-3081-632a46d8d8a8
# ╠═45a58020-2b34-11eb-30c3-8d45f6a35809
# ╟─45a58020-2b34-11eb-3901-9595b19bd014
# ╠═45a58020-2b34-11eb-30fc-afc67ce1f075
# ╟─45a58020-2b34-11eb-1ca1-076c30280294
# ╠═45a58020-2b34-11eb-0544-110df4836f12
# ╟─45a58020-2b34-11eb-2f79-c7c9cf8b53a3
# ╠═45a58020-2b34-11eb-2d94-a7ca4df7d33b
# ╟─45a58020-2b34-11eb-237c-f592ca6de877
# ╠═45a58020-2b34-11eb-38fe-756d8201af8f
# ╟─45a58020-2b34-11eb-25f1-ab3a8eae5590
# ╠═45a58020-2b34-11eb-08fd-9f9a13f6b762
# ╟─45a58020-2b34-11eb-1b74-15e939383835
# ╠═45a58020-2b34-11eb-3de3-55ddeccc15af
# ╟─45a5a730-2b34-11eb-14f0-e7e8829e687c
# ╠═45a5a730-2b34-11eb-1142-e7f3c556e3ed
# ╟─45a5a730-2b34-11eb-2cc3-3f3bf2a53d7c
# ╠═45a5a730-2b34-11eb-17f7-d9a4e18985dc
# ╟─45a5a730-2b34-11eb-3fab-3b4442e4f745
# ╠═45a5a730-2b34-11eb-08e4-3b32b522bd15
# ╟─45a5a730-2b34-11eb-19b1-bbf9aac9c2e4
# ╠═45a5a730-2b34-11eb-2a2e-87b172014ab6
# ╟─45a5a730-2b34-11eb-3544-0706faf735ae
# ╠═45a5a730-2b34-11eb-30f0-2709ad9a27ce
# ╟─45a5a730-2b34-11eb-2e04-fbfb5ae06ed6
# ╠═45a5a730-2b34-11eb-1de4-6f0b0510389e
# ╟─45a5a730-2b34-11eb-080f-a73a55b0cb0b
# ╠═45a5a730-2b34-11eb-037e-e732c7760979
# ╟─45a5a730-2b34-11eb-0bf9-87d897123494
# ╠═45a5a730-2b34-11eb-2138-353571fc833c