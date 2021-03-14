### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1b043b90-84a3-11eb-1913-ab2e072bc53f
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1b043b90-84a3-11eb-3751-f1bd7bdf5e39
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

# ╔═╡ 1b043b90-84a3-11eb-2012-d58872037d77
begin
    submit_answer(nothing; prob_num=701)
end

# ╔═╡ 1b043b90-84a3-11eb-1892-372849bd42dd
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

# ╔═╡ 1b043b90-84a3-11eb-3a9c-636173738b7b
begin
    submit_answer(nothing; prob_num=702)
end

# ╔═╡ 1b043b90-84a3-11eb-0160-8bec967e3a47
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

# ╔═╡ 1b043b90-84a3-11eb-3b8f-43c330274940
begin
    submit_answer(nothing; prob_num=703)
end

# ╔═╡ 1b043b90-84a3-11eb-3231-a769f8b47363
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

# ╔═╡ 1b043b90-84a3-11eb-308a-2d3123235b87
begin
    submit_answer(nothing; prob_num=704)
end

# ╔═╡ 1b043b90-84a3-11eb-1a57-f7d6c0c8da7c
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

# ╔═╡ 1b043b90-84a3-11eb-06fb-3719ea53d5c8
begin
    submit_answer(nothing; prob_num=705)
end

# ╔═╡ 1b043b90-84a3-11eb-17d5-43781219e478
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

# ╔═╡ 1b043b90-84a3-11eb-0697-b3765a43b2eb
begin
    submit_answer(nothing; prob_num=706)
end

# ╔═╡ 1b043b90-84a3-11eb-3527-e54197067332
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

# ╔═╡ 1b043b90-84a3-11eb-253c-914f773ad5a6
begin
    submit_answer(nothing; prob_num=707)
end

# ╔═╡ 1b043b90-84a3-11eb-35be-bd97e505c865
html"""
<h2>Problem 708: Twos are all you need</h2>
<p>A positive integer, $n$, is factorised into prime factors. We define $f(n)$ to be the product when each prime factor is replaced with $2$. In addition we define $f(1)=1$.</p>

<p>For example, $90 = 2\times 3\times 3\times 5$, then replacing the primes, $2\times 2\times 2\times 2 = 16$, hence $f(90) = 16$.</p> 
 
<p>Let $\displaystyle S(N)=\sum_{n=1}^{N} f(n)$. You are given $S(10^8)=9613563919$.</p> 

<p>Find $S(10^{14})$.</p>
"""

# ╔═╡ 1b043b90-84a3-11eb-39f6-6318b746bdba
begin
    submit_answer(nothing; prob_num=708)
end

# ╔═╡ 1b043b90-84a3-11eb-3ed7-4385c1bea49c
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

# ╔═╡ 1b043b90-84a3-11eb-1411-47c616a05055
begin
    submit_answer(nothing; prob_num=709)
end

# ╔═╡ 1b043b90-84a3-11eb-1dcb-539b3792e8eb
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

# ╔═╡ 1b043b90-84a3-11eb-35d9-a34fbd3b2dbe
begin
    submit_answer(nothing; prob_num=710)
end

# ╔═╡ 1b043b90-84a3-11eb-214e-3f1711f5efda
html"""
<h2>Problem 711: Binary Blackboard</h2>
<p>Oscar and Eric play the following game. First, they agree on a positive integer $n$, and they begin by writing its binary representation on a blackboard. They then take turns, with Oscar going first, to write a number on the blackboard in binary representation, such that the sum of all written numbers does not exceed $2n$.</p>

<p>The game ends when there are no valid moves left. Oscar wins if the number of $1$s on the blackboard is odd, and Eric wins if it is even.</p>

<p>Let $S(N)$ be the sum of all $n \le 2^N$ for which Eric can guarantee winning, assuming optimal play.</p>

<p>For example, the first few values of $n$ for which Eric can guarantee winning are $1,3,4,7,15,16$. Hence $S(4)=46$.<br />
You are also given that $S(12) = 54532$ and $S(1234) \equiv 690421393 \pmod{1\,000\,000\,007}$.</p>

<p>Find $S(12\,345\,678)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1b043b90-84a3-11eb-3c31-37b78c1e0596
begin
    submit_answer(nothing; prob_num=711)
end

# ╔═╡ 1b043b90-84a3-11eb-1dad-85823670165b
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

# ╔═╡ 1b043b90-84a3-11eb-1890-4feaf5c971ba
begin
    submit_answer(nothing; prob_num=712)
end

# ╔═╡ 1b043b90-84a3-11eb-205d-63f448d7f67e
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

# ╔═╡ 1b043b90-84a3-11eb-38d2-6d4be14fe859
begin
    submit_answer(nothing; prob_num=713)
end

# ╔═╡ 1b043b90-84a3-11eb-0599-61d1224e3ccd
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

# ╔═╡ 1b043b90-84a3-11eb-1163-ef9d9850226f
begin
    submit_answer(nothing; prob_num=714)
end

# ╔═╡ 1b043b90-84a3-11eb-1760-e325d3800602
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

# ╔═╡ 1b043b90-84a3-11eb-2391-eb4f8fb3914b
begin
    submit_answer(nothing; prob_num=715)
end

# ╔═╡ 1b043b90-84a3-11eb-3ff6-0be355395381
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

# ╔═╡ 1b043b90-84a3-11eb-2ec9-9d0fcc3801f0
begin
    submit_answer(nothing; prob_num=716)
end

# ╔═╡ 1b043b90-84a3-11eb-079a-e32c2a0675aa
html"""
<h2>Problem 717: Summation of a Modular Formula</h2>
<p>For an odd prime $p$, define $f(p) = \left\lfloor\frac{2^{(2^p)}}{p}\right\rfloor\bmod{2^p}$<br />
For example, when $p=3$, $\lfloor 2^8/3\rfloor = 85 \equiv 5 \pmod 8$ and so $f(3) = 5$.</p> 

<p>Further define $g(p) = f(p)\bmod p$. You are given $g(31) = 17$.</p>

<p>Now define $G(N)$ to be the summation of $g(p)$ for all odd primes less than $N$.<br />
You are given $G(100) = 474$ and $G(10^4) = 2819236$.</p>

<p>Find $G(10^7)$</p>
"""

# ╔═╡ 1b043b90-84a3-11eb-3f77-d5fb6f9d1273
begin
    submit_answer(nothing; prob_num=717)
end

# ╔═╡ 1b043b90-84a3-11eb-21e9-cbe15f5d3b69
html"""
<h2>Problem 718: Unreachable Numbers</h2>
<p>Consider the equation
$17^pa+19^pb+23^pc = n$ where $a$, $b$, $c$ and $p$ are positive integers, i.e.
$a,b,c,p&gt;0$.</p>

<p>For a given $p$ there are some values of $n &gt; 0$ for which the equation cannot be solved. We call these <i>unreachable values</i>.</p>

<p>Define $G(p)$ to be the sum of all unreachable values of $n$ for the given value of $p$. For example $G(1) = 8253$ and $G(2)= 60258000$.</p>

<p>Find $G(6)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1b043b90-84a3-11eb-0182-8329401c1e46
begin
    submit_answer(nothing; prob_num=718)
end

# ╔═╡ 1b043b90-84a3-11eb-26e5-7729338d6921
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

# ╔═╡ 1b043b90-84a3-11eb-316c-ada018a32b48
begin
    submit_answer(nothing; prob_num=719)
end

# ╔═╡ 1b043b90-84a3-11eb-06b4-ab7aac81bc59
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

# ╔═╡ 1b043b90-84a3-11eb-27d2-df7e7b3bd6fc
begin
    submit_answer(nothing; prob_num=720)
end

# ╔═╡ 1b043b90-84a3-11eb-1aaa-33208a04d3fd
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

# ╔═╡ 1b043b90-84a3-11eb-37ef-7b1e11360ba4
begin
    submit_answer(nothing; prob_num=721)
end

# ╔═╡ 1b043b90-84a3-11eb-3812-d5333a6f18e8
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

# ╔═╡ 1b043b90-84a3-11eb-14dc-bb4d005a0ccf
begin
    submit_answer(nothing; prob_num=722)
end

# ╔═╡ 1b043b90-84a3-11eb-2cbc-2fa1cf434852
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

# ╔═╡ 1b043b90-84a3-11eb-1e1a-ddebedca76c4
begin
    submit_answer(nothing; prob_num=723)
end

# ╔═╡ 1b043b90-84a3-11eb-22f7-19e8e06b1758
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

# ╔═╡ 1b043b90-84a3-11eb-3ec2-f944bdf467e0
begin
    submit_answer(nothing; prob_num=724)
end

# ╔═╡ 1b043b90-84a3-11eb-12a2-d1e7202a9377
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

# ╔═╡ 1b043b90-84a3-11eb-0515-ef83431dd86b
begin
    submit_answer(nothing; prob_num=725)
end

# ╔═╡ Cell order:
# ╠═1b043b90-84a3-11eb-1913-ab2e072bc53f
# ╟─1b043b90-84a3-11eb-3751-f1bd7bdf5e39
# ╠═1b043b90-84a3-11eb-2012-d58872037d77
# ╟─1b043b90-84a3-11eb-1892-372849bd42dd
# ╠═1b043b90-84a3-11eb-3a9c-636173738b7b
# ╟─1b043b90-84a3-11eb-0160-8bec967e3a47
# ╠═1b043b90-84a3-11eb-3b8f-43c330274940
# ╟─1b043b90-84a3-11eb-3231-a769f8b47363
# ╠═1b043b90-84a3-11eb-308a-2d3123235b87
# ╟─1b043b90-84a3-11eb-1a57-f7d6c0c8da7c
# ╠═1b043b90-84a3-11eb-06fb-3719ea53d5c8
# ╟─1b043b90-84a3-11eb-17d5-43781219e478
# ╠═1b043b90-84a3-11eb-0697-b3765a43b2eb
# ╟─1b043b90-84a3-11eb-3527-e54197067332
# ╠═1b043b90-84a3-11eb-253c-914f773ad5a6
# ╟─1b043b90-84a3-11eb-35be-bd97e505c865
# ╠═1b043b90-84a3-11eb-39f6-6318b746bdba
# ╟─1b043b90-84a3-11eb-3ed7-4385c1bea49c
# ╠═1b043b90-84a3-11eb-1411-47c616a05055
# ╟─1b043b90-84a3-11eb-1dcb-539b3792e8eb
# ╠═1b043b90-84a3-11eb-35d9-a34fbd3b2dbe
# ╟─1b043b90-84a3-11eb-214e-3f1711f5efda
# ╠═1b043b90-84a3-11eb-3c31-37b78c1e0596
# ╟─1b043b90-84a3-11eb-1dad-85823670165b
# ╠═1b043b90-84a3-11eb-1890-4feaf5c971ba
# ╟─1b043b90-84a3-11eb-205d-63f448d7f67e
# ╠═1b043b90-84a3-11eb-38d2-6d4be14fe859
# ╟─1b043b90-84a3-11eb-0599-61d1224e3ccd
# ╠═1b043b90-84a3-11eb-1163-ef9d9850226f
# ╟─1b043b90-84a3-11eb-1760-e325d3800602
# ╠═1b043b90-84a3-11eb-2391-eb4f8fb3914b
# ╟─1b043b90-84a3-11eb-3ff6-0be355395381
# ╠═1b043b90-84a3-11eb-2ec9-9d0fcc3801f0
# ╟─1b043b90-84a3-11eb-079a-e32c2a0675aa
# ╠═1b043b90-84a3-11eb-3f77-d5fb6f9d1273
# ╟─1b043b90-84a3-11eb-21e9-cbe15f5d3b69
# ╠═1b043b90-84a3-11eb-0182-8329401c1e46
# ╟─1b043b90-84a3-11eb-26e5-7729338d6921
# ╠═1b043b90-84a3-11eb-316c-ada018a32b48
# ╟─1b043b90-84a3-11eb-06b4-ab7aac81bc59
# ╠═1b043b90-84a3-11eb-27d2-df7e7b3bd6fc
# ╟─1b043b90-84a3-11eb-1aaa-33208a04d3fd
# ╠═1b043b90-84a3-11eb-37ef-7b1e11360ba4
# ╟─1b043b90-84a3-11eb-3812-d5333a6f18e8
# ╠═1b043b90-84a3-11eb-14dc-bb4d005a0ccf
# ╟─1b043b90-84a3-11eb-2cbc-2fa1cf434852
# ╠═1b043b90-84a3-11eb-1e1a-ddebedca76c4
# ╟─1b043b90-84a3-11eb-22f7-19e8e06b1758
# ╠═1b043b90-84a3-11eb-3ec2-f944bdf467e0
# ╟─1b043b90-84a3-11eb-12a2-d1e7202a9377
# ╠═1b043b90-84a3-11eb-0515-ef83431dd86b