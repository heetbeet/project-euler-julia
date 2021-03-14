### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1b0796f0-84a3-11eb-2e02-afaff16c3994
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1b0796f0-84a3-11eb-12f6-2937069996b5
html"""
<h2>Problem 726: Falling bottles</h2>
<p>
Consider a stack of bottles of wine. There are $n$ layers in the stack with the top layer containing only one bottle and the bottom layer containing $n$ bottles. For $n=4$ the stack looks like the picture below.
</p>
<div class="center">
<img src="project/images/p726_FallingBottles.jpg" class="dark_img" alt="" /></div>
<p>
The <i>collapsing process</i> happens every time a bottle is taken. A space is created in the stack and that space is filled according to the following recursive steps:
</p><ul>
<li>No bottle touching from above: nothing happens. For example, taking $F$.</li>
<li>One bottle touching from above: that will drop down to fill the space creating another space. For example, taking $D$.</li>
<li>Two bottles touching from above: one will drop down to fill the space creating another space. For example, taking $C$.</li>
</ul>
<p>
This process happens recursively; for example, taking bottle $A$ in the diagram above. Its place can be filled with either $B$ or $C$. If it is filled with $C$ then the space that $C$ creates can be filled with $D$ or $E$. So there are 3 different collapsing processes that can happen if $A$ is taken, although the final shape (in this case) is the same.
</p>
<p>
Define $f(n)$ to be the number of ways that we can take all the bottles from a stack with $n$ layers. 
Two ways are considered different if at any step we took a different bottle or the collapsing process went differently.
</p>
<p>
You are given $f(1) = 1$, $f(2) = 6$ and $f(3) = 1008$.
</p>
Also define
<div class="center">
$\displaystyle	S(n) = \sum_{k=1}^n f(k)$</div>
<p>
Find $S(10^4)$ and give your answer modulo $1\,000\,000\,033$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-1acf-9bab5e8c4048
begin
    submit_answer(nothing; prob_num=726)
end

# ╔═╡ 1b0796f0-84a3-11eb-280d-4b6ccc83a943
html"""
<h2>Problem 727: Triangle of Circular Arcs</h2>
<p>Let $r_a$, $r_b$ and $r_c$ be the radii of three circles that are mutually and externally tangent to each other. The three circles then form a <dfn>triangle of circular arcs</dfn> between their tangency points as shown for the three blue circles in the picture below.</p>
<p></p>
<div class="center">
<img src="project/images/p727_circular_arcs.jpg" alt="CircularArcs" />
</div>

<p></p>
Define the circumcircle of this triangle to be the red circle, with centre $D$, passing through their tangency points. Further define the incircle of this triangle to be the green circle, with centre $E$, that is mutually and externally tangent to all the three blue circles. Let $d=\vert DE \vert$ be the distance between the centres of the circumcircle and the incircle.
<p>
Let $\mathbb{E}(d)$ be the expected value of $d$ when $r_a$, $r_b$ and $r_c$ are integers chosen uniformly such that $1\leq r_a&lt;r_b&lt;r_c \leq 100$ and $\text{gcd}(r_a,r_b,r_c)=1$.</p>
<p>
Find $\mathbb{E}(d)$, rounded to eight places after the decimal point.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-3f4f-598528e93128
begin
    submit_answer(nothing; prob_num=727)
end

# ╔═╡ 1b0796f0-84a3-11eb-24fd-791b4a6c5398
html"""
<h2>Problem 728: Circle of Coins</h2>
<p>Consider $n$ coins arranged in a circle where each coin shows heads or tails. A move consists of turning over $k$ consecutive coins: tail-head or head-tail. Using a sequence of these moves the objective is to get all the coins showing heads.</p>

<p>Consider the example, shown below, where $n=8$ and $k=3$ and the initial state is one coin showing tails (black). The example shows a solution for this state.</p>

<div class="center">
<img src="project/images/p728_coin_circle.jpg" class="dark_img" alt="" /></div>

<p>For given values of $n$ and $k$ not all states are solvable.  Let $F(n,k)$ be the number of states that are solvable. You are given that $F(3,2) = 4$, $F(8,3) = 256$ and $F(9,3) = 128$.</p>

<p>Further define:</p>
<div class="center">
$\displaystyle	S(N) = \sum_{n=1}^N\sum_{k=1}^n F(n,k)$</div>

<p>You are also given that $S(3) = 22$, $S(10) = 10444$ and $S(10^3) \equiv 853837042 \pmod{1\,000\,000\,007}$</p>

<p>Find $S(10^7)$. Give your answer modulo $1\,000\,000\,007$</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-09d4-f1adfd2c6c32
begin
    submit_answer(nothing; prob_num=728)
end

# ╔═╡ 1b0796f0-84a3-11eb-0b1a-bdd4c0b88c91
html"""
<h2>Problem 729: Range of periodic sequence</h2>
<p>Consider the sequence of real numbers $a_n$ defined by the starting value $a_0$ and the recurrence
$\displaystyle a_{n+1}=a_n-\frac 1 {a_n}$ for any $n  \ge 0$.</p>
<p>
For some starting values $a_0$ the sequence will be periodic. For example, $a_0=\sqrt{\frac 1 2}$ yields the sequence:
$\sqrt{\frac 1 2},-\sqrt{\frac 1 2},\sqrt{\frac 1 2}, \dots$</p>
<p>
We are interested in the range of such a periodic sequence which is the difference between the maximum and minimum of the sequence. For example, the range of the sequence above would be $\sqrt{\frac 1 2}-(-\sqrt{\frac 1 2})=\sqrt{ 2}$.</p>
<p>
Let $S(P)$ be the sum of the ranges of all such periodic sequences with a period not exceeding $P$.<br />
For example, $S(2)=2\sqrt{2} \approx 2.8284$, being the sum of the ranges of the two sequences starting with $a_0=\sqrt{\frac 1 2}$ and $a_0=-\sqrt{\frac 1 2}$. <br />
You are given $S(3) \approx 14.6461$ and $S(5) \approx 124.1056$.
</p><p>
Find $S(25)$, rounded to 4 decimal places.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-096a-5d59b7cf1e81
begin
    submit_answer(nothing; prob_num=729)
end

# ╔═╡ 1b0796f0-84a3-11eb-221d-a7fa9834f896
html"""
<h2>Problem 730: Shifted Pythagorean Triples</h2>
<p>
For a non-negative integer $k$, the triple $(p,q,r)$ of positive integers is called a <dfn>$k$-shifted Pythagorean triple</dfn> if $$p^2 + q^2 + k = r^2$$
</p>
<p>
$(p, q, r)$ is said to be primitive if $\gcd(p, q, r)=1$.
</p>
<p>
Let $P_k(n)$ be the number of primitive k-shifted Pythagorean triples such that $1 \le p \le q \le r$ and $p + q + r \le n$. <br /> For example, $P_0(10^4) = 703$ and $P_{20}(10^4) = 1979$. 
</p>
<p>
Define 
$$\displaystyle S(m,n)=\sum_{k=0}^{m}P_k(n)$$
You are given that $S(10,10^4) = 10956$. 
</p>
<p>
Find $S(10^2,10^8)$
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-05c1-a19c03103905
begin
    submit_answer(nothing; prob_num=730)
end

# ╔═╡ 1b0796f0-84a3-11eb-3647-8daa0fff9a38
html"""
<h2>Problem 731: A Stoneham Number</h2>
<p>
$$A=\sum_{i=1}^{\infty} \frac{1}{3^i 10^{3^i}}$$
</p>
<p>
Define $A(n)$ to be the 10 decimal digits from the $n$th digit onward. 
For example, $A(100) = 4938271604$ and $A(10^8)=2584642393$.
</p>
<p>
Find $A(10^{16})$
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-2cf2-530733cebd6c
begin
    submit_answer(nothing; prob_num=731)
end

# ╔═╡ 1b0796f0-84a3-11eb-24a5-2531d41f8782
html"""
<h2>Problem 732: Standing on the shoulders of trolls</h2>
<p>
$N$ trolls are in a hole that is $D_N$ cm deep. The $n$-th troll is characterized by:
</p>
<ul>
<li>the distance from his feet to his shoulders in cm, $h_n$</li>
<li>the length of his arms in cm, $l_n$</li>
<li>his IQ (Irascibility Quotient), $q_n$.</li>
</ul>
<p>
Trolls can pile up on top of each other, with each troll standing on the shoulders of the one below him. A troll can climb out of the hole and escape if his hands can reach to the surface. Once a troll escapes he cannot participate any further in the escaping effort.
</p>
<p>
The trolls execute an optimal strategy for maximizing the total IQ of the escaping trolls, defined as $Q(N)$.
</p>
<p>
Let<br />
$r_n = \left[ \left( 5^n \bmod (10^9 + 7) \right) \bmod 101 \right] + 50$
<br />
$h_n = r_{3n}$
<br />
$l_n = r_{3n+1}$
<br />
$q_n = r_{3n+2}$
<br />
$D_N = \frac{1}{\sqrt{2}} \sum_{n=0}^{N-1} h_n$.
</p>
<p>
For example, the first troll ($n=0$) is 51cm tall to his shoulders, has 55cm long arms, and has an IQ of 75.
</p>
<p>
You are given that $Q(5) = 401$ and $Q(15)=941$.
</p>
<p>
Find $Q(1000)$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-3a11-f9154fa4fe6b
begin
    submit_answer(nothing; prob_num=732)
end

# ╔═╡ 1b0796f0-84a3-11eb-2655-45ba650a9af8
html"""
<h2>Problem 733: Ascending subsequences</h2>
<p>
Let $a_i$ be the sequence defined by $a_i=153^i \bmod 10\,000\,019$ for $i \ge 1$.<br />
The first terms of $a_i$ are:
$153, 23409, 3581577, 7980255, 976697, 9434375, \dots$
</p>
<p>
Consider the subsequences consisting of 4 terms in ascending order. For the part of the sequence shown above, these are:<br />
$153, 23409, 3581577, 7980255$<br />
$153, 23409, 3581577, 9434375$<br />
$153, 23409, 7980255, 9434375$<br />
$153, 23409, 976697, 9434375$<br />
$153, 3581577, 7980255, 9434375$ and<br />
$23409, 3581577, 7980255, 9434375$.
</p>
<p>
Define $S(n)$ to be the sum of the terms for all such subsequences within the first $n$ terms of $a_i$. Thus $S(6)=94513710$.<br />
You are given that $S(100)=4465488724217$.
</p>
<p>
Find $S(10^6)$ modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-21fa-eb30a3585fe2
begin
    submit_answer(nothing; prob_num=733)
end

# ╔═╡ 1b0796f0-84a3-11eb-2d02-f7eb4d7fb249
html"""
<h2>Problem 734: A bit of prime</h2>
<p>
The <i>logical-OR</i> of two bits is 0 if both bits are 0, otherwise it is 1.<br />
The <i>bitwise-OR</i> of two positive integers performs a <i>logical OR</i> operation on each pair of corresponding bits in the binary expansion of its inputs.
</p>
<p>
For example, the bitwise-OR of $10$ and $6$ is $14$ because $10 = 1010_2$, $6 = 0110_2$ and $14 = 1110_2$.
</p>
<p>
Let $T(n, k)$ be the number of $k$-tuples $(x_1, x_2,\cdots,x_k)$ such that
</p>
<ul>
<li>every $x_i$ is a prime $\leq n$</li>
<li>the bitwise-OR of the tuple is a prime $\leq n$</li>
</ul>
<p>
For example, $T(5, 2)=5$. The five 2-tuples are (2, 2), (2, 3), (3, 2), (3, 3) and (5, 5).
</p><p>
You are given $T(100, 3) = 3355$ and $T(1000, 10) \equiv 2071632 \pmod{1\,000\,000\,007}$
</p>
<p>
Find $T(10^6,999983)$. Give your answer modulo $1\,000\,000\,007$
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-330e-6f5157bca1a1
begin
    submit_answer(nothing; prob_num=734)
end

# ╔═╡ 1b0796f0-84a3-11eb-02e4-1bc8a82e5111
html"""
<h2>Problem 735: Divisors of $2n^2$</h2>
<p>Let $f(n)$ be the number of divisors of $2n^2$ that are no greater than n. For example, $f(15)=8$ because there are 8 such divisors: 1,2,3,5,6,9,10,15. Note that 18 is also a divisor of $2\times 15^2$ but it is not counted because it is greater than 15.</p>

<p>Let $\displaystyle F(N) = \sum_{n=1}^N f(n)$. You are given $F(15)=63$, and $F(1000)=15066$.</p>

<p>Find $F(10^{12})$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-2ea8-935f988ff028
begin
    submit_answer(nothing; prob_num=735)
end

# ╔═╡ 1b0796f0-84a3-11eb-1f25-6318ff0a68fb
html"""
<h2>Problem 736: Paths to Equality</h2>
<p>Define two functions on lattice points:</p>
<center>$r(x,y) = (x+1,2y)$</center>
<center>$s(x,y) = (2x,y+1)$</center>
<p>A <i>path to equality</i> of length $n$ for a pair $(a,b)$ is a sequence $\Big((a_1,b_1),(a_2,b_2),\ldots,(a_n,b_n)\Big)$, where:</p>
<ul>
<li>$(a_1,b_1) = (a,b)$</li>
<li>$(a_k,b_k) = r(a_{k-1},b_{k-1})$ or $(a_k,b_k) = s(a_{k-1},b_{k-1})$ for $k &gt; 1$</li>
<li>$a_k \ne b_k$ for $k &lt; n$</li>
<li>$a_n = b_n$</li>
</ul>
<p>$a_n = b_n$ is called the <i>final value</i>.</p>
<p>For example,</p>
<center>$(45,90)\xrightarrow{r} (46,180)\xrightarrow{s}(92,181)\xrightarrow{s}(184,182)\xrightarrow{s}(368,183)\xrightarrow{s}(736,184)\xrightarrow{r}$</center>
<center>$(737,368)\xrightarrow{s}(1474,369)\xrightarrow{r}(1475,738)\xrightarrow{r}(1476,1476)$</center>
<p>This is a path to equality for $(45,90)$ and is of length 10 with final value 1476. There is no path to equality of $(45,90)$ with smaller length.</p>
<p>Find the unique path to equality for $(45,90)$ with smallest <b>odd</b> length. Enter the final value as your answer.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-302e-7d69f94c9de1
begin
    submit_answer(nothing; prob_num=736)
end

# ╔═╡ 1b0796f0-84a3-11eb-1692-e3e3f1f5f6c2
html"""
<h2>Problem 737: Coin Loops</h2>
<p>
A game is played with many identical, round coins on a flat table.
</p>
<p>
Consider a line perpendicular to the table.<br />
The first coin is placed on the table touching the line.<br />
Then, one by one, the coins are placed horizontally on top of the previous coin and touching the line.<br />
The complete stack of coins must be balanced after every placement.
</p>
<p>
The diagram below [not to scale] shows a possible placement of 8 coins where point $P$ represents the line.
</p>
<div style="text-align:center;">
<img src="project/images/p737_coinloop.jpg" class="dark_img" alt="" /></div>
<p>
It is found that a minimum of $31$ coins are needed to form a <i>coin loop</i> around the line, i.e. if in the projection of the coins on the table the centre of the $n$th coin is rotated $\theta_n$, about the line, from the centre of the $(n-1)$th coin then the sum of $\displaystyle\sum_{k=2}^n \theta_k$ is first larger than $360^\circ$ when $n=31$. In general, to loop $k$ times, $n$ is the smallest number for which the sum is greater than $360^\circ k$.
</p>
<p>
Also, $154$ coins are needed to loop two times around the line, and $6947$ coins to loop ten times.
</p>
<p>
Calculate the number of coins needed to loop $2020$ times around the line.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-01ea-571aec30df18
begin
    submit_answer(nothing; prob_num=737)
end

# ╔═╡ 1b0796f0-84a3-11eb-19d1-a75dc81a7586
html"""
<h2>Problem 738: Counting Ordered Factorisations</h2>
<p>Define $d(n,k)$ to be the number of ways to write $n$ as a product of $k$ ordered integers</p>
\[
n = x_1\times x_2\times x_3\times \ldots\times x_k\qquad 1\le x_1\le x_2\le\ldots\le x_k
\]
<p>Further define $D(N,K)$ to be the sum of $d(n,k)$ for $1\le n\le N$ and $1\le k\le K$.</p>

<p>You are given that $D(10, 10) = 153$ and $D(100, 100) = 35384$.</p>

<p>Find $D(10^{10},10^{10})$ giving your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-3358-57e5e79ae0f6
begin
    submit_answer(nothing; prob_num=738)
end

# ╔═╡ 1b0796f0-84a3-11eb-2faa-b5896779ab0d
html"""
<h2>Problem 739: Summation of Summations</h2>
<p>
Take a sequence of length $n$. Discard the first term then make a sequence of the partial summations. Continue to do this over and over until we are left with a single term. We define this to be $f(n)$.
</p>
<p>
Consider the example where we start with a sequence of length 8:
</p>
<p style="text-align:center;">
$
\begin{array}{rrrrrrrr}
1&amp;1&amp;1&amp;1&amp;1&amp;1&amp;1&amp;1\\
 &amp;1&amp;2&amp;3&amp;4&amp;5&amp; 6 &amp;7\\
 &amp; &amp;2&amp;5&amp;9&amp;14&amp;20&amp;27\\
 &amp; &amp; &amp;5&amp;14&amp;28&amp;48&amp;75\\
 &amp; &amp; &amp; &amp;14&amp;42&amp;90&amp;165\\
 &amp; &amp; &amp; &amp; &amp; 42 &amp; 132 &amp; 297\\
 &amp; &amp; &amp; &amp; &amp; &amp; 132 &amp;429\\
 &amp; &amp; &amp; &amp; &amp; &amp; &amp;429\\
\end{array}
$
</p>
<p>
Then the final number is $429$, so $f(8) = 429$.
</p>
<p>
For this problem we start with the sequence $1,3,4,7,11,18,29,47,\ldots$<br />
This is the Lucas sequence where two terms are added to get the next term.<br /> 
Applying the same process as above we get $f(8) = 2663$.<br />
You are also given $f(20) = 742296999 $ modulo $1\,000\,000\,007$
</p>
<p>
Find $f(10^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-33d0-0d40e9e95c11
begin
    submit_answer(nothing; prob_num=739)
end

# ╔═╡ 1b0796f0-84a3-11eb-3d5a-bbadb0ce44f8
html"""
<h2>Problem 740: Secret Santa</h2>
<p>
Secret Santa is a process that allows $n$ people to give each other presents, so that each person gives a single present and receives a single present. At the beginning each of the $n$ people write their name on a slip of paper and put the slip into a hat. Each person takes a random slip from the hat. If the slip has their name they draw another random slip from the hat and then put the slip with their name back into the hat. At the end everyone buys a Christmas present for the person whose name is on the slip they are holding. This process will fail if the last person draws their own name.
</p>
<p>
In this variation each of the $n$ people gives and receives two presents. At the beginning each of the $n$ people writes their name on two slips of paper and puts the slips into a hat (there will be $2n$ slips of paper in the hat). As before each person takes from the hat a random slip that does not contain their own name. Then the same person repeats this process thus ending up with two slips, neither of which contains that person's own name. Then the next person draws two slips in the same way, and so on. The process will fail if the last person gets at least one slip with their own name. 
</p>
<p>
Define $q(n)$ to be the probability of this happening. You are given $q(3) = 0.3611111111$ and $q(5) = 0.2476095994$ both rounded to 10 decimal places.
</p>
<p>
Find $q(100)$ rounded to 10 decimal places.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-0bb4-6776155fa3d8
begin
    submit_answer(nothing; prob_num=740)
end

# ╔═╡ 1b0796f0-84a3-11eb-0a3b-077627d7521b
html"""
<h2>Problem 741: Binary grid colouring</h2>
<p>
Let $f(n)$ be the number of ways an $n\times n$ square grid can be coloured, each cell either black or white, such that each row and each column contains exactly two black cells.<br />
For example, $f(4)=90$, $f(7) = 3110940$ and $f(8) = 187530840$.
</p>
<p>
Let $g(n)$ be the number of colourings in $f(n)$ that are unique up to rotations and reflections.<br />
You are given $g(4)=20$, $g(7) = 390816$ and $g(8) = 23462347$ giving $g(7)+g(8) = 23853163$.
</p>
<p>
Find $g(7^7) + g(8^8)$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-289c-59de0ccc3181
begin
    submit_answer(nothing; prob_num=741)
end

# ╔═╡ 1b0796f0-84a3-11eb-048f-f18b8e277f79
html"""
<h2>Problem 742: Minimum area of a convex grid polygon</h2>
<p>A <i>symmetrical convex grid polygon</i> is a polygon such that:</p>
<ul>
<li>All its vertices have integer coordinates.</li>
<li>All its internal angles are strictly smaller than $180°$.</li>
<li>It has both horizontal and vertical symmetry.</li>
</ul>

<p>For example, the left polygon is a convex grid polygon which has neither horizontal nor vertical symmetry, while the right one is a valid symmetrical convex grid polygon with six vertices:</p>
<div style="text-align:center;">
<img src="project/images/p742_hexagons.jpg" class="dark_img" alt="" /></div>

<p>Define $A(N)$, the minimum area of a symmetrical convex grid polygon with $N$ vertices.</p>

<p>You are given $A(4) = 1$, $A(8) = 7$, $A(40) = 1039$ and $A(100) = 17473$.</p>

<p>Find $A(1000)$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-1acd-95cbc03d4c4c
begin
    submit_answer(nothing; prob_num=742)
end

# ╔═╡ 1b0796f0-84a3-11eb-3626-690da4299980
html"""
<h2>Problem 743: Window into a Matrix</h2>
<p>
A window into a matrix is a contiguous sub matrix.
</p>
<p>
Consider a $2\times n$ matrix where every entry is either 0 or 1.<br />
Let $A(k,n)$ be the total number of these matrices such that the sum of the entries in every $2\times k$ window is $k$.
</p>
<p>
You are given that $A(3,9) = 560$ and $A(4,20) = 1060870$.
</p>
<p>
Find $A(10^8,10^{16})$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-1493-bfe305db30d0
begin
    submit_answer(nothing; prob_num=743)
end

# ╔═╡ 1b0796f0-84a3-11eb-09f9-01f74052d50e
html"""
<h2>Problem 744: What? Where? When?</h2>
<p>"What? Where? When?" is a TV game show in which a team of experts attempt to answer questions. The following is a simplified version of the game.</p>

<p>It begins with $2n+1$ envelopes. $2n$ of them contain a question and one contains a RED card.</p>

<p>In each round one of the remaining envelopes is randomly chosen. If the envelope contains the RED card the game ends. If the envelope contains a question the expert gives their answer. If their answer is correct they earn one point, otherwise the viewers earn one point. The game ends normally when either the expert obtains n points or the viewers obtain n points.</p>

<p>Assuming that the expert provides the correct answer with a fixed probability $p$, let $f(n,p)$ be the probability that the game ends normally (i.e. RED card never turns up).</p>

<p>You are given (rounded to 10 decimal places) that<br />
$f(6,\frac{1}{2})=0.2851562500$,<br />
$f(10,\frac{3}{7})=0.2330040743$,<br />
$f(10^4,0.3)=0.2857499982$.
</p>

<p>Find $f(10^{11},0.4999)$. Give your answer rounded to 10 places behind the decimal point.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-35bb-af98dddb45d3
begin
    submit_answer(nothing; prob_num=744)
end

# ╔═╡ 1b0796f0-84a3-11eb-2b7d-4d50e1c61f42
html"""
<h2>Problem 745: Sum of Squares</h2>
<p>
For a positive integer, $n$, define $g(n)$ to be the maximum perfect square that divides $n$.<br />
For example, $g(18) = 9$, $g(19) = 1$.
</p>
<p>
Also define
$$\displaystyle	S(N) = \sum_{n=1}^N g(n)$$
</p>
<p>
For example, $S(10) = 24$ and $S(100) = 767$.
</p>
<p>
Find $S(10^{14})$. Give your answer modulo $1\,000\,000\,007$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-1123-ab1fc58d7df2
begin
    submit_answer(nothing; prob_num=745)
end

# ╔═╡ 1b0796f0-84a3-11eb-1de6-91d1483b850c
html"""
<h2>Problem 746: A Messy Dinner</h2>
<p>$n$ families, each with four members, a father, a mother, a son and a daughter, were invited to a restaurant. They were all seated at a large circular table with $4n$ seats such that men and women alternate.</p>

<p>Let $M(n)$ be the number of ways the families can be seated such that none of the families were seated together. A family is considered to be seated together only when all the members of a family sit next to each other.</p>

<p>For example, $M(1)=0$, $M(2)=896$, $M(3)=890880$ and $M(10) \equiv 170717180 \pmod {1\,000\,000\,007}$</p>

<p>Let $S(n)=\displaystyle \sum_{k=2}^nM(k)$</p>

<p>For example, $S(10) \equiv 399291975 \pmod {1\,000\,000\,007}$</p>

<p>Find $S(2021)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-0ef9-af3ab5fcd25f
begin
    submit_answer(nothing; prob_num=746)
end

# ╔═╡ 1b0796f0-84a3-11eb-3ec0-c1eb3afe53a8
html"""
<h2>Problem 747: Triangular Pizza</h2>
<p>Mamma Triangolo baked a triangular pizza. She wants to cut the pizza into $n$ pieces. She first chooses a point $P$ in the interior (not boundary) of the triangle pizza, and then performs $n$ cuts, which all start from $P$ and extend straight to the boundary of the pizza so that the $n$ pieces are all triangles and all have the same area.</p>

<p>Let $\psi(n)$ be the number of different ways for Mamma Triangolo to cut the pizza, subject to the constraints.<br />
For example, $\psi(3)=7$.</p>

<div style="text-align:center;">
<img src="project/images/p747_PizzaDiag.jpg" class="dark_img" alt="" /></div>

<p>Also $\psi(6)=34$, and $\psi(10)=90$.</p>

<p>Let $\Psi(m)=\displaystyle\sum_{n=3}^m \psi(n)$. You are given $\Psi(10)=345$ and $\Psi(1000)=172166601$.</p>

<p>Find $\Psi(10^8)$. Give your answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-2b6a-6d6388611eb1
begin
    submit_answer(nothing; prob_num=747)
end

# ╔═╡ 1b0796f0-84a3-11eb-1e04-dbfc44d730f6
html"""
<h2>Problem 748: Upside down Diophantine equation</h2>
<p>
Upside Down is a modification of the famous Pythagorean equation:
\begin{align}
\frac{1}{x^2}+\frac{1}{y^2}=\frac{13}{z^2}
\end{align}
</p>
<p>
A solution $(x,y,z)$  to this equation with $x,y$ and $z$ positive integers is a primitive solution if $\gcd(x,y,z)=1$.
</p>
<p>
Let $S(N)$ be the sum of $x+y+z$ over primitive Upside Down solutions such that $1 \leq x,y,z \leq N$ and $x \le y$. <br />
For $N=100$ the primitive solutions are $(2,3,6)$ and $(5,90,18)$, thus $S(10^2)=124$.<br />
It can be checked that $S(10^3)=1470$ and $S(10^5)=2340084$.
</p>
<p>
Find $S(10^{16})$ and give the last 9 digits as your answer.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-3c6e-994927340c01
begin
    submit_answer(nothing; prob_num=748)
end

# ╔═╡ 1b0796f0-84a3-11eb-38d1-6971fb845b64
html"""
<h2>Problem 749: Near Power Sums</h2>
<p>
A positive integer, $n$, is a <i>near power sum</i> if there exists a positive integer, $k$, such that the sum of the $k$th powers of the digits in its decimal representation is equal to either $n+1$ or $n-1$. For example 35 is a near power sum number because $3^2+5^2 = 34$.
</p>
<p>
Define $S(d)$ to be the sum of all near power sum numbers of $d$ digits or less. 
Then $S(2) = 110$ and $S(6) = 2562701$.
</p>
<p>
Find $S(16)$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-24f5-f78bc59bb98c
begin
    submit_answer(nothing; prob_num=749)
end

# ╔═╡ 1b0796f0-84a3-11eb-2c7b-672b635f12fe
html"""
<h2>Problem 750: Optimal Card Stacking</h2>
<p>
Card Stacking is a game on a computer starting with an array of $N$ cards labelled $1,2,\ldots,N$.
A stack of cards can be moved by dragging horizontally with the mouse to another stack but only when the resulting stack is in sequence. The goal of the game is to combine the cards into a single stack using minimal total drag distance.
</p>

<div style="text-align:center;">
<img src="project/images/p750_optimal_card_stacking.png" class="dark_img" alt="" />
</div>

<p>
For the given arrangement of 6 cards the minimum total distance is $1 + 3 + 1 + 1 + 2 = 8$.
</p>

<p>
For $N$ cards, the cards are arranged so that the card at position $n$ is $3^n\bmod(N+1), 1\le n\le N$.
</p>
<p>
We define $G(N)$ to be the minimal total drag distance to arrange these cards into a single sequence.<br />
For example, when $N = 6$ we get the sequence $3,2,6,4,5,1$ and $G(6) = 8$.<br />
You are given $G(16) = 47$.
</p>

<p>
Find $G(976)$.
</p>

<p>
Note: $G(N)$ is not defined for all values of $N$.
</p>
"""

# ╔═╡ 1b0796f0-84a3-11eb-268a-e1031f45ce44
begin
    submit_answer(nothing; prob_num=750)
end

# ╔═╡ Cell order:
# ╠═1b0796f0-84a3-11eb-2e02-afaff16c3994
# ╟─1b0796f0-84a3-11eb-12f6-2937069996b5
# ╠═1b0796f0-84a3-11eb-1acf-9bab5e8c4048
# ╟─1b0796f0-84a3-11eb-280d-4b6ccc83a943
# ╠═1b0796f0-84a3-11eb-3f4f-598528e93128
# ╟─1b0796f0-84a3-11eb-24fd-791b4a6c5398
# ╠═1b0796f0-84a3-11eb-09d4-f1adfd2c6c32
# ╟─1b0796f0-84a3-11eb-0b1a-bdd4c0b88c91
# ╠═1b0796f0-84a3-11eb-096a-5d59b7cf1e81
# ╟─1b0796f0-84a3-11eb-221d-a7fa9834f896
# ╠═1b0796f0-84a3-11eb-05c1-a19c03103905
# ╟─1b0796f0-84a3-11eb-3647-8daa0fff9a38
# ╠═1b0796f0-84a3-11eb-2cf2-530733cebd6c
# ╟─1b0796f0-84a3-11eb-24a5-2531d41f8782
# ╠═1b0796f0-84a3-11eb-3a11-f9154fa4fe6b
# ╟─1b0796f0-84a3-11eb-2655-45ba650a9af8
# ╠═1b0796f0-84a3-11eb-21fa-eb30a3585fe2
# ╟─1b0796f0-84a3-11eb-2d02-f7eb4d7fb249
# ╠═1b0796f0-84a3-11eb-330e-6f5157bca1a1
# ╟─1b0796f0-84a3-11eb-02e4-1bc8a82e5111
# ╠═1b0796f0-84a3-11eb-2ea8-935f988ff028
# ╟─1b0796f0-84a3-11eb-1f25-6318ff0a68fb
# ╠═1b0796f0-84a3-11eb-302e-7d69f94c9de1
# ╟─1b0796f0-84a3-11eb-1692-e3e3f1f5f6c2
# ╠═1b0796f0-84a3-11eb-01ea-571aec30df18
# ╟─1b0796f0-84a3-11eb-19d1-a75dc81a7586
# ╠═1b0796f0-84a3-11eb-3358-57e5e79ae0f6
# ╟─1b0796f0-84a3-11eb-2faa-b5896779ab0d
# ╠═1b0796f0-84a3-11eb-33d0-0d40e9e95c11
# ╟─1b0796f0-84a3-11eb-3d5a-bbadb0ce44f8
# ╠═1b0796f0-84a3-11eb-0bb4-6776155fa3d8
# ╟─1b0796f0-84a3-11eb-0a3b-077627d7521b
# ╠═1b0796f0-84a3-11eb-289c-59de0ccc3181
# ╟─1b0796f0-84a3-11eb-048f-f18b8e277f79
# ╠═1b0796f0-84a3-11eb-1acd-95cbc03d4c4c
# ╟─1b0796f0-84a3-11eb-3626-690da4299980
# ╠═1b0796f0-84a3-11eb-1493-bfe305db30d0
# ╟─1b0796f0-84a3-11eb-09f9-01f74052d50e
# ╠═1b0796f0-84a3-11eb-35bb-af98dddb45d3
# ╟─1b0796f0-84a3-11eb-2b7d-4d50e1c61f42
# ╠═1b0796f0-84a3-11eb-1123-ab1fc58d7df2
# ╟─1b0796f0-84a3-11eb-1de6-91d1483b850c
# ╠═1b0796f0-84a3-11eb-0ef9-af3ab5fcd25f
# ╟─1b0796f0-84a3-11eb-3ec0-c1eb3afe53a8
# ╠═1b0796f0-84a3-11eb-2b6a-6d6388611eb1
# ╟─1b0796f0-84a3-11eb-1e04-dbfc44d730f6
# ╠═1b0796f0-84a3-11eb-3c6e-994927340c01
# ╟─1b0796f0-84a3-11eb-38d1-6971fb845b64
# ╠═1b0796f0-84a3-11eb-24f5-f78bc59bb98c
# ╟─1b0796f0-84a3-11eb-2c7b-672b635f12fe
# ╠═1b0796f0-84a3-11eb-268a-e1031f45ce44