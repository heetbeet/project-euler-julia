### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 2333ead0-2b5d-11eb-2d04-5deda10f2a5e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 2333ead0-2b5d-11eb-22a7-2fb4ae99106e
html"""
<h2>Problem 676: Matching Digit Sums</h2>
<p>
Let $d(i,b)$ be the <b>digit sum</b> of the number $i$ in base $b$. For example $d(9,2)=2$, since $9=1001_2$.
When using different bases, the respective digit sums most of the time deviate from each other, for example $d(9,4)=3 \ne d(9,2)$.
</p>

<p>
However, for some numbers $i$ there will be a match, like $d(17,4)=d(17,2)=2$.
Let $ M(n,b_1,b_2)$ be the sum of all natural numbers $i \le n$ for which $d(i,b_1)=d(i,b_2)$.
For example, $M(10,8,2)=18$, $M(100,8,2)=292$ and $M(10^6,8,2)=19173952$.
</p>

<p>
Find $\displaystyle \sum_{k=3}^6 \sum_{l=1}^{k-2}M(10^{16},2^k,2^l)$, giving the last 16 digits as the answer.
</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-29f0-f581fc893097
begin
    submit_answer(nothing; prob_num=676)
end

# ╔═╡ 2333ead0-2b5d-11eb-09f8-4f016885a0e1
html"""
<h2>Problem 677: Coloured Graphs</h2>
<p>Let $g(n)$ be the number of <b>undirected graphs</b> with $n$ nodes satisfying the following properties:</p>
<ul>
<li>The graph is connected and has no cycles or multiple edges.</li>
<li>Each node is either red, blue, or yellow.</li>
<li>A red node may have no more than 4 edges connected to it.</li>
<li>A blue or yellow node may have no more than 3 edges connected to it.</li>
<li>An edge may not directly connect a yellow node to a yellow node.</li>
</ul>

<p>For example, $g(2)=5$, $g(3)=15$, and $g(4) = 57$.<br />
You are also given that $g(10) = 710249$ and $g(100) \equiv 919747298 \pmod{1\,000\,000\,007}$.</p>

<p>Find $g(10\,000) \bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-3ff9-65658d00d6ab
begin
    submit_answer(nothing; prob_num=677)
end

# ╔═╡ 2333ead0-2b5d-11eb-25ef-5f5cd31311c4
html"""
<h2>Problem 678: Fermat-like Equations</h2>
<p>If a triple of positive integers $(a, b, c)$ satisfies $a^2+b^2=c^2$, it is called a Pythagorean triple. No triple $(a, b, c)$ satisfies $a^e+b^e=c^e$ when  $e \ge 3$ (Fermat's Last Theorem). However, if the exponents of the left-hand side and right-hand side differ, this is not true. For example, $3^3+6^3=3^5$.
</p>
<p>
Let $a, b, c, e, f$ be all positive integers, $0 \lt a \lt b$, $e \ge 2$, $f \ge 3$ and $c^f \le N$. Let $F(N)$ be the number of $(a, b, c, e, f)$ such that $a^e+b^e=c^f$. You are given $F(10^3) = 7$, $F(10^5) = 53$ and $F(10^7) = 287$.
</p>
<p>
Find $F(10^{18})$.
</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-0a9f-67ab028e6933
begin
    submit_answer(nothing; prob_num=678)
end

# ╔═╡ 2333ead0-2b5d-11eb-3f1d-5516b0c5bbf7
html"""
<h2>Problem 679: Freefarea</h2>
<p>Let $S$ be the set consisting of the four letters $\{\texttt{`A'},\texttt{`E'},\texttt{`F'},\texttt{`R'}\}$.<br />
For $n\ge 0$, let $S^*(n)$ denote the set of words of length $n$ consisting of letters belonging to $S$.<br />
We designate the words $\texttt{FREE}, \texttt{FARE}, \texttt{AREA}, \texttt{REEF}$ as <i>keywords</i>.</p>

<p>Let $f(n)$ be the number of words in $S^*(n)$ that contains all four keywords exactly once.</p>

<p>This first happens for $n=9$, and indeed there is a unique 9 lettered word that contain each of the keywords once: $\texttt{FREEFAREA}$<br />
So, $f(9)=1$.</p>

<p>You are also given that $f(15)=72863$.</p>

<p>Find $f(30)$.</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-3a1b-63080342424d
begin
    submit_answer(nothing; prob_num=679)
end

# ╔═╡ 2333ead0-2b5d-11eb-1860-016938cd45bb
html"""
<h2>Problem 680: Yarra Gnisrever</h2>
<p>Let $N$ and $K$ be two positive integers.</p>

<p>$F_n$ is the $n$-th Fibonacci number: $F_1 = F_2 = 1$, $F_n = F_{n - 1} + F_{n - 2}$ for all $n \geq 3$.<br />
Let $s_n = F_{2n - 1} \mod N$ and let $t_n = F_{2n} \mod N$.</p>

<p>Start with an array of integers $A = (A[0], \cdots, A[N - 1])$ where initially every $A\text{[}i]$ is equal to $i$.
Now perform $K$ successive operations on $A$, where the $j$-th operation consists of reversing the order of those elements in $A$ with indices between $s_j$ and $t_j$ (both ends inclusive).</p>

<p>Define $R(N,K)$ to be $\sum_{i = 0}^{N - 1}i \times A\text {[}i]$ after $K$ operations.</p>

<p>For example, $R(5, 4) = 27$, as can be seen from the following procedure:</p>

<p>Initial position: $(0, 1, 2, 3, 4)$<br />
Step 1 - Reverse $A[1]$ to $A[1]$: $(0, 1, 2, 3, 4)$<br />
Step 2 - Reverse $A[2]$ to $A[3]$: $(0, 1, 3, 2, 4)$<br />
Step 3 - Reverse $A[0]$ to $A[3]$: $(2, 3, 1, 0, 4)$<br />
Step 4 - Reverse $A[3]$ to $A[1]$: $(2, 0, 1, 3, 4)$<br />
$R(5, 4) = 0 \times 2 + 1 \times 0 + 2 \times 1 + 3 \times 3 + 4 \times 4 = 27$</p>

<p>Also, $R(10^2, 10^2) = 246597$ and $R(10^4, 10^4) = 249275481640$.</p>

<p>Find $R(10^{18}, 10^6)$ giving your answer modulo $10^9$.</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-1f20-2db0fed56595
begin
    submit_answer(nothing; prob_num=680)
end

# ╔═╡ 2333ead0-2b5d-11eb-1f74-470d5e9deff4
html"""
<h2>Problem 681: Maximal Area</h2>
<p>
Given positive integers $a \le b \le c \le d$, it may be possible to form quadrilaterals with edge lengths $a,b,c,d$ (in any order). When this is the case, let $M(a,b,c,d)$ denote the maximal area of such a quadrilateral.<br /> For example, $M(2,2,3,3)=6$, attained e.g. by a $2\times 3$ rectangle.
</p>
<p>
Let $SP(n)$ be the sum of $a+b+c+d$ over all choices $a \le b \le c \le d$ for which $M(a,b,c,d)$ is a positive integer not exceeding $n$.<br />
$SP(10)=186$ and $SP(100)=23238$.
</p>
<p>
Find $SP(1\,000\,000)$.
</p>
"""

# ╔═╡ 2333ead0-2b5d-11eb-3b92-fb192a46e9ab
begin
    submit_answer(nothing; prob_num=681)
end

# ╔═╡ 233411e0-2b5d-11eb-3edb-814a9cdfa842
html"""
<h2>Problem 682: 5-Smooth Pairs</h2>
<p>5-smooth numbers are numbers whose largest prime factor doesn't exceed 5.<br />
5-smooth numbers are also called Hamming numbers.</p>

<p>Let $\Omega(a)$ be the count of prime factors of $a$ (counted with multiplicity).<br />
Let $s(a)$ be the sum of the prime factors of $a$ (with multiplicity).<br />
For example, $\Omega(300) = 5$ and $s(300) = 2+2+3+5+5 = 17$.</p>

<p>Let $f(n)$ be the number of pairs, $(p,q)$, of Hamming numbers such that $\Omega(p)=\Omega(q)$ and $s(p)+s(q)=n$.<br />
You are given $f(10)=4$ (the pairs are $(4,9),(5,5),(6,6),(9,4)$) and $f(10^2)=3629$.</p>

<p>Find $f(10^7) \bmod 1\,000\,000\,007$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-0018-95fd49ff2693
begin
    submit_answer(nothing; prob_num=682)
end

# ╔═╡ 233411e0-2b5d-11eb-160c-9164b302e043
html"""
<h2>Problem 683: The Chase II</h2>
<p>Consider the following variant of "The Chase" game. This game is played between $n$ players sitting around a circular table using two dice. It consists of $n-1$ rounds, and at the end of each round one player is eliminated and has to pay a certain amount of money into a pot. The last player remaining is the winner and receives the entire contents of the pot.</p>

<p>At the beginning of a round, each die is given to a randomly selected player. A round then consists of a number of turns.</p>

<p>During each turn, each of the two players with a die rolls it. If a player rolls a 1 or a 2, the die is passed to the neighbour on the left; if the player rolls a 5 or a 6, the die is passed to the neighbour on the right; otherwise, the player keeps the die for the next turn.</p>

<p>The round ends when one player has both dice at the beginning of a turn. At which point that player is immediately eliminated and has to pay $s^2$ where $s$ is the number of completed turns in this round. Note that if both dice happen to be handed to the same player at the beginning of a round, then no turns are completed, so the player is eliminated without having to pay any money into the pot.</p>

<p>Let $G(n)$ be the expected amount that the winner will receive. For example $G(5)$ is approximately 96.544, and $G(50)$ is 2.82491788e6 in scientific notation rounded to 9 significant digits.</p>

<p>Find $G(500)$, giving your answer in scientific notation rounded to 9 significant digits.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-2604-753a2c0051c3
begin
    submit_answer(nothing; prob_num=683)
end

# ╔═╡ 233411e0-2b5d-11eb-0aae-e5b1489e2cb6
html"""
<h2>Problem 684: Inverse Digit Sum</h2>
<p>Define $s(n)$ to be the smallest number that has a digit sum of $n$. For example $s(10) = 19$.<br />
Let $\displaystyle S(k) = \sum_{n=1}^k s(n)$. You are given $S(20) = 1074$.</p>
<p>
Further let $f_i$ be the Fibonacci sequence defined by $f_0=0, f_1=1$ and $f_i=f_{i-2}+f_{i-1}$ for all $i \ge 2$.</p>
<p>
Find $\displaystyle \sum_{i=2}^{90} S(f_i)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-2838-61d5a1267b0d
begin
    submit_answer(nothing; prob_num=684)
end

# ╔═╡ 233411e0-2b5d-11eb-160a-c32113d16d91
html"""
<h2>Problem 685: Inverse Digit Sum II</h2>
<p>Writing down the numbers which have a digit sum of 10 in ascending order, we get:
$19, 28, 37, 46,55,64,73,82,91,109, 118,\dots$</p>
<p>
Let $f(n,m)$ be the $m^{\text{th}}$ occurrence of the digit sum $n$. For example, $f(10,1)=19$, $f(10,10)=109$ and $f(10,100)=1423$.</p>
<p>
Let $\displaystyle S(k)=\sum_{n=1}^k f(n^3,n^4)$. For example $S(3)=7128$ and $S(10)\equiv 32287064 \mod 1\,000\,000\,007$.</p>
<p>
Find $S(10\,000)$ modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-0c07-81097739dfbb
begin
    submit_answer(nothing; prob_num=685)
end

# ╔═╡ 233411e0-2b5d-11eb-1f70-63283e7cfd89
html"""
<h2>Problem 686: Powers of Two</h2>
<p>$2^7=128$ is the first power of two whose leading digits are "12".<br />
The next power of two whose leading digits are "12" is $2^{80}$.</p>

<p>Define $p(L, n)$ to be the $n$th-smallest value of $j$ such that the base 10 representation of $2^j$ begins with the digits of $L$.<br />
So $p(12, 1) = 7$ and $p(12, 2) = 80$.</p>

<p>You are also given that $p(123, 45) = 12710$.</p>

<p>Find $p(123, 678910)$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-0aa9-8d06e2811ac3
begin
    submit_answer(nothing; prob_num=686)
end

# ╔═╡ 233411e0-2b5d-11eb-0910-1b354619de44
html"""
<h2>Problem 687: Shuffling Cards</h2>
<p>A standard deck of 52 playing cards, which consists of thirteen ranks (Ace, Two, ..., Ten, King, Queen and Jack) each in four suits (Clubs, Diamonds, Hearts and Spades), is randomly shuffled.  Let us call a rank <i>perfect</i> if no two cards of that same rank appear next to each other after the shuffle.</p>
<p>
It can be seen that the expected number of ranks that are perfect after a random shuffle equals $\frac {4324} {425} \approx 10.1741176471$.</p>
<p>
Find the probability that the number of perfect ranks is prime. Give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-1a7c-830ac8befcca
begin
    submit_answer(nothing; prob_num=687)
end

# ╔═╡ 233411e0-2b5d-11eb-029a-09abab765e9f
html"""
<h2>Problem 688: Piles of Plates</h2>
<p>
We stack $n$ plates into $k$ non-empty piles where each pile is a different size. Define $f(n,k)$ to be the maximum number of plates possible in the smallest pile. For example when $n = 10$ and $k = 3$ the piles $2,3,5$ is the best that can be done and so $f(10,3) = 2$. It is impossible to divide 10 into 5 non-empty differently-sized piles and hence $f(10,5) = 0$.
</p>
<p>
Define $F(n)$ to be the sum of $f(n,k)$ for all possible pile sizes $k\ge 1$. For example $F(100) = 275$.
</p>
<p>
Further define $S(N) = \displaystyle\sum_{n=1}^N F(n)$. You are given $S(100) = 12656$.
</p>
<p>
Find $S(10^{16})$ giving your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-1ff8-5b98821f5032
begin
    submit_answer(nothing; prob_num=688)
end

# ╔═╡ 233411e0-2b5d-11eb-2cf1-2949fc04750c
html"""
<h2>Problem 689: Binary Series</h2>
<p>For $0 \le x \lt 1$, define $d_i(x)$ to be the $i$th digit after the binary point of the binary representation of $x$.<br />
For example $d_2(0.25) = 1$, $d_i(0.25) = 0$ for $i \ne 2$.</p>

<p>Let $f(x) = \displaystyle{\sum_{i=1}^{\infty}\frac{d_i(x)}{i^2}}$.</p>

<p>Let $p(a)$ be probability that $f(x) \gt a$, given that $x$ is uniformly distributed between 0 and 1.</p>

<p>Find $p(0.5)$. Give your answer rounded to 8 digits after the decimal point.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-09d2-01e0237c5e0e
begin
    submit_answer(nothing; prob_num=689)
end

# ╔═╡ 233411e0-2b5d-11eb-154c-59a1e48f8399
html"""
<h2>Problem 690: Tom and Jerry</h2>
<p>
Tom (the cat) and Jerry (the mouse) are playing on a simple graph $G$.
</p>
<p>
Every vertex of $G$ is a mousehole, and every edge of $G$ is a tunnel connecting two mouseholes.
</p>
<p>
Originally, Jerry is hiding in one of the mouseholes.<br />
Every morning, Tom can check one (and only one) of the mouseholes. If Jerry happens to be hiding there then Tom catches Jerry and the game is over.<br />
Every evening, if the game continues, Jerry moves to a mousehole which is adjacent (i.e. connected by a tunnel, if there is one available) to his current hiding place. The next morning Tom checks again and the game continues like this.
</p>
<p>
Let us call a graph $G$ a <i>Tom graph</i>, if our super-smart Tom, who knows the configuration of the graph but does not know the location of Jerry, can <i>guarantee</i> to catch Jerry in finitely many days.
For example consider all graphs on 3 nodes:
</p>
<div class="center">
<img src="project/images/p690_graphs.jpg" alt="Graphs on 3 nodes" />
</div>
<p>
For graphs 1 and 2, Tom will catch Jerry in at most three days. For graph 3 Tom can check the middle connection on two consecutive days and hence guarantee to catch Jerry in at most two days. These three graphs are therefore Tom Graphs. However, graph 4 is not a Tom Graph because the game could potentially continue forever.
</p>
<p>
Let $T(n)$ be the number of different Tom graphs with $n$ vertices. Two graphs are considered the same if there is a bijection $f$ between their vertices, such that $(v,w)$ is an edge if and only if $(f(v),f(w))$ is an edge.
</p>
<p>
We have $T(3) = 3$, $T(7) = 37$, $T(10) = 328$ and $T(20) = 1416269$.
</p>
<p>
Find $T(2019)$ giving your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-2f40-93042a302e81
begin
    submit_answer(nothing; prob_num=690)
end

# ╔═╡ 233411e0-2b5d-11eb-3ea3-15ab7bb86e4c
html"""
<h2>Problem 691: Long substring with many repetitions</h2>
<p>Given a character string $s$, we define $L(k,s)$ to be the length of the longest substring of $s$ which appears at least $k$ times in $s$, or $0$ if such a substring does not exist. For example, $L(3,\text{“bbabcabcabcacba”})=4$ because of the three occurrences of the substring $\text{“abca”}$, and $L(2,\text{“bbabcabcabcacba”})=7$ because of the repeated substring $\text{“abcabca”}$. Note that the occurrences can overlap.</p>

<p>Let $a_n$, $b_n$ and $c_n$ be the $0/1$ sequences defined by:</p>
<ul>
<li>$a_0 = 0$</li>
<li>$a_{2n} = a_{n}$</li>
<li>$a_{2n+1} = 1-a_{n}$</li>
<li>$b_n = \lfloor\frac{n+1}{\varphi}\rfloor - \lfloor\frac{n}{\varphi}\rfloor$ (where $\varphi$ is the golden ratio)</li>
<li>$c_n = a_n + b_n - 2a_nb_n$</li>
</ul>
<p>and $S_n$ the character string $c_0\ldots c_{n-1}$. You are given that $L(2,S_{10})=5$, $L(3,S_{10})=2$, $L(2,S_{100})=14$, $L(4,S_{100})=6$, $L(2,S_{1000})=86$, $L(3,S_{1000}) = 45$, $L(5,S_{1000}) = 31$, and that the sum of non-zero $L(k,S_{1000})$ for $k\ge 1$ is $2460$.</p>

<p>Find the sum of non-zero $L(k,S_{5000000})$ for $k\ge 1$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-2421-21786e802840
begin
    submit_answer(nothing; prob_num=691)
end

# ╔═╡ 233411e0-2b5d-11eb-01c9-7b9287a59388
html"""
<h2>Problem 692: Siegbert and Jo</h2>
<p>
Siegbert and Jo take turns playing a game with a heap of $N$ pebbles:<br />
1. Siegbert is the first to take some pebbles. He can take as many pebbles as he wants. (Between 1 and $N$ inclusive.)<br />
2. In each of the following turns the current player must take at least one pebble and at most twice the amount of pebbles taken by the previous player.<br />
3. The player who takes the last pebble wins.<br />
</p>
<p>
Although Siegbert can always win by taking all the pebbles on his first turn, to make the game more interesting he chooses to take the smallest number of pebbles that guarantees he will still win (assuming both Siegbert and Jo play optimally for the rest of the game).
</p>
<p>
Let $H(N)$ be that minimal amount for a heap of $N$ pebbles.<br />
$H(1)=1$, $H(4)=1$, $H(17)=1$, $H(8)=8$ and $H(18)=5$ .
</p>
<p>
Let $G(n)$ be $\displaystyle{\sum_{k=1}^n H(k)}$.<br />
$G(13)=43$.
</p>
<p>
Find $G(23416728348467685)$.
</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-1a6f-91f5e919208b
begin
    submit_answer(nothing; prob_num=692)
end

# ╔═╡ 233411e0-2b5d-11eb-035f-43825172a4dd
html"""
<h2>Problem 693: Finite Sequence Generator</h2>
<p>Two positive integers $x$ and $y$ ($x &gt; y$) can generate a sequence in the following manner:</p>
<ul>
<li>$a_x = y$ is the first term,</li>
<li>$a_{z+1} = a_z^2 \bmod z$ for $z = x, x+1,x+2,\ldots$ and</li>
<li>the generation stops when a term becomes 0 or 1.</li>
</ul>
<p>The number of terms in this sequence is denoted $l(x,y)$.</p>

<p>For example, with $x = 5$ and $y = 3$, we get $a_5 = 3$, $a_6 = 3^2 \bmod 5 = 4$, $a_7 = 4^2\bmod 6 = 4$, etc. Giving the sequence of 29 terms:<br />
$	3,4,4,2,4,7,9,4,4,3,9,6,4,16,4,16,16,4,16,3,9,6,10,19,25,16,16,8,0		$<br />
Hence $l(5,3) = 29$.</p>

<p>$g(x)$ is defined  to be the maximum value of $l(x,y)$ for $y &lt; x$. For example, $g(5) = 29$.</p>

<p>Further, define $f(n)$ to be the maximum value of $g(x)$ for $x \le n$. For example, $f(100) = 145$ and $f(10\,000) = 8824$.</p>

<p>Find $f(3\,000\,000)$.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-0096-b19d9d0d4ea7
begin
    submit_answer(nothing; prob_num=693)
end

# ╔═╡ 233411e0-2b5d-11eb-3222-55e7a9c6a4ee
html"""
<h2>Problem 694: Cube-full Divisors</h2>
<p>
A positive integer $n$ is considered <i>cube-full</i>, if for every prime $p$ that divides $n$, so does $p^3$. Note that $1$ is considered cube-full.
</p>
<p>
Let $s(n)$ be the function that counts the number of cube-full divisors of $n$. For example, $1$, $8$ and $16$ are the three cube-full divisors of $16$. Therefore, $s(16)=3$.
</p>
<p>
Let $S(n)$ represent the summatory function of $s(n)$, that is $S(n)=\displaystyle\sum_{i=1}^n s(i)$.
</p>
<p>
You are given $S(16) =  19$, $S(100) = 126$ and $S(10000) = 13344$.
</p>
<p>
Find $S(10^{18})$.
</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-0996-8780e55c5a64
begin
    submit_answer(nothing; prob_num=694)
end

# ╔═╡ 233411e0-2b5d-11eb-3512-73ed3debc588
html"""
<h2>Problem 695: Random Rectangles</h2>
<p>Three points, $P_1$, $P_2$ and $P_3$, are randomly selected within a unit square. Consider the three rectangles with sides parallel to the sides of the unit square and a diagonal that is one of the three line segments $\overline{P_1P_2}$, $\overline{P_1P_3}$ or $\overline{P_2P_3}$ (see picture below).</p>

<div class="center">
<img src="project/images/p695_randrect.png" alt="3 random rectangles" />
</div>

<p>We are interested in the rectangle with the second biggest area. In the example above that happens to be the green rectangle defined with the diagonal $\overline{P_2P_3}$.</p>

<p>Find the expected value of the area of the second biggest of the three rectangles. Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 233411e0-2b5d-11eb-2c0c-b9474ab04829
begin
    submit_answer(nothing; prob_num=695)
end

# ╔═╡ 233438f0-2b5d-11eb-3e0b-890729a37624
html"""
<h2>Problem 696: Mahjong</h2>
<p>The game of Mahjong is played with tiles belonging to $s$ <i>suits</i>. Each tile also has a <i>number</i> in the range $1\ldots n$, and for each suit/number combination there are exactly four indistinguishable tiles with that suit and number. (The real Mahjong game also contains other bonus tiles, but those will not feature in this problem.)</p>

<p>A <i>winning hand</i> is a collection of $3t+2$ Tiles (where $t$ is a fixed integer) that can be arranged as $t$ <i>Triples</i> and one <i>Pair</i>, where:</p>
<ul>
<li>A <i>Triple</i> is either a <i>Chow</i> or a <i>Pung</i></li>
<li>A <i>Chow</i> is three tiles of the same suit and consecutive numbers</li>
<li>A <i>Pung</i> is three identical tiles (same suit and same number)</li>
<li>A <i>Pair</i> is two identical tiles (same suit and same number)</li>
</ul>

<p>For example, here is a winning hand with $n=9$, $s=3$, $t=4$, consisting in this case of two Chows, two Pungs, and one Pair:</p>
<div class="center">
<img src="project/images/p696_mahjong_1.png" alt="A winning Mahjong hand" />
</div>

<p>Note that sometimes the same collection of tiles can be represented as $t$ Triples and one Pair in more than one way. This only counts as one winning hand. For example, this is considered to be the same winning hand as above, because it consists of the same tiles:</p>
<div class="center">
<img src="project/images/p696_mahjong_2.png" alt="Alternative arrangement of the same hand" />
</div>

<p>Let $w(n, s, t)$ be the number of distinct winning hands formed of $t$ Triples and one Pair, where there are $s$ suits available and tiles are numbered up to $n$.</p>

<p>For example, with a single suit and tiles numbered up to 4, we have $w(4, 1, 1) = 20$: there are 12 winning hands consisting of a Pung and a Pair, and another 8 containing a Chow and a Pair. You are also given that $w(9, 1, 4) = 13259$, $w(9, 3, 4) = 5237550$, and $w(1000, 1000, 5) \equiv 107662178 \pmod{1\,000\,000\,007}$.</p>

<p>Find $w(10^8, 10^8, 30)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 233438f0-2b5d-11eb-167a-d9c192c2d1cd
begin
    submit_answer(nothing; prob_num=696)
end

# ╔═╡ 233438f0-2b5d-11eb-090c-13a22b50d798
html"""
<h2>Problem 697: Randomly Decaying Sequence</h2>
<p>Given a fixed real number $c$, define a random sequence $(X_n)_{n\ge 0}$ by the following random process:</p>
<ul>
<li>$X_0 = c$ (with probability 1).</li>
<li>For $n&gt;0$, $X_n = U_n X_{n-1}$ where $U_n$ is a real number chosen at random between zero and one, uniformly, and independently of all previous choices $(U_m)_{m&lt;n}$.</li>
</ul>

<p>If we desire there to be precisely a 25% probability that $X_{100}&lt;1$, then this can be arranged by fixing $c$ such that $\log_{10} c \approx 46.27$.</p>

<p>Suppose now that $c$ is set to a different value, so that there is precisely a 25% probability that $X_{10\,000\,000}&lt;1$.</p>
<p>Find $\log_{10} c$ and give your answer rounded to two places after the decimal point.</p>
"""

# ╔═╡ 233438f0-2b5d-11eb-33da-69a60849e71f
begin
    submit_answer(nothing; prob_num=697)
end

# ╔═╡ 233438f0-2b5d-11eb-3c48-0b724ff53f1d
html"""
<h2>Problem 698: 123 Numbers</h2>
<p>
We define <i>123-numbers</i> as follows:
</p>

<ul>
<li>1 is the smallest 123-number.</li>
<li>When written in base 10 the only digits that can be present are "1", "2" and "3" and if present the number of times they each occur is also a 123-number.</li>
</ul>

<p>
So 2 is a 123-number, since it consists of one  digit "2" and 1 is a 123-number. Therefore, 33 is a 123-number as well since it consists of two digits "3" and 2 is a 123-number.<br />
On the other hand, 1111 is not a 123-number, since it contains 4 digits "1" and 4 is not a 123-number.
</p>
<p>
In ascending order, the first 123-numbers are:<br />
$1, 2, 3, 11, 12, 13, 21, 22, 23, 31, 32, 33, 111, 112, 113, 121, 122, 123, 131, \ldots$
</p>
<p>
Let $F(n)$ be the $n$-th 123-number. For example $F(4)=11$, $F(10)=31$, $F(40)=1112$, $F(1000)=1223321$ and $F(6000)= 2333333333323$.
</p>
<p>
Find $F(111\,111\,111\,111\,222\,333)$. Give your answer modulo $123\,123\,123$.
</p>
"""

# ╔═╡ 233438f0-2b5d-11eb-2bf2-71ae7158efc6
begin
    submit_answer(nothing; prob_num=698)
end

# ╔═╡ 233438f0-2b5d-11eb-378f-5795f4e821b6
html"""
<h2>Problem 699: Triffle Numbers</h2>
<p>
Let $\sigma(n)$ be the sum of all the divisors of the positive integer $n$, for example:<br />
$\sigma(10) = 1+2+5+10 = 18$.
</p>
<p>
Define $T(N)$ to be the sum of all numbers $n \le N$ such that when the fraction $\frac{\sigma(n)}{n}$ is written in its lowest form $\frac ab$, the denominator is a power of 3 i.e. $b = 3^k, k &gt; 0$.
</p>
<p>
You are given $T(100) = 270$ and $T(10^6) = 26089287$.
</p>
<p>
Find $T(10^{14})$.
</p>
"""

# ╔═╡ 233438f0-2b5d-11eb-22e4-d1a17476e785
begin
    submit_answer(nothing; prob_num=699)
end

# ╔═╡ 233438f0-2b5d-11eb-1004-7973e3f7a075
html"""
<h2>Problem 700: Eulercoin</h2>
<p>Leonhard Euler was born on 15 April 1707.</p>

<p>Consider the sequence 1504170715041707<var>n</var> mod 4503599627370517.</p>

<p>An element of this sequence is defined to be an Eulercoin if it is strictly smaller than all previously found Eulercoins.</p>

<p>For example, the first term is 1504170715041707 which is the first Eulercoin.  The second term is 3008341430083414 which is greater than 1504170715041707 so is not an Eulercoin.  However, the third term is 8912517754604 which is small enough to be a new Eulercoin.</p>

<p>The sum of the first 2 Eulercoins is therefore 1513083232796311.</p>

<p>Find the sum of all Eulercoins.</p>
"""

# ╔═╡ 233438f0-2b5d-11eb-0590-dd7cfc8d5913
begin
    submit_answer(nothing; prob_num=700)
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
# ╠═2304c480-2b5d-11eb-1de3-b7a5f8a6a0d3
# ╟─2304c480-2b5d-11eb-1436-8b415785a47b
# ╠═2304c480-2b5d-11eb-0b89-4f998c42812f
# ╟─2304c480-2b5d-11eb-036c-917a18f77c5f
# ╠═2304c480-2b5d-11eb-3390-e97f9f00b53a
# ╟─2304eb90-2b5d-11eb-2b0a-4d69704f3a6f
# ╠═2304eb90-2b5d-11eb-3608-5be8eb27f5a8
# ╟─2304eb90-2b5d-11eb-2979-2fac074e7509
# ╠═2304eb90-2b5d-11eb-332d-6190622b73f8
# ╟─2304eb90-2b5d-11eb-3784-719710bf4b32
# ╠═2304eb90-2b5d-11eb-07df-9d5ecaf25315
# ╟─2304eb90-2b5d-11eb-14a1-a7e9cbc71c06
# ╠═2304eb90-2b5d-11eb-1ff2-ed3cf3c3434e
# ╟─2304eb90-2b5d-11eb-3766-0384b0e4b3f5
# ╠═2304eb90-2b5d-11eb-3523-fbca84ac549d
# ╟─2304eb90-2b5d-11eb-35ac-1f756be11547
# ╠═2304eb90-2b5d-11eb-1c3c-6909dd23ac73
# ╟─2304eb90-2b5d-11eb-3288-b3113ab822de
# ╠═2304eb90-2b5d-11eb-0581-5de9eacdeb3b
# ╟─2304eb90-2b5d-11eb-144d-3b94e1b1a371
# ╠═2304eb90-2b5d-11eb-0ef2-bf1181536f4c
# ╟─2304eb90-2b5d-11eb-3175-9306971435fb
# ╠═2304eb90-2b5d-11eb-0bae-d5a501b465fe
# ╟─2304eb90-2b5d-11eb-0668-d9af7dd2cacd
# ╠═2304eb90-2b5d-11eb-21c1-357766c95a72
# ╟─2304eb90-2b5d-11eb-3fc1-cd37f9aab760
# ╠═2304eb90-2b5d-11eb-3a51-1be2ae83b979
# ╟─2304eb90-2b5d-11eb-2c3c-1b5dd28cc39c
# ╠═2304eb90-2b5d-11eb-2677-bfe9095e01d2
# ╟─230512a0-2b5d-11eb-1b67-bfa4273871af
# ╠═230512a0-2b5d-11eb-2fd7-a9ca1d891fbe
# ╟─230512a0-2b5d-11eb-397b-2f48ed7e34ce
# ╠═230512a0-2b5d-11eb-3526-f5701c75ddd5
# ╟─230512a0-2b5d-11eb-01ac-a35ac646acec
# ╠═230512a0-2b5d-11eb-15d2-79de0a77b3d7
# ╟─230512a0-2b5d-11eb-2a84-1bfdca4b0931
# ╠═230512a0-2b5d-11eb-2b22-a7ca46f5a5f6
# ╟─230512a0-2b5d-11eb-22c8-bb1899b1471a
# ╠═230512a0-2b5d-11eb-1c7d-c9a76dcb1b99
# ╟─230512a0-2b5d-11eb-14dc-adeb1f09f490
# ╠═230512a0-2b5d-11eb-2b10-df4fe464fd75
# ╟─230512a0-2b5d-11eb-0b66-116b217bf024
# ╠═230512a0-2b5d-11eb-10e8-bdc7c8f78b2a
# ╟─230512a0-2b5d-11eb-303a-f98f8d858773
# ╠═230512a0-2b5d-11eb-0e25-e97ea4b49674
# ╟─230512a0-2b5d-11eb-2e21-378ca205ead7
# ╠═230512a0-2b5d-11eb-2e45-b3e7d5a1e7a1
# ╟─230512a0-2b5d-11eb-00a6-0785b7740253
# ╠═230512a0-2b5d-11eb-34b3-fde9ed70c711
# ╟─230512a0-2b5d-11eb-3753-59e30957b3e0
# ╠═230512a0-2b5d-11eb-3b34-c7d00a53929f
# ╠═2309cd90-2b5d-11eb-0939-43c603ceb97c
# ╟─2309cd90-2b5d-11eb-1c19-2ba6983c264b
# ╠═2309cd90-2b5d-11eb-05be-0f3a0e731f8c
# ╟─2309cd90-2b5d-11eb-2f19-83d218a45074
# ╠═2309cd90-2b5d-11eb-049a-93973d8cc738
# ╟─2309cd90-2b5d-11eb-2da5-7706316dfb77
# ╠═2309cd90-2b5d-11eb-2356-552985dc3973
# ╟─2309cd90-2b5d-11eb-0ef1-036f00058a13
# ╠═2309cd90-2b5d-11eb-0595-09074ecbde98
# ╟─2309f4a0-2b5d-11eb-3402-c76efea97288
# ╠═2309f4a0-2b5d-11eb-25c2-534a351dc961
# ╟─2309f4a0-2b5d-11eb-2dac-b9c25f8e2057
# ╠═2309f4a0-2b5d-11eb-2331-31932accfa7d
# ╟─2309f4a0-2b5d-11eb-3a75-59e3957c4242
# ╠═2309f4a0-2b5d-11eb-19ad-85cf325f710d
# ╟─2309f4a0-2b5d-11eb-2b8c-3d8e002fb9f0
# ╠═2309f4a0-2b5d-11eb-2a67-0ff1b062ba95
# ╟─2309f4a0-2b5d-11eb-2916-8d5b05494168
# ╠═2309f4a0-2b5d-11eb-0268-c5913ca25860
# ╟─2309f4a0-2b5d-11eb-1b71-b531f6011955
# ╠═2309f4a0-2b5d-11eb-3501-6f5198446bbc
# ╟─2309f4a0-2b5d-11eb-16b0-0b945b9da2cc
# ╠═2309f4a0-2b5d-11eb-0574-f907e4d6a566
# ╟─2309f4a0-2b5d-11eb-39ae-c37f923c2cfc
# ╠═2309f4a0-2b5d-11eb-3cee-537f0efdbc25
# ╟─2309f4a0-2b5d-11eb-2ac0-73ef8fdfb236
# ╠═2309f4a0-2b5d-11eb-157e-cb07175b4ed2
# ╟─230a1bb0-2b5d-11eb-3682-eb9f60c41ae2
# ╠═230a1bb0-2b5d-11eb-22e6-d360b33713bb
# ╟─230a1bb0-2b5d-11eb-2e67-7be99b24463c
# ╠═230a1bb0-2b5d-11eb-10a2-c1296433e48d
# ╟─230a1bb0-2b5d-11eb-2e6d-318e05778de8
# ╠═230a1bb0-2b5d-11eb-2c14-070e1c8f95b8
# ╟─230a1bb0-2b5d-11eb-06b5-210a80292cef
# ╠═230a1bb0-2b5d-11eb-2227-c17911e06a0b
# ╟─230a1bb0-2b5d-11eb-25ec-c1c84a32e282
# ╠═230a1bb0-2b5d-11eb-2528-0d18b03f48ff
# ╟─230a1bb0-2b5d-11eb-2f51-7d44bfc78d29
# ╠═230a1bb0-2b5d-11eb-1d02-c9460dddeead
# ╟─230a1bb0-2b5d-11eb-1f7d-ef44b53167e2
# ╠═230a1bb0-2b5d-11eb-2ec2-5f1feb07cfd3
# ╟─230a1bb0-2b5d-11eb-257e-1d83ee047fe0
# ╠═230a1bb0-2b5d-11eb-2e18-dd75083591b5
# ╟─230a1bb0-2b5d-11eb-3b76-43b5b147c7d2
# ╠═230a1bb0-2b5d-11eb-0d52-e1575ca4f845
# ╟─230a1bb0-2b5d-11eb-3361-a78cd47351f8
# ╠═230a1bb0-2b5d-11eb-02e5-db1876c5a940
# ╟─230a42c0-2b5d-11eb-2801-89f4fbf6aabd
# ╠═230a42c0-2b5d-11eb-08be-21179d420609
# ╟─230a42c0-2b5d-11eb-0de9-11409d28a650
# ╠═230a42c0-2b5d-11eb-1395-dfccea2b8184
# ╠═230e6170-2b5d-11eb-19e7-2d7a7028fd1a
# ╟─230e6170-2b5d-11eb-0740-f7875bec5c12
# ╠═230e6170-2b5d-11eb-21c6-752d37f5b046
# ╟─230e8880-2b5d-11eb-2747-99d896b234a7
# ╠═230e8880-2b5d-11eb-32e3-e569e66cae2b
# ╟─230e8880-2b5d-11eb-1857-0dfc8a401c4d
# ╠═230e8880-2b5d-11eb-2048-7fbb7b706037
# ╟─230e8880-2b5d-11eb-1021-99557fe1804a
# ╠═230e8880-2b5d-11eb-3555-bf7fb782843b
# ╟─230e8880-2b5d-11eb-0e7e-a340ac0498dd
# ╠═230e8880-2b5d-11eb-17df-27ba1d60d226
# ╟─230e8880-2b5d-11eb-0d9e-799b838049b3
# ╠═230e8880-2b5d-11eb-242b-bb0ced44bca6
# ╟─230e8880-2b5d-11eb-35cf-490e3dc779bf
# ╠═230e8880-2b5d-11eb-1c66-2be8e7b2299b
# ╟─230e8880-2b5d-11eb-1c48-b7a553c77565
# ╠═230e8880-2b5d-11eb-1ced-596c0bdb7ecc
# ╟─230e8880-2b5d-11eb-3707-6729de11bad2
# ╠═230e8880-2b5d-11eb-1eec-7150e51f722c
# ╟─230e8880-2b5d-11eb-2098-95101d65284f
# ╠═230e8880-2b5d-11eb-18cb-9d8c85a62a72
# ╟─230e8880-2b5d-11eb-0dcd-332d684e4f7c
# ╠═230e8880-2b5d-11eb-03f2-4dcc643328b6
# ╟─230e8880-2b5d-11eb-11d6-330a571a324e
# ╠═230e8880-2b5d-11eb-2cc7-1d7541272662
# ╟─230e8880-2b5d-11eb-00be-5514f41c25b5
# ╠═230e8880-2b5d-11eb-2975-ed206c4f2d55
# ╟─230eaf92-2b5d-11eb-3985-df4c9a3aff71
# ╠═230eaf92-2b5d-11eb-1716-334412af0871
# ╟─230eaf92-2b5d-11eb-1a2c-7775250f7720
# ╠═230eaf92-2b5d-11eb-15c7-b33e30fe2dd8
# ╟─230eaf92-2b5d-11eb-1bed-a3568bc01d4f
# ╠═230eaf92-2b5d-11eb-1dc5-8168614cfd96
# ╟─230eaf92-2b5d-11eb-005f-e908580be4e6
# ╠═230eaf92-2b5d-11eb-22a8-01fae9e9d4d6
# ╟─230eaf92-2b5d-11eb-3cf7-5984a7dab110
# ╠═230eaf92-2b5d-11eb-0b63-eb69ba51ca74
# ╟─230eaf92-2b5d-11eb-17b6-c3e3626fdef4
# ╠═230eaf92-2b5d-11eb-2e8a-5176e495d899
# ╟─230eaf92-2b5d-11eb-13af-37e95f3efec0
# ╠═230eaf92-2b5d-11eb-3205-895390a80e55
# ╟─230eaf92-2b5d-11eb-1a93-03326470af48
# ╠═230eaf92-2b5d-11eb-1db3-d9d0eb20c710
# ╟─230eaf92-2b5d-11eb-27cc-439cf1833140
# ╠═230eaf92-2b5d-11eb-2bc4-39cdf620f269
# ╟─230eaf92-2b5d-11eb-2710-079fc1aa62da
# ╠═230eaf92-2b5d-11eb-035c-53d137c43a23
# ╟─230eaf92-2b5d-11eb-29c7-491e62d407ab
# ╠═230eaf92-2b5d-11eb-0b56-1be7917d3057
# ╟─230eaf92-2b5d-11eb-33f7-9123931f1cd1
# ╠═230eaf92-2b5d-11eb-1079-6d5b885395c1
# ╠═23134370-2b5d-11eb-1fc2-7194cd15a5af
# ╟─23134370-2b5d-11eb-0a85-ab8a7c08d45c
# ╠═23134370-2b5d-11eb-192e-5b677f3d1eb9
# ╟─23136a80-2b5d-11eb-20ee-63340d3d659b
# ╠═23136a80-2b5d-11eb-08c8-5b4c7a9ecea0
# ╟─23136a80-2b5d-11eb-0f71-7b4f71f4a4b6
# ╠═23136a80-2b5d-11eb-37e9-f7b4a7a738d7
# ╟─23136a80-2b5d-11eb-390b-c9b0e733213c
# ╠═23136a80-2b5d-11eb-07f7-3374d17e2982
# ╟─23136a80-2b5d-11eb-0c7c-5b929db945b0
# ╠═23136a80-2b5d-11eb-00ba-bbad3347bf9f
# ╟─23136a80-2b5d-11eb-0df8-a57b9a4b8751
# ╠═23136a80-2b5d-11eb-12f3-53015af621e5
# ╟─23136a80-2b5d-11eb-0434-e38f789e4927
# ╠═23136a80-2b5d-11eb-1f8b-1189de544bf4
# ╟─23136a80-2b5d-11eb-0c75-49a06625823e
# ╠═23136a80-2b5d-11eb-2cd4-83c49b5d1989
# ╟─23136a80-2b5d-11eb-1e7e-1d4d1605ed43
# ╠═23136a80-2b5d-11eb-0551-d11c330e0023
# ╟─23136a80-2b5d-11eb-3d57-537949e32d7b
# ╠═23136a80-2b5d-11eb-26e4-759e9afaf35f
# ╟─23136a80-2b5d-11eb-3a97-495520604116
# ╠═23136a80-2b5d-11eb-2b44-9f84d529018e
# ╟─23136a80-2b5d-11eb-2631-a7e0f9ea7d6f
# ╠═23136a80-2b5d-11eb-2265-290f221ee48a
# ╟─23136a80-2b5d-11eb-1987-8796063f8244
# ╠═23136a80-2b5d-11eb-26d4-992f7d4e47cc
# ╟─23136a80-2b5d-11eb-02bb-e3c327fa0fc7
# ╠═23136a80-2b5d-11eb-14c6-5dd6934bb443
# ╟─23139190-2b5d-11eb-3ec4-93a609f20189
# ╠═23139190-2b5d-11eb-0467-7f33791f4d1d
# ╟─23139190-2b5d-11eb-3c6f-b5da9727405b
# ╠═23139190-2b5d-11eb-200c-553f1a8d41bb
# ╟─23139190-2b5d-11eb-345a-373e17166db3
# ╠═23139190-2b5d-11eb-148a-79ae75bc6acb
# ╟─23139190-2b5d-11eb-3fa7-d3f460ab5e91
# ╠═23139190-2b5d-11eb-180d-37f13473b58e
# ╟─23139190-2b5d-11eb-1039-d31b7adc48b1
# ╠═23139190-2b5d-11eb-223a-d3d9fe4a6479
# ╟─23139190-2b5d-11eb-2792-df672864e8c7
# ╠═23139190-2b5d-11eb-3173-21a19d27f5b0
# ╟─23139190-2b5d-11eb-16b9-3f7b2e1b8462
# ╠═23139190-2b5d-11eb-3a83-13c3fc70c3eb
# ╟─23139190-2b5d-11eb-0b1d-29c0bf8a170a
# ╠═23139190-2b5d-11eb-3a21-3504050f699b
# ╟─23139190-2b5d-11eb-280e-e57b1f9ee715
# ╠═23139190-2b5d-11eb-3c8c-314283c77f18
# ╟─23139190-2b5d-11eb-1ea0-85ed8d3678ec
# ╠═23139190-2b5d-11eb-1cab-61ed86ce334f
# ╟─23139190-2b5d-11eb-307b-a58d8f29fb13
# ╠═23139190-2b5d-11eb-342c-058c2f08ecb7
# ╠═2316ecf0-2b5d-11eb-2c0a-0914369c8c94
# ╟─2316ecf0-2b5d-11eb-35cf-21b790a85e27
# ╠═2316ecf0-2b5d-11eb-211d-511d4d45a887
# ╟─2316ecf0-2b5d-11eb-3306-eb37ccd76f36
# ╠═2316ecf0-2b5d-11eb-3d12-eb816f88be5c
# ╟─2316ecf0-2b5d-11eb-3766-a598c496c002
# ╠═2316ecf0-2b5d-11eb-055c-b7c6b68ad0c8
# ╟─2316ecf0-2b5d-11eb-1af3-25adeccf7a6e
# ╠═2316ecf0-2b5d-11eb-354e-8dc83f4e79c6
# ╟─2316ecf0-2b5d-11eb-1f91-b344a452088a
# ╠═2316ecf0-2b5d-11eb-047f-170482f1e1c0
# ╟─2316ecf0-2b5d-11eb-151e-c526ecb4fdbd
# ╠═2316ecf0-2b5d-11eb-3060-1fb6bca67d43
# ╟─2316ecf0-2b5d-11eb-12d7-677dea7cabc4
# ╠═2316ecf0-2b5d-11eb-2f5a-6d5c47dbaeb0
# ╟─2316ecf0-2b5d-11eb-3b05-c5e25fff8bbe
# ╠═2316ecf0-2b5d-11eb-3d6c-51241d89cd6c
# ╟─2316ecf0-2b5d-11eb-3803-1b3440bcc002
# ╠═2316ecf0-2b5d-11eb-2c72-895abf2ab5f3
# ╟─2316ecf0-2b5d-11eb-2b45-d387552122a2
# ╠═2316ecf0-2b5d-11eb-2cc9-6990344ed003
# ╟─23171400-2b5d-11eb-3d32-073a4db54d4a
# ╠═23171400-2b5d-11eb-3f8c-1796e3816ce3
# ╟─23171400-2b5d-11eb-23ee-1b01300f7fca
# ╠═23171400-2b5d-11eb-34f9-1dcf057c9c01
# ╟─23171400-2b5d-11eb-2011-b5c87a621699
# ╠═23171400-2b5d-11eb-0fc2-f1e9a7e870b6
# ╟─23171400-2b5d-11eb-28ab-bfab22405c58
# ╠═23171400-2b5d-11eb-0934-c3f13d401971
# ╟─23171400-2b5d-11eb-05e5-5be7764e3208
# ╠═23171400-2b5d-11eb-20eb-8ffe407538ac
# ╟─23171400-2b5d-11eb-2d96-9159cbccd0e9
# ╠═23171400-2b5d-11eb-1630-d333bf55f4fb
# ╟─23171400-2b5d-11eb-0127-3d2bbd755490
# ╠═23171400-2b5d-11eb-33ec-75daf2983f7b
# ╟─23171400-2b5d-11eb-19e6-61118da7b174
# ╠═23171400-2b5d-11eb-07c4-89cf8b41f7ad
# ╟─23171400-2b5d-11eb-3ba6-d3ace77f0c3c
# ╠═23171400-2b5d-11eb-3fb6-955882166d6b
# ╟─23171400-2b5d-11eb-24a3-b5e3fee3a100
# ╠═23171400-2b5d-11eb-3533-a13ca2431891
# ╟─23171400-2b5d-11eb-2615-0dbf6af21a43
# ╠═23171400-2b5d-11eb-17b1-159ef259d706
# ╟─23171400-2b5d-11eb-1d81-b1a163da1c77
# ╠═23171400-2b5d-11eb-3041-9726acadf184
# ╟─23171400-2b5d-11eb-0100-53c70d1a8952
# ╠═23171400-2b5d-11eb-21aa-1165b74e13b6
# ╟─23171400-2b5d-11eb-3b9f-85105d73ebc6
# ╠═23171400-2b5d-11eb-1e44-c3956e6ac6d3
# ╟─23173b12-2b5d-11eb-2a23-ede224472b22
# ╠═23173b12-2b5d-11eb-0cb8-f74bf458c392
# ╠═231dcac0-2b5d-11eb-141e-6f9a95ad2c96
# ╟─231dcac0-2b5d-11eb-29fe-5b7159e7248c
# ╠═231dcac0-2b5d-11eb-1918-8304b0f994c1
# ╟─231df1d0-2b5d-11eb-03cb-b3d960007d19
# ╠═231df1d0-2b5d-11eb-1ac0-c38355009e52
# ╟─231df1d0-2b5d-11eb-2641-5fb2fcc17960
# ╠═231df1d0-2b5d-11eb-071f-a7aaa4012642
# ╟─231df1d0-2b5d-11eb-2d32-0b5b0ee2152a
# ╠═231df1d0-2b5d-11eb-1f82-bd59fe611d8c
# ╟─231df1d0-2b5d-11eb-005e-2b764016e9fa
# ╠═231df1d0-2b5d-11eb-097d-ff4812a9d646
# ╟─231df1d0-2b5d-11eb-0a48-5df172f51d8a
# ╠═231df1d0-2b5d-11eb-1e5c-811146f4d6c1
# ╟─231df1d0-2b5d-11eb-2980-b1a7be8f23f8
# ╠═231df1d0-2b5d-11eb-1039-f7afcc5188d2
# ╟─231df1d0-2b5d-11eb-08b9-4517a41c4726
# ╠═231df1d0-2b5d-11eb-31b3-4bc307c154c9
# ╟─231df1d0-2b5d-11eb-110f-d7113ce1f4a1
# ╠═231df1d0-2b5d-11eb-0575-657be908760f
# ╟─231df1d0-2b5d-11eb-0583-2d265e4bca1d
# ╠═231df1d0-2b5d-11eb-0a0e-01b53bdd4567
# ╟─231df1d0-2b5d-11eb-27c8-438267032389
# ╠═231df1d0-2b5d-11eb-095b-b3b9a97cf6b1
# ╟─231df1d0-2b5d-11eb-36ce-475255ef4817
# ╠═231df1d0-2b5d-11eb-1a36-c5a6459af859
# ╟─231df1d0-2b5d-11eb-0539-0fd606ac405d
# ╠═231df1d0-2b5d-11eb-23e7-2f18566d1d6d
# ╟─231e18e0-2b5d-11eb-0555-1fad69abbf50
# ╠═231e18e0-2b5d-11eb-0eaf-e1c312a8d033
# ╟─231e18e0-2b5d-11eb-100b-d35fd2da7520
# ╠═231e18e0-2b5d-11eb-316b-1173c54aef24
# ╟─231e18e0-2b5d-11eb-1f03-31e95654c137
# ╠═231e18e0-2b5d-11eb-33f3-e7ec913e7578
# ╟─231e18e0-2b5d-11eb-25ef-47d7236582e3
# ╠═231e18e0-2b5d-11eb-2972-f16da7d97e59
# ╟─231e18e0-2b5d-11eb-193f-97e4605552c4
# ╠═231e18e0-2b5d-11eb-156e-d580d2c7a221
# ╟─231e18e0-2b5d-11eb-27ca-fb22d81c9370
# ╠═231e18e0-2b5d-11eb-343a-735bf84b1da7
# ╟─231e18e0-2b5d-11eb-3f05-e123c7789cca
# ╠═231e18e0-2b5d-11eb-3b75-89941b2e446b
# ╟─231e18e0-2b5d-11eb-08bb-d3b90e41f9d0
# ╠═231e18e0-2b5d-11eb-1162-ddc22c35f768
# ╟─231e18e0-2b5d-11eb-3579-afd23fbf48e3
# ╠═231e18e0-2b5d-11eb-0a3d-911043843e01
# ╟─231e18e0-2b5d-11eb-0eb3-69ed5f90f62e
# ╠═231e18e0-2b5d-11eb-199d-a9ce229a788f
# ╟─231e18e0-2b5d-11eb-1c52-3fe1f1471f32
# ╠═231e18e0-2b5d-11eb-0096-b9010bd45ffd
# ╟─231e18e0-2b5d-11eb-3758-e1108f845593
# ╠═231e18e0-2b5d-11eb-11cc-03be5b42743a
# ╠═2322acc0-2b5d-11eb-1380-39a5401a2558
# ╟─2322acc0-2b5d-11eb-2207-e7eca356620c
# ╠═2322acc0-2b5d-11eb-0d08-8b10339ab3f5
# ╟─2322d3d0-2b5d-11eb-3b26-3379d779e18c
# ╠═2322d3d0-2b5d-11eb-1195-855ebccf259e
# ╟─2322d3d0-2b5d-11eb-2d9c-e14571f243a0
# ╠═2322d3d0-2b5d-11eb-3663-d790d6389763
# ╟─2322d3d0-2b5d-11eb-3a25-1b517b5ea5ee
# ╠═2322d3d0-2b5d-11eb-029c-f55391e59bc2
# ╟─2322d3d0-2b5d-11eb-1494-fd8b7ff2ffec
# ╠═2322d3d0-2b5d-11eb-2529-73a54bedc281
# ╟─2322d3d0-2b5d-11eb-2660-b5f14dd81a2e
# ╠═2322d3d0-2b5d-11eb-2aaa-99a27299793c
# ╟─2322d3d0-2b5d-11eb-07ec-3b9c4157d326
# ╠═2322d3d0-2b5d-11eb-3b63-4f80c81467bf
# ╟─2322d3d0-2b5d-11eb-3b2a-1d8e2427da27
# ╠═2322d3d0-2b5d-11eb-1387-65bf718f978f
# ╟─2322d3d0-2b5d-11eb-3799-db0f49762832
# ╠═2322d3d0-2b5d-11eb-16e2-c968e48f6010
# ╟─2322d3d0-2b5d-11eb-3636-7d9fa49ad9ce
# ╠═2322d3d0-2b5d-11eb-0e40-9f2461d6ef55
# ╟─2322fae0-2b5d-11eb-1176-17742bc61d4e
# ╠═2322fae0-2b5d-11eb-14c6-b3ac658e1dc7
# ╟─2322fae0-2b5d-11eb-3c74-bdc55be22967
# ╠═2322fae0-2b5d-11eb-025e-b94efdd29d27
# ╟─2322fae0-2b5d-11eb-0855-8f1589415272
# ╠═2322fae0-2b5d-11eb-293e-2978b2a7e1d6
# ╟─2322fae0-2b5d-11eb-0725-4bcf1c387d82
# ╠═2322fae0-2b5d-11eb-34c3-cde8328604ea
# ╟─2322fae0-2b5d-11eb-3d7e-8fca2ece48c2
# ╠═2322fae0-2b5d-11eb-36ab-21415e6c4374
# ╟─2322fae0-2b5d-11eb-076a-75330bff4c66
# ╠═2322fae0-2b5d-11eb-1c09-abd58d50b45f
# ╟─2322fae0-2b5d-11eb-0acb-b52c8bb629ea
# ╠═2322fae0-2b5d-11eb-12a3-f19c28f7274f
# ╟─2322fae0-2b5d-11eb-2968-35a535af83c5
# ╠═2322fae0-2b5d-11eb-0559-016a1a4230c7
# ╟─2322fae0-2b5d-11eb-2518-cb04843b35e5
# ╠═2322fae0-2b5d-11eb-2f09-dd99c290c9c4
# ╟─2322fae0-2b5d-11eb-2773-ebe5694dba51
# ╠═2322fae0-2b5d-11eb-3a0b-1fce192307ff
# ╟─2322fae0-2b5d-11eb-108d-ed7b2f3e128a
# ╠═2322fae0-2b5d-11eb-1974-37e5957a6f4a
# ╟─2322fae0-2b5d-11eb-05e4-2be4ea9c5eb3
# ╠═2322fae0-2b5d-11eb-39f5-a369cb750bbf
# ╟─2322fae0-2b5d-11eb-3d55-5391285e2a57
# ╠═2322fae0-2b5d-11eb-13a7-8976d56b87f7
# ╟─2322fae0-2b5d-11eb-2c8b-794da6599418
# ╠═2322fae0-2b5d-11eb-2b25-8fd6c4b6129c
# ╟─232321f0-2b5d-11eb-2972-ad43d3f09773
# ╠═232321f0-2b5d-11eb-35ef-7bbff223e3e6
# ╠═23278ec0-2b5d-11eb-0bd9-6934e1769983
# ╟─23278ec0-2b5d-11eb-220a-77f71920b8c8
# ╠═23278ec0-2b5d-11eb-3132-477bba4af46b
# ╟─23278ec0-2b5d-11eb-2ffe-6fcba58e6a30
# ╠═23278ec0-2b5d-11eb-0602-9f9f68c5d998
# ╟─23278ec0-2b5d-11eb-38ac-491ad8305d69
# ╠═23278ec0-2b5d-11eb-36de-a9de6c3ac339
# ╟─23278ec0-2b5d-11eb-381e-254e19b8c8bc
# ╠═23278ec0-2b5d-11eb-3ff2-e919fabfcc74
# ╟─23278ec0-2b5d-11eb-3075-1d3cd1f009b5
# ╠═23278ec0-2b5d-11eb-0327-b130935c941c
# ╟─23278ec0-2b5d-11eb-136b-27d5667de009
# ╠═23278ec0-2b5d-11eb-0976-43c7720a6712
# ╟─23278ec0-2b5d-11eb-0195-bbc791222308
# ╠═23278ec0-2b5d-11eb-389f-4bef0e228d3a
# ╟─23278ec0-2b5d-11eb-1638-df27c153375b
# ╠═23278ec0-2b5d-11eb-145f-65682147fef6
# ╟─2327b5d0-2b5d-11eb-3ee5-bd7bed8c6719
# ╠═2327b5d0-2b5d-11eb-3956-57bb66394b25
# ╟─2327b5d0-2b5d-11eb-29f9-2d3fddd5e11d
# ╠═2327b5d0-2b5d-11eb-016e-c337dc1d36bf
# ╟─2327b5d0-2b5d-11eb-1638-8985cb36433d
# ╠═2327b5d0-2b5d-11eb-23be-c7afe30b9dd5
# ╟─2327b5d0-2b5d-11eb-18ac-53818e7f320e
# ╠═2327b5d0-2b5d-11eb-388f-1de40f61a7d7
# ╟─2327b5d0-2b5d-11eb-0aa3-c78566d86899
# ╠═2327b5d0-2b5d-11eb-1402-b531e0fbda41
# ╟─2327b5d0-2b5d-11eb-342c-3ddd7ca56b03
# ╠═2327b5d0-2b5d-11eb-2052-2bfd2d64f56c
# ╟─2327b5d0-2b5d-11eb-07d0-9fc4417c9d95
# ╠═2327b5d0-2b5d-11eb-00ea-735e20e1848b
# ╟─2327b5d0-2b5d-11eb-1bdf-bb0dc0771230
# ╠═2327b5d0-2b5d-11eb-2093-3da1bb409765
# ╟─2327b5d0-2b5d-11eb-34b4-69daaffb2425
# ╠═2327b5d0-2b5d-11eb-3686-59833b97cdfb
# ╟─2327b5d0-2b5d-11eb-1662-91df72ad35a7
# ╠═2327b5d0-2b5d-11eb-2227-3f29885f34a2
# ╟─2327b5d0-2b5d-11eb-321c-11d277a1e53f
# ╠═2327b5d0-2b5d-11eb-34d1-c55a4e2450fd
# ╟─2327b5d0-2b5d-11eb-32e8-b7ac0e1f6efb
# ╠═2327b5d0-2b5d-11eb-089a-49194c0bbf82
# ╟─2327b5d0-2b5d-11eb-3af1-99a844711b89
# ╠═2327b5d0-2b5d-11eb-2034-9b86c172dba0
# ╟─2327b5d0-2b5d-11eb-0c87-2d7b5a217bfc
# ╠═2327b5d0-2b5d-11eb-18dd-fb15b184f70b
# ╟─2327dce0-2b5d-11eb-180a-f1cea64c465e
# ╠═2327dce0-2b5d-11eb-21b0-87b14eed9e63
# ╟─2327dce0-2b5d-11eb-094f-896c8ee0ad93
# ╠═2327dce0-2b5d-11eb-27bf-51aba07ec920
# ╟─2327dce0-2b5d-11eb-31f9-898f6930c28e
# ╠═2327dce0-2b5d-11eb-3abc-2b8e100a29f9
# ╠═232da940-2b5d-11eb-1406-73efdda8b5cd
# ╟─232da940-2b5d-11eb-269d-e9bafa73919a
# ╠═232da940-2b5d-11eb-1afc-e340cab1a529
# ╟─232da940-2b5d-11eb-091c-b149c355e1b4
# ╠═232da940-2b5d-11eb-14cc-819cd3ab4a83
# ╟─232da940-2b5d-11eb-1d1c-0ffa62978f87
# ╠═232da940-2b5d-11eb-089d-5f9173507039
# ╟─232da940-2b5d-11eb-3857-2fdff5badf16
# ╠═232da940-2b5d-11eb-0afe-bbed2bf02868
# ╟─232da940-2b5d-11eb-0f39-7b5dbfade305
# ╠═232da940-2b5d-11eb-38d8-f1af4155f6d0
# ╟─232da940-2b5d-11eb-0346-e1c6940b3b58
# ╠═232da940-2b5d-11eb-20cc-855255323c29
# ╟─232da940-2b5d-11eb-186e-7fccf5df3eb0
# ╠═232da940-2b5d-11eb-0487-4de31ddca61a
# ╟─232da940-2b5d-11eb-0d93-dfff41f8ba4a
# ╠═232da940-2b5d-11eb-0a29-6fe55766fe0c
# ╟─232da940-2b5d-11eb-1a51-f7442337c6df
# ╠═232da940-2b5d-11eb-208f-bf8b48fa0aa7
# ╟─232dd052-2b5d-11eb-3207-25804a6c15b9
# ╠═232dd052-2b5d-11eb-3af7-d5aef264b938
# ╟─232dd052-2b5d-11eb-37e5-d9a27f8f923b
# ╠═232dd052-2b5d-11eb-1e3e-dbf47fe53f5f
# ╟─232dd052-2b5d-11eb-33e7-8968b3174d7a
# ╠═232dd052-2b5d-11eb-0f60-6532fe5b5dbc
# ╟─232dd052-2b5d-11eb-1f9c-4df215206598
# ╠═232dd052-2b5d-11eb-3728-25447786d6de
# ╟─232dd052-2b5d-11eb-15b5-3d070765affa
# ╠═232dd052-2b5d-11eb-0d43-8debea1a31d6
# ╟─232dd052-2b5d-11eb-0ed0-d7fe6bca0ffa
# ╠═232dd052-2b5d-11eb-1f72-e164a42a8510
# ╟─232dd052-2b5d-11eb-0551-9f45dc2daf0e
# ╠═232dd052-2b5d-11eb-3761-3d6b36a86aed
# ╟─232dd052-2b5d-11eb-1251-f39a8d2c4cd0
# ╠═232dd052-2b5d-11eb-00fa-b7f0a13c696b
# ╟─232dd052-2b5d-11eb-1077-ab22f3adf1b3
# ╠═232dd052-2b5d-11eb-3d41-5f431baba313
# ╟─232dd052-2b5d-11eb-18db-b92ae1822def
# ╠═232dd052-2b5d-11eb-1ceb-bd0c373d8d31
# ╟─232dd052-2b5d-11eb-075e-352acc984eff
# ╠═232dd052-2b5d-11eb-03d9-f94be94594bd
# ╟─232df760-2b5d-11eb-1cd7-1fbd34fe0248
# ╠═232df760-2b5d-11eb-3b65-6f64e5e259ed
# ╟─232df760-2b5d-11eb-307f-5fbf343c2565
# ╠═232df760-2b5d-11eb-2acc-f72f4f4fb04c
# ╟─232df760-2b5d-11eb-2603-3b82b1a10009
# ╠═232df760-2b5d-11eb-12db-01e79214ee67
# ╟─232df760-2b5d-11eb-3043-ed78a268fc91
# ╠═232df760-2b5d-11eb-3d30-69f9dabb883c
# ╟─232df760-2b5d-11eb-3b02-e9b96ddead40
# ╠═232df760-2b5d-11eb-1a5b-7d9f526f1184
# ╠═2333ead0-2b5d-11eb-2d04-5deda10f2a5e
# ╟─2333ead0-2b5d-11eb-22a7-2fb4ae99106e
# ╠═2333ead0-2b5d-11eb-29f0-f581fc893097
# ╟─2333ead0-2b5d-11eb-09f8-4f016885a0e1
# ╠═2333ead0-2b5d-11eb-3ff9-65658d00d6ab
# ╟─2333ead0-2b5d-11eb-25ef-5f5cd31311c4
# ╠═2333ead0-2b5d-11eb-0a9f-67ab028e6933
# ╟─2333ead0-2b5d-11eb-3f1d-5516b0c5bbf7
# ╠═2333ead0-2b5d-11eb-3a1b-63080342424d
# ╟─2333ead0-2b5d-11eb-1860-016938cd45bb
# ╠═2333ead0-2b5d-11eb-1f20-2db0fed56595
# ╟─2333ead0-2b5d-11eb-1f74-470d5e9deff4
# ╠═2333ead0-2b5d-11eb-3b92-fb192a46e9ab
# ╟─233411e0-2b5d-11eb-3edb-814a9cdfa842
# ╠═233411e0-2b5d-11eb-0018-95fd49ff2693
# ╟─233411e0-2b5d-11eb-160c-9164b302e043
# ╠═233411e0-2b5d-11eb-2604-753a2c0051c3
# ╟─233411e0-2b5d-11eb-0aae-e5b1489e2cb6
# ╠═233411e0-2b5d-11eb-2838-61d5a1267b0d
# ╟─233411e0-2b5d-11eb-160a-c32113d16d91
# ╠═233411e0-2b5d-11eb-0c07-81097739dfbb
# ╟─233411e0-2b5d-11eb-1f70-63283e7cfd89
# ╠═233411e0-2b5d-11eb-0aa9-8d06e2811ac3
# ╟─233411e0-2b5d-11eb-0910-1b354619de44
# ╠═233411e0-2b5d-11eb-1a7c-830ac8befcca
# ╟─233411e0-2b5d-11eb-029a-09abab765e9f
# ╠═233411e0-2b5d-11eb-1ff8-5b98821f5032
# ╟─233411e0-2b5d-11eb-2cf1-2949fc04750c
# ╠═233411e0-2b5d-11eb-09d2-01e0237c5e0e
# ╟─233411e0-2b5d-11eb-154c-59a1e48f8399
# ╠═233411e0-2b5d-11eb-2f40-93042a302e81
# ╟─233411e0-2b5d-11eb-3ea3-15ab7bb86e4c
# ╠═233411e0-2b5d-11eb-2421-21786e802840
# ╟─233411e0-2b5d-11eb-01c9-7b9287a59388
# ╠═233411e0-2b5d-11eb-1a6f-91f5e919208b
# ╟─233411e0-2b5d-11eb-035f-43825172a4dd
# ╠═233411e0-2b5d-11eb-0096-b19d9d0d4ea7
# ╟─233411e0-2b5d-11eb-3222-55e7a9c6a4ee
# ╠═233411e0-2b5d-11eb-0996-8780e55c5a64
# ╟─233411e0-2b5d-11eb-3512-73ed3debc588
# ╠═233411e0-2b5d-11eb-2c0c-b9474ab04829
# ╟─233438f0-2b5d-11eb-3e0b-890729a37624
# ╠═233438f0-2b5d-11eb-167a-d9c192c2d1cd
# ╟─233438f0-2b5d-11eb-090c-13a22b50d798
# ╠═233438f0-2b5d-11eb-33da-69a60849e71f
# ╟─233438f0-2b5d-11eb-3c48-0b724ff53f1d
# ╠═233438f0-2b5d-11eb-2bf2-71ae7158efc6
# ╟─233438f0-2b5d-11eb-378f-5795f4e821b6
# ╠═233438f0-2b5d-11eb-22e4-d1a17476e785
# ╟─233438f0-2b5d-11eb-1004-7973e3f7a075
# ╠═233438f0-2b5d-11eb-0590-dd7cfc8d5913