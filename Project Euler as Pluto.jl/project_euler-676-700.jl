### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44a85dee-8435-11eb-12d2-8363d25af57e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44a85dee-8435-11eb-0876-1dbfe51e23c8
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

# ╔═╡ 44a85dee-8435-11eb-0c4c-03c050432791
begin
    submit_answer(nothing; prob_num=676)
end

# ╔═╡ 44a85dee-8435-11eb-160b-799b9505ba43
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

# ╔═╡ 44a85dee-8435-11eb-00e3-d57cd78c13d6
begin
    submit_answer(nothing; prob_num=677)
end

# ╔═╡ 44a85dee-8435-11eb-0a53-61a05982615c
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

# ╔═╡ 44a85dee-8435-11eb-3583-4d2ed7326a62
begin
    submit_answer(nothing; prob_num=678)
end

# ╔═╡ 44a85dee-8435-11eb-3d13-a5bce5ba690f
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

# ╔═╡ 44a85dee-8435-11eb-240c-19cec48fd09c
begin
    submit_answer(nothing; prob_num=679)
end

# ╔═╡ 44a85dee-8435-11eb-34dd-4beb33a09343
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

# ╔═╡ 44a85dee-8435-11eb-3d7a-175659863f93
begin
    submit_answer(nothing; prob_num=680)
end

# ╔═╡ 44a85dee-8435-11eb-3966-ed2464314bbb
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

# ╔═╡ 44a85dee-8435-11eb-3ea3-edd58159e569
begin
    submit_answer(nothing; prob_num=681)
end

# ╔═╡ 44a85dee-8435-11eb-3879-a38c9b90af87
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

# ╔═╡ 44a85dee-8435-11eb-3d03-6b73984866c4
begin
    submit_answer(nothing; prob_num=682)
end

# ╔═╡ 44a85dee-8435-11eb-374a-9578e472bc56
html"""
<h2>Problem 683: The Chase II</h2>
<p>Consider the following variant of "The Chase" game. This game is played between $n$ players sitting around a circular table using two dice. It consists of $n-1$ rounds, and at the end of each round one player is eliminated and has to pay a certain amount of money into a pot. The last player remaining is the winner and receives the entire contents of the pot.</p>

<p>At the beginning of a round, each die is given to a randomly selected player. A round then consists of a number of turns.</p>

<p>During each turn, each of the two players with a die rolls it. If a player rolls a 1 or a 2, the die is passed to the neighbour on the left; if the player rolls a 5 or a 6, the die is passed to the neighbour on the right; otherwise, the player keeps the die for the next turn.</p>

<p>The round ends when one player has both dice at the beginning of a turn. At which point that player is immediately eliminated and has to pay $s^2$ where $s$ is the number of completed turns in this round. Note that if both dice happen to be handed to the same player at the beginning of a round, then no turns are completed, so the player is eliminated without having to pay any money into the pot.</p>

<p>Let $G(n)$ be the expected amount that the winner will receive. For example $G(5)$ is approximately 96.544, and $G(50)$ is 2.82491788e6 in scientific notation rounded to 9 significant digits.</p>

<p>Find $G(500)$, giving your answer in scientific notation rounded to 9 significant digits.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-06be-51a12863cf4e
begin
    submit_answer(nothing; prob_num=683)
end

# ╔═╡ 44a85dee-8435-11eb-00a2-1f1503648c6c
html"""
<h2>Problem 684: Inverse Digit Sum</h2>
<p>Define $s(n)$ to be the smallest number that has a digit sum of $n$. For example $s(10) = 19$.<br />
Let $\displaystyle S(k) = \sum_{n=1}^k s(n)$. You are given $S(20) = 1074$.</p>
<p>
Further let $f_i$ be the Fibonacci sequence defined by $f_0=0, f_1=1$ and $f_i=f_{i-2}+f_{i-1}$ for all $i \ge 2$.</p>
<p>
Find $\displaystyle \sum_{i=2}^{90} S(f_i)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-3158-8f87ecef3f66
begin
    submit_answer(nothing; prob_num=684)
end

# ╔═╡ 44a85dee-8435-11eb-265f-ef8ee559cb4d
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

# ╔═╡ 44a85dee-8435-11eb-3cf9-81ca190cdafc
begin
    submit_answer(nothing; prob_num=685)
end

# ╔═╡ 44a85dee-8435-11eb-061f-712043db9f2c
html"""
<h2>Problem 686: Powers of Two</h2>
<p>$2^7=128$ is the first power of two whose leading digits are "12".<br />
The next power of two whose leading digits are "12" is $2^{80}$.</p>

<p>Define $p(L, n)$ to be the $n$th-smallest value of $j$ such that the base 10 representation of $2^j$ begins with the digits of $L$.<br />
So $p(12, 1) = 7$ and $p(12, 2) = 80$.</p>

<p>You are also given that $p(123, 45) = 12710$.</p>

<p>Find $p(123, 678910)$.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-25e9-034ffa9bc1dd
begin
    submit_answer(nothing; prob_num=686)
end

# ╔═╡ 44a85dee-8435-11eb-0d10-1fc1eff1dd68
html"""
<h2>Problem 687: Shuffling Cards</h2>
<p>A standard deck of 52 playing cards, which consists of thirteen ranks (Ace, Two, ..., Ten, King, Queen and Jack) each in four suits (Clubs, Diamonds, Hearts and Spades), is randomly shuffled.  Let us call a rank <i>perfect</i> if no two cards of that same rank appear next to each other after the shuffle.</p>
<p>
It can be seen that the expected number of ranks that are perfect after a random shuffle equals $\frac {4324} {425} \approx 10.1741176471$.</p>
<p>
Find the probability that the number of perfect ranks is prime. Give your answer rounded to 10 decimal places.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-31ba-673fd450cde0
begin
    submit_answer(nothing; prob_num=687)
end

# ╔═╡ 44a85dee-8435-11eb-38a7-b34f63e822f4
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

# ╔═╡ 44a85dee-8435-11eb-00d6-ab9cdde76ce9
begin
    submit_answer(nothing; prob_num=688)
end

# ╔═╡ 44a85dee-8435-11eb-33eb-4fdee7eac93b
html"""
<h2>Problem 689: Binary Series</h2>
<p>For $0 \le x \lt 1$, define $d_i(x)$ to be the $i$th digit after the binary point of the binary representation of $x$.<br />
For example $d_2(0.25) = 1$, $d_i(0.25) = 0$ for $i \ne 2$.</p>

<p>Let $f(x) = \displaystyle{\sum_{i=1}^{\infty}\frac{d_i(x)}{i^2}}$.</p>

<p>Let $p(a)$ be probability that $f(x) \gt a$, given that $x$ is uniformly distributed between 0 and 1.</p>

<p>Find $p(0.5)$. Give your answer rounded to 8 digits after the decimal point.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-38e7-cd2c9d67894f
begin
    submit_answer(nothing; prob_num=689)
end

# ╔═╡ 44a85dee-8435-11eb-3983-63940cbfacbf
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

# ╔═╡ 44a85dee-8435-11eb-05f5-29437d4dd4f5
begin
    submit_answer(nothing; prob_num=690)
end

# ╔═╡ 44a85dee-8435-11eb-2985-5784244dde54
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

# ╔═╡ 44a85dee-8435-11eb-11b1-779d2f568d0e
begin
    submit_answer(nothing; prob_num=691)
end

# ╔═╡ 44a85dee-8435-11eb-333b-55e2ba1b64bb
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

# ╔═╡ 44a85dee-8435-11eb-2990-a5fdb7a96ea9
begin
    submit_answer(nothing; prob_num=692)
end

# ╔═╡ 44a85dee-8435-11eb-1579-0b7c5a85fbb0
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

# ╔═╡ 44a85dee-8435-11eb-2cb9-cbaf128329d6
begin
    submit_answer(nothing; prob_num=693)
end

# ╔═╡ 44a85dee-8435-11eb-3991-d782fed43510
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

# ╔═╡ 44a85dee-8435-11eb-04c9-e3020dfd571e
begin
    submit_answer(nothing; prob_num=694)
end

# ╔═╡ 44a85dee-8435-11eb-1be8-63e5d8ef293d
html"""
<h2>Problem 695: Random Rectangles</h2>
<p>Three points, $P_1$, $P_2$ and $P_3$, are randomly selected within a unit square. Consider the three rectangles with sides parallel to the sides of the unit square and a diagonal that is one of the three line segments $\overline{P_1P_2}$, $\overline{P_1P_3}$ or $\overline{P_2P_3}$ (see picture below).</p>

<div class="center">
<img src="project/images/p695_randrect.png" alt="3 random rectangles" />
</div>

<p>We are interested in the rectangle with the second biggest area. In the example above that happens to be the green rectangle defined with the diagonal $\overline{P_2P_3}$.</p>

<p>Find the expected value of the area of the second biggest of the three rectangles. Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 44a85dee-8435-11eb-17dc-fdd4cd9cd389
begin
    submit_answer(nothing; prob_num=695)
end

# ╔═╡ 44a85dee-8435-11eb-2c71-cd9538aa62bd
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

# ╔═╡ 44a85dee-8435-11eb-3314-87abd35d440e
begin
    submit_answer(nothing; prob_num=696)
end

# ╔═╡ 44a85dee-8435-11eb-1343-61c0d27922e1
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

# ╔═╡ 44a85dee-8435-11eb-1aea-1bb0a29287af
begin
    submit_answer(nothing; prob_num=697)
end

# ╔═╡ 44a85dee-8435-11eb-2663-3191601d8df1
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

# ╔═╡ 44a85dee-8435-11eb-2b1d-5526a4f62623
begin
    submit_answer(nothing; prob_num=698)
end

# ╔═╡ 44aaa7e0-8435-11eb-3310-6d16faddd003
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

# ╔═╡ 44aaa7e0-8435-11eb-0c58-e1f492bb0374
begin
    submit_answer(nothing; prob_num=699)
end

# ╔═╡ 44aaa7e0-8435-11eb-2987-7759de4583b9
html"""
<h2>Problem 700: Eulercoin</h2>
<p>Leonhard Euler was born on 15 April 1707.</p>

<p>Consider the sequence 1504170715041707<var>n</var> mod 4503599627370517.</p>

<p>An element of this sequence is defined to be an Eulercoin if it is strictly smaller than all previously found Eulercoins.</p>

<p>For example, the first term is 1504170715041707 which is the first Eulercoin.  The second term is 3008341430083414 which is greater than 1504170715041707 so is not an Eulercoin.  However, the third term is 8912517754604 which is small enough to be a new Eulercoin.</p>

<p>The sum of the first 2 Eulercoins is therefore 1513083232796311.</p>

<p>Find the sum of all Eulercoins.</p>
"""

# ╔═╡ 44aaa7e0-8435-11eb-11cb-51c9896157b0
begin
    submit_answer(nothing; prob_num=700)
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