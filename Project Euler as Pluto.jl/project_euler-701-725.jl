### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44b52f30-8435-11eb-2b3b-e383365b0ff6
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44b52f30-8435-11eb-2810-6fd9b901ffaa
html"""
<h2>Problem 701: Random connected area</h2>
<p>
Consider a rectangle made up of $W \times H$ square cells each with area 1.<br /> Each cell is independently coloured black with probability 0.5 otherwise white. Black cells sharing an edge are assumed to be connected.<br />Consider the maximum area of connected cells.</p>

<p>
Define $E(W,H)$ to be the expected value of this maximum area.
For example, $E(2,2)=1.875$, as illustrated below.
</p>
<div class="center">
<img src="project/images/p701_randcon.png" alt="3 random connected area" />
</div>
<p>
You are also given $E(4, 4) = 5.76487732$, rounded to 8 decimal places.
</p>
<p>
Find $E(7, 7)$, rounded to 8 decimal places.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-00f9-cdfb85e7cec1
begin
    submit_answer(nothing; prob_num=701)
end

# ╔═╡ 44b52f30-8435-11eb-0f3e-e31e9d924c8c
html"""
<h2>Problem 702: Jumping Flea</h2>
<p>A regular hexagon table of side length $N$ is divided into equilateral triangles of side length $1$. The picture below is an illustration of the case $N = 3$.</p>

<div class="center">
<img src="project/images/p702_jumping_flea.png" alt="hexagonal table" />
</div>

<p>An flea of negligible size is jumping on this table. The flea starts at the centre of the table. Thereafter, at each step, it chooses one of the six corners of the table, and jumps to the mid-point between its current position and the chosen corner.</p>

<p>For every triangle $T$, we denote by $J(T)$ the minimum number of jumps required for the flea to reach the interior of $T$. Landing on an edge or vertex of $T$ is not sufficient.</p>

<p>For example, $J(T) = 3$ for the triangle marked with a star in the picture: by jumping from the centre half way towards F, then towards C, then towards E.</p>

<p>Let $S(N)$ be the sum of $J(T)$ for all the upper-pointing triangles $T$ in the upper half of the table. For the case $N = 3$, these are the triangles painted black in the above picture.</p>

<p>You are given that $S(3) = 42$, $S(5) = 126$, $S(123) = 167178$, and $S(12345) = 3185041956$.</p>

<p>Find $S(123456789)$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-2629-995477173d72
begin
    submit_answer(nothing; prob_num=702)
end

# ╔═╡ 44b52f30-8435-11eb-048e-2d6c197014dd
html"""
<h2>Problem 703: Circular Logic II</h2>
<p>Given an integer $n$, $n \geq 3$, let $B=\{\mathrm{false},\mathrm{true}\}$ and let $B^n$ be the set of sequences of $n$ values from $B$. The function $f$ from $B^n$ to $B^n$ is defined by $f(b_1 \dots b_n) = c_1 \dots c_n$ where:</p>
<ul>
<li>$c_i = b_{i+1}$ for $1 \leq i &lt; n$.</li>
<li>$c_n = b_1 \;\mathrm{AND}\; (b_2 \;\mathrm{XOR}\; b_3)$, where $\mathrm{AND}$ and $\mathrm{XOR}$ are the logical $\mathrm{AND}$ and exclusive $\mathrm{OR}$ operations.</li>
</ul>

<p>Let $S(n)$ be the number of functions $T$ from $B^n$ to $B$ such that for all $x$ in $B^n$, $T(x) ~\mathrm{AND}~ T(f(x)) = \mathrm{false}$.
You are given that $S(3) = 35$ and $S(4) = 2118$.</p>

<p>Find $S(20)$. Give your answer modulo $1\,001\,001\,011$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-1a49-ad7eb37b739e
begin
    submit_answer(nothing; prob_num=703)
end

# ╔═╡ 44b52f30-8435-11eb-2b0f-4fc9e688324b
html"""
<h2>Problem 704: Factors of Two in Binomial Coefficients</h2>
<p>
Define $g(n, m)$ to be the largest integer $k$ such that $2^k$ divides $\binom{n}m$. 
For example, $\binom{12}5 = 792 = 2^3 \cdot 3^2 \cdot 11$, hence $g(12, 5) = 3$. 
Then define $F(n) = \max \{ g(n, m) : 0 \le m \le n \}$. $F(10) = 3$ and $F(100) = 6$.
</p>
<p>
Let $S(N)$ = $\displaystyle\sum_{n=1}^N{F(n)}$. You are given that $S(100) = 389$ and $S(10^7) = 203222840$.
</p>
<p>
Find $S(10^{16})$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-2791-1b51cc7d1971
begin
    submit_answer(nothing; prob_num=704)
end

# ╔═╡ 44b52f30-8435-11eb-0066-7b03f944b8e4
html"""
<h2>Problem 705: Total Inversion Count of Divided Sequences</h2>
<p>
The <i>inversion count</i> of a sequence of digits is the smallest number of adjacent pairs that must be swapped to sort the sequence.<br />
For example, 34214 has inversion count of 5:
$34214 \to 32414 \to 23414 \to 23144 \to 21344 \to12344$.
</p>
<p>
If each digit of a sequence is replaced by one of its divisors a <i>divided sequence</i> is obtained. <br />
For example, the sequence 332 has 8 divided sequences: $\{332,331,312,311,132,131,112,111\}$.
</p>
<p>
Define $G(N)$ to be the concatenation of all primes less than $N$, ignoring any zero digit. <br />
For example, $G(20) = 235711131719$.
</p>
<p>
Define $F(N)$ to be the sum of the inversion count for all possible divided sequences from the master sequence $G(N)$. <br />
You are given $F(20) = 3312$ and $F(50) = 338079744$.
</p>
<p>
Find $F(10^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-1381-85f68644fadf
begin
    submit_answer(nothing; prob_num=705)
end

# ╔═╡ 44b52f30-8435-11eb-2687-5b0282359717
html"""
<h2>Problem 706: 3-Like Numbers</h2>
<p>
For a positive integer $n$, define $f(n)$ to be the number of non-empty substrings of $n$ that are divisible by 3. For example, the string "2573" has 10 non-empty substrings, three of which represent numbers that are divisible by 3, namely 57, 573 and 3. So $f(2573) = 3$.
</p>
<p>
If $f(n)$ is divisible by 3 then we say that $n$ is <i>3-like</i>.
</p>
<p>
Define $F(d)$ to be how many $d$ digit numbers are 3-like. For example, $F(2) = 30$ and $F(6) = 290898$.
</p>
<p>
Find $F(10^5)$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-0fb3-c5071745033b
begin
    submit_answer(nothing; prob_num=706)
end

# ╔═╡ 44b52f30-8435-11eb-02f8-5b52f82c3bef
html"""
<h2>Problem 707: Lights Out</h2>
<p>
Consider a $w\times h$ grid. A cell is either ON or OFF. When a cell is selected, that cell and all cells connected to that cell by an edge are toggled on-off, off-on. See the diagram for the 3 cases of selecting a corner cell, an edge cell or central cell in a grid that has all cells on (white).
</p>
<div class="center">
<img src="project/images/p707_LightsOutPic.jpg" alt="LightsOut" />
</div>
<p>The goal is to get every cell to be off simultaneously. This is not possible for all starting states. A state is solvable if, by a process of selecting cells, the goal can be achieved.
</p>
<p>
Let $F(w,h)$ be the number of solvable states for a $w\times h$ grid. 
You are given $F(1,2)=2$, $F(3,3) = 512$, $F(4,4) = 4096$ and $F(7,11) \equiv 270016253 \pmod{1\,000\,000\,007}$.
</p>
<p>
Let $f_1=f_2 = 1$ and $f_n=f_{n-1}+f_{n-2}, n \ge 3$ be the Fibonacci sequence and define 
$$ S(w,n) = \sum_{k=1}^n F(w,f_k)$$
You are given $S(3,3) = 32$, $S(4,5) = 1052960$ and $S(5,7) \equiv 346547294 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $S(199,199)$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-03cc-6b30e1ddcac5
begin
    submit_answer(nothing; prob_num=707)
end

# ╔═╡ 44b52f30-8435-11eb-15f1-4b83dcdc58b5
html"""
<h2>Problem 708: Twos are all you need</h2>
<p>A positive integer, $n$, is factorised into prime factors. We define $f(n)$ to be the product when each prime factor is replaced with $2$. In addition we define $f(1)=1$.</p>

<p>For example, $90 = 2\times 3\times 3\times 5$, then replacing the primes, $2\times 2\times 2\times 2 = 16$, hence $f(90) = 16$.</p> 
 
<p>Let $\displaystyle S(N)=\sum_{n=1}^{N} f(n)$. You are given $S(10^8)=9613563919$.</p> 

<p>Find $S(10^{14})$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-1816-cf4614afa6b9
begin
    submit_answer(nothing; prob_num=708)
end

# ╔═╡ 44b52f30-8435-11eb-0d71-ef5d3fa1c850
html"""
<h2>Problem 709: Even Stevens</h2>
<p>Every day for the past $n$ days Even Stevens brings home his groceries in a plastic bag. He stores these plastic bags in a cupboard. He either puts the plastic bag into the cupboard with the rest, or else he takes an <b>even</b> number of the existing bags (which may either be empty or previously filled with other bags themselves) and places these into the current bag.</p>

<p>After 4 days there are 5 possible packings and if the bags are numbered 1 (oldest), 2, 3, 4, they are:</p>
<ul>
<li>Four empty bags,</li>
<li>1 and 2 inside 3, 4 empty,</li>
<li>1 and 3 inside 4, 2 empty,</li>
<li>1 and 2 inside 4, 3 empty,</li>
<li>2 and 3 inside 4, 1 empty.</li>
</ul>
<p>Note that 1, 2, 3 inside 4 is invalid because every bag must contain an even number of bags.</p>

<p>Define $f(n)$ to be the number of possible packings of $n$ bags. Hence $f(4)=5$. You are also given $f(8)=1\,385$.</p>

<p>Find $f(24\,680)$ giving your answer modulo $1\,020\,202\,009$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3762-9b59c1794b1e
begin
    submit_answer(nothing; prob_num=709)
end

# ╔═╡ 44b52f30-8435-11eb-3549-bd6c471fab4d
html"""
<h2>Problem 710: One Million Members</h2>
<h4>On Sunday 5 April 2020 the Project Euler membership first exceeded one million members. We would like to present this problem to celebrate that milestone. Thank you to everyone for being a part of Project Euler.</h4>

<p>The number 6 can be written as a palindromic sum in exactly eight different ways:</p>
$$(1, 1, 1, 1, 1, 1), (1, 1, 2, 1, 1), (1, 2, 2, 1), (1, 4, 1), (2, 1, 1, 2), (2, 2, 2), (3, 3), (6)$$

<p>We shall define a <dfn>twopal</dfn> to be a palindromic tuple having at least one element with a value of 2. It should also be noted that elements are not restricted to single digits. For example, $(3, 2, 13, 6, 13, 2, 3)$ is a valid twopal.</p>

<p>If we let $t(n)$ be the number of twopals whose elements sum to $n$, then it can be seen that $t(6) = 4$:</p>
$$(1, 1, 2, 1, 1), (1, 2, 2, 1), (2, 1, 1, 2), (2, 2, 2)$$

<p>Similarly, $t(20) = 824$.</p>

<p>In searching for the answer to the ultimate question of life, the universe, and everything, it can be verified that $t(42) = 1999923$, which happens to be the first value of $t(n)$ that exceeds one million.</p>

<p>However, your challenge to the "ultimatest" question of life, the universe, and everything is to find the least value of $n \gt 42$ such that $t(n)$ is divisible by one million.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3214-139f220a7458
begin
    submit_answer(nothing; prob_num=710)
end

# ╔═╡ 44b52f30-8435-11eb-366a-1f6d97b94d5d
html"""
<h2>Problem 711: Binary Blackboard</h2>
<p>Oscar and Eric play the following game. First, they agree on a positive integer $n$, and they begin by writing its binary representation on a blackboard. They then take turns, with Oscar going first, to write a number on the blackboard in binary representation, such that the sum of all written numbers does not exceed $2n$.</p>

<p>The game ends when there are no valid moves left. Oscar wins if the number of $1$s on the blackboard is odd, and Eric wins if it is even.</p>

<p>Let $S(N)$ be the sum of all $n \le 2^N$ for which Eric can guarantee winning, assuming optimal play.</p>

<p>For example, the first few values of $n$ for which Eric can guarantee winning are $1,3,4,7,15,16$. Hence $S(4)=46$.<br />
You are also given that $S(12) = 54532$ and $S(1234) \equiv 690421393 \pmod{1\,000\,000\,007}$.</p>

<p>Find $S(12\,345\,678)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-061a-8d89b2c819fb
begin
    submit_answer(nothing; prob_num=711)
end

# ╔═╡ 44b52f30-8435-11eb-170f-2702f26e974a
html"""
<h2>Problem 712: Exponent Difference</h2>
<p>
For any integer $n&gt;0$ and prime number $p,$ define $\nu_p(n)$ as the greatest integer $r$ such that $p^r$ divides $n$. 
</p>
<p>
Define $$D(n, m)  = \sum_{p \text{ prime}} \left| \nu_p(n) - \nu_p(m)\right|.$$ For example, $D(14,24) = 4$.
</p>
<p>
Furthermore, define $$S(N) = \sum_{1 \le n, m \le N} D(n, m).$$ You are given $S(10) = 210$ and $S(10^2) = 37018$.
</p>
<p>
Find $S(10^{12})$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3cfa-f1f0dd971ac3
begin
    submit_answer(nothing; prob_num=712)
end

# ╔═╡ 44b52f30-8435-11eb-192d-83d797f91546
html"""
<h2>Problem 713: Turán's water heating system</h2>
<p>
Turan has the electrical water heating system outside his house in a shed. The electrical system uses two fuses in series, one in the house and one in the shed. (Nowadays old fashioned fuses are often replaced with reusable mini circuit breakers, but Turan's system still uses old fashioned fuses.)
For the heating system to work both fuses must work.
</p>
<p>
Turan has $N$ fuses. He knows that $m$ of them are working and the rest are blown. However, he doesn't know which ones are blown. So he tries different combinations until the heating system turns on.<br />
We denote by $T(N,m)$ the smallest number of tries required to <i>ensure</i> the heating system turns on.<br />
$T(3,2)=3$ and $T(8,4)=7$.
</p>
<p>
Let $L(N)$ be the sum of all $T(N, m)$ for $2 \leq m \leq N$.<br />
$L(10^3)=3281346$
</p>
<p>
Find $L(10^7)$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3b31-0d9642a3c15a
begin
    submit_answer(nothing; prob_num=713)
end

# ╔═╡ 44b52f30-8435-11eb-3288-db41a4b3f4e7
html"""
<h2>Problem 714: Duodigits</h2>
<p>We call a natural number a <i>duodigit</i> if its decimal representation uses no more than two different digits.
For example, $12$, $110$ and $33333$ are duodigits, while $102$ is not.<br />
It can be shown that every natural number has duodigit multiples. Let $d(n)$ be the smallest (positive) multiple of the number $n$ that happens to be a duodigit. For example, $d(12)=12$, $d(102)=1122$, $d(103)=515$, $d(290)=11011010$ and $d(317)=211122$.</p>
<p>
Let $\displaystyle D(k)=\sum_{n=1}^k d(n)$. You are given $D(110)=11\,047$, $D(150)=53\,312$ and $D(500)=29\,570\,988$.</p>
<p>
Find $D(50\,000)$. Give your answer in scientific notation rounded to 13 significant digits (12 after the decimal point). If, for example, we had asked for $D(500)$ instead, the answer format would have been 2.957098800000e7.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-14b1-63346b7640cc
begin
    submit_answer(nothing; prob_num=714)
end

# ╔═╡ 44b52f30-8435-11eb-0059-3f35562a3a7e
html"""
<h2>Problem 715: Sextuplet Norms</h2>
<p>Let $f(n)$ be the number of $6$-tuples $(x_1,x_2,x_3,x_4,x_5,x_6)$ such that:</p>
<ul>
<li>All $x_i$ are integers with $0 \leq x_i &lt; n$</li>
<li>$\gcd(x_1^2+x_2^2+x_3^2+x_4^2+x_5^2+x_6^2,\ n^2)=1$</li>
</ul>

<p>Let $\displaystyle G(n)=\displaystyle\sum_{k=1}^n \frac{f(k)}{k^2\varphi(k)}$<br />
where $\varphi(n)$ is Euler's totient function.</p>

<p>For example, $G(10)=3053$ and $G(10^5) \equiv 157612967 \pmod{1\,000\,000\,007}$.</p>

<p>Find $G(10^{12})\bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-0e7c-ef7f159b2d31
begin
    submit_answer(nothing; prob_num=715)
end

# ╔═╡ 44b52f30-8435-11eb-2e8c-c334626641ad
html"""
<h2>Problem 716: Grid Graphs</h2>
<p>
Consider a directed graph made from an orthogonal lattice of $H\times W$ nodes. 
The edges are the horizontal and vertical connections between adjacent nodes.
$W$ vertical directed lines are drawn and all the edges on these lines inherit that direction. Similarly, $H$ horizontal directed lines are drawn and all the edges on these lines inherit that direction.
</p>
<p>
Two nodes, $A$ and $B$ in a directed graph, are <b>strongly connected</b> if there is both a path, along the directed edges, from $A$ to $B$ as well as from $B$ to $A$. Note that every node is strongly connected to itself.
</p>
<p>
A <b>strongly connected component</b> in a directed graph is a non-empty set $M$ of nodes satisfying the following two properties:
</p>
<ul>
<li>All nodes in $M$ are strongly connected to each other.</li>
<li>$M$ is maximal, in the sense that no node in $M$ is strongly connected to any node outside of $M$.</li>
</ul>
<p>
There are $2^H\times 2^W$ ways of drawing the directed lines. Each way gives a directed graph $\mathcal{G}$. We define $S(\mathcal{G})$ to be the number of strongly connected components in $\mathcal{G}$.
</p>
<p>
The illustration below shows a directed graph with $H=3$ and $W=4$ that consists of four different strongly connected components (indicated by the different colours).
</p>
<div class="center">
<img src="project/images/p716_gridgraphics.jpg" class="dark_img" alt="" /></div>
<p>
Define $C(H,W)$ to be the sum of $S(\mathcal{G})$ for all possible graphs on a grid of $H\times W$. You are given $C(3,3) = 408$, $C(3,6) = 4696$ and $C(10,20) \equiv 988971143 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $C(10\,000,20\,000)$ giving your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-0ce9-dbaa79ebaf43
begin
    submit_answer(nothing; prob_num=716)
end

# ╔═╡ 44b52f30-8435-11eb-1dd5-1b4342c10b7d
html"""
<h2>Problem 717: Summation of a Modular Formula</h2>
<p>For an odd prime $p$, define $f(p) = \left\lfloor\frac{2^{(2^p)}}{p}\right\rfloor\bmod{2^p}$<br />
For example, when $p=3$, $\lfloor 2^8/3\rfloor = 85 \equiv 5 \pmod 8$ and so $f(3) = 5$.</p> 

<p>Further define $g(p) = f(p)\bmod p$. You are given $g(31) = 17$.</p>

<p>Now define $G(N)$ to be the summation of $g(p)$ for all odd primes less than $N$.<br />
You are given $G(100) = 474$ and $G(10^4) = 2819236$.</p>

<p>Find $G(10^7)$</p>
"""

# ╔═╡ 44b52f30-8435-11eb-02c0-7f707b083fd7
begin
    submit_answer(nothing; prob_num=717)
end

# ╔═╡ 44b52f30-8435-11eb-3d45-071539d630af
html"""
<h2>Problem 718: Unreachable Numbers</h2>
<p>Consider the equation
$17^pa+19^pb+23^pc = n$ where $a$, $b$, $c$ and $p$ are positive integers, i.e.
$a,b,c,p&gt;0$.</p>

<p>For a given $p$ there are some values of $n &gt; 0$ for which the equation cannot be solved. We call these <i>unreachable values</i>.</p>

<p>Define $G(p)$ to be the sum of all unreachable values of $n$ for the given value of $p$. For example $G(1) = 8253$ and $G(2)= 60258000$.</p>

<p>Find $G(6)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-127c-19bbded503d0
begin
    submit_answer(nothing; prob_num=718)
end

# ╔═╡ 44b52f30-8435-11eb-1cf0-ebacdf570865
html"""
<h2>Problem 719: Number Splitting</h2>
<p>
We define an $S$-number to be a natural number, $n$, that is a perfect square and its square root can be obtained by splitting the decimal representation of $n$ into 2 or more numbers then adding the numbers.
</p>
<p>
For example, 81 is an $S$-number because $\sqrt{81} = 8+1$.<br />
6724 is an $S$-number: $\sqrt{6724} = 6+72+4$. <br />
8281 is an $S$-number: $\sqrt{8281} = 8+2+81 = 82+8+1$.<br />
9801 is an $S$-number: $\sqrt{9801}=98+0+1$.
</p>
<p>
Further we define $T(N)$ to be the sum of all $S$ numbers $n\le N$. You are given $T(10^4) = 41333$.
</p>
<p>
Find $T(10^{12})$
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-1c7a-df602d1c95a4
begin
    submit_answer(nothing; prob_num=719)
end

# ╔═╡ 44b52f30-8435-11eb-0872-476486eb8411
html"""
<h2>Problem 720: Unpredictable Permutations</h2>
<p>Consider all permutations of $\{1, 2, \ldots N\}$, listed in lexicographic order.<br />For example, for $N=4$, the list starts as follows:</p>
<div>
$$\displaylines{
(1, 2, 3, 4) \\
(1, 2, 4, 3) \\
(1, 3, 2, 4) \\
(1, 3, 4, 2) \\
(1, 4, 2, 3) \\
(1, 4, 3, 2) \\
(2, 1, 3, 4) \\
\vdots
}$$
</div>
<p>
Let us call a permutation $P$ <i>unpredictable</i> if there is no choice of three indices $i \lt j \lt k$ such that $P(i)$, $P(j)$ and $P(k)$ constitute an arithmetic progression.<br /> For example, $P=(3, 4, 2, 1)$ is <i>not</i> unpredictable because $P(1), P(3), P(4)$ is an arithmetic progression.
</p>
<p>
Let $S(N)$ be the position within the list of the first unpredictable permutation.
</p>

<p>
For example, given $N = 4$, the first unpredictable permutation is $(1, 3, 2, 4)$ so $S(4) = 3$.<br />
You are also given that $S(8) = 2295$ and $S(32) \equiv 641839205 \pmod{1\,000\,000\,007}$.
</p>
<p>
Find $S(2^{25})$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3fea-5fa3aab67302
begin
    submit_answer(nothing; prob_num=720)
end

# ╔═╡ 44b52f30-8435-11eb-068c-2b6e59a1f2e8
html"""
<h2>Problem 721: High powers of irrational numbers</h2>
<p>
Given is the function $f(a,n)=\lfloor{(\lceil{\sqrt{a}\:\rceil}+\sqrt{a}\:)^n}\rfloor$.<br />
$\lfloor{.}\rfloor$ denotes the floor function and $\lceil{.}\rceil$ denotes the ceiling function.<br />
$f(5,2)=27$ and $f(5,5)=3935$.
</p>
<p>
$G(n) = \displaystyle \sum_{a=1}^n f(a, a^2).$<br />
$G(1000) \text{ mod  } 999\,999\,937=163861845. $<br />
Find $G(5\,000\,000).$ Give your answer modulo $999\,999\,937$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-1dda-b3d36ee74326
begin
    submit_answer(nothing; prob_num=721)
end

# ╔═╡ 44b52f30-8435-11eb-34fa-5f7613be9df7
html"""
<h2>Problem 722: Slowly converging series</h2>
<p>For a non-negative integer $k$, define
\[
E_k(q) = \sum\limits_{n = 1}^\infty \sigma_k(n)q^n
\]
where $\sigma_k(n) = \sum_{d \mid n} d^k$ is the sum of the $k$-th powers of the positive divisors of $n$.</p>

<p>It can be shown that, for every $k$, the series $E_k(q)$ converges for any $0 &lt; q &lt; 1$.</p>

<p>For example,<br />
$E_1(1 - \frac{1}{2^4}) = \mathrm{3.872155809243e2}$<br />
$E_3(1 - \frac{1}{2^8}) = \mathrm{2.767385314772e10}$<br />
$E_7(1 - \frac{1}{2^{15}}) = \mathrm{6.725803486744e39}$<br />
All the above values are given in scientific notation rounded to twelve digits after the decimal point.</p>

<p>Find the value of $E_{15}(1 - \frac{1}{2^{25}})$.<br />
Give the answer in scientific notation rounded to twelve digits after the decimal point.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-2e73-17d754c0c490
begin
    submit_answer(nothing; prob_num=722)
end

# ╔═╡ 44b52f30-8435-11eb-148b-c35663b6e0df
html"""
<h2>Problem 723: Pythagorean Quadrilaterals</h2>
<p>A pythagorean triangle with catheti $a$ and $b$ and hypotenuse $c$ is characterized by the well-known equation $a^2+b^2=c^2$. However, this can also be formulated differently:<br />
When inscribed into a circle with radius $r$, a triangle with sides $a$, $b$ and $c$ is pythagorean, if and only if $a^2+b^2+c^2=8\, r^2$.</p>

<p>Analogously, we call a quadrilateral $ABCD$ with sides $a$, $b$, $c$ and $d$, inscribed in a circle with radius $r$, a <i>pythagorean quadrilateral</i>, if $a^2+b^2+c^2+d^2=8\, r^2$. <br />
We further call a pythagorean quadrilateral a <i>pythagorean lattice grid quadrilateral</i>, if all four vertices are lattice grid points with the same distance $r$ from the origin $O$ (which then happens to be the centre of the circumcircle).</p>
<p>
Let $f(r)$ be the number of different pythagorean lattice grid quadrilaterals for which the radius of the circumcircle is $r$. For example $f(1)=1$, $f(\sqrt 2)=1$, $f(\sqrt 5)=38$ and $f(5)=167$.<br /> 
Two of the pythagorean lattice grid  quadrilaterals with $r=\sqrt 5$ are illustrated below:</p>
<div class="center">
<img src="project/images/p723_1.png" alt="PythagoreanQ_1" />
</div>
<br />
<div class="center">
<img src="project/images/p723_2.png" alt="PythagoreanQ_2" />
</div>
<p>
Let $\displaystyle S(n)=\sum_{d \vert n} f(\sqrt d)$. For example, $S(325)=S(5^2 \cdot 13)=f(1)+f(\sqrt 5)+f(5)+f(\sqrt {13})+f(\sqrt{65})+f(5\sqrt{13})=2370$ and $S(1105)=S(5\cdot 13 \cdot 17)=5535$.</p>
<p>
Find $S(1411033124176203125)=S(5^6 \cdot 13^3 \cdot 17^2 \cdot 29 \cdot 37 \cdot 41 \cdot 53 \cdot 61)$.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-33da-19686f1696c9
begin
    submit_answer(nothing; prob_num=723)
end

# ╔═╡ 44b52f30-8435-11eb-334e-83048317ab62
html"""
<h2>Problem 724: Drone Delivery</h2>
<p>A depot uses $n$ drones to disperse packages containing essential supplies along a long straight road.<br />
Initially all drones are stationary, loaded with a supply package.<br />
Every second, the depot selects a drone at random and sends it this instruction:</p>
<ul>
<li>If you are stationary, start moving at one centimetre per second along the road.</li>
<li>If you are moving, increase your speed by one centimetre per second along the road without changing direction.</li>
</ul>
<p>The road is wide enough that drones can overtake one another without risk of collision.</p>
<p>Eventually, there will only be one drone left at the depot waiting to receive its first instruction. As soon as that drone has flown one centimetre along the road, all drones drop their packages and return to the depot.</p>

<p>Let $E(n)$ be the expected distance in centimetres from the depot that the supply packages land.<br />
For example, $E(2) = \frac{7}{2}$, $E(5) = \frac{12019}{720}$, and $E(100) \approx 1427.193470$.</p>
<p>Find $E(10^8)$. Give your answer rounded to the nearest integer.</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3572-e39d3dbc55e0
begin
    submit_answer(nothing; prob_num=724)
end

# ╔═╡ 44b52f30-8435-11eb-09cc-af3616a850bd
html"""
<h2>Problem 725: Digit sum numbers</h2>
<p>
A number where one digit is the sum of the <b>other</b> digits is called a <i>digit sum number</i> or DS-number for short. For example, 352, 3003 and 32812 are DS-numbers.
</p>
<p>
We define $S(n)$ to be the sum of all DS-numbers of $n$ digits or less.
</p>
<p>
You are given $S(3) = 63270$ and $S(7) = 85499991450$.
</p>
<p>
Find $S(2020)$. Give your answer modulo $10^{16}$.
</p>
"""

# ╔═╡ 44b52f30-8435-11eb-3dff-2d01e38882f4
begin
    submit_answer(nothing; prob_num=725)
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
# ╠═446401f0-8435-11eb-2db5-bd2d14fcb95d
# ╟─446401f0-8435-11eb-2cbb-91646a209539
# ╠═446401f0-8435-11eb-159f-634c35cc4286
# ╟─446401f0-8435-11eb-398e-95d91b8bd50d
# ╠═446401f0-8435-11eb-3881-d538b11ab176
# ╟─446401f0-8435-11eb-1b85-0d5ab2007dce
# ╠═446401f0-8435-11eb-2ae5-9be6785fb00a
# ╟─446401f0-8435-11eb-168b-dd70aab0e092
# ╠═446401f0-8435-11eb-001e-7321bad060fd
# ╟─446401f0-8435-11eb-1547-477d4d4a8d59
# ╠═446401f0-8435-11eb-060e-01af4656a357
# ╟─446401f0-8435-11eb-1313-09408ad05ef2
# ╠═446401f0-8435-11eb-2077-0348e34d6589
# ╟─446401f0-8435-11eb-3fc2-9913b6c534a6
# ╠═446401f0-8435-11eb-2ee8-13c0df9c62e4
# ╟─446401f0-8435-11eb-1e03-63355da55379
# ╠═446401f0-8435-11eb-0129-4707e5f2aa15
# ╟─446401f0-8435-11eb-2acf-31ee73f188a3
# ╠═446401f0-8435-11eb-3a17-a587147b10fc
# ╟─446401f0-8435-11eb-089b-c9129bbb274a
# ╠═446401f0-8435-11eb-3e3c-f909e7315b6a
# ╟─446401f0-8435-11eb-04b5-d5191cde8376
# ╠═446401f0-8435-11eb-3509-7d70a670959b
# ╟─446401f0-8435-11eb-1846-4724e997c4b8
# ╠═446401f0-8435-11eb-034f-47a37fae85c3
# ╟─446401f0-8435-11eb-2fac-555326ac5040
# ╠═446401f0-8435-11eb-3396-630e0a1c21d3
# ╟─446401f0-8435-11eb-0d12-d12e0bfad792
# ╠═446401f0-8435-11eb-0242-4dd8062979f7
# ╟─446401f0-8435-11eb-085d-79172f919722
# ╠═446401f0-8435-11eb-2a3d-516c9782a8ac
# ╟─446401f0-8435-11eb-3d10-b3fe1e74b0c3
# ╠═446401f0-8435-11eb-2397-abffbaac1088
# ╟─446401f0-8435-11eb-215b-838331b10c2e
# ╠═446401f0-8435-11eb-1b3b-bd6f3e31ed61
# ╟─446401f0-8435-11eb-06c2-0d850c8305b4
# ╠═446401f0-8435-11eb-3a52-f329341c679e
# ╟─446401f0-8435-11eb-2769-c94e8223926b
# ╠═446401f0-8435-11eb-06be-b33584701a31
# ╟─446401f0-8435-11eb-0fe1-8535c63f9bcf
# ╠═446401f0-8435-11eb-2414-339363bca319
# ╟─446401f0-8435-11eb-25fd-dfdd570f0251
# ╠═446401f0-8435-11eb-3c0d-a1106522503b
# ╟─446401f0-8435-11eb-0dcb-55b7204f1c82
# ╠═446401f0-8435-11eb-2826-879eee30abd2
# ╟─446401f0-8435-11eb-177d-a9c341d1cdcb
# ╠═446401f0-8435-11eb-2d18-c9fb3dd6525d
# ╟─446401f0-8435-11eb-041d-594558845217
# ╠═446401f0-8435-11eb-04a4-27fc325fa58f
# ╟─446401f0-8435-11eb-1635-a178ac5b46b4
# ╠═446401f0-8435-11eb-1894-df9531359233
# ╠═4468bce0-8435-11eb-2916-ef8ed60e3b19
# ╟─4468bce0-8435-11eb-065e-0fa2fc57dd86
# ╠═4468bce0-8435-11eb-17fb-9d322092556d
# ╟─4468bce0-8435-11eb-2b07-45f4a7669ae6
# ╠═4468bce0-8435-11eb-233e-c52f54d544a8
# ╟─4468bce0-8435-11eb-1a87-7799c7bf374b
# ╠═4468bce0-8435-11eb-0af4-4bc2cdcd2145
# ╟─4468bce0-8435-11eb-2104-cd76c517cc5c
# ╠═4468bce0-8435-11eb-2339-2ba482eef8ec
# ╟─4468bce0-8435-11eb-2602-7ff4447f5300
# ╠═4468bce0-8435-11eb-3049-1ff5a4f3cf15
# ╟─4468bce0-8435-11eb-18d4-078809525560
# ╠═4468bce0-8435-11eb-3811-0501c22e0916
# ╟─4468bce0-8435-11eb-115d-01660adcd70e
# ╠═4468bce0-8435-11eb-12fd-f9f9728f28c6
# ╟─4468bce0-8435-11eb-3da7-49cc2098454b
# ╠═4468bce0-8435-11eb-3fc8-5578fd508aa8
# ╟─4468bce0-8435-11eb-26cd-87a437987460
# ╠═4468bce0-8435-11eb-127d-d532f80fe53a
# ╟─4468bce0-8435-11eb-2454-e3b92e34c535
# ╠═4468bce0-8435-11eb-047d-a3cd240ad3e5
# ╟─4468bce0-8435-11eb-2ee0-6f70e0972f0c
# ╠═4468bce0-8435-11eb-17a5-ef1cb819e659
# ╟─4468bce0-8435-11eb-3d84-0b17e7edf78c
# ╠═4468bce0-8435-11eb-33ad-33dc5b45b43e
# ╟─4468bce0-8435-11eb-2174-3d48e480b28c
# ╠═4468bce0-8435-11eb-113c-e3bf88ae37ea
# ╟─4468bce0-8435-11eb-2095-db18ca8e36f1
# ╠═4468bce0-8435-11eb-016e-5b020d38396d
# ╟─4468bce0-8435-11eb-0d76-6fe63738e1d2
# ╠═4468bce0-8435-11eb-2fbc-1559316d229d
# ╟─4468bce0-8435-11eb-09ef-2b2539da9f70
# ╠═4468bce0-8435-11eb-05d7-d9ff38b934d1
# ╟─4468bce0-8435-11eb-0b7e-0f7c947a5442
# ╠═4468bce0-8435-11eb-3711-41e6cc7fb1ac
# ╟─4468bce0-8435-11eb-1704-cf3410a830a7
# ╠═4468bce0-8435-11eb-370b-059cb75cc8b3
# ╟─4468bce0-8435-11eb-1333-d77a2bb006fd
# ╠═4468bce0-8435-11eb-1a01-97aa308bc8bd
# ╟─4468bce0-8435-11eb-3813-09f9accd82b3
# ╠═4468bce0-8435-11eb-014b-61a58d67a328
# ╟─4468bce0-8435-11eb-1bef-5f976955b5d5
# ╠═4468bce0-8435-11eb-3c12-1165a862d6f2
# ╟─4468bce0-8435-11eb-0520-e98b172a6c60
# ╠═4468bce0-8435-11eb-16f7-278dd30501a7
# ╟─4468bce0-8435-11eb-268f-0d106929469d
# ╠═4468bce0-8435-11eb-2cab-e10bb07bacba
# ╟─4468bce0-8435-11eb-3821-87baee225df5
# ╠═4468bce0-8435-11eb-1ff6-83b37d8b2c1d
# ╟─4468bce0-8435-11eb-3408-e1046801c7b0
# ╠═4468bce0-8435-11eb-07ea-374bb4fa0814
# ╠═446d77d0-8435-11eb-012d-f91d2e22a0b5
# ╟─446d77d0-8435-11eb-39a1-2164438e5a12
# ╠═446d77d0-8435-11eb-3b3f-ebfa9113c646
# ╟─446d77d0-8435-11eb-0450-2542e8676451
# ╠═446d77d0-8435-11eb-1f79-05bf3be70f3b
# ╟─446d77d0-8435-11eb-1191-0558800a53a3
# ╠═446d77d0-8435-11eb-373a-1b73a739f0f8
# ╟─446d77d0-8435-11eb-2191-61c4f5db1825
# ╠═446d77d0-8435-11eb-23a0-fb7c4c883702
# ╟─446d77d0-8435-11eb-12fc-255baece293c
# ╠═446d77d0-8435-11eb-104d-6f4a4cd18611
# ╟─446d77d0-8435-11eb-375d-bde62c6c4ead
# ╠═446d77d0-8435-11eb-1779-efe88b01d307
# ╟─446d77d0-8435-11eb-3bb3-0bcc69f7e735
# ╠═446d77d0-8435-11eb-128c-5591ab2dbb73
# ╟─446d77d0-8435-11eb-3a35-13482840a0e0
# ╠═446d77d0-8435-11eb-21e1-5196bb2c2f32
# ╟─446d77d0-8435-11eb-09ae-275833fb9ec4
# ╠═446d77d0-8435-11eb-123e-6b1ab36eb6c7
# ╟─446d77d0-8435-11eb-3ecd-673c1d1211a4
# ╠═446d77d0-8435-11eb-388d-d34984ececf4
# ╟─446d77d0-8435-11eb-2267-8ffd79527804
# ╠═446d77d0-8435-11eb-06b9-fb16de8eec5d
# ╟─446d77d0-8435-11eb-09e4-074c5bc4c4ef
# ╠═446d77d0-8435-11eb-199d-9f5128c8f72d
# ╟─446d77d0-8435-11eb-2200-53fdb90ccb09
# ╠═446d77d0-8435-11eb-38eb-4dde92f62eeb
# ╟─446d77d0-8435-11eb-065e-777bd69dfdde
# ╠═446d77d0-8435-11eb-05da-2ddd8135a6b0
# ╟─446d77d0-8435-11eb-0798-a572bcb99189
# ╠═446d77d0-8435-11eb-2bcd-1f0e3ee2c297
# ╟─446d77d0-8435-11eb-128d-d3c9f3720bad
# ╠═446d77d0-8435-11eb-35fa-698ea9178fb3
# ╟─446d77d0-8435-11eb-08bb-df6f1f495c58
# ╠═446d77d0-8435-11eb-35b0-43e9e7692af5
# ╟─446d77d0-8435-11eb-0ede-2d0d6e517e0e
# ╠═446d77d0-8435-11eb-0cc1-6575f652f3bd
# ╟─446d77d0-8435-11eb-216c-cde0bd194ee6
# ╠═446d77d0-8435-11eb-1d94-2b037c54110e
# ╟─446d77d0-8435-11eb-352b-11ac512e8e72
# ╠═446d77d0-8435-11eb-2823-6ffab02e583e
# ╟─446d77d0-8435-11eb-2b86-d1c4e7757807
# ╠═446d77d0-8435-11eb-25af-35a7711a7c53
# ╟─446d77d0-8435-11eb-3a5f-812ae773b789
# ╠═446d77d0-8435-11eb-318d-ebb7827b60a3
# ╟─446d77d0-8435-11eb-0d5c-57ce90afe78a
# ╠═446d77d0-8435-11eb-32af-95b9e84ce30b
# ╟─446d77d0-8435-11eb-0631-c7fba7522f5f
# ╠═446d77d0-8435-11eb-0da5-534b1a454d70
# ╟─446d77d0-8435-11eb-397a-634063a8726b
# ╠═446d77d0-8435-11eb-12fb-5f62334adb9e
# ╠═4475b532-8435-11eb-1164-39b2eac79de3
# ╟─4475b532-8435-11eb-2b6f-8ba5272b7ebf
# ╠═4475b532-8435-11eb-00ca-b149e5396526
# ╟─4475b532-8435-11eb-1ba5-cbff4caf78d2
# ╠═4475b532-8435-11eb-392b-b304206fe4b6
# ╟─4475b532-8435-11eb-17b9-af199546570a
# ╠═4475b532-8435-11eb-206f-57bb488d4b44
# ╟─4475b532-8435-11eb-0ba9-9f43c35aadbe
# ╠═4475b532-8435-11eb-3fd2-6bcdae5ad3c7
# ╟─4475b532-8435-11eb-2756-5769d6b4c906
# ╠═4475b532-8435-11eb-05c5-7333ea7aac22
# ╟─4475b532-8435-11eb-2c43-4da25c0eadaf
# ╠═4475b532-8435-11eb-1e2b-8dfc183e9608
# ╟─4475b532-8435-11eb-0d3e-9d6b968ce194
# ╠═4475b532-8435-11eb-3b66-3f77904718ab
# ╟─4475b532-8435-11eb-2af1-475190982fa6
# ╠═4475b532-8435-11eb-21af-e769a608c267
# ╟─4475b532-8435-11eb-34e9-0d1a1f2468a1
# ╠═4475b532-8435-11eb-0df9-e3c5bd043388
# ╟─4475b532-8435-11eb-3ed0-d73b972ba1b7
# ╠═4475b532-8435-11eb-219a-399ee2d38006
# ╟─4475b532-8435-11eb-20b4-7bcf9957507c
# ╠═4475b532-8435-11eb-2bfe-336e2fed2dd7
# ╟─4475b532-8435-11eb-1ecc-a3f0404670cd
# ╠═4475b532-8435-11eb-1b9f-ab429446c96b
# ╟─4475b532-8435-11eb-3d98-231a1ce83082
# ╠═4475b532-8435-11eb-3fb5-475f8c9eb6f5
# ╟─4475b532-8435-11eb-2f1f-635b81eb29b9
# ╠═4475b532-8435-11eb-3146-e3dca1cb7bc3
# ╟─4475b532-8435-11eb-079a-6398e3b66539
# ╠═4475b532-8435-11eb-3edf-e9885d216abb
# ╟─4475b532-8435-11eb-28f2-b75cc8376f8a
# ╠═4475b532-8435-11eb-328b-95721ef6aec4
# ╟─4475b532-8435-11eb-2cb5-335bb91008f5
# ╠═4475b532-8435-11eb-1d83-53eabe26deca
# ╟─4475b532-8435-11eb-2366-5784b6eca9bf
# ╠═4475b532-8435-11eb-1599-57a57df16753
# ╟─4475b532-8435-11eb-320e-a9edb674e914
# ╠═4475b532-8435-11eb-3619-15d969e69503
# ╟─4475b532-8435-11eb-2fe0-6f550ed2ac29
# ╠═4475b532-8435-11eb-1a1e-31de75a59b8a
# ╟─4475b532-8435-11eb-2a16-150716559a7c
# ╠═4475b532-8435-11eb-0e0e-d1b67f9d8e57
# ╟─4475b532-8435-11eb-2e29-495c59ea6066
# ╠═4475b532-8435-11eb-0e39-01690c987e0b
# ╟─4475b532-8435-11eb-1755-d346995fb048
# ╠═4475b532-8435-11eb-0ca3-97e2b09b053c
# ╟─4475b532-8435-11eb-0cdc-c7f6d7c337b2
# ╠═4475b532-8435-11eb-13aa-6f9186b19b66
# ╟─4475b532-8435-11eb-00d8-ff55273a6376
# ╠═4475b532-8435-11eb-1434-e98b0de0f740
# ╠═447a9730-8435-11eb-328c-8fc29d9eab17
# ╟─447a9730-8435-11eb-3344-95f0dcf2777b
# ╠═447a9730-8435-11eb-14db-610532849b22
# ╟─447a9730-8435-11eb-37cb-7d11e1780b33
# ╠═447a9730-8435-11eb-0021-235f852f7053
# ╟─447a9730-8435-11eb-22a6-b9a04bf47188
# ╠═447a9730-8435-11eb-3797-5f0fbbb18d2b
# ╟─447a9730-8435-11eb-1cc0-cfddb04b8fef
# ╠═447a9730-8435-11eb-2028-931b99bb7d5d
# ╟─447a9730-8435-11eb-269d-8bfa970314b5
# ╠═447a9730-8435-11eb-09ae-95382070c4e6
# ╟─447a9730-8435-11eb-2852-150c40e25371
# ╠═447a9730-8435-11eb-2c87-9f17a8921339
# ╟─447a9730-8435-11eb-3f0e-335ef61375ca
# ╠═447a9730-8435-11eb-397a-ad0af4952af7
# ╟─447a9730-8435-11eb-39b4-915a3f95d3c4
# ╠═447a9730-8435-11eb-328d-73237f3dd915
# ╟─447a9730-8435-11eb-05dc-7ba6b5235dc0
# ╠═447a9730-8435-11eb-2be5-fd31d3c1ee07
# ╟─447a9730-8435-11eb-05e3-bffae74b2222
# ╠═447a9730-8435-11eb-3e36-ebe6aa440d07
# ╟─447a9730-8435-11eb-3a6a-e96dc1f75de1
# ╠═447a9730-8435-11eb-12cc-3f357d79b85b
# ╟─447a9730-8435-11eb-2a6f-35b5c587c197
# ╠═447a9730-8435-11eb-0c03-57e8285012ce
# ╟─447a9730-8435-11eb-0a39-e79a307939c1
# ╠═447a9730-8435-11eb-0d04-1ffdd19bf179
# ╟─447a9730-8435-11eb-1484-833012a13913
# ╠═447a9730-8435-11eb-3a8c-01de27a7ea7f
# ╟─447a9730-8435-11eb-23cb-6fd68c4e4752
# ╠═447a9730-8435-11eb-16d0-ef20ff1d5439
# ╟─447a9730-8435-11eb-07fe-1777511c8012
# ╠═447a9730-8435-11eb-37a0-63e603cb16f6
# ╟─447a9730-8435-11eb-0858-4fbae24732a0
# ╠═447a9730-8435-11eb-10e9-5367f518bd87
# ╟─447a9730-8435-11eb-3972-0958e94263e5
# ╠═447a9730-8435-11eb-1d57-9921cabfdfe2
# ╟─447a9730-8435-11eb-1f9f-ef219dbfd37b
# ╠═447a9730-8435-11eb-0825-f14bdb2bdf67
# ╟─447a9730-8435-11eb-285d-e1daf47a774c
# ╠═447a9730-8435-11eb-355d-4954ef5fbb8d
# ╟─447a9730-8435-11eb-2499-9f15a82cc794
# ╠═447a9730-8435-11eb-36e7-7b73f450ed22
# ╟─447a9730-8435-11eb-38ac-1d497d459bbd
# ╠═447a9730-8435-11eb-0d6e-d5509eca045f
# ╟─447a9730-8435-11eb-3fc7-21b8c064f16b
# ╠═447a9730-8435-11eb-0763-81b7fee535ab
# ╟─447a9730-8435-11eb-0840-fdb9d2cdcfe8
# ╠═447a9730-8435-11eb-1610-3161ce81a051
# ╟─447a9730-8435-11eb-3854-adf7dc65b139
# ╠═447a9730-8435-11eb-2f84-35a68abfe2c1
# ╠═44828670-8435-11eb-169f-a37427a6ae9b
# ╟─44828670-8435-11eb-3e40-377dad4231af
# ╠═44828670-8435-11eb-284c-33a27a254eec
# ╟─44828670-8435-11eb-247d-25031518d2b8
# ╠═44828670-8435-11eb-3e7d-370c00b3799c
# ╟─44828670-8435-11eb-2187-bba016a22181
# ╠═44828670-8435-11eb-2311-8702c69bd73c
# ╟─44828670-8435-11eb-351d-cff0176edb0f
# ╠═44828670-8435-11eb-0539-ed628433949e
# ╟─44828670-8435-11eb-0ba2-d1f5e980a445
# ╠═44828670-8435-11eb-02d2-6187b081a0c4
# ╟─44828670-8435-11eb-0e59-d33cbc3e6928
# ╠═44828670-8435-11eb-3523-553b68adf31f
# ╟─44828670-8435-11eb-1d4c-c352d8ada2ce
# ╠═44828670-8435-11eb-0e0a-612b5caa4163
# ╟─44828670-8435-11eb-220b-493ae7350361
# ╠═44828670-8435-11eb-178c-d13ef754d86b
# ╟─44828670-8435-11eb-0033-3b17816b55a2
# ╠═44828670-8435-11eb-3c21-815b7d727a7d
# ╟─44828670-8435-11eb-09b3-d14b30aee601
# ╠═44828670-8435-11eb-0a84-cfe0c5963e31
# ╟─44828670-8435-11eb-17ee-bb89077d5452
# ╠═44828670-8435-11eb-24a9-95bf52961979
# ╟─44828670-8435-11eb-1a91-f3a38ea86918
# ╠═44828670-8435-11eb-2598-9fc285f5e2bb
# ╟─44828670-8435-11eb-29b4-e7a6587d7f3c
# ╠═44828670-8435-11eb-07cc-139ae320a27c
# ╟─44828670-8435-11eb-1e29-bbc0e2dddf20
# ╠═44828670-8435-11eb-308e-9b861d69bf99
# ╟─44828670-8435-11eb-2102-fb3374123898
# ╠═44828670-8435-11eb-07ca-b570836157d4
# ╟─44828670-8435-11eb-2d40-916f6d275bf5
# ╠═44828670-8435-11eb-1c60-4be49e005a6f
# ╟─44828670-8435-11eb-0bb1-cfe47b88cfaa
# ╠═44828670-8435-11eb-3429-ef0a279889ee
# ╟─44828670-8435-11eb-0a71-398548243ea1
# ╠═44828670-8435-11eb-2e10-93c294c4a736
# ╟─44828670-8435-11eb-0e85-8f707a391968
# ╠═44828670-8435-11eb-15a1-b9c484f84e34
# ╟─44828670-8435-11eb-24cd-69f562d0a560
# ╠═44828670-8435-11eb-2936-454859ed42ad
# ╟─44828670-8435-11eb-0148-bdee2afd363d
# ╠═44828670-8435-11eb-2ebf-5962fce1474a
# ╟─44828670-8435-11eb-31d2-eb482638936c
# ╠═44828670-8435-11eb-21d3-d33bedff0cd2
# ╟─44828670-8435-11eb-3958-fba5bf1dc2ba
# ╠═44828670-8435-11eb-1717-cd73941bd795
# ╟─44828670-8435-11eb-1a82-4914bf1b2b46
# ╠═44828670-8435-11eb-2831-e322e553405f
# ╟─44828670-8435-11eb-0eb5-435e3e068c33
# ╠═44828670-8435-11eb-3f58-c9898b30ef2a
# ╠═448c2360-8435-11eb-3867-3f257b1671b8
# ╟─448c2360-8435-11eb-3258-9b414f075eed
# ╠═448c2360-8435-11eb-3500-83337b1eae60
# ╟─448c2360-8435-11eb-2437-9d59195819f5
# ╠═448c2360-8435-11eb-0018-55826941a5e6
# ╟─448c2360-8435-11eb-2bb5-a357a2b7645f
# ╠═448c2360-8435-11eb-0878-976b615cdbe9
# ╟─448c2360-8435-11eb-15a8-af60e47f1e06
# ╠═448c2360-8435-11eb-05be-23bd03cc01b9
# ╟─448c2360-8435-11eb-3e1a-8564820e891b
# ╠═448c2360-8435-11eb-0f04-97d730c0651c
# ╟─448c2360-8435-11eb-37f7-8ba06d5ed964
# ╠═448c2360-8435-11eb-0f0c-cfcab75cea35
# ╟─448c2360-8435-11eb-395f-c1e3e4684839
# ╠═448c2360-8435-11eb-0308-f57d61552354
# ╟─448c2360-8435-11eb-09be-89116e5bda1d
# ╠═448c2360-8435-11eb-137c-a5c4df2e78ab
# ╟─448c2360-8435-11eb-3591-895190051669
# ╠═448c2360-8435-11eb-3bdf-45f837a860cb
# ╟─448c2360-8435-11eb-2300-df6414ad0c43
# ╠═448c2360-8435-11eb-0fbf-b1c73b19bbd2
# ╟─448c2360-8435-11eb-3dbc-6d66bb0d1cec
# ╠═448c2360-8435-11eb-3c6d-4784d2b3ad2a
# ╟─448c2360-8435-11eb-028f-2127273e811c
# ╠═448c2360-8435-11eb-0410-975b1433aaa0
# ╟─448c2360-8435-11eb-23fa-235d7301fbc8
# ╠═448c2360-8435-11eb-0347-5fbed014341b
# ╟─448c2360-8435-11eb-0a2d-e5c6cae7ff56
# ╠═448c2360-8435-11eb-348e-95ae3e43589b
# ╟─448c2360-8435-11eb-1cfc-516cb184cc7c
# ╠═448c2360-8435-11eb-1e15-7313d1bb14cc
# ╟─448c2360-8435-11eb-3c1a-c156d6f3869e
# ╠═448c2360-8435-11eb-3d79-077ff3939357
# ╟─448c2360-8435-11eb-268c-1d735e5ae766
# ╠═448c2360-8435-11eb-0857-f527da97e07f
# ╟─448c2360-8435-11eb-1b9a-579fe88c4caa
# ╠═448c2360-8435-11eb-3cc7-31f3e667da68
# ╟─448c2360-8435-11eb-2a47-b94e31641de2
# ╠═448c2360-8435-11eb-28ef-5f58a10f0f78
# ╟─448c2360-8435-11eb-0c65-f5568317ee66
# ╠═448c2360-8435-11eb-3ac3-cf094870a38c
# ╟─448c2360-8435-11eb-0995-9d54bcfc2ba2
# ╠═448c2360-8435-11eb-2de2-6936fa86a707
# ╟─448c2360-8435-11eb-1ae8-8f77d1ed98f4
# ╠═448c2360-8435-11eb-0d96-79ed0d515a38
# ╟─448c2360-8435-11eb-2830-e17860a0dda3
# ╠═448c2360-8435-11eb-3913-ff0d2dc43b6e
# ╟─448c2360-8435-11eb-2d3b-1f94c899f1f3
# ╠═448c2360-8435-11eb-133d-13b6b29d3260
# ╟─448c2360-8435-11eb-2745-cdcd2d631c09
# ╠═448c2360-8435-11eb-1626-5d0d31914a5d
# ╠═449439b0-8435-11eb-3227-6defd4f84d0b
# ╟─449439b0-8435-11eb-1d07-bbdbf047ffca
# ╠═449439b0-8435-11eb-2ed9-d79c349e4e38
# ╟─449439b0-8435-11eb-1c0e-936c786e84f4
# ╠═449439b0-8435-11eb-1da7-936ac8a1171c
# ╟─449439b0-8435-11eb-0eff-03592bf933ff
# ╠═449439b0-8435-11eb-226c-877561b6043e
# ╟─449439b0-8435-11eb-122f-0503a34c9584
# ╠═449439b0-8435-11eb-30af-85f90eff00b9
# ╟─449439b0-8435-11eb-063c-ad9723792c7d
# ╠═449439b0-8435-11eb-1cb3-f919f5095de0
# ╟─449439b0-8435-11eb-2e3b-d17d80521c2b
# ╠═449439b0-8435-11eb-0727-073e38104afe
# ╟─449439b0-8435-11eb-2bec-830fd3db33e8
# ╠═449439b0-8435-11eb-1986-cdf4f2c02b22
# ╟─449439b0-8435-11eb-04b0-a1c940ee02af
# ╠═449439b0-8435-11eb-1ac6-330d6fdb2643
# ╟─449439b0-8435-11eb-0c04-abb7eed625cc
# ╠═449439b0-8435-11eb-04aa-339a928631b1
# ╟─449439b0-8435-11eb-3b83-95d707a83d48
# ╠═449439b0-8435-11eb-2173-9f05e5f7a595
# ╟─449439b0-8435-11eb-0b08-879009156c21
# ╠═449439b0-8435-11eb-045c-4d64aeaab79a
# ╟─449439b0-8435-11eb-394e-c763b445943e
# ╠═449439b0-8435-11eb-270e-ef2f44447c2e
# ╟─449439b0-8435-11eb-2dfa-f7058860092d
# ╠═449439b0-8435-11eb-0330-81b2259aba4d
# ╟─449439b0-8435-11eb-1a98-352f45203a9e
# ╠═449439b0-8435-11eb-2ff1-a9485f9ab91c
# ╟─449439b0-8435-11eb-0a56-cfdc35e15721
# ╠═449439b0-8435-11eb-3cdc-db7007d363fe
# ╟─449439b0-8435-11eb-2411-bd643dbc04fb
# ╠═449439b0-8435-11eb-1f98-1d636fcf5b62
# ╟─449439b0-8435-11eb-33e1-ab952ddc63e1
# ╠═449439b0-8435-11eb-2419-2fdc41f67314
# ╟─449439b0-8435-11eb-284d-df9905f45df9
# ╠═449439b0-8435-11eb-11e8-93693aadb15b
# ╟─449439b0-8435-11eb-1c01-2d7be8607a41
# ╠═449439b0-8435-11eb-1d0f-4112821a84e7
# ╟─449439b0-8435-11eb-081b-f705570a59ef
# ╠═449439b0-8435-11eb-2ab8-df00327c976f
# ╟─449439b0-8435-11eb-2b7b-df1a01d2b2e1
# ╠═449439b0-8435-11eb-06e5-21d7ec6bf6b0
# ╟─449439b0-8435-11eb-2c83-55a000991adb
# ╠═449439b0-8435-11eb-0fdf-392e6811c0ed
# ╟─449439b0-8435-11eb-1f35-23ced49fc2eb
# ╠═449439b0-8435-11eb-353e-a3024f717df0
# ╟─449439b0-8435-11eb-055b-738441c7727e
# ╠═449439b0-8435-11eb-1329-192e4bd91d32
# ╟─449439b0-8435-11eb-0b68-fda1e21d28bf
# ╠═449439b0-8435-11eb-01da-2da8e2fa4b53
# ╠═449ec100-8435-11eb-0bed-35fa45f22028
# ╟─449ec100-8435-11eb-0a6f-edf8e0b491b7
# ╠═449ec100-8435-11eb-2e91-7dd30e82dfee
# ╟─449ec100-8435-11eb-35fe-874d01fb4402
# ╠═449ec100-8435-11eb-0c3d-cf11390d6fa1
# ╟─449ec100-8435-11eb-230a-01b6e5380e4b
# ╠═449ec100-8435-11eb-2730-bf49ade9792d
# ╟─449ec100-8435-11eb-32d9-0571ba6e4d14
# ╠═449ec100-8435-11eb-1ff1-6bbe8fd645c5
# ╟─449ec100-8435-11eb-268f-1389785bb942
# ╠═449ec100-8435-11eb-237b-9d788c0c310c
# ╟─449ec100-8435-11eb-00d3-598da90a3775
# ╠═449ec100-8435-11eb-0dc1-bb4de573705f
# ╟─449ec100-8435-11eb-1102-e5f323898de9
# ╠═449ec100-8435-11eb-2af5-dbe905b237db
# ╟─449ec100-8435-11eb-1797-4b3816022c3e
# ╠═449ec100-8435-11eb-1421-851d4e4b8104
# ╟─449ec100-8435-11eb-234c-c9cf6c90ab52
# ╠═449ec100-8435-11eb-26cf-070de2a471e7
# ╟─449ec100-8435-11eb-1cdd-ef73a75b9f2c
# ╠═449ec100-8435-11eb-0f57-775638ab8eed
# ╟─449ec100-8435-11eb-10e6-33f7d5dd8818
# ╠═449ec100-8435-11eb-2b32-e7a04cfd71a5
# ╟─449ec100-8435-11eb-3019-af785df7097f
# ╠═449ec100-8435-11eb-1775-0928fae3b1a3
# ╟─449ec100-8435-11eb-1d58-ef6ceca9ff07
# ╠═449ec100-8435-11eb-0e2d-615903ed254e
# ╟─449ec100-8435-11eb-04a4-ed37913f6348
# ╠═449ec100-8435-11eb-2c29-e9be5b27681e
# ╟─449ec100-8435-11eb-1449-436b4905a385
# ╠═449ec100-8435-11eb-0f97-29bdaedc474a
# ╟─449ec100-8435-11eb-2bc6-41b495ce0e42
# ╠═449ec100-8435-11eb-1412-c9300c2c103d
# ╟─449ec100-8435-11eb-3b11-a5064f9d0c4e
# ╠═449ec100-8435-11eb-0648-2f22c226bbaa
# ╟─449ec100-8435-11eb-196e-05a9573b7cc5
# ╠═449ec100-8435-11eb-005f-f5baef95f53c
# ╟─449ec100-8435-11eb-2b04-f90f96618564
# ╠═449ec100-8435-11eb-11e6-7542e2dbe5a4
# ╟─449ec100-8435-11eb-3f62-d9e086893c1d
# ╠═449ec100-8435-11eb-2b42-11c4d0facf36
# ╟─449ec100-8435-11eb-08c3-8ff9a4983071
# ╠═449ec100-8435-11eb-17ed-85da2bf85877
# ╟─449ec100-8435-11eb-2f38-b76671006ce7
# ╠═449ec100-8435-11eb-2ead-e71f5039d616
# ╟─449ec100-8435-11eb-383e-77bca1571484
# ╠═449ec100-8435-11eb-009a-ef24f2ddeb92
# ╟─449ec100-8435-11eb-3e0a-a3de08b058a3
# ╠═449ec100-8435-11eb-252f-2b2541574dc9
# ╟─449ec100-8435-11eb-0ea4-11f824281458
# ╠═449ec100-8435-11eb-216c-93649c29a044
# ╠═44a85dee-8435-11eb-12d2-8363d25af57e
# ╟─44a85dee-8435-11eb-0876-1dbfe51e23c8
# ╠═44a85dee-8435-11eb-0c4c-03c050432791
# ╟─44a85dee-8435-11eb-160b-799b9505ba43
# ╠═44a85dee-8435-11eb-00e3-d57cd78c13d6
# ╟─44a85dee-8435-11eb-0a53-61a05982615c
# ╠═44a85dee-8435-11eb-3583-4d2ed7326a62
# ╟─44a85dee-8435-11eb-3d13-a5bce5ba690f
# ╠═44a85dee-8435-11eb-240c-19cec48fd09c
# ╟─44a85dee-8435-11eb-34dd-4beb33a09343
# ╠═44a85dee-8435-11eb-3d7a-175659863f93
# ╟─44a85dee-8435-11eb-3966-ed2464314bbb
# ╠═44a85dee-8435-11eb-3ea3-edd58159e569
# ╟─44a85dee-8435-11eb-3879-a38c9b90af87
# ╠═44a85dee-8435-11eb-3d03-6b73984866c4
# ╟─44a85dee-8435-11eb-374a-9578e472bc56
# ╠═44a85dee-8435-11eb-06be-51a12863cf4e
# ╟─44a85dee-8435-11eb-00a2-1f1503648c6c
# ╠═44a85dee-8435-11eb-3158-8f87ecef3f66
# ╟─44a85dee-8435-11eb-265f-ef8ee559cb4d
# ╠═44a85dee-8435-11eb-3cf9-81ca190cdafc
# ╟─44a85dee-8435-11eb-061f-712043db9f2c
# ╠═44a85dee-8435-11eb-25e9-034ffa9bc1dd
# ╟─44a85dee-8435-11eb-0d10-1fc1eff1dd68
# ╠═44a85dee-8435-11eb-31ba-673fd450cde0
# ╟─44a85dee-8435-11eb-38a7-b34f63e822f4
# ╠═44a85dee-8435-11eb-00d6-ab9cdde76ce9
# ╟─44a85dee-8435-11eb-33eb-4fdee7eac93b
# ╠═44a85dee-8435-11eb-38e7-cd2c9d67894f
# ╟─44a85dee-8435-11eb-3983-63940cbfacbf
# ╠═44a85dee-8435-11eb-05f5-29437d4dd4f5
# ╟─44a85dee-8435-11eb-2985-5784244dde54
# ╠═44a85dee-8435-11eb-11b1-779d2f568d0e
# ╟─44a85dee-8435-11eb-333b-55e2ba1b64bb
# ╠═44a85dee-8435-11eb-2990-a5fdb7a96ea9
# ╟─44a85dee-8435-11eb-1579-0b7c5a85fbb0
# ╠═44a85dee-8435-11eb-2cb9-cbaf128329d6
# ╟─44a85dee-8435-11eb-3991-d782fed43510
# ╠═44a85dee-8435-11eb-04c9-e3020dfd571e
# ╟─44a85dee-8435-11eb-1be8-63e5d8ef293d
# ╠═44a85dee-8435-11eb-17dc-fdd4cd9cd389
# ╟─44a85dee-8435-11eb-2c71-cd9538aa62bd
# ╠═44a85dee-8435-11eb-3314-87abd35d440e
# ╟─44a85dee-8435-11eb-1343-61c0d27922e1
# ╠═44a85dee-8435-11eb-1aea-1bb0a29287af
# ╟─44a85dee-8435-11eb-2663-3191601d8df1
# ╠═44a85dee-8435-11eb-2b1d-5526a4f62623
# ╟─44aaa7e0-8435-11eb-3310-6d16faddd003
# ╠═44aaa7e0-8435-11eb-0c58-e1f492bb0374
# ╟─44aaa7e0-8435-11eb-2987-7759de4583b9
# ╠═44aaa7e0-8435-11eb-11cb-51c9896157b0
# ╠═44b52f30-8435-11eb-2b3b-e383365b0ff6
# ╟─44b52f30-8435-11eb-2810-6fd9b901ffaa
# ╠═44b52f30-8435-11eb-00f9-cdfb85e7cec1
# ╟─44b52f30-8435-11eb-0f3e-e31e9d924c8c
# ╠═44b52f30-8435-11eb-2629-995477173d72
# ╟─44b52f30-8435-11eb-048e-2d6c197014dd
# ╠═44b52f30-8435-11eb-1a49-ad7eb37b739e
# ╟─44b52f30-8435-11eb-2b0f-4fc9e688324b
# ╠═44b52f30-8435-11eb-2791-1b51cc7d1971
# ╟─44b52f30-8435-11eb-0066-7b03f944b8e4
# ╠═44b52f30-8435-11eb-1381-85f68644fadf
# ╟─44b52f30-8435-11eb-2687-5b0282359717
# ╠═44b52f30-8435-11eb-0fb3-c5071745033b
# ╟─44b52f30-8435-11eb-02f8-5b52f82c3bef
# ╠═44b52f30-8435-11eb-03cc-6b30e1ddcac5
# ╟─44b52f30-8435-11eb-15f1-4b83dcdc58b5
# ╠═44b52f30-8435-11eb-1816-cf4614afa6b9
# ╟─44b52f30-8435-11eb-0d71-ef5d3fa1c850
# ╠═44b52f30-8435-11eb-3762-9b59c1794b1e
# ╟─44b52f30-8435-11eb-3549-bd6c471fab4d
# ╠═44b52f30-8435-11eb-3214-139f220a7458
# ╟─44b52f30-8435-11eb-366a-1f6d97b94d5d
# ╠═44b52f30-8435-11eb-061a-8d89b2c819fb
# ╟─44b52f30-8435-11eb-170f-2702f26e974a
# ╠═44b52f30-8435-11eb-3cfa-f1f0dd971ac3
# ╟─44b52f30-8435-11eb-192d-83d797f91546
# ╠═44b52f30-8435-11eb-3b31-0d9642a3c15a
# ╟─44b52f30-8435-11eb-3288-db41a4b3f4e7
# ╠═44b52f30-8435-11eb-14b1-63346b7640cc
# ╟─44b52f30-8435-11eb-0059-3f35562a3a7e
# ╠═44b52f30-8435-11eb-0e7c-ef7f159b2d31
# ╟─44b52f30-8435-11eb-2e8c-c334626641ad
# ╠═44b52f30-8435-11eb-0ce9-dbaa79ebaf43
# ╟─44b52f30-8435-11eb-1dd5-1b4342c10b7d
# ╠═44b52f30-8435-11eb-02c0-7f707b083fd7
# ╟─44b52f30-8435-11eb-3d45-071539d630af
# ╠═44b52f30-8435-11eb-127c-19bbded503d0
# ╟─44b52f30-8435-11eb-1cf0-ebacdf570865
# ╠═44b52f30-8435-11eb-1c7a-df602d1c95a4
# ╟─44b52f30-8435-11eb-0872-476486eb8411
# ╠═44b52f30-8435-11eb-3fea-5fa3aab67302
# ╟─44b52f30-8435-11eb-068c-2b6e59a1f2e8
# ╠═44b52f30-8435-11eb-1dda-b3d36ee74326
# ╟─44b52f30-8435-11eb-34fa-5f7613be9df7
# ╠═44b52f30-8435-11eb-2e73-17d754c0c490
# ╟─44b52f30-8435-11eb-148b-c35663b6e0df
# ╠═44b52f30-8435-11eb-33da-19686f1696c9
# ╟─44b52f30-8435-11eb-334e-83048317ab62
# ╠═44b52f30-8435-11eb-3572-e39d3dbc55e0
# ╟─44b52f30-8435-11eb-09cc-af3616a850bd
# ╠═44b52f30-8435-11eb-3dff-2d01e38882f4