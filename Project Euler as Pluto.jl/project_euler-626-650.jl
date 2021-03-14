### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1af2af60-84a3-11eb-1736-f11509dde600
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1af2af60-84a3-11eb-3f46-1753cf7665a6
html"""
<h2>Problem 626: Counting Binary Matrices</h2>
<p>A binary matrix is a matrix consisting entirely of 0s and 1s. Consider the following transformations that can be performed on a binary matrix:</p>

<ul>
<li>Swap any two rows</li>
<li>Swap any two columns</li>
<li>Flip all elements in a single row (1s become 0s, 0s become 1s)</li>
<li>Flip all elements in a single column</li>
</ul>

<p>Two binary matrices $A$ and $B$ will be considered <i>equivalent</i> if there is a sequence of such transformations that when applied to $A$ yields $B$. For example, the following two matrices are equivalent:</p>
$A=\begin{pmatrix} 
  1 &amp; 0 &amp; 1 \\ 
  0 &amp; 0 &amp; 1 \\
  0 &amp; 0 &amp; 0 \\
\end{pmatrix} \quad B=\begin{pmatrix} 
  0 &amp; 0 &amp; 0 \\ 
  1 &amp; 0 &amp; 0 \\
  0 &amp; 0 &amp; 1 \\
\end{pmatrix}$
<p>via the sequence of two transformations "Flip all elements in column 3" followed by "Swap rows 1 and 2".</p>

<p>Define $c(n)$ to be the maximum number of $n\times n$ binary matrices that can be found such that no two are equivalent. For example, $c(3)=3$. You are also given that $c(5)=39$ and $c(8)=656108$.</p>

<p>Find $c(20)$, and give your answer modulo $1\,001\,001\,011$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-21fe-4d7bcfebb995
begin
    submit_answer(nothing; prob_num=626)
end

# ╔═╡ 1af2af60-84a3-11eb-101b-ffbc954f91c9
html"""
<h2>Problem 627: Counting products</h2>
<p>Consider the set $S$ of all possible products of $n$ positive integers not exceeding $m$, that is<br /> 
$S=\{ x_1x_2\dots x_n \, | \, 1 \le x_1, x_2, ..., x_n \le m \}$.<br />

Let $F(m,n)$ be the number of the distinct elements of the set $S$.<br />
For example, $F(9, 2) = 36$ and $F(30,2)=308$.</p>

<p>Find $F(30, 10001)\text{ mod }1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-11ce-cf1e84670a9b
begin
    submit_answer(nothing; prob_num=627)
end

# ╔═╡ 1af2af60-84a3-11eb-1811-81a0a59c2150
html"""
<h2>Problem 628: Open chess positions</h2>
<p>
A position in chess is an (orientated) arrangement of chess pieces placed on a chessboard of given size. In the following, we consider all positions in which $n$ pawns are placed on a  $n \times n$  
board in such a way, that there is a single pawn in every row and every column.

</p>
<p>
We call such a position an <i>open</i> position, if a rook, starting at the (empty) lower left corner and using only moves towards the right or upwards, can reach the upper right corner without moving onto any field occupied by a pawn. 
</p>
<p>Let $f(n)$ be the number of open positions for a $n \times n$ chessboard.<br />
For example, $f(3)=2$, illustrated by the two open positions for a $3  \times 3$ chessboard below.

</p>
<table align="center"><tr>
<td><img src="project/images/p628_chess4.png" alt="Open position 1" /></td><td width="60"></td><td><img src="project/images/p628_chess5.png" alt="Open position 2" /></td>
</tr>
</table>
<p>
You are also given $f(5)=70$.</p>
<p>Find $f(10^8)$ modulo $1\,008\,691\,207$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-0d37-6fee12992cf6
begin
    submit_answer(nothing; prob_num=628)
end

# ╔═╡ 1af2af60-84a3-11eb-27a2-8d13151af18a
html"""
<h2>Problem 629: Scatterstone Nim</h2>
<p>Alice and Bob are playing a modified game of Nim called Scatterstone Nim, with Alice going first, alternating turns with Bob. The game begins with an arbitrary set of stone piles with a total number of stones equal to $n$.</p>

<p>During a player's turn, he/she must pick a pile having at least $2$ stones and perform a split operation, dividing the pile into an arbitrary set of $p$ non-empty, arbitrarily-sized piles where $2 \leq p \leq k$ for some fixed constant $k$. For example, a pile of size $4$ can be split into $\{1, 3\}$ or $\{2, 2\}$, or $\{1, 1, 2\}$ if $k = 3$ and in addition $\{1, 1, 1, 1\}$ if $k = 4$.</p>

<p>If no valid move is possible on a given turn, then the other player wins the game.</p>

<p>A winning position is defined as a set of stone piles where a player can ultimately ensure victory no matter what the other player does. </p>

<p>Let $f(n,k)$ be the number of winning positions for Alice on her first turn, given parameters $n$ and $k$. For example, $f(5, 2) = 3$ with winning positions $\{1, 1, 1, 2\}, \{1, 4\}, \{2, 3\}$. In contrast, $f(5, 3) = 5$ with winning positions $\{1, 1, 1, 2\}, \{1, 1, 3\}, \{1, 4\}, \{2, 3\}, \{5\}$.</p>

<p>Let $g(n)$ be the sum of $f(n,k)$ over all $2 \leq k \leq n$. For example, $g(7)=66$ and $g(10)=291$.</p>

<p>Find $g(200)$ mod $(10^9 + 7)$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-3aac-61a4a0f2ad68
begin
    submit_answer(nothing; prob_num=629)
end

# ╔═╡ 1af2af60-84a3-11eb-0a9d-a7b6120ca56d
html"""
<h2>Problem 630: Crossed lines</h2>
<p>
Given a set, $L$, of unique lines, let $M(L)$ be the number of lines in the set and let $S(L)$ be the sum over every line of the number of times that line is crossed by another line in the set.  For example, two sets of three lines are shown below:
</p>
<div align="center"><img src="project/images/p630_threelines.png" alt="crossed lines" /></div>
<p>
In both cases M(L) is 3 and S(L) is 6: each of the three lines is crossed by two other lines.  Note that even if the lines cross at a single point, all of the separate crossings of lines are counted.
</p>
<p>
Consider points ($T_{2k−1}$, $T_{2k}$), for integer $k &gt;= 1$, generated in the following way:
</p>
<p>
$S_0 	=  	290797$<br /> 
$S_{n+1} 	=  	{S_n}^2 \:\: \rm{mod} \:\: 50515093$<br />
$T_n 	=  	( S_n \:\: \rm{mod} \:\: 2000 ) − 1000$
</p>
<p>
For example, the first three points are: (527, 144), (−488, 732), (−454, −947).  Given the first $n$ points generated in this manner, let $L_n$ be the set of <b>unique</b> lines that can be formed by joining each point with every other point, the lines being extended indefinitely in both directions.  We can then define $M(L_n)$ and $S(L_n)$ as described above.
</p>
<p>
For example, $M(L_3) = 3$ and $S(L_3) = 6$.  Also $M(L_{100}) = 4948$ and $S(L_{100}) = 24477690$.
</p><p>
Find $S(L_{2500})$.
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-39a9-a7ea689e665f
begin
    submit_answer(nothing; prob_num=630)
end

# ╔═╡ 1af2af60-84a3-11eb-1afd-c57c8826e21c
html"""
<h2>Problem 631: Constrained Permutations</h2>
<p>Let $(p_1 p_2 \ldots p_k)$ denote the permutation of the set ${1, ..., k}$ that maps $p_i\mapsto i$. Define the length of the permutation to be $k$; note that the empty permutation $()$ has length zero.</p>

<p>Define an <i>occurrence</i> of a permutation $p=(p_1 p_2 \ldots p_k)$ in a permutation $P=(P_1 P_2 \ldots P_n)$ to be a sequence $1\leq t_1 &lt; t_2 &lt; \cdots &lt; t_k \leq n$ such that $p_i &lt; p_j$ if and only if $P_{t_i} &lt; P_{t_j}$ for all $i,j \in \{1, ..., k\}$.</p>

<p>For example, $(1243)$ occurs twice in the permutation $(314625)$: once as the 1st, 3rd, 4th and 6th elements $(3\,\,46\,\,5)$, and once as the 2nd, 3rd, 4th and 6th elements $(\,\,146\,\,5)$.</p>

<p>Let $f(n, m)$ be the number of permutations $P$ of length at most $n$ such that there is no occurrence of the permutation $1243$ in $P$ and there are at most $m$ occurrences of the permutation $21$ in $P$.</p>

<p>For example, $f(2,0) = 3$, with the permutations $()$, $(1)$, $(1,2)$ but not $(2,1)$.</p>

<p>You are also given that $f(4, 5) = 32$ and $f(10, 25) = 294\,400$.</p>

<p>Find $f(10^{18}, 40)$ modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-20cd-39243e84eb52
begin
    submit_answer(nothing; prob_num=631)
end

# ╔═╡ 1af2af60-84a3-11eb-0e8c-a183a0126cbc
html"""
<h2>Problem 632: Square prime factors</h2>
<p>For an integer $n$, we define the <i>square prime factors</i> of $n$ to be the primes whose square divides $n$. For example, the square prime factors of $1500=2^2 \times 3 \times 5^3$ are $2$ and $5$.</p>

<p>Let $C_k(N)$ be the number of integers between $1$ and $N$ inclusive with exactly $k$ square prime factors. You are given some values of $C_k(N)$ in the table below.</p>


\[\begin{array}{|c|c|c|c|c|c|c|}
\hline

&amp; k = 0 &amp; k = 1 &amp; k = 2 &amp; k = 3 &amp; k = 4 &amp; k = 5 \\
\hline
N=10 &amp; 7 &amp; 3 &amp; 0 &amp; 0 &amp; 0 &amp; 0 \\
\hline
N=10^2 &amp; 61 &amp; 36 &amp; 3 &amp; 0 &amp; 0 &amp; 0 \\
\hline
N=10^3 &amp; 608 &amp; 343 &amp; 48 &amp; 1 &amp; 0 &amp; 0 \\
\hline
N=10^4 &amp; 6083 &amp; 3363 &amp; 533 &amp; 21 &amp; 0 &amp; 0 \\
\hline
N=10^5 &amp; 60794 &amp; 33562 &amp; 5345 &amp; 297 &amp; 2 &amp; 0 \\
\hline
N=10^6 &amp; 607926 &amp; 335438 &amp; 53358 &amp; 3218 &amp; 60 &amp; 0 \\
\hline
N=10^7 &amp; 6079291 &amp; 3353956 &amp; 533140 &amp; 32777 &amp; 834 &amp; 2 \\
\hline
N=10^8 &amp; 60792694 &amp; 33539196 &amp; 5329747 &amp; 329028 &amp; 9257 &amp; 78 \\
\hline
\end{array}\]


<p>Find the product of all non-zero $C_k(10^{16})$. Give the result reduced modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-0ec6-093d13ad63fc
begin
    submit_answer(nothing; prob_num=632)
end

# ╔═╡ 1af2af60-84a3-11eb-2790-a91b6d57736a
html"""
<h2>Problem 633: Square prime factors II</h2>
<p>For an integer $n$, we define the <i>square prime factors</i> of $n$ to be the primes whose square divides $n$. For example, the square prime factors of $1500=2^2 \times 3 \times 5^3$ are $2$ and $5$.</p>

<p>Let $C_k(N)$ be the number of integers between $1$ and $N$ inclusive with exactly $k$ square prime factors. It can be shown that with growing $N$ the ratio $\frac{C_k(N)}{N}$ gets arbitrarily close to a constant $c_{k}^{\infty}$, as suggested by the table below.</p>

\[\begin{array}{|c|c|c|c|c|c|}
\hline
&amp; k = 0 &amp; k = 1 &amp; k = 2 &amp; k = 3 &amp; k = 4 \\
\hline
C_k(10) &amp; 7 &amp; 3 &amp; 0 &amp; 0 &amp; 0 \\
\hline
C_k(10^2) &amp; 61 &amp; 36 &amp; 3 &amp; 0 &amp; 0 \\
\hline
C_k(10^3) &amp; 608 &amp; 343 &amp; 48 &amp; 1 &amp; 0 \\
\hline
C_k(10^4) &amp; 6083 &amp; 3363 &amp; 533 &amp; 21 &amp; 0 \\
\hline
C_k(10^5) &amp; 60794 &amp; 33562 &amp; 5345 &amp; 297 &amp; 2 \\
\hline
C_k(10^6) &amp; 607926 &amp; 335438 &amp; 53358 &amp; 3218 &amp; 60 \\
\hline
C_k(10^7) &amp; 6079291 &amp; 3353956 &amp; 533140 &amp; 32777 &amp; 834 \\
\hline
C_k(10^8) &amp; 60792694 &amp; 33539196 &amp; 5329747 &amp;  329028 &amp; 9257 \\
\hline
C_k(10^9) &amp; 607927124 &amp; 335389706 &amp; 53294365 &amp; 3291791 &amp; 95821 \\
\hline
c_k^{\infty} &amp; \frac{6}{\pi^2} &amp; 3.3539\times 10^{-1} &amp; 5.3293\times 10^{-2} &amp; 3.2921\times 10^{-3} &amp; 9.7046\times 10^{-5}\\
\hline
\end{array}\]
Find $c_{7}^{\infty}$. Give the result in scientific notation rounded to 5 significant digits, using a $e$ to separate mantissa and exponent. E.g. if the answer were $0.000123456789$, then the answer format would be $1.2346e\text{-}4$.
"""

# ╔═╡ 1af2af60-84a3-11eb-3e80-fb86e6a79ad3
begin
    submit_answer(nothing; prob_num=633)
end

# ╔═╡ 1af2af60-84a3-11eb-1165-cf8ee8e2dab6
html"""
<h2>Problem 634: Numbers of the form $a^2b^3$</h2>
<p>
Define $F(n)$ to be the number of integers $x≤n$ that can be written in the form $x=a^2b^3$, where $a$ and $b$ are integers not necessarily different and both greater than 1.</p>
<p>
For example, $32=2^2\times 2^3$  and $72=3^2\times 2^3$ are the only two integers less than 100 that can be written in this form. Hence, $F(100)=2$.
</p>
<p>
Further you are given $F(2\times 10^4)=130$ and $F(3\times 10^6)=2014$.
</p>
<p>
Find $F(9\times 10^{18})$.
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-165f-319af7f0dde0
begin
    submit_answer(nothing; prob_num=634)
end

# ╔═╡ 1af2af60-84a3-11eb-2c21-034fa424eff2
html"""
<h2>Problem 635: Subset sums</h2>
<p>
Let $A_q(n)$ be the number of subsets, $B$, of the set $\{1, 2, ..., q \cdot n\}$ that satisfy two conditions:<br />
1) $B$ has exactly $n$ elements;<br />
2) the sum of the elements of $B$ is divisible by $n$.
</p>
<p>
E.g. $A_2(5)=52$ and $A_3(5)=603$.
</p>
Let $S_q(L)$ be $\sum A_q(p)$ where the sum is taken over all primes $p \le L$.<br />
E.g. $S_2(10)=554$, $S_2(100)$ mod $1\,000\,000\,009=100433628$ and<br /> $S_3(100)$ mod $1\,000\,000\,009=855618282$.

<p>
Find $S_2(10^8)+S_3(10^8)$. Give your answer modulo $1\,000\,000\,009$.
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-262a-658be4633c3b
begin
    submit_answer(nothing; prob_num=635)
end

# ╔═╡ 1af2af60-84a3-11eb-2919-71bbb9f4dc19
html"""
<h2>Problem 636: Restricted Factorisations</h2>
<p>Consider writing a natural number as product of powers of natural numbers with given exponents, additionally requiring different base numbers for each power.</p>

<p>For example, $256$ can be written as a product of a square and a fourth power in three ways such that the base numbers are different.<br />
That is, $256=1^2\times 4^4=4^2\times 2^4=16^2\times 1^4$</p>

<p>Though $4^2$ and $2^4$ are both equal, we are concerned only about the base numbers in this problem. Note that permutations are not considered distinct, for example $16^2\times 1^4$ and $1^4 \times 16^2$ are considered to be the same.</p>

<p>Similarly, $10!$ can be written as a product of one natural number, two squares and three cubes in two ways ($10!=42\times5^2\times4^2\times3^3\times2^3\times1^3=21\times5^2\times2^2\times4^3\times3^3\times1^3$) whereas $20!$ can be given the same representation in $41680$ ways.</p>

<p>Let $F(n)$ denote the number of ways in which $n$ can be written as a product of one natural number, two squares, three cubes and four fourth powers.</p>

<p>You are given that $F(25!)=4933$, $F(100!) \bmod 1\,000\,000\,007=693\,952\,493$,<br />
and $F(1\,000!) \bmod 1\,000\,000\,007=6\,364\,496$.</p>

<p>Find $F(1\,000\,000!) \bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-14cf-892e44ac8e24
begin
    submit_answer(nothing; prob_num=636)
end

# ╔═╡ 1af2af60-84a3-11eb-08d6-0f1b2d02d743
html"""
<h2>Problem 637: Flexible digit sum</h2>
<p>
Given any positive integer $n$, we can construct a new integer by inserting plus signs between some of the digits of the base $B$ representation of $n$, and then carrying out the additions.
</p>
<p>
For example, from $n=123_{10}$  ($n$ in base 10) we can construct the four base 10 integers $123_{10}$,  $1+23=24_{10}$, $12+3=15_{10}$ and $1+2+3=6_{10}$
</p>
<p>
Let $f(n,B)$  be the smallest number of steps needed to arrive at a single-digit number in base $B$. For example, $f(7,10)=0$ and $f(123,10)=1$.
</p>
<p>
Let $g(n,B_1,B_2)$ be the sum of the positive integers $i$ not exceeding $n$ such that $f(i,B_1)=f(i,B_2)$.
</p>
<p>
You are given $g(100,10,3)=3302$. 
</p>
<p>
Find $g(10^7,10,3)$
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-2843-55f04efacba1
begin
    submit_answer(nothing; prob_num=637)
end

# ╔═╡ 1af2af60-84a3-11eb-2001-cf9a89bb5ec7
html"""
<h2>Problem 638: Weighted lattice paths</h2>
Let $P_{a,b}$ denote a path in a $a\times b$ lattice grid with following properties:
<ul>
<li>The path begins at $(0,0)$ and ends at $(a,b)$.</li>
<li>The path consists only of unit moves upwards or to the right; that is the coordinates are increasing with every move.</li>
</ul>

Denote $A(P_{a,b})$ to be the area under the path. For the example of a $P_{4,3}$ path given below, the area equals 6.

<div class="center">
<img src="project/images/p638_lattice_area.png" alt="crossed lines" />
</div>
<p>
Define $G(P_{a,b},k)=k^{A(P_{a,b})}$. Let $C(a,b,k)$ equal the sum of $G(P_{a,b},k)$ over all valid paths in a $a\times b$ lattice grid. 
</p>
<p>
You are given that
</p>
<ul>
<li>$C(2,2,1)=6$</li>
<li>$C(2,2,2)=35$</li>
<li>$C(10,10,1)=184\,756$</li>
<li>$C(15,10,3) \equiv 880\,419\,838 \mod 1\,000\,000\,007$</li>
<li>$C(10\,000,10\,000,4) \equiv 395\,913\,804 \mod 1\,000\,000\,007$</li>
</ul>

Calculate $\displaystyle\sum_{k=1}^7 C(10^k+k, 10^k+k,k)$ . Give your answer modulo $1\,000\,000\,007$
"""

# ╔═╡ 1af2af60-84a3-11eb-1b75-dfec21f24777
begin
    submit_answer(nothing; prob_num=638)
end

# ╔═╡ 1af2af60-84a3-11eb-285e-d7d4c6b9ae50
html"""
<h2>Problem 639: Summing a multiplicative function</h2>
<p>A <b>multiplicative function</b> $f(x)$ is a function over positive integers satisfying $f(1)=1$ and $f(a b)=f(a) f(b)$ for any two coprime positive integers $a$ and $b$.</p>

<p>For integer $k$ let $f_k(n)$ be a multiplicative function additionally satisfying $f_k(p^e)=p^k$ for any prime $p$ and any integer $e&gt;0$.<br /> 
For example, $f_1(2)=2$, $f_1(4)=2$, $f_1(18)=6$ and $f_2(18)=36$.</p>

<p>Let $\displaystyle S_k(n)=\sum_{i=1}^{n} f_k(i)$.
For example, $S_1(10)=41$, $S_1(100)=3512$, $S_2(100)=208090$, $S_1(10000)=35252550$ and $\displaystyle \sum_{k=1}^{3} S_k(10^{8}) \equiv 338787512 \pmod{ 1\,000\,000\,007}$.</p>

<p>Find $\displaystyle \sum_{k=1}^{50} S_k(10^{12}) \bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-399e-635e1bba6ef1
begin
    submit_answer(nothing; prob_num=639)
end

# ╔═╡ 1af2af60-84a3-11eb-06e5-996e4730a79f
html"""
<h2>Problem 640: Shut the Box</h2>
<p>Bob plays a single-player game of chance using two standard 6-sided dice and twelve cards numbered 1 to 12. When the game starts, all cards are placed face up on a table.</p>

<p>Each turn, Bob rolls both dice, getting numbers $x$ and $y$ respectively, each in the range 1,...,6. He must choose amongst three options: turn over card $x$, card $y$, or card $x+y$. (If the chosen card is already face down, it is turned to face up, and vice versa.)</p>

<p>If Bob manages to have all twelve cards face down at the same time, he wins.</p>

<p>Alice plays a similar game, except that instead of dice she uses two fair coins, counting heads as 2 and tails as 1, and that she uses four cards instead of twelve. Alice finds that, with the optimal strategy for her game, the expected number of turns taken until she wins is approximately 5.673651.</p>

<p>Assuming that Bob plays with an optimal strategy, what is the expected number of turns taken until he wins? Give your answer rounded to 6 places after the decimal point.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-0813-efaaa299f737
begin
    submit_answer(nothing; prob_num=640)
end

# ╔═╡ 1af2af60-84a3-11eb-0da0-a9376c310ae2
html"""
<h2>Problem 641: A Long Row of Dice</h2>
<p>Consider a row of $n$ dice all showing 1.</p>

<p>First turn every second die,$ (2,4,6,\ldots)$, so that the number showing is increased by 1. Then turn every third die. The sixth die will now show a 3. Then turn every fourth die and so on until every $n$th die (only the last die) is turned. If the die to be turned is showing a 6 then it is changed to show a 1.</p>

<p>Let $f(n)$ be the number of dice that are showing a 1 when the process finishes. You are given $f(100)=2$ and $f(10^8) = 69$.</p>

<p>Find $f(10^{36})$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-0560-db6aa2292d62
begin
    submit_answer(nothing; prob_num=641)
end

# ╔═╡ 1af2af60-84a3-11eb-0bb5-c3b1c069d107
html"""
<h2>Problem 642: Sum of largest prime factors</h2>
<p>Let $f(n)$ be the largest prime factor of $n$ and $\displaystyle F(n) = \sum_{i=2}^{n}f(i)$.<br />
For example $F(10)=32$, $F(100)=1915$ and $F(10000)=10118280$.</p>
<p>
Find $F(201820182018)$. Give your answer modulus $10^9$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-358e-f5defc3f3cf7
begin
    submit_answer(nothing; prob_num=642)
end

# ╔═╡ 1af2af60-84a3-11eb-302c-4123a3a6053d
html"""
<h2>Problem 643: 2-Friendly</h2>
<p>Two positive integers $a$ and $b$ are <em>2-friendly</em> when $\gcd(a,b) = 2^t, t&gt;0$. For example, 24 and 40 are 2-friendly because $\gcd(24,40) = 8 = 2^3$ while 24 and 36 are not because $\gcd(24,36) = 12 = 2^2\cdot 3$ not a power of 2.</p>

<p>Let $f(n)$ be the number of pairs, $(p,q)$, of positive integers with $1\le p\lt q\le n$ such that $p$ and $q$ are 2-friendly. You are given $f(10^2) = 1031$ and $f(10^6) = 321418433$ modulo $1\,000\,000\,007$.</p>

<p>Find $f(10^{11})$ modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-2755-7555e07d09f1
begin
    submit_answer(nothing; prob_num=643)
end

# ╔═╡ 1af2af60-84a3-11eb-3ba8-35bb68b9b7b9
html"""
<h2>Problem 644: Squares on the line</h2>
<p>Sam and Tom are trying a game of (partially) covering a given line segment of length $L$ by taking turns in placing unit squares onto the line segment. </p>

<p>As illustrated below, the squares may be positioned in two different ways, either "straight" by placing the midpoints of two opposite sides on the line segment, or "diagonal" by placing two opposite corners on the line segment. Newly placed squares may touch other squares, but are not allowed to overlap any other square laid down before.<br />
The player who is able to place the last unit square onto the line segment wins.</p>
<div class="center">
<img src="project/images/p644_squareline.png" alt="p644_squareline.png" />
</div>
<p>
With Sam starting each game by placing the first square, they quickly realise that Sam can easily win every time by placing the first square in the middle of the line segment, making the game boring. </p>
<p>
Therefore they decide to randomise Sam's first move, by first tossing a fair coin to determine whether the square will be placed straight or diagonal onto the line segment and then choosing the actual position on the line segment randomly with all possible positions being equally likely. Sam's gain of the game is defined to be 0 if he loses the game and $L$ if he wins. Assuming optimal play of both players after Sam's initial move, you can see that Sam's expected gain, called $e(L)$, is only dependent on the length of the line segment.</p>
<p>
For example, if $L=2$, Sam will win with a probability of 1, so $e(2)= 2$. <br />
Choosing $L=4$, the winning probability will be 0.33333333 for the straight case and 0.22654092 for the diagonal case, leading to $e(4)=1.11974851$ (rounded to 8 digits after the decimal point each). </p>
<p>
Being interested in the optimal value of $L$ for Sam, let's define $f(a,b)$ to be the maximum of $e(L)$ for some $L \in [a,b]$. <br />
You are given $f(2,10)=2.61969775$, being reached for $L= 7.82842712$, and $f(10,20)=
5.99374121$ (rounded to 8 digits each).</p>
<p>
Find $f(200,500)$, rounded to 8 digits after the decimal point.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-2e02-75262990e0ce
begin
    submit_answer(nothing; prob_num=644)
end

# ╔═╡ 1af2af60-84a3-11eb-21ce-ef8160d4d248
html"""
<h2>Problem 645: Every Day is a Holiday</h2>
<p>On planet J, a year lasts for $D$ days. Holidays are defined by the two following rules.</p>
<ol>
<li>At the beginning of the reign of the current Emperor, his birthday is declared a holiday from that year onwards.</li>
<li>If both the day before and after a day $d$ are holidays, then $d$ also becomes a holiday.</li>
</ol>
<p>Initially there are no holidays. Let $E(D)$ be the expected number of Emperors to reign before all the days of the year are holidays, assuming that their birthdays are independent and uniformly distributed throughout the $D$ days of the year.</p>
<p>You are given $E(2)=1$, $E(5)=31/6$, $E(365)\approx 1174.3501$.</p>
<p>Find $E(10000)$. Give your answer rounded to 4 digits after the decimal point.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-0e6f-7d61242dcf0e
begin
    submit_answer(nothing; prob_num=645)
end

# ╔═╡ 1af2af60-84a3-11eb-14cf-f1e9bc796094
html"""
<h2>Problem 646: Bounded Divisors</h2>
<p>
Let $n$ be a natural number and  $p_1^{\alpha_1}\cdot p_2^{\alpha_2}...p_k^{\alpha_k}$ its prime factorisation.<br />
Define the <b>Liouville function</b> $\lambda(n)$ as $\lambda(n) = (-1)^{\sum\limits_{i=1}^{k}\alpha_i}$.<br />
(i.e. $-1$ if the sum of the exponents $\alpha_i$ is odd and $1$ if the sum of the exponents is even. )<br />
Let $S(n,L,H)$  be the sum $\lambda(d) \cdot d$ over all divisors $d$ of $n$ for which $L \leq d \leq H$.
</p>
<p>
You are given:<br />
$\bullet\, S(10! , 100, 1000) = 1457$<br />
$\bullet\, S(15!,  10^3, 10^5) = -107974$<br />
$\bullet\, S(30!,10^8, 10^{12}) = 9766732243224$.<br />
</p>
<p>
Find $S(70!,10^{20}, 10^{60})$ and give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-2a25-efc9903e9bc1
begin
    submit_answer(nothing; prob_num=646)
end

# ╔═╡ 1af2af60-84a3-11eb-2af8-c5fecd350e18
html"""
<h2>Problem 647: Linear Transformations of Polygonal Numbers</h2>
<p>
It is possible to find positive integers $A$ and $B$ such that given any triangular number, $T_n$, then $AT_n +B$ is always a triangular number. We define $F_3(N)$ to be the sum of $(A+B)$ over all such possible pairs $(A,B)$ with $\max(A,B)\le N$. For example $F_3(100) = 184$.
</p>
<p>
Polygonal numbers are generalisations of triangular numbers. Polygonal numbers with parameter $k$ we call $k$-gonal numbers. The formula for the $n$th $k$-gonal number is $\frac 12n\big(n(k-2)+4-k\big)$ where $n \ge 1$. For example when $k = 3$ we get $\frac 12n(n+1)$ the formula for triangular numbers.
</p>
<p>
The statement above is true for pentagonal, heptagonal and in fact any $k$-gonal number with $k$ odd. For example when $k=5$ we get the pentagonal numbers and we can find positive integers $A$ and $B$ such that given any pentagonal number, $P_n$, then $AP_n+B$ is always a pentagonal number. We define $F_5(N)$ to be the sum of $(A+B)$ over all such possible pairs $(A,B)$ with $\max(A,B)\le N$.
</p>
<p>
Similarly we define $F_k(N)$ for odd $k$. You are given $\sum_{k} F_k(10^3) = 14993$ where the sum is over all odd $k = 3,5,7,\ldots$.
</p>
<p>
Find $\sum_{k} F_k(10^{12})$ where the sum is over all odd $k = 3,5,7,\ldots$
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-13b5-6145722028b8
begin
    submit_answer(nothing; prob_num=647)
end

# ╔═╡ 1af2af60-84a3-11eb-2d9c-234703a73e1d
html"""
<h2>Problem 648: Skipping Squares</h2>
<p>For some fixed $\rho \in [0, 1]$, we begin a sum $s$ at $0$ and repeatedly apply a process: With probability $\rho$, we add $1$ to $s$, otherwise we add $2$ to $s$.</p>

<p>The process ends when either $s$ is a perfect square or $s$ exceeds $10^{18}$, whichever occurs first. For example, if $s$ goes through $0, 2, 3, 5, 7, 9$, the process ends at $s=9$, and two squares $1$ and $4$ were skipped over.</p>

<p>Let $f(\rho)$ be the expected number of perfect squares skipped over when the process finishes.</p>

<p>It can be shown that the power series for $f(\rho)$ is $\sum_{k=0}^\infty a_k \rho^k$ for a suitable (unique) choice of coefficients $a_k$. Some of the first few coefficients are $a_0=1$, $a_1=0$, $a_5=-18$, $a_{10}=45176$.</p>

<p>Let $F(n) = \sum_{k=0}^n a_k$. You are given that $F(10) = 53964$ and $F(50) \equiv 842418857 \pmod{10^9}$.</p>

<p>Find $F(1000)$, and give your answer modulo $10^9$.</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-3df4-05622265d7a3
begin
    submit_answer(nothing; prob_num=648)
end

# ╔═╡ 1af2af60-84a3-11eb-3791-4963b0aad361
html"""
<h2>Problem 649: Low-Prime Chessboard Nim</h2>
Alice and Bob are taking turns playing a game consisting of $c$ different coins on a chessboard of size $n$ by $n$.

<p>The game may start with any arrangement of $c$ coins in squares on the board. It is possible at any time for more than one coin to occupy the same square on the board at the same time. The coins are distinguishable, so swapping two coins gives a different arrangement if (and only if) they are on different squares.</p>

<p>On a given turn, the player must choose a coin and move it either left or up $2$, $3$, $5$, or $7$ spaces in a single direction. The only restriction is that the coin cannot move off the edge of the board.</p>

<p>The game ends when a player is unable to make a valid move, thereby granting the other player the victory.</p>

<p>Assuming that Alice goes first and that both players are playing optimally, let $M(n, c)$ be the number of possible starting arrangements for which Alice can ensure her victory, given a board of size $n$ by $n$ with $c$ distinct coins.</p>

<p>For example, $M(3, 1) = 4$, $M(3, 2) = 40$, and $M(9, 3) = 450304$.</p>

<p>What are the last $9$ digits of $M(10\,000\,019, 100)$?</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-15f3-59864044b389
begin
    submit_answer(nothing; prob_num=649)
end

# ╔═╡ 1af2af60-84a3-11eb-36da-4340932d5bfc
html"""
<h2>Problem 650: Divisors of Binomial Product</h2>
<p>
Let $B(n) = \displaystyle \prod_{k=0}^n {n \choose k}$, a product of binomial coefficients.<br />
For example, $B(5) = {5 \choose 0} \times {5 \choose 1} \times {5 \choose 2}  \times {5 \choose 3} \times {5 \choose 4} \times {5 \choose 5} = 1 \times 5 \times 10 \times 10 \times 5 \times 1 = 2500$.
</p>
<p>
Let $D(n) = \displaystyle \sum_{d|B(n)} d$, the sum of the divisors of $B(n)$.<br />
For example, the divisors of B(5) are 1, 2, 4, 5, 10, 20, 25, 50, 100, 125, 250, 500, 625, 1250 and 2500,<br />
so D(5) = 1 + 2 + 4 + 5 + 10 + 20 + 25 + 50 + 100 + 125 + 250 + 500 + 625 + 1250 + 2500 = 5467.
</p>
<p>
Let $S(n) = \displaystyle \sum_{k=1}^n D(k)$.<br />
You are given $S(5) = 5736$, $S(10) = 141740594713218418$ and $S(100)$ mod $1\,000\,000\,007 = 332792866$.
</p>
<p>
Find $S(20\,000)$ mod $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1af2af60-84a3-11eb-082c-578280af3317
begin
    submit_answer(nothing; prob_num=650)
end

# ╔═╡ Cell order:
# ╠═1af2af60-84a3-11eb-1736-f11509dde600
# ╟─1af2af60-84a3-11eb-3f46-1753cf7665a6
# ╠═1af2af60-84a3-11eb-21fe-4d7bcfebb995
# ╟─1af2af60-84a3-11eb-101b-ffbc954f91c9
# ╠═1af2af60-84a3-11eb-11ce-cf1e84670a9b
# ╟─1af2af60-84a3-11eb-1811-81a0a59c2150
# ╠═1af2af60-84a3-11eb-0d37-6fee12992cf6
# ╟─1af2af60-84a3-11eb-27a2-8d13151af18a
# ╠═1af2af60-84a3-11eb-3aac-61a4a0f2ad68
# ╟─1af2af60-84a3-11eb-0a9d-a7b6120ca56d
# ╠═1af2af60-84a3-11eb-39a9-a7ea689e665f
# ╟─1af2af60-84a3-11eb-1afd-c57c8826e21c
# ╠═1af2af60-84a3-11eb-20cd-39243e84eb52
# ╟─1af2af60-84a3-11eb-0e8c-a183a0126cbc
# ╠═1af2af60-84a3-11eb-0ec6-093d13ad63fc
# ╟─1af2af60-84a3-11eb-2790-a91b6d57736a
# ╠═1af2af60-84a3-11eb-3e80-fb86e6a79ad3
# ╟─1af2af60-84a3-11eb-1165-cf8ee8e2dab6
# ╠═1af2af60-84a3-11eb-165f-319af7f0dde0
# ╟─1af2af60-84a3-11eb-2c21-034fa424eff2
# ╠═1af2af60-84a3-11eb-262a-658be4633c3b
# ╟─1af2af60-84a3-11eb-2919-71bbb9f4dc19
# ╠═1af2af60-84a3-11eb-14cf-892e44ac8e24
# ╟─1af2af60-84a3-11eb-08d6-0f1b2d02d743
# ╠═1af2af60-84a3-11eb-2843-55f04efacba1
# ╟─1af2af60-84a3-11eb-2001-cf9a89bb5ec7
# ╠═1af2af60-84a3-11eb-1b75-dfec21f24777
# ╟─1af2af60-84a3-11eb-285e-d7d4c6b9ae50
# ╠═1af2af60-84a3-11eb-399e-635e1bba6ef1
# ╟─1af2af60-84a3-11eb-06e5-996e4730a79f
# ╠═1af2af60-84a3-11eb-0813-efaaa299f737
# ╟─1af2af60-84a3-11eb-0da0-a9376c310ae2
# ╠═1af2af60-84a3-11eb-0560-db6aa2292d62
# ╟─1af2af60-84a3-11eb-0bb5-c3b1c069d107
# ╠═1af2af60-84a3-11eb-358e-f5defc3f3cf7
# ╟─1af2af60-84a3-11eb-302c-4123a3a6053d
# ╠═1af2af60-84a3-11eb-2755-7555e07d09f1
# ╟─1af2af60-84a3-11eb-3ba8-35bb68b9b7b9
# ╠═1af2af60-84a3-11eb-2e02-75262990e0ce
# ╟─1af2af60-84a3-11eb-21ce-ef8160d4d248
# ╠═1af2af60-84a3-11eb-0e6f-7d61242dcf0e
# ╟─1af2af60-84a3-11eb-14cf-f1e9bc796094
# ╠═1af2af60-84a3-11eb-2a25-efc9903e9bc1
# ╟─1af2af60-84a3-11eb-2af8-c5fecd350e18
# ╠═1af2af60-84a3-11eb-13b5-6145722028b8
# ╟─1af2af60-84a3-11eb-2d9c-234703a73e1d
# ╠═1af2af60-84a3-11eb-3df4-05622265d7a3
# ╟─1af2af60-84a3-11eb-3791-4963b0aad361
# ╠═1af2af60-84a3-11eb-15f3-59864044b389
# ╟─1af2af60-84a3-11eb-36da-4340932d5bfc
# ╠═1af2af60-84a3-11eb-082c-578280af3317