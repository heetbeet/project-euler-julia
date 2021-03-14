### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1af82da0-84a3-11eb-2922-c77f5a0f843a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1af82da0-84a3-11eb-1024-0f0036b54aeb
html"""
<h2>Problem 651: Patterned Cylinders</h2>
<p>An infinitely long cylinder has its curved surface fully covered with different coloured but otherwise identical rectangular stickers, without overlapping. The stickers are aligned with the cylinder, so two of their edges are parallel with the cylinder's axis, with four stickers meeting at each corner.</p>

<p>Let $a&gt;0$ and suppose that the colouring is periodic along the cylinder, with the pattern repeating every $a$ stickers. (The period is allowed to be any divisor of $a$.) Let $b$ be the number of stickers that fit round the circumference of the cylinder.</p>

<p>Let $f(m, a, b)$ be the number of different such periodic patterns that use <i>exactly</i> $m$ distinct colours of stickers. Translations along the axis, reflections in any plane, rotations in any axis, (or combinations of such operations) applied to a pattern are to be counted as the same as the original pattern.</p>

<p>You are given that $f(2, 2, 3) = 11$, $f(3, 2, 3) = 56$, and $f(2, 3, 4) = 156$.
Furthermore, $f(8, 13, 21) \equiv 49718354 \pmod{1\,000\,000\,007}$,
and $f(13, 144, 233) \equiv 907081451 \pmod{1\,000\,000\,007}$.</p>

<p>Find $\sum_{i=4}^{40} f(i, F_{i-1}, F_i) \bmod 1\,000\,000\,007$, where $F_i$ are the Fibonacci numbers starting at $F_0=0$, $F_1=1$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-1498-35bb536c2ce0
begin
    submit_answer(nothing; prob_num=651)
end

# ╔═╡ 1af82da0-84a3-11eb-2bb6-eb5d6e6175b8
html"""
<h2>Problem 652: Distinct values of a proto-logarithmic function</h2>
<p>Consider the values of $\log_2(8)$, $\text{log}_4(64)$ and $\text{log}_3(27)$. All three are equal to $3$.</p>

<p>Generally, the function $f(m,n)=\text{log}_m(n)$ over integers $m,n \ge 2$ has the property that <br />
$f(m_1,n_1)=f(m_2,n_2)$ if
</p><ol>
<li>$\, m_1=a^e, n_1=a^f, m_2=b^e,n_2=b^f \,$ for some integers $a,b,e,f \, \,$ or </li>
<li> $ \, m_1=a^e, n_1=b^e, m_2=a^f,n_2=b^f \,$ for some integers $a,b,e,f \,$ </li></ol>


<p>We call a function $g(m,n)$ over integers $m,n \ge 2$ <i>proto-logarithmic</i>  if 
</p><ul><li>$\quad  \, \, \, \, g(m_1,n_1)=g(m_2,n_2)$ if any integers $a,b,e,f$ fulfilling 1. or 2. can be found </li>
<li><b>and</b> $\, g(m_1,n_1) \ne g(m_2,n_2)$ if no integers $a,b,e,f$ fulfilling 1. or 2. can be found</li>
</ul>
<p>Let $D(N)$ be the number of distinct values that any proto-logarithmic function $g(m,n)$ attains over $2\le m, n\le N$.<br />
For example, $D(5)=13$, $D(10)=69$, $D(100)=9607$ and $D(10000)=99959605$.</p>

<p>Find $D(10^{18})$, and give the last 9 digits as answer.</p>


<p><br />
<font size="2"><b>Note:</b> According to the <b>four exponentials conjecture</b> the function $\text{log}_m(n)$ is <i>proto-logarithmic</i>.<br /> While this conjecture is yet unproven in general, $\text{log}_m(n)$ can be used to calculate $D(N)$ for small values of $N$.</font></p>
"""

# ╔═╡ 1af82da0-84a3-11eb-1734-47205c07326b
begin
    submit_answer(nothing; prob_num=652)
end

# ╔═╡ 1af82da0-84a3-11eb-3ae2-8d4bba3fdd9b
html"""
<h2>Problem 653: Frictionless Tube</h2>
<p>Consider a horizontal frictionless tube with length $L$ millimetres, and a diameter of 20 millimetres. The east end of the tube is open, while the west end is sealed. The tube contains $N$ marbles of diameter 20 millimetres at designated starting locations, each one initially moving either westward or eastward with common speed $v$.</p>

<p>Since there are marbles moving in opposite directions, there are bound to be some collisions. We assume that the collisions are perfectly elastic, so both marbles involved instantly change direction and continue with speed $v$ away from the collision site. Similarly, if the west-most marble collides with the sealed end of the tube, it instantly changes direction and continues eastward at speed $v$. On the other hand, once a marble reaches the unsealed east end, it exits the tube and has no further interaction with the remaining marbles.</p>

<p>To obtain the starting positions and initial directions, we use the pseudo-random sequence $r_j$ defined by:<br />
$r_1 = 6\,563\,116$<br />
$r_{j+1} = r_j^2 \bmod 32\,745\,673$<br />
The west-most marble is initially positioned with a gap of $(r_1 \bmod 1000) + 1$ millimetres between it and the sealed end of the tube, measured from the west-most point of the surface of the marble. Then, for $2\le j\le N$, counting from the west, the gap between the $(j-1)$th and $j$th marbles, as measured from their closest points, is given by $(r_j \bmod 1000) + 1$ millimetres.
Furthermore, the $j$th marble is initially moving eastward if $r_j \le 10\,000\,000$, and westward if $r_j &gt; 10\,000\,000$.</p>

<p>For example, with $N=3$, the sequence specifies gaps of 117, 432, and 173 millimetres. The marbles' <i>centres</i> are therefore 127, 579, and 772 millimetres from the sealed west end of the tube. The west-most marble initially moves eastward, while the other two initially move westward.</p>

<p>Under this setup, and with a five metre tube ($L=5000$), it turns out that the middle (second) marble travels 5519 millimetres before its centre reaches the east-most end of the tube.</p>

<p>Let $d(L, N, j)$ be the distance in millimetres that the $j$th marble travels before its centre reaches the eastern end of the tube. So $d(5000, 3, 2) = 5519$. You are also given that $d(10\,000, 11, 6) = 11\,780$ and $d(100\,000, 101, 51) = 114\,101$.</p>

<p>Find $d(1\,000\,000\,000, 1\,000\,001, 500\,001)$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-27ce-75da9e9b1e66
begin
    submit_answer(nothing; prob_num=653)
end

# ╔═╡ 1af82da0-84a3-11eb-3495-dffc8024fc33
html"""
<h2>Problem 654: Neighbourly Constraints</h2>
<p>
Let $T(n, m)$ be the number of $m$-tuples of positive integers such that the sum of any two neighbouring elements of the tuple is $\le n$.
</p>
<p>
For example, $T(3, 4)=8$, via the following eight $4$-tuples:<br />
$(1, 1, 1, 1)$<br />
$(1, 1, 1, 2)$<br />
$(1, 1, 2, 1)$<br />
$(1, 2, 1, 1)$<br />
$(1, 2, 1, 2)$<br />
$(2, 1, 1, 1)$<br />
$(2, 1, 1, 2)$<br />
$(2, 1, 2, 1)$<br />
</p>
<p>
You are also given that $T(5, 5)=246$, $T(10, 10^{2}) \equiv 862820094 \pmod{1\,000\,000\,007}$ and  $T(10^2, 10) \equiv 782136797 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $T(5000, 10^{12}) \bmod 1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-1585-fb45cc9d0812
begin
    submit_answer(nothing; prob_num=654)
end

# ╔═╡ 1af82da0-84a3-11eb-02ab-cded73cb6836
html"""
<h2>Problem 655: Divisible Palindromes</h2>
<p>The numbers $545$, $5\,995$ and $15\,151$ are the three smallest <b>palindromes</b> divisible by $109$. There are nine palindromes less than $100\,000$ which are divisible by $109$.</p>

<p>How many palindromes less than $10^{32}$ are divisible by $10\,000\,019\,$ ?</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-3bf9-3dd257a92cba
begin
    submit_answer(nothing; prob_num=655)
end

# ╔═╡ 1af82da0-84a3-11eb-3eb6-b5cee783fb20
html"""
<h2>Problem 656: Palindromic sequences</h2>
<p>
Given an irrational number $\alpha$, let $S_\alpha(n)$ be the sequence $S_\alpha(n)=\lfloor {\alpha \cdot n} \rfloor - \lfloor {\alpha \cdot (n-1)} \rfloor$ for $n \ge 1$.<br /> 
($\lfloor ... \rfloor$ is the floor-function.)
</p>
<p>
It can be proven that for any irrational $\alpha$ there exist infinitely many values of $n$ such that the subsequence $ \{S_\alpha(1),S_\alpha(2)...S_\alpha(n) \} $ is palindromic.</p>
<p>
The first 20 values of $n$  that give a palindromic subsequence for $\alpha = \sqrt{31}$ are:
1, 3, 5, 7, 44, 81, 118, 273, 3158, 9201, 15244, 21287, 133765, 246243, 358721, 829920, 9600319, 27971037, 46341755, 64712473.</p>
<p>
Let $H_g(\alpha)$ be the sum of the first $g$ values of $n$  for which the corresponding subsequence is palindromic.<br />
So $H_{20}(\sqrt{31})=150243655$.
</p><p>
Let $T=\{2,3,5,6,7,8,10,...,1000\}$ be the set of positive integers, not exceeding 1000, excluding perfect squares.<br />
Calculate the sum of $H_{100}(\sqrt \beta)$ for  $\beta \in T$. Give the last 15 digits of your answer.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-3dd7-b1023925962c
begin
    submit_answer(nothing; prob_num=656)
end

# ╔═╡ 1af82da0-84a3-11eb-20cf-c3ffcd0b463d
html"""
<h2>Problem 657: Incomplete words</h2>
<p>In the context of <b>formal languages</b>, any finite sequence of letters of a given <b>alphabet</b> $\Sigma$ is called a <b>word</b> over $\Sigma$. We call a word <i>incomplete</i> if it does not contain every letter of $\Sigma$.</p>
<p>
For example, using the alphabet $\Sigma=\{ a, b, c\}$, '$ab$', '$abab$' and '$\,$' (the empty word) are incomplete words over $\Sigma$, while '$abac$' is a complete word over $\Sigma$.</p>
<p>
Given an alphabet $\Sigma$ of $\alpha$ letters, we define $I(\alpha,n)$ to be the number of incomplete words over $\Sigma$ with a length not exceeding $n$. <br />
For example, $I(3,0)=1$, $I(3,2)=13$ and $I(3,4)=79$.</p>
<p>
Find $I(10^7,10^{12})$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-2b44-37a99a232145
begin
    submit_answer(nothing; prob_num=657)
end

# ╔═╡ 1af82da0-84a3-11eb-2996-2986d303ae79
html"""
<h2>Problem 658: Incomplete words II</h2>
<p>In the context of <b>formal languages</b>, any finite sequence of letters of a given <b>alphabet</b> $\Sigma$ is called a <b>word</b> over $\Sigma$. We call a word <i>incomplete</i> if it does not contain every letter of $\Sigma$.</p>
<p>
For example, using the alphabet $\Sigma=\{ a, b, c\}$, '$ab$', '$abab$' and '$\,$' (the empty word) are incomplete words over $\Sigma$, while '$abac$' is a complete word over $\Sigma$.</p>
<p>
Given an alphabet $\Sigma$ of $\alpha$ letters, we define $I(\alpha,n)$ to be the number of incomplete words over $\Sigma$ with a length not exceeding $n$. <br />
For example, $I(3,0)=1$, $I(3,2)=13$ and $I(3,4)=79$.</p>
<p>
Let $\displaystyle S(k,n)=\sum_{\alpha=1}^k I(\alpha,n)$.<br />
For example, $S(4,4)=406$, $S(8,8)=27902680$ and $S (10,100) \equiv 983602076 \text { mod } 1\,000\,000\,007$.</p>
<p>
Find $S(10^7,10^{12})$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-04ea-af017a2c856e
begin
    submit_answer(nothing; prob_num=658)
end

# ╔═╡ 1af82da0-84a3-11eb-269d-9709ff10ca4d
html"""
<h2>Problem 659: Largest prime</h2>
<p>
Consider the sequence  $n^2+3$ with $n \ge 1$. <br /> 
If we write down the first terms of this sequence we get:<br />
$4, 7, 12, 19, 28, 39, 52, 67, 84, 103, 124, 147, 172, 199, 228, 259, 292, 327, 364,$... .<br />
We see that the terms for $n=6$ and $n=7$ ($39$ and $52$) are both divisible by $13$.<br />
In fact $13$ is the largest prime dividing any two successive terms of this sequence.
</p>
<p>
Let $P(k)$ be the largest prime  that divides any two successive terms of the sequence $n^2+k^2$.
</p>
<p>
Find the last 18 digits of $\displaystyle \sum_{k=1}^{10\,000\,000} P(k)$.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-3ba6-8fdb83cc76ec
begin
    submit_answer(nothing; prob_num=659)
end

# ╔═╡ 1af82da0-84a3-11eb-325a-8567bebb63c6
html"""
<h2>Problem 660: Pandigital Triangles</h2>
<p>We call an integer sided triangle <i>$n$-pandigital</i> if it contains one angle of 120 degrees and, when the sides of the triangle are written in base $n$, together they use all $n$ digits of that base exactly once.</p>

<p>
For example, the triangle (217, 248, 403) is 9-pandigital because it contains one angle of 120 degrees and the sides written in base 9 are $261_9, 305_9, 487_9$ using each of the 9 digits of that base once.</p>

<p>Find the sum of the largest sides of all n-pandigital triangles with $9 \le n \le 18$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-31c7-136f75455d4d
begin
    submit_answer(nothing; prob_num=660)
end

# ╔═╡ 1af82da0-84a3-11eb-1955-13012b9f7d08
html"""
<h2>Problem 661: A Long Chess Match</h2>
<p>Two friends $A$ and $B$ are great fans of Chess. They both enjoy playing the game, but after each game the player who lost the game would like to continue (to get back at the other player) and the player who won would prefer to stop (to finish on a high).</p>

<p>So they come up with a plan. After every game, they would toss a (biased) coin with probability $p$ of Heads (and hence probability $1-p$ of Tails). If they get Tails, they will continue with the next game. Otherwise they end the match. Also, after every game the players make a note of who is leading in the match.</p>

<p>Let $p_A$ denote the probability of $A$ winning a game and $p_B$ the probability of $B$ winning a game. Accordingly $1-p_A-p_B$ is the probability that a game ends in a draw. Let $\mathbb{E}_A(p_A,p_B,p)$ denote the expected number of times $A$ was leading in the match.<br />

For example, $\mathbb{E}_A(0.25,0.25,0.5)\approx 0.585786$ and $\mathbb{E}_A(0.47,0.48,0.001)\approx 377.471736$, both rounded to six places after the decimal point.</p>

<p>Let $\displaystyle H(n)=\sum_{k=3}^n \mathbb{E}_A\left(\frac 1 {\sqrt{k+3}},\frac 1 {\sqrt{k+3}}+\frac 1 {k^2},\frac 1 {k^3}\right)$<br />
For example $H(3) \approx 6.8345$, rounded to 4 digits after the decimal point.</p>

<p>Find $H(50)$, rounded to 4 digits after the decimal point.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-0ca4-c3bc0df91d57
begin
    submit_answer(nothing; prob_num=661)
end

# ╔═╡ 1af82da0-84a3-11eb-087d-37f53694071e
html"""
<h2>Problem 662: Fibonacci paths</h2>
<p>
Alice walks on a lattice grid. She can step from one lattice point $A (a,b)$ to another $B (a+x,b+y)$ providing distance $AB = \sqrt{x^2+y^2}$ is a Fibonacci number $\{1,2,3,5,8,13,\ldots\}$ and $x\ge 0,$  $y\ge 0$.
</p>
<p>

In the lattice grid below Alice can step from the blue point to any of the red points.<br />

</p>
<p align="center"><img src="project/images/p662_fibonacciwalks.png" alt="p662_fibonacciwalks.png" /></p>
<p>
Let $F(W,H)$ be the number of paths Alice can take from $(0,0)$ to $(W,H)$.<br />
You are given $F(3,4) = 278$ and $F(10,10) = 215846462$.
</p>
<p>
Find $F(10\,000,10\,000) \bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-1be7-ffa2542583e4
begin
    submit_answer(nothing; prob_num=662)
end

# ╔═╡ 1af82da0-84a3-11eb-37d5-fbbfa827bc23
html"""
<h2>Problem 663: Sums of subarrays</h2>
<p>Let $t_k$ be the <b>tribonacci numbers</b> defined as: <br />
$\quad t_0 = t_1 = 0$;<br />
$\quad t_2 = 1$; <br />
$\quad t_k = t_{k-1} + t_{k-2} + t_{k-3} \quad \text{   for   }  k \ge 3$.</p>

<p>For a given integer $n$, let $A_n$ be an array of length $n$ (indexed from 0 to $n-1$), that is initially filled with zeros.<br />
The array is changed iteratively by replacing $A_n[(t_{2 i-2} \text{ mod } n)]$ with $A_n[(t_{2 i-2} \text{ mod } n)]+2 (t_{2 i-1} \text{ mod } n)-n+1$ in each step $i$.<br /> 
After each step $i$, define $M_n(i)$ to be $\displaystyle \max\{\sum_{j=p}^q A_n[j]: 0\le p\le q&lt;n\}$, the maximal sum of any contiguous subarray of $A_n$. </p>

<p>The first 6 steps for $n=5$ are illustrated below:<br />
Initial state: $\, A_5=\{0,0,0,0,0\}$<br />
Step 1:   $\quad \Rightarrow A_5=\{-4,0,0,0,0\}$ , $M_5(1)=0$<br />
Step 2: $\quad \Rightarrow A_5=\{-4, -2, 0, 0, 0\}$ , $M_5(2)=0$<br />
Step 3: $\quad \Rightarrow A_5=\{-4, -2, 4, 0, 0\}$ , $M_5(3)=4$<br />
Step 4: $\quad \Rightarrow A_5=\{-4, -2, 6, 0, 0\}$ , $M_5(4)=6$<br />
Step 5: $\quad \Rightarrow A_5=\{-4, -2, 6, 0, 4\}$ , $M_5(5)=10$<br />
Step 6: $\quad \Rightarrow A_5=\{-4, 2, 6, 0, 4\}$ , $M_5(6)=12$<br />
</p>

<p>Let $\displaystyle S(n,l)=\sum_{i=1}^l M_n(i)$. Thus $S(5,6)=32$.<br />
You are given $S(5,100)=2416$, $S(14,100)=3881$ and $S(107,1000)=1618572$.</p>

<p>Find $S(10\,000\,003,10\,200\,000)-S(10\,000\,003,10\,000\,000)$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-0404-8d3d780ae1f9
begin
    submit_answer(nothing; prob_num=663)
end

# ╔═╡ 1af82da0-84a3-11eb-1719-abc258661a68
html"""
<h2>Problem 664: An infinite game</h2>
<p>Peter is playing a solitaire game on an infinite checkerboard, each square of which can hold an unlimited number of tokens.</p>

<p>Each move of the game consists of the following steps:</p>
<ol>
<li>Choose one token $T$ to move. This may be any token on the board, as long as not all of its four adjacent squares are empty.</li>
<li>Select and discard one token $D$ from a square adjacent to that of $T$.</li>
<li>Move $T$ to any one of its four adjacent squares (even if that square is already occupied).</li>
</ol>

<div class="center">
<img src="project/images/p664_moves.gif" alt="Allowed moves" />
</div>

<p>The board is marked with a line called the <i>dividing line</i>. Initially, every square to the left of the dividing line contains a token, and every square to the right of the dividing line is empty:</p>

<div class="center">
<img src="project/images/p664_starting_0.png" alt="Initial setup" />
</div>

<p>Peter's goal is to get a token as far as possible to the right in a finite number of moves. However, he quickly finds out that, even with his infinite supply of tokens, he cannot move a token more than four squares beyond the dividing line.</p>

<p>Peter then considers starting configurations with larger supplies of tokens: each square in the $d$th column to the left of the dividing line starts with $d^n$ tokens instead of 1. This is illustrated below for $n=1$:</p>

<div class="center">
<img src="project/images/p664_starting_1.png" alt="Initial setup n=1" />
</div>

<p>Let $F(n)$ be the maximum number of squares Peter can move a token beyond the dividing line. For example, $F(0)=4$.
You are also given that $F(1)=6$, $F(2)=9$, $F(3)=13$, $F(11)=58$ and $F(123)=1173$.</p>
<p>Find $F(1234567)$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-146f-2b448731f79d
begin
    submit_answer(nothing; prob_num=664)
end

# ╔═╡ 1af82da0-84a3-11eb-0a8b-9728ede52541
html"""
<h2>Problem 665: Proportionate Nim</h2>
<p>Two players play a game with two piles of stones, alternating turns.</p>
<p>On each turn, the corresponding player chooses a positive integer $n$ and does one of the following:</p>
<ul>
<li>removes $n$ stones from one pile;</li>
<li>removes $n$ stones from both piles; or</li>
<li>removes $n$ stones from one pile and $2n$ stones from the other pile.</li>
</ul>
<p>The player who removes the last stone wins.</p>

<p>We denote by $(n,m)$ the position in which the piles have $n$ and $m$ stones remaining. Note that $(n,m)$ is considered to be the same position as $(m,n)$.</p>

<p>Then, for example, if the position is $(2,6)$, the next player may reach the following positions:<br />
$(0,2)$, $(0,4)$, $(0,5)$, $(0,6)$, $(1,2)$, $(1,4)$, $(1,5)$, $(1,6)$, $(2,2)$, $(2,3)$, $(2,4)$, $(2,5)$</p>

<p>A position is a losing position if the player to move next cannot force a win. For example, $(1,3)$, $(2,6)$, $(4,5)$ are the first few losing positions.</p>

<p>Let $f(M)$ be the sum of $n+m$ for all losing positions $(n,m)$ with $n\le m$ and $n+m \le M$. For example, $f(10) = 21$, by considering the losing positions $(1,3)$, $(2,6)$, $(4,5)$.</p>
<p>You are given that $f(100) = 1164$ and $f(1000) = 117002$.</p>

<p>Find $f(10^7)$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-0d70-9591271491c3
begin
    submit_answer(nothing; prob_num=665)
end

# ╔═╡ 1af82da0-84a3-11eb-3cf7-9774bcd6708b
html"""
<h2>Problem 666: Polymorphic Bacteria</h2>
Members of a species of bacteria occur in two different types: $\alpha$ and $\beta$. Individual bacteria are capable of multiplying and mutating between the types according to the following rules:
<ul>
<li>Every minute, each individual will simultaneously undergo some kind of transformation.</li>
<li>Each individual $A$ of type $\alpha$ will, independently, do one of the following (at random with equal probability):
<ul>
<li>clone itself, resulting in a new bacterium of type $\alpha$ (alongside $A$ who remains)</li>
<li>split into 3 new bacteria of type $\beta$ (replacing $A$)</li>
</ul></li>

<li>Each individual $B$ of type $\beta$ will, independently, do one of the following (at random with equal probability):
<ul>
<li>spawn a new bacterium of type $\alpha$ (alongside $B$ who remains)</li>
<li>die</li>
</ul></li></ul>

<p>
If a population starts with a single bacterium of type $\alpha$, then it can be shown that there is a 0.07243802 probability that the population will eventually die out, and a 0.92756198 probability that the population will last forever. These probabilities are given rounded to 8 decimal places.
</p>
<p>
Now consider another species of bacteria, $S_{k,m}$ (where $k$ and $m$ are positive integers), which occurs in $k$ different types $\alpha_i$ for $0\le i&lt; k$. The rules governing this species' lifecycle involve the sequence $r_n$ defined by:
</p>
<ul style="list-style-type:none;">
<li>$r_0 = 306$</li>
<li>$r_{n+1} = r_n^2 \bmod 10\,007$</li>
</ul>
<p>
Every minute, for each $i$, each bacterium $A$ of type $\alpha_i$ will independently choose an integer $j$ uniformly at random in the range $0\le j&lt;m$. What it then does depends on $q = r_{im+j} \bmod 5$:</p>
<ul>
<li>If $q=0$, $A$ dies.</li>
<li>If $q=1$, $A$ clones itself, resulting in a new bacterium of type $\alpha_i$ (alongside $A$ who remains).</li>
<li>If $q=2$, $A$ mutates, changing into type $\alpha_{(2i) \bmod k}$.</li>
<li>If $q=3$, $A$ splits into 3 new bacteria of type $\alpha_{(i^2+1) \bmod k}$ (replacing $A$).</li>
<li>If $q=4$, $A$ spawns a new bacterium of type $\alpha_{(i+1) \bmod k}$ (alongside $A$ who remains).</li>
</ul>
<p>
In fact, our original species was none other than $S_{2,2}$, with $\alpha=\alpha_0$ and $\beta=\alpha_1$.
</p>
<p>
Let $P_{k,m}$ be the probability that a population of species $S_{k,m}$, starting with a single bacterium of type $\alpha_0$, will eventually die out. So $P_{2,2} = 0.07243802$. You are also given that $P_{4,3} = 0.18554021$ and $P_{10,5} = 0.53466253$, all rounded to 8 decimal places.
</p>
<p>
Find $P_{500,10}$, and give your answer rounded to 8 decimal places.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-3eea-2d0d93482e3a
begin
    submit_answer(nothing; prob_num=666)
end

# ╔═╡ 1af82da0-84a3-11eb-15d3-8f973ca61157
html"""
<h2>Problem 667: Moving Pentagon</h2>
<p>
After buying a <i>Gerver Sofa</i> from the <i>Moving Sofa Company</i>, Jack wants to buy a matching cocktail table from the same company. Most important for him is that the table can be pushed through his L-shaped corridor into the living room without having to be lifted from its table legs. <br />
Unfortunately, the simple square model offered to him is too small for him, so he asks for a bigger model.<br />
He is offered the new pentagonal model illustrated below:</p>
<img src="project/images/p667_MovingPentagon.png" alt="p667.png" />
<p>
Note, while the shape and size can be ordered individually, due to the production process,<b> all edges of the pentagonal table have to have the same length.</b></p>
<p>
Given optimal form and size, what is the biggest pentagonal cocktail table (in terms of area) that Jack can buy that still fits through his unit wide L-shaped corridor?</p>
<p>
Give your answer rounded to 10 digits after the decimal point (if Jack had choosen the square model instead the answer would have been 1.0000000000).</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-01f8-87e77ebcd5a4
begin
    submit_answer(nothing; prob_num=667)
end

# ╔═╡ 1af82da0-84a3-11eb-3590-7f741279c355
html"""
<h2>Problem 668: Square root smooth Numbers</h2>
<p>
A positive integer is called <i>square root smooth</i> if all of its prime factors are strictly less than its square root.<br />
Including the number $1$, there are $29$ square root smooth numbers not exceeding $100$.
</p>
<p>
How many square root smooth numbers are there not exceeding $10\,000\,000\,000$?</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-0491-f34cf763746a
begin
    submit_answer(nothing; prob_num=668)
end

# ╔═╡ 1af82da0-84a3-11eb-06de-bd5df335a716
html"""
<h2>Problem 669: The King's Banquet</h2>
<p>The Knights of the Order of Fibonacci are preparing a grand feast for their king. There are $n$ knights, and each knight is assigned a distinct number from 1 to $n$.</p>

<p>When the knights sit down at the roundtable for their feast, they follow a peculiar seating rule: two knights can only sit next to each other if their respective numbers sum to a Fibonacci number.</p>

<p>When the $n$ knights all try to sit down around a circular table with $n$ chairs, they are unable to find a suitable seating arrangement for any $n&gt;2$ despite their best efforts. Just when they are about to give up, they remember that the king will sit on his throne at the table as well.</p>

<p>Suppose there are $n=7$ knights and 7 chairs at the roundtable, in addition to the king’s throne. After some trial and error, they come up with the following seating arrangement (K represents the king):</p>

<div class="center">
<img src="project/images/p669_roundtable.png" alt="Roundtable" />
</div>

<p>Notice that the sums $4+1$, $1+7$, $7+6$, $6+2$, $2+3$, and $3+5$ are all Fibonacci numbers, as required. It should also be mentioned that the king always prefers an arrangement where the knight to the his left has a smaller number than the knight to his right. With this additional rule, the above arrangement is unique for $n=7$, and the knight sitting in the 3rd chair from the king’s left is knight number 7.</p>

<p>Later, several new knights are appointed to the Order, giving 34 knights and chairs in addition to the king's throne. The knights eventually determine that there is a unique seating arrangement for $n=34$ satisfying the above rules, and this time knight number 30 is sitting in the 3rd chair from the king's left.</p>

<p>Now suppose there are $n=99\,194\,853\,094\,755\,497$ knights and the same number of chairs at the roundtable (not including the king’s throne). After great trials and tribulations, they are finally able to find the unique seating arrangement for this value of $n$ that satisfies the above rules.</p>

<p>Find the number of the knight sitting in the $10\,000\,000\,000\,000\,000$th chair from the king’s left.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-11a9-0bc7e90b577b
begin
    submit_answer(nothing; prob_num=669)
end

# ╔═╡ 1af82da0-84a3-11eb-3be6-fd6fcfb1c04d
html"""
<h2>Problem 670: Colouring a Strip</h2>
<p>A certain type of tile comes in three different sizes - 1×1, 1×2, and 1×3 - and in four different colours: blue, green, red and yellow. There is an unlimited number of tiles available in each combination of size and colour.</p>

<p>These are used to tile a $2\times n$ rectangle, where $n$ is a positive integer, subject to the following conditions:</p>
<ul>
<li>The rectangle must be fully covered by non-overlapping tiles.</li>
<li>It is <i>not</i> permitted for four tiles to have their corners meeting at a single point.</li>
<li>Adjacent tiles must be of different colours.</li>
</ul>

<p>For example, the following is an acceptable tiling of a $2\times 12$ rectangle:</p>

<div class="center">
<img src="project/images/p670_strip_acceptable.png" alt="Acceptable colouring" />
</div>

<p>but the following is not an acceptable tiling, because it violates the "no four corners meeting at a point" rule:</p>

<div class="center">
<img src="project/images/p670_strip_unacceptable.png" alt="Unacceptable colouring" />
</div>

<p>Let $F(n)$ be the number of ways the $2\times n$ rectangle can be tiled subject to these rules. Where reflecting horizontally or vertically would give a different tiling, these tilings are to be counted separately.</p>

<p>For example, $F(2) = 120$, $F(5) = 45876$, and $F(100)\equiv 53275818 \pmod{1\,000\,004\,321}$.</p>
<p>Find $F(10^{16}) \bmod 1\,000\,004\,321$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-2f6b-3390c3ef9a00
begin
    submit_answer(nothing; prob_num=670)
end

# ╔═╡ 1af82da0-84a3-11eb-1c25-6deff0e09f26
html"""
<h2>Problem 671: Colouring a Loop</h2>
<p>A certain type of flexible tile comes in three different sizes - 1×1, 1×2, and 1×3 - and in $k$ different colours. There is an unlimited number of tiles available in each combination of size and colour.</p>

<p>These are used to tile a closed loop of width $2$ and length (circumference) $n$, where $n$ is a positive integer, subject to the following conditions:</p>
<ul>
<li>The loop must be fully covered by non-overlapping tiles.</li>
<li>It is <i>not</i> permitted for four tiles to have their corners meeting at a single point.</li>
<li>Adjacent tiles must be of different colours.</li>
</ul>

<p>For example, the following is an acceptable tiling of a $2\times 23$ loop with $k=4$ (blue, green, red and yellow):</p>

<div class="center">
<img src="project/images/p671_loop_acceptable.png" alt="Acceptable colouring" />
</div>

<p>but the following is not an acceptable tiling, because it violates the "no four corners meeting at a point" rule:</p>

<div class="center">
<img src="project/images/p671_loop_unacceptable.png" alt="Unacceptable colouring" />
</div>

<p>Let $F_k(n)$ be the number of ways the $2\times n$ loop can be tiled subject to these rules when $k$ colours are available. (Not all $k$ colours have to be used.) Where reflecting horizontally or vertically would give a different tiling, these tilings are to be counted separately.</p>

<p>For example, $F_4(3) = 104$, $F_5(7) = 3327300$, and $F_6(101)\equiv 75309980 \pmod{1\,000\,004\,321}$.</p>
<p>Find $F_{10}(10\,004\,003\,002\,001) \bmod 1\,000\,004\,321$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-0394-c118cd132555
begin
    submit_answer(nothing; prob_num=671)
end

# ╔═╡ 1af82da0-84a3-11eb-28bb-8d15c67452bf
html"""
<h2>Problem 672: One more one</h2>
<p>Consider the following process that can be applied recursively to any positive integer $n$:</p>
<ul>
<li>if $n = 1$ do nothing and the process stops,</li>
<li>if $n$ is divisible by 7 divide it by 7,</li>
<li>otherwise add 1.</li>
</ul>
<p>Define $g(n)$ to be the number of 1's that must be added before the process ends. For example:</p>
<center>$125\xrightarrow{\scriptsize{+1}} 126\xrightarrow{\scriptsize{\div 7}} 18\xrightarrow{\scriptsize{+1}} 19\xrightarrow{\scriptsize{+1}} 20\xrightarrow{\scriptsize{+1}} 21\xrightarrow{\scriptsize{\div 7}} 3\xrightarrow{\scriptsize{+1}} 4\xrightarrow{\scriptsize{+1}} 5\xrightarrow{\scriptsize{+1}} 6\xrightarrow{\scriptsize{+1}} 7\xrightarrow{\scriptsize{\div 7}} 1$.</center>
<p>Eight 1's are added so $g(125) = 8$. Similarly $g(1000) = 9$ and $g(10000) = 21$.</p>
<p>Define $S(N) = \sum_{n=1}^{N} g(n)$ and $H(K) = S\left(\frac{7^K-1}{11}\right)$. You are given $H(10) = 690409338$.</p>
<p>Find $H(10^9)$ modulo $1\,117\,117\,717$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-053c-bbb8e7df14f2
begin
    submit_answer(nothing; prob_num=672)
end

# ╔═╡ 1af82da0-84a3-11eb-3ff2-a9c85c561686
html"""
<h2>Problem 673: Beds and Desks</h2>
<p>At Euler University, each of the $n$ students (numbered from 1 to $n$) occupies a bed in the dormitory and uses a desk in the classroom.</p>

<p>Some of the beds are in private rooms which a student occupies alone, while the others are in double rooms occupied by two students as roommates. Similarly, each desk is either a single desk for the sole use of one student, or a twin desk at which two students sit together as desk partners.</p>

<p>We represent the bed and desk sharing arrangements each by a list of pairs of student numbers. For example, with $n=4$, if $(2,3)$ represents the bed pairing and $(1,3)(2,4)$ the desk pairing, then students 2 and 3 are roommates while 1 and 4 have single rooms, and students 1 and 3 are desk partners, as are students 2 and 4.</p>

<p>The new chancellor of the university decides to change the organisation of beds and desks: a permutation $\sigma$ of the numbers $1,2,\ldots,n$ will be chosen, and each student $k$ will be given both the bed and the desk formerly occupied by student number $\sigma(k)$.</p>

<p>The students agree to this change, under the conditions that:</p>
<ol>
<li>Any two students currently sharing a room will still be roommates.</li>
<li>Any two students currently sharing a desk will still be desk partners.</li>
</ol>

<p>In the example above, there are only two ways to satisfy these conditions: either take no action ($\sigma$ is the <b>identity permutation</b>), or reverse the order of the students.</p>

<p>With $n=6$, for the bed pairing $(1,2)(3,4)(5,6)$ and the desk pairing $(3,6)(4,5)$, there are 8 permutations which satisfy the conditions. One example is the mapping $(1, 2, 3, 4, 5, 6) \mapsto (1, 2, 5, 6, 3, 4)$.</p>

<p>With $n=36$, if we have bed pairing:<br />
$(2,13)(4,30)(5,27)(6,16)(10,18)(12,35)(14,19)(15,20)(17,26)(21,32)(22,33)(24,34)(25,28)$<br />
and desk pairing<br />
$(1,35)(2,22)(3,36)(4,28)(5,25)(7,18)(9,23)(13,19)(14,33)(15,34)(20,24)(26,29)(27,30)$<br />
then among the $36!$ possible permutations (including the identity permutation), 663552 of them satisfy the conditions stipulated by the students.</p>

<p>The downloadable text files <a href="project/resources/p673_beds.txt">beds.txt</a> and <a href="project/resources/p673_desks.txt">desks.txt</a> contain pairings for $n=500$. Each pairing is written on its own line, with the student numbers of the two roommates (or desk partners) separated with a comma. For example, the desk pairing in the $n=4$ example above would be represented in this file format as:</p>
<pre>
1,3
2,4
</pre>
<p>With these pairings, find the number of permutations that satisfy the students' conditions. Give your answer modulo $999\,999\,937$.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-2c1b-cb8f537e9d1a
begin
    submit_answer(nothing; prob_num=673)
end

# ╔═╡ 1af82da0-84a3-11eb-34a2-cf00e8ea6e09
html"""
<h2>Problem 674: Solving $\mathcal{I}$-equations</h2>
<p>We define the $\mathcal{I}$ operator as the function
\[\mathcal{I}(x,y) = (1+x+y)^2+y-x\]
and $\mathcal{I}$-expressions as arithmetic expressions built only from variables names and applications of $\mathcal{I}$. A variable name may consist of one or more letters. For example, the three expressions $x$, $\mathcal{I}(x,y)$, and $\mathcal{I}(\mathcal{I}(x,ab),x)$ are all $\mathcal{I}$-expressions.</p>

<p>For two $\mathcal{I}$-expressions $e_1$ and $e_2$ such that the equation $e_1=e_2$ has a solution in non-negative integers, we define the least simultaneous value of $e_1$ and $e_2$ to be the minimum value taken by $e_1$ and $e_2$ on such a solution. If the equation $e_1=e_2$ has no solution in non-negative integers, we define the least simultaneous value of $e_1$ and $e_2$ to be $0$. For example, consider the following three $\mathcal{I}$-expressions:
\[\begin{array}{l}A = \mathcal{I}(x,\mathcal{I}(z,t))\\
B = \mathcal{I}(\mathcal{I}(y,z),y)\\
C = \mathcal{I}(\mathcal{I}(x,z),y)\end{array}\]
The least simultaneous value of $A$ and $B$ is $23$, attained for $x=3,y=1,z=t=0$. On the other hand, $A=C$ has no solutions in non-negative integers, so the least simultaneous value of $A$ and $C$ is $0$. The total sum of least simultaneous pairs made of $\mathcal{I}$-expressions from $\{A,B,C\}$ is $26$.</p>

<p>Find the sum of least simultaneous values of all $\mathcal{I}$-expressions pairs made of distinct expressions from file <a href="project/resources/p674_i_expressions.txt">I-expressions.txt</a> (pairs $(e_1,e_2)$ and $(e_2,e_1)$ are considered to be identical). Give the last nine digits of the result as the answer.</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-19a9-4967d8e62489
begin
    submit_answer(nothing; prob_num=674)
end

# ╔═╡ 1af82da0-84a3-11eb-0c21-9fc317d2784b
html"""
<h2>Problem 675: $2^{\omega(n)}$</h2>
<p>
Let $\omega(n)$ denote the number of distinct prime divisors of a positive integer $n$.<br />
So  $\omega(1) = 0$ and  $\omega(360) = \omega(2^{3} \times 3^{2} \times 5) = 3$.
</p>
<p>
Let $S(n)$ be $ \Sigma_{d | n} 2^{\omega(d)}  $.
<br />
E.g. $S(6) = 2^{\omega(1)}+2^{\omega(2)}+2^{\omega(3)}+2^{\omega(6)} = 2^0+2^1+2^1+2^2 = 9$.
</p>
<p>
Let $F(n)=\Sigma_{i=2}^n S(i!)$.
$F(10)=4821.$
</p>
<p>
Find $F(10\,000\,000)$. Give your answer modulo  $1\,000\,000\,087$.
</p>
"""

# ╔═╡ 1af82da0-84a3-11eb-3626-f1fb1d0062f8
begin
    submit_answer(nothing; prob_num=675)
end

# ╔═╡ Cell order:
# ╠═1af82da0-84a3-11eb-2922-c77f5a0f843a
# ╟─1af82da0-84a3-11eb-1024-0f0036b54aeb
# ╠═1af82da0-84a3-11eb-1498-35bb536c2ce0
# ╟─1af82da0-84a3-11eb-2bb6-eb5d6e6175b8
# ╠═1af82da0-84a3-11eb-1734-47205c07326b
# ╟─1af82da0-84a3-11eb-3ae2-8d4bba3fdd9b
# ╠═1af82da0-84a3-11eb-27ce-75da9e9b1e66
# ╟─1af82da0-84a3-11eb-3495-dffc8024fc33
# ╠═1af82da0-84a3-11eb-1585-fb45cc9d0812
# ╟─1af82da0-84a3-11eb-02ab-cded73cb6836
# ╠═1af82da0-84a3-11eb-3bf9-3dd257a92cba
# ╟─1af82da0-84a3-11eb-3eb6-b5cee783fb20
# ╠═1af82da0-84a3-11eb-3dd7-b1023925962c
# ╟─1af82da0-84a3-11eb-20cf-c3ffcd0b463d
# ╠═1af82da0-84a3-11eb-2b44-37a99a232145
# ╟─1af82da0-84a3-11eb-2996-2986d303ae79
# ╠═1af82da0-84a3-11eb-04ea-af017a2c856e
# ╟─1af82da0-84a3-11eb-269d-9709ff10ca4d
# ╠═1af82da0-84a3-11eb-3ba6-8fdb83cc76ec
# ╟─1af82da0-84a3-11eb-325a-8567bebb63c6
# ╠═1af82da0-84a3-11eb-31c7-136f75455d4d
# ╟─1af82da0-84a3-11eb-1955-13012b9f7d08
# ╠═1af82da0-84a3-11eb-0ca4-c3bc0df91d57
# ╟─1af82da0-84a3-11eb-087d-37f53694071e
# ╠═1af82da0-84a3-11eb-1be7-ffa2542583e4
# ╟─1af82da0-84a3-11eb-37d5-fbbfa827bc23
# ╠═1af82da0-84a3-11eb-0404-8d3d780ae1f9
# ╟─1af82da0-84a3-11eb-1719-abc258661a68
# ╠═1af82da0-84a3-11eb-146f-2b448731f79d
# ╟─1af82da0-84a3-11eb-0a8b-9728ede52541
# ╠═1af82da0-84a3-11eb-0d70-9591271491c3
# ╟─1af82da0-84a3-11eb-3cf7-9774bcd6708b
# ╠═1af82da0-84a3-11eb-3eea-2d0d93482e3a
# ╟─1af82da0-84a3-11eb-15d3-8f973ca61157
# ╠═1af82da0-84a3-11eb-01f8-87e77ebcd5a4
# ╟─1af82da0-84a3-11eb-3590-7f741279c355
# ╠═1af82da0-84a3-11eb-0491-f34cf763746a
# ╟─1af82da0-84a3-11eb-06de-bd5df335a716
# ╠═1af82da0-84a3-11eb-11a9-0bc7e90b577b
# ╟─1af82da0-84a3-11eb-3be6-fd6fcfb1c04d
# ╠═1af82da0-84a3-11eb-2f6b-3390c3ef9a00
# ╟─1af82da0-84a3-11eb-1c25-6deff0e09f26
# ╠═1af82da0-84a3-11eb-0394-c118cd132555
# ╟─1af82da0-84a3-11eb-28bb-8d15c67452bf
# ╠═1af82da0-84a3-11eb-053c-bbb8e7df14f2
# ╟─1af82da0-84a3-11eb-3ff2-a9c85c561686
# ╠═1af82da0-84a3-11eb-2c1b-cb8f537e9d1a
# ╟─1af82da0-84a3-11eb-34a2-cf00e8ea6e09
# ╠═1af82da0-84a3-11eb-19a9-4967d8e62489
# ╟─1af82da0-84a3-11eb-0c21-9fc317d2784b
# ╠═1af82da0-84a3-11eb-3626-f1fb1d0062f8