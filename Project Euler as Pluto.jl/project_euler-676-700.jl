### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1afd0fa0-84a3-11eb-3252-1ff8aa8019d8
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1afd0fa0-84a3-11eb-2aa5-ef26daed0e85
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

# ╔═╡ 1afd0fa0-84a3-11eb-21de-dd3696735e0a
begin
    submit_answer(nothing; prob_num=676)
end

# ╔═╡ 1afd0fa0-84a3-11eb-1ff9-3f03a873fd7b
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

# ╔═╡ 1afd0fa0-84a3-11eb-3c36-310f5818689c
begin
    submit_answer(nothing; prob_num=677)
end

# ╔═╡ 1afd0fa0-84a3-11eb-045f-0d049f744806
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

# ╔═╡ 1afd0fa0-84a3-11eb-2661-5726b6e0f814
begin
    submit_answer(nothing; prob_num=678)
end

# ╔═╡ 1afd0fa0-84a3-11eb-232b-9d6227526fe1
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

# ╔═╡ 1afd0fa0-84a3-11eb-22d0-71f8aac27b15
begin
    submit_answer(nothing; prob_num=679)
end

# ╔═╡ 1afd0fa0-84a3-11eb-3707-a54289384fdb
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

# ╔═╡ 1afd0fa0-84a3-11eb-0b4b-ab1b3d00ff80
begin
    submit_answer(nothing; prob_num=680)
end

# ╔═╡ 1afd0fa0-84a3-11eb-142b-0b6d303d339f
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

# ╔═╡ 1afd0fa0-84a3-11eb-37f3-7d9c358dd8b1
begin
    submit_answer(nothing; prob_num=681)
end

# ╔═╡ 1afd0fa0-84a3-11eb-11b5-9de725d72e0d
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

# ╔═╡ 1afd0fa0-84a3-11eb-3a93-6b652c175d94
begin
    submit_answer(nothing; prob_num=682)
end

# ╔═╡ 1afd0fa0-84a3-11eb-147d-af12f925432f
html"""
<h2>Problem 683: The Chase II</h2>
<p>Consider the following variant of "The Chase" game. This game is played between $n$ players sitting around a circular table using two dice. It consists of $n-1$ rounds, and at the end of each round one player is eliminated and has to pay a certain amount of money into a pot. The last player remaining is the winner and receives the entire contents of the pot.</p>

<p>At the beginning of a round, each die is given to a randomly selected player. A round then consists of a number of turns.</p>

<p>During each turn, each of the two players with a die rolls it. If a player rolls a 1 or a 2, the die is passed to the neighbour on the left; if the player rolls a 5 or a 6, the die is passed to the neighbour on the right; otherwise, the player keeps the die for the next turn.</p>

<p>The round ends when one player has both dice at the beginning of a turn. At which point that player is immediately eliminated and has to pay $s^2$ where $s$ is the number of completed turns in this round. Note that if both dice happen to be handed to the same player at the beginning of a round, then no turns are completed, so the player is eliminated without having to pay any money into the pot.</p>

<p>Let $G(n)$ be the expected amount that the winner will receive. For example $G(5)$ is approximately 96.544, and $G(50)$ is 2.82491788e6 in scientific notation rounded to 9 significant digits.</p>

<p>Find $G(500)$, giving your answer in scientific notation rounded to 9 significant digits.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-122b-83859aaa6f6d
begin
    submit_answer(nothing; prob_num=683)
end

# ╔═╡ 1afd0fa0-84a3-11eb-2c21-016c7404758c
html"""
<h2>Problem 684: Inverse Digit Sum</h2>
<p>Define $s(n)$ to be the smallest number that has a digit sum of $n$. For example $s(10) = 19$.<br />
Let $\displaystyle S(k) = \sum_{n=1}^k s(n)$. You are given $S(20) = 1074$.</p>
<p>
Further let $f_i$ be the Fibonacci sequence defined by $f_0=0, f_1=1$ and $f_i=f_{i-2}+f_{i-1}$ for all $i \ge 2$.</p>
<p>
Find $\displaystyle \sum_{i=2}^{90} S(f_i)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-2fc5-6d4cf619cbf9
begin
    submit_answer(nothing; prob_num=684)
end

# ╔═╡ 1afd0fa0-84a3-11eb-158f-adbe9f354435
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

# ╔═╡ 1afd0fa0-84a3-11eb-3939-1d3d618b785a
begin
    submit_answer(nothing; prob_num=685)
end

# ╔═╡ 1afd0fa0-84a3-11eb-268b-e5a11ba05886
html"""
<h2>Problem 686: Powers of Two</h2>
<p>$2^7=128$ is the first power of two whose leading digits are "12".<br />
The next power of two whose leading digits are "12" is $2^{80}$.</p>

<p>Define $p(L, n)$ to be the $n$th-smallest value of $j$ such that the base 10 representation of $2^j$ begins with the digits of $L$.<br />
So $p(12, 1) = 7$ and $p(12, 2) = 80$.</p>

<p>You are also given that $p(123, 45) = 12710$.</p>

<p>Find $p(123, 678910)$.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-2e31-9b2acc3c480c
begin
    submit_answer(nothing; prob_num=686)
end

# ╔═╡ 1afd0fa0-84a3-11eb-1253-c9516be9ab60
html"""
<h2>Problem 687: Shuffling Cards</h2>
<p>A standard deck of 52 playing cards, which consists of thirteen ranks (Ace, Two, ..., Ten, King, Queen and Jack) each in four suits (Clubs, Diamonds, Hearts and Spades), is randomly shuffled.  Let us call a rank <i>perfect</i> if no two cards of that same rank appear next to each other after the shuffle.</p>
<p>
It can be seen that the expected number of ranks that are perfect after a random shuffle equals $\frac {4324} {425} \approx 10.1741176471$.</p>
<p>
Find the probability that the number of perfect ranks is prime. Give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-31ae-c75de7e7c30f
begin
    submit_answer(nothing; prob_num=687)
end

# ╔═╡ 1afd0fa0-84a3-11eb-3229-978cab97800a
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

# ╔═╡ 1afd0fa0-84a3-11eb-1d8a-05c594298ad4
begin
    submit_answer(nothing; prob_num=688)
end

# ╔═╡ 1afd0fa0-84a3-11eb-304e-b9e3de660de7
html"""
<h2>Problem 689: Binary Series</h2>
<p>For $0 \le x \lt 1$, define $d_i(x)$ to be the $i$th digit after the binary point of the binary representation of $x$.<br />
For example $d_2(0.25) = 1$, $d_i(0.25) = 0$ for $i \ne 2$.</p>

<p>Let $f(x) = \displaystyle{\sum_{i=1}^{\infty}\frac{d_i(x)}{i^2}}$.</p>

<p>Let $p(a)$ be probability that $f(x) \gt a$, given that $x$ is uniformly distributed between 0 and 1.</p>

<p>Find $p(0.5)$. Give your answer rounded to 8 digits after the decimal point.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-050d-9721e8c4afac
begin
    submit_answer(nothing; prob_num=689)
end

# ╔═╡ 1afd0fa0-84a3-11eb-0180-1daaeddc688e
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

# ╔═╡ 1afd0fa0-84a3-11eb-04a7-5d651db5cc64
begin
    submit_answer(nothing; prob_num=690)
end

# ╔═╡ 1afd0fa0-84a3-11eb-2ce8-7dc27bc15c83
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

# ╔═╡ 1afd0fa0-84a3-11eb-14c9-ebbe11c01d69
begin
    submit_answer(nothing; prob_num=691)
end

# ╔═╡ 1afd0fa0-84a3-11eb-201c-93d7a0bca122
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

# ╔═╡ 1afd0fa0-84a3-11eb-2a4e-7f26494fc896
begin
    submit_answer(nothing; prob_num=692)
end

# ╔═╡ 1afd0fa0-84a3-11eb-0eca-09e4ad8cb155
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

# ╔═╡ 1afd0fa0-84a3-11eb-20cb-b9b17dc4dcd3
begin
    submit_answer(nothing; prob_num=693)
end

# ╔═╡ 1afd0fa0-84a3-11eb-0e91-bd879208fa98
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

# ╔═╡ 1afd0fa0-84a3-11eb-2ae9-a77558d9b925
begin
    submit_answer(nothing; prob_num=694)
end

# ╔═╡ 1afd0fa0-84a3-11eb-1416-a3bb1f58eb4d
html"""
<h2>Problem 695: Random Rectangles</h2>
<p>Three points, $P_1$, $P_2$ and $P_3$, are randomly selected within a unit square. Consider the three rectangles with sides parallel to the sides of the unit square and a diagonal that is one of the three line segments $\overline{P_1P_2}$, $\overline{P_1P_3}$ or $\overline{P_2P_3}$ (see picture below).</p>

<div class="center">
<img src="project/images/p695_randrect.png" alt="3 random rectangles" />
</div>

<p>We are interested in the rectangle with the second biggest area. In the example above that happens to be the green rectangle defined with the diagonal $\overline{P_2P_3}$.</p>

<p>Find the expected value of the area of the second biggest of the three rectangles. Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-1b4c-c584fcc8c83c
begin
    submit_answer(nothing; prob_num=695)
end

# ╔═╡ 1afd0fa0-84a3-11eb-1306-f5ff0bec1e83
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

# ╔═╡ 1afd0fa0-84a3-11eb-0972-75caa7ab7fb7
begin
    submit_answer(nothing; prob_num=696)
end

# ╔═╡ 1afd0fa0-84a3-11eb-1475-e1b5bce38f29
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

# ╔═╡ 1afd0fa0-84a3-11eb-37d5-9dd6c26639dd
begin
    submit_answer(nothing; prob_num=697)
end

# ╔═╡ 1afd0fa0-84a3-11eb-38d4-63d4e6f8dcc8
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

# ╔═╡ 1afd0fa0-84a3-11eb-0629-df01040ef811
begin
    submit_answer(nothing; prob_num=698)
end

# ╔═╡ 1afd0fa0-84a3-11eb-2075-0d31b9606e7e
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

# ╔═╡ 1afd0fa0-84a3-11eb-1225-41802384c7fc
begin
    submit_answer(nothing; prob_num=699)
end

# ╔═╡ 1afd0fa0-84a3-11eb-2a1e-0bb7511b7667
html"""
<h2>Problem 700: Eulercoin</h2>
<p>Leonhard Euler was born on 15 April 1707.</p>

<p>Consider the sequence 1504170715041707<var>n</var> mod 4503599627370517.</p>

<p>An element of this sequence is defined to be an Eulercoin if it is strictly smaller than all previously found Eulercoins.</p>

<p>For example, the first term is 1504170715041707 which is the first Eulercoin.  The second term is 3008341430083414 which is greater than 1504170715041707 so is not an Eulercoin.  However, the third term is 8912517754604 which is small enough to be a new Eulercoin.</p>

<p>The sum of the first 2 Eulercoins is therefore 1513083232796311.</p>

<p>Find the sum of all Eulercoins.</p>
"""

# ╔═╡ 1afd0fa0-84a3-11eb-1a5e-b78db23f0390
begin
    submit_answer(nothing; prob_num=700)
end

# ╔═╡ Cell order:
# ╠═1afd0fa0-84a3-11eb-3252-1ff8aa8019d8
# ╟─1afd0fa0-84a3-11eb-2aa5-ef26daed0e85
# ╠═1afd0fa0-84a3-11eb-21de-dd3696735e0a
# ╟─1afd0fa0-84a3-11eb-1ff9-3f03a873fd7b
# ╠═1afd0fa0-84a3-11eb-3c36-310f5818689c
# ╟─1afd0fa0-84a3-11eb-045f-0d049f744806
# ╠═1afd0fa0-84a3-11eb-2661-5726b6e0f814
# ╟─1afd0fa0-84a3-11eb-232b-9d6227526fe1
# ╠═1afd0fa0-84a3-11eb-22d0-71f8aac27b15
# ╟─1afd0fa0-84a3-11eb-3707-a54289384fdb
# ╠═1afd0fa0-84a3-11eb-0b4b-ab1b3d00ff80
# ╟─1afd0fa0-84a3-11eb-142b-0b6d303d339f
# ╠═1afd0fa0-84a3-11eb-37f3-7d9c358dd8b1
# ╟─1afd0fa0-84a3-11eb-11b5-9de725d72e0d
# ╠═1afd0fa0-84a3-11eb-3a93-6b652c175d94
# ╟─1afd0fa0-84a3-11eb-147d-af12f925432f
# ╠═1afd0fa0-84a3-11eb-122b-83859aaa6f6d
# ╟─1afd0fa0-84a3-11eb-2c21-016c7404758c
# ╠═1afd0fa0-84a3-11eb-2fc5-6d4cf619cbf9
# ╟─1afd0fa0-84a3-11eb-158f-adbe9f354435
# ╠═1afd0fa0-84a3-11eb-3939-1d3d618b785a
# ╟─1afd0fa0-84a3-11eb-268b-e5a11ba05886
# ╠═1afd0fa0-84a3-11eb-2e31-9b2acc3c480c
# ╟─1afd0fa0-84a3-11eb-1253-c9516be9ab60
# ╠═1afd0fa0-84a3-11eb-31ae-c75de7e7c30f
# ╟─1afd0fa0-84a3-11eb-3229-978cab97800a
# ╠═1afd0fa0-84a3-11eb-1d8a-05c594298ad4
# ╟─1afd0fa0-84a3-11eb-304e-b9e3de660de7
# ╠═1afd0fa0-84a3-11eb-050d-9721e8c4afac
# ╟─1afd0fa0-84a3-11eb-0180-1daaeddc688e
# ╠═1afd0fa0-84a3-11eb-04a7-5d651db5cc64
# ╟─1afd0fa0-84a3-11eb-2ce8-7dc27bc15c83
# ╠═1afd0fa0-84a3-11eb-14c9-ebbe11c01d69
# ╟─1afd0fa0-84a3-11eb-201c-93d7a0bca122
# ╠═1afd0fa0-84a3-11eb-2a4e-7f26494fc896
# ╟─1afd0fa0-84a3-11eb-0eca-09e4ad8cb155
# ╠═1afd0fa0-84a3-11eb-20cb-b9b17dc4dcd3
# ╟─1afd0fa0-84a3-11eb-0e91-bd879208fa98
# ╠═1afd0fa0-84a3-11eb-2ae9-a77558d9b925
# ╟─1afd0fa0-84a3-11eb-1416-a3bb1f58eb4d
# ╠═1afd0fa0-84a3-11eb-1b4c-c584fcc8c83c
# ╟─1afd0fa0-84a3-11eb-1306-f5ff0bec1e83
# ╠═1afd0fa0-84a3-11eb-0972-75caa7ab7fb7
# ╟─1afd0fa0-84a3-11eb-1475-e1b5bce38f29
# ╠═1afd0fa0-84a3-11eb-37d5-9dd6c26639dd
# ╟─1afd0fa0-84a3-11eb-38d4-63d4e6f8dcc8
# ╠═1afd0fa0-84a3-11eb-0629-df01040ef811
# ╟─1afd0fa0-84a3-11eb-2075-0d31b9606e7e
# ╠═1afd0fa0-84a3-11eb-1225-41802384c7fc
# ╟─1afd0fa0-84a3-11eb-2a1e-0bb7511b7667
# ╠═1afd0fa0-84a3-11eb-1a5e-b78db23f0390