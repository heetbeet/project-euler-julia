### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1aedcd60-84a3-11eb-1fe8-a399504f61de
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1aedcd60-84a3-11eb-31cf-b331e292960f
html"""
<h2>Problem 601: Divisibility streaks</h2>
<p>
For every positive number $n$ we define the function  $streak(n)=k$   as the smallest positive integer $k$ such that $n+k$ is not divisible by $k+1$.<br />
E.g:<br />
13 is divisible by 1 <br />
14 is divisible by 2 <br />
15 is divisible by 3 <br />
16 is divisible by 4 <br />
17 is NOT divisible by 5 <br />
So $streak(13) = 4$. <br /> 
Similarly:<br />
120 is divisible by 1 <br />
121 is NOT divisible by 2 <br />
So $streak(120) = 1$.</p>
<p>

Define $P(s, N)$ to be the number of integers $n$, $1 &lt; n &lt; N$, for which $streak(n) = s$.<br />
So $P(3, 14) = 1$ and $P(6, 10^6) = 14286$.
</p>
<p>
Find the sum, as $i$ ranges from 1 to 31, of $P(i, 4^i)$.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-107e-3b980ce72a6a
begin
    submit_answer(nothing; prob_num=601)
end

# ╔═╡ 1aedcd60-84a3-11eb-3cc7-ab66f0073e2f
html"""
<h2>Problem 602: Product of Head Counts</h2>
<p>
Alice enlists the help of some friends to generate a random number, using a single unfair coin. She and her friends sit around a table and, starting with Alice, they take it in turns to toss the coin. Everyone keeps a count of how many heads they obtain individually. The process ends as soon as Alice obtains a Head. At this point, Alice multiplies all her friends' Head counts together to obtain her random number.
</p>
<p>
As an illustration, suppose Alice is assisted by Bob, Charlie, and Dawn, who are seated round the table in that order, and that they obtain the sequence of Head/Tail outcomes <b>THHH—TTTT—THHT—H</b> beginning and ending with Alice. Then Bob and Charlie each obtain 2 heads, and Dawn obtains 1 head. Alice's random number is therefore $2\times 2\times 1 = 4$.
</p>
<p>
Define $e(n, p)$ to be the expected value of Alice's random number, where $n$ is the number of friends helping (excluding Alice herself), and $p$ is the probability of the coin coming up Tails.
</p>
<p>
It turns out that, for any fixed $n$, $e(n, p)$ is always a polynomial in $p$. For example, $e(3, p) = p^3 + 4p^2 + p$.
</p>
<p>
Define $c(n, k)$ to be the coefficient of $p^k$ in the polynomial $e(n, p)$. So $c(3, 1) = 1$, $c(3, 2) = 4$, and $c(3, 3) = 1$.
</p>
<p>
You are given that $c(100, 40) \equiv 986699437 \text{ } (\text{mod } 10^9+7)$.
</p>
<p>
Find $c(10000000, 4000000) \mod 10^9+7$.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-1370-0dedd69ae63c
begin
    submit_answer(nothing; prob_num=602)
end

# ╔═╡ 1aedcd60-84a3-11eb-1b83-4780df4496b1
html"""
<h2>Problem 603: Substring sums of prime concatenations</h2>
<p>Let $S(n)$ be the sum of all contiguous integer-substrings that can be formed from the integer $n$. The substrings need not be distinct. </p>

<p>For example, $S(2024) = 2 + 0 + 2 + 4 + 20 + 02 + 24 + 202 + 024 + 2024 = 2304$.</p>

<p>Let $P(n)$ be the integer formed by concatenating the first $n$ primes together. For example, $P(7) = 2357111317$.</p>

<p>Let $C(n, k)$ be the integer formed by concatenating $k$ copies of $P(n)$ together. For example, $C(7, 3) = 235711131723571113172357111317$.</p>

<p>Evaluate $S(C(10^6, 10^{12}))$ mod $(10^9 + 7)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-1ff9-eddd77bb7c66
begin
    submit_answer(nothing; prob_num=603)
end

# ╔═╡ 1aedcd60-84a3-11eb-10c8-f7da1b115437
html"""
<h2>Problem 604: Convex path in square</h2>
<p>
Let $F(N)$ be the maximum number of lattice points in an axis-aligned $N\times N$ square that the graph of a single <b>strictly convex</b> increasing function can pass through.
</p>
<p>
You are given that $F(1) = 2$, $F(3) = 3$,  $F(9) = 6$, $F(11) = 7$, $F(100) = 30$ and $F(50000) = 1898$.<br /> 
Below is the graph of a function reaching the maximum 3 for $N=3$:
</p>
<div class="center">
<img src="project/images/p604_convex3.png" alt="p604_convex3.png" /></div>
<p>
Find $F(10^{18})$.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-0653-1d1d8e9bbd75
begin
    submit_answer(nothing; prob_num=604)
end

# ╔═╡ 1aedcd60-84a3-11eb-0bbf-7718ba6a4078
html"""
<h2>Problem 605: Pairwise Coin-Tossing Game</h2>
<p>Consider an $n$-player game played in consecutive pairs: Round $1$ takes place between players $1$ and $2$, round $2$ takes place between players $2$ and $3$, and so on and so forth, all the way up to round $n$, which takes place between players $n$ and $1$. Then round $n+1$ takes place between players $1$ and $2$ as the entire cycle starts again.</p>

<p>In other words, during round $r$, player $((r-1) \bmod n) + 1$ faces off against player $(r \bmod n) + 1$.</p>

<p>During each round, a fair coin is tossed to decide which of the two players wins that round. If any given player wins both rounds $r$ and $r+1$, then that player wins the entire game.</p>

<p>Let $P_n(k)$ be the probability that player $k$ wins in an $n$-player game, in the form of a reduced fraction. For example, $P_3(1) = 12/49$ and $P_6(2) = 368/1323$.</p>

<p>Let $M_n(k)$ be the product of the reduced numerator and denominator of $P_n(k)$. For example, $M_3(1) = 588$ and $M_6(2) = 486864$.</p>

<p>Find the last $8$ digits of $M_{10^8+7}(10^4+7)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-19c3-1f0925fc596f
begin
    submit_answer(nothing; prob_num=605)
end

# ╔═╡ 1aedcd60-84a3-11eb-3dfd-b93ec6aa5574
html"""
<h2>Problem 606: Gozinta Chains II</h2>
<p>
A <b>gozinta chain</b> for <var>n</var> is a sequence {1,a,b,...,<var>n</var>} where each element properly divides the next. <br />
For example, there are eight distinct gozinta chains for 12: <br />
{1,12}, {1,2,12}, {1,2,4,12}, {1,2,6,12}, {1,3,12}, {1,3,6,12}, {1,4,12} and {1,6,12}.
</p>
<p>
Let S(<var>n</var>) be the sum of all numbers, <var>k</var>, not exceeding <var>n</var>, which have 252 distinct gozinta chains. <br />
You are given S(10<sup>6</sup>)=8462952 and S(10<sup>12</sup>)=623291998881978.
</p>
<p>
Find S(10<sup>36</sup>), giving the last nine digits of your answer.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-0e75-eb0457e6fe68
begin
    submit_answer(nothing; prob_num=606)
end

# ╔═╡ 1aedcd60-84a3-11eb-3154-695ed3a29ce1
html"""
<h2>Problem 607: Marsh Crossing</h2>
<p>
Frodo and Sam need to travel 100 leagues due East from point A to point B. On normal terrain, they can cover 10 leagues per day, and so the journey would take 10 days. However, their path is crossed by a long marsh which runs exactly South-West to North-East, and walking through the marsh will slow them down. The marsh is 50 leagues wide at all points, and the mid-point of AB is located in the middle of the marsh. A map of the region is shown in the diagram below:
</p>

<div class="center">
<img src="project/images/p607_marsh.png" alt="p607_marsh.png" /></div>


<p>
The marsh consists of 5 distinct regions, each 10 leagues across, as shown by the shading in the map. The strip closest to point A is relatively light marsh, and can be crossed at a speed of 9 leagues per day. However, each strip becomes progressively harder to navigate, the speeds going down to 8, 7, 6 and finally 5 leagues per day for the final region of marsh, before it ends and the terrain becomes easier again, with the speed going back to 10 leagues per day.
</p>
<p>
If Frodo and Sam were to head directly East for point B, they would travel exactly 100 leagues, and the journey would take approximately 13.4738 days. However, this time can be shortened if they deviate from the direct path.
</p>
<p>
Find the shortest possible time required to travel from point A to B, and give your answer in days, rounded to 10 decimal places.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-27d5-955f388bd421
begin
    submit_answer(nothing; prob_num=607)
end

# ╔═╡ 1aedcd60-84a3-11eb-0ef5-ebd6bbbaa4cb
html"""
<h2>Problem 608: Divisor Sums</h2>
<p>Let $D(m,n)=\displaystyle\sum_{d|m}\sum_{k=1}^n\sigma_{\small 0}(kd)$ where $d$ runs through all divisors of $m$ and $\sigma_{\small 0}(n)$ is the number of divisors of $n$.<br />
You are given $D(3!,10^2)=3398$ and $D(4!,10^6)=268882292$.</p>

<p>Find $D(200!,10^{12}) \text{ mod } (10^9 + 7)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-3e93-cf993d91f4de
begin
    submit_answer(nothing; prob_num=608)
end

# ╔═╡ 1aedcd60-84a3-11eb-34f1-23db3efafeb6
html"""
<h2>Problem 609: π sequences</h2>
<p>
For every $n \ge 1$ the <b>prime-counting</b> function $\pi(n)$ is equal to the number of primes
not exceeding $n$.<br />
E.g. $\pi(6)=3$ and $\pi(100)=25$.
</p>
<p>
We say that a sequence of integers $u  = (u_0,\cdots,u_m)$ is a <i>$\pi$ sequence</i> if 
</p><ul>
<li> $u_n \ge 1$ for every $n$
</li><li> $u_{n+1}= \pi(u_n)$
</li><li> $u$ has two or more elements
</li></ul>
<p>
For $u_0=10$ there are three distinct $\pi$ sequences: (10,4),  (10,4,2) and (10,4,2,1).
</p>
<p>
Let  $c(u)$ be the number of elements of $u$ that are not prime.<br />
Let $p(n,k)$ be the number of $\pi$ sequences $u$  for which $u_0\le n$ and $c(u)=k$.<br />
Let $P(n)$ be the product of all $p(n,k)$ that are larger than 0.<br />
You are given: P(10)=3×8×9×3=648 and P(100)=31038676032.
</p>
<p>
Find $P(10^8)$. Give your answer modulo 1000000007. 
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-2092-bdabb403d57c
begin
    submit_answer(nothing; prob_num=609)
end

# ╔═╡ 1aedcd60-84a3-11eb-1df5-33cb07b431dc
html"""
<h2>Problem 610: Roman Numerals II</h2>
<p>A random generator produces a sequence of symbols drawn from the set {<span style="font-family:'courier new', monospace;">I</span>, <span style="font-family:'courier new', monospace;">V</span>, <span style="font-family:'courier new', monospace;">X</span>, <span style="font-family:'courier new', monospace;">L</span>, <span style="font-family:'courier new', monospace;">C</span>, <span style="font-family:'courier new', monospace;">D</span>, <span style="font-family:'courier new', monospace;">M</span>, <span style="font-family:'courier new', monospace;">#</span>}. Each item in the sequence is determined by selecting one of these symbols at random, independently of the other items in the sequence. At each step, the seven letters are equally likely to be selected, with probability 14% each, but the <span style="font-family:'courier new', monospace;">#</span> symbol only has a 2% chance of selection.</p>

<p>We write down the sequence of letters from left to right as they are generated, and we stop at the first occurrence of the <span style="font-family:'courier new', monospace;">#</span> symbol (without writing it). However, we stipulate that what we have written down must always (when non-empty) be a valid Roman numeral representation in minimal form. If appending the next letter would contravene this then we simply skip it and try again with the next symbol generated.</p>

<p>Please take careful note of <a href="about=roman_numerals">About... Roman Numerals</a> for the definitive rules for this problem on what constitutes a "valid Roman numeral representation" and "minimal form". For example, the (only) sequence that represents 49 is <span style="font-family:'courier new', monospace;">XLIX</span>. The subtractive combination <span style="font-family:'courier new', monospace;">IL</span> is invalid because of rule (ii), while <span style="font-family:'courier new', monospace;">XXXXIX</span> is valid but not minimal. The rules do not place any restriction on the number of occurrences of <span style="font-family:'courier new', monospace;">M</span>, so all positive integers have a valid representation. These are the same rules as were used in <a href="problem=89">Problem 89</a>, and members are invited to solve that problem first.</p>

<p>Find the expected value of the number represented by what we have written down when we stop. (If nothing is written down then count that as zero.) Give your answer rounded to 8 places after the decimal point.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-08f5-e94358ba02c7
begin
    submit_answer(nothing; prob_num=610)
end

# ╔═╡ 1aedcd60-84a3-11eb-1524-21f8da9507fd
html"""
<h2>Problem 611: Hallway of square steps</h2>
<p>Peter moves in a hallway with <var>N</var>+1 doors consecutively numbered from 0 through <var>N</var>. All doors are initially closed. Peter starts in front of door 0, and repeatedly performs the following steps:</p>
<ul><li>First, he walks a positive square number of doors away from his position.</li>
<li>Then he walks another, larger square number of doors away from his new position.</li>
<li>He toggles the door he faces (opens it if closed, closes it if open).</li>
<li>And finally returns to door 0.</li>
</ul><p>We call an action any sequence of those steps. Peter never performs the exact same action twice, and makes sure to perform all possible actions that don't bring him past the last door.</p>
<p>Let <var>F</var>(<var>N</var>) be the number of doors that are open after Peter has performed all possible actions. You are given that <var>F</var>(5) = 1, <var>F</var>(100) = 27, <var>F</var>(1000) = 233 and <var>F</var>(10<sup>6</sup>) = 112168.</p>
<p>Find <var>F</var>(10<sup>12</sup>).</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-1a91-a39268b585d3
begin
    submit_answer(nothing; prob_num=611)
end

# ╔═╡ 1aedcd60-84a3-11eb-1fc0-e141fb261c4c
html"""
<h2>Problem 612: Friend numbers</h2>
<p>
Let's call two numbers  <i>friend numbers</i> if their representation in base 10 has at least one common digit.<br /> E.g. 1123 and 3981 are friend numbers. 
</p>
<p>
Let $f(n)$ be the number of pairs $(p,q)$ with $1\le p \lt q \lt n$ such that $p$ and $q$ are friend numbers.<br />
$f(100)=1539$.
</p>
<p>
Find $f(10^{18})$ mod $1000267129$.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-1ccf-9110bf08aa3d
begin
    submit_answer(nothing; prob_num=612)
end

# ╔═╡ 1aedcd60-84a3-11eb-09e0-39adb99512b3
html"""
<h2>Problem 613: Pythagorean Ant</h2>
<p>Dave is doing his homework on the balcony and, preparing a presentation about Pythagorean triangles, has just cut out a triangle with side lengths 30cm, 40cm and 50cm from some cardboard, when a gust of wind blows the triangle down into the garden.<br />
Another gust blows a small ant straight onto this triangle. The poor ant is completely disoriented and starts to crawl straight ahead in random direction in order to get back into the grass.</p>

<p>Assuming that all possible positions of the ant within the triangle and all possible directions of moving on are equiprobable, what is the probability that the ant leaves the triangle along its longest side?<br />
Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-01e3-05ef9b2dc804
begin
    submit_answer(nothing; prob_num=613)
end

# ╔═╡ 1aedcd60-84a3-11eb-1757-a342b025b2ee
html"""
<h2>Problem 614: Special partitions 2</h2>
<p>An <b>integer partition</b> of a number $n$ is a way of writing $n$ as a sum of positive integers. Partitions that differ only by the order of their summands are considered the same.</p>

<p>We call an integer partition <i>special</i> if 1) all its summands are distinct, and 2) all its even summands are also divisible by 4. <br />For example, the special partitions of $10$ are: \[10 = 1+4+5=3+7=1+9\]
The number $10$ admits many more integer partitions (a total of 42), but only those three are special.</p>

<p>Let be $P(n)$ the number of special integer partitions of $n$. You are given that $P(1) = 1$, $P(2) = 0$, $P(3) = 1$, $P(6) = 1$, $P(10)=3$, $P(100) = 37076$ and $P(1000)=3699177285485660336$.</p>

<p>Find $\displaystyle \sum_{i=1}^{10^7}{P(i)}$. Give the result modulo $10^9+7$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-2884-416863137deb
begin
    submit_answer(nothing; prob_num=614)
end

# ╔═╡ 1aedcd60-84a3-11eb-02f8-4f1ca1a4f642
html"""
<h2>Problem 615: The millionth number with at least one million prime factors</h2>
<p>
Consider the natural numbers having at least 5 prime factors, which don't have to be distinct.<br /> Sorting these numbers by size gives a list which starts with:
</p>
<ul style="list-style:none;"><li>32=2⋅2⋅2⋅2⋅2</li>
<li>48=2⋅2⋅2⋅2⋅3</li>
<li>64=2⋅2⋅2⋅2⋅2⋅2</li>
<li>72=2⋅2⋅2⋅3⋅3</li>
<li>80=2⋅2⋅2⋅2⋅5</li>
<li>96=2⋅2⋅2⋅2⋅2⋅3</li>
<li>   ...</li></ul>
<p>
So, for example, the fifth number with at least 5 prime factors is 80.
</p>
<p>
Find the millionth number with at least one million prime factors.<br />  Give your answer modulo 123454321.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-327e-cd722c443c5c
begin
    submit_answer(nothing; prob_num=615)
end

# ╔═╡ 1aedcd60-84a3-11eb-212f-73fbc242c22a
html"""
<h2>Problem 616: Creative numbers</h2>
<p>Alice plays the following game, she starts with a list of integers $L$ and on each step she can either:
</p><ul><li>remove two elements $a$ and $b$ from $L$ and add $a^b$ to $L$</li>
<li>or conversely remove an element $c$ from $L$ that can be written as $a^b$, with $a$ and $b$ being two integers such that $a, b &gt; 1$, and add both $a$ and $b$ to $L$</li></ul> 
<p>For example starting from the list $L=\{8\}$, Alice can remove $8$ and add $2$ and $3$ resulting in $L=\{2,3\}$ in a first step. Then she can obtain $L=\{9\}$ in a second step.</p>

<p>Note that the same integer is allowed to appear multiple times in the list.</p>

<p>An integer $n&gt;1$ is said to be <i>creative</i> if for any integer $m&gt;1$ Alice can obtain a list that contains $m$ starting from $L=\{n\}$.

</p><p>Find the sum of all creative integers less than or equal to $10^{12}$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-2331-c5ef82e9f486
begin
    submit_answer(nothing; prob_num=616)
end

# ╔═╡ 1aedcd60-84a3-11eb-0289-c1f5f34d9c34
html"""
<h2>Problem 617: Mirror Power Sequence</h2>
<p>For two integers $n,e &gt; 1$, we define a $(n,e)$-<i>MPS (Mirror Power Sequence)</i> to be an infinite sequence of integers $(a_i)_{i\ge 0}$ such that for all $i\ge 0$, $a_{i+1} = min(a_i^e,n-a_i^e)$ and $a_i &gt; 1$.<br /> Examples of such sequences are the two $(18,2)$-MPS sequences made of alternating $2$ and $4$.</p>

<p>Note that even though such a sequence is uniquely determined by $n,e$ and $a_0$, for most values such a sequence does not exist. For example, no $(n,e)$-MPS exists for $n &lt; 6$.</p>

<p>Define $C(n)$ to be the number of $(n,e)$-MPS for some $e$, and $\displaystyle D(N) = \sum_{n=2}^N {C(n)}$.
<br />You are given that $D(10) = 2$, $D(100) = 21$, $D(1000) = 69$, $D(10^6) = 1303$ and $D(10^{12}) = 1014800$.</p>
 
<p>Find $D(10^{18})$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-0327-e559e755e26d
begin
    submit_answer(nothing; prob_num=617)
end

# ╔═╡ 1aedcd60-84a3-11eb-1998-f3148baff00f
html"""
<h2>Problem 618: Numbers with a given prime factor sum</h2>
<p>Consider the numbers 15, 16 and 18:<br />
$15=3\times 5$ and $3+5=8$.<br />
$16 = 2\times 2\times 2\times 2$ and $2+2+2+2=8$.<br />
$18 = 2\times 3\times 3$ and $2+3+3=8$.<br /> 

15, 16 and 18 are the only numbers that have 8 as sum of the prime factors (counted with multiplicity).</p>
<p>
We define $S(k)$ to be the sum of all numbers $n$ where the sum of the prime factors (with multiplicity)  of $n$ is $k$.<br />
Hence $S(8) = 15+16+18 = 49$.<br />
Other examples: $S(1) = 0$, $S(2) = 2$, $S(3) = 3$, $S(5) = 5 + 6 = 11$.</p>
<p>
The Fibonacci sequence is $F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5$, ....<br />
Find the last nine digits of $\displaystyle\sum_{k=2}^{24}{S(F_k)}$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-236d-2bff09b28044
begin
    submit_answer(nothing; prob_num=618)
end

# ╔═╡ 1aedcd60-84a3-11eb-14f3-fd134bae03f5
html"""
<h2>Problem 619: Square subsets</h2>
<p>For a set of positive integers $\{a, a+1, a+2, \dots , b\}$, let $C(a,b)$ be the number of non-empty subsets in which the product of all elements is a perfect square.</p>
<p>For example $C(5,10)=3$, since the products of all elements of $\{5, 8, 10\}$, $\{5, 8, 9, 10\}$ and $\{9\}$ are perfect squares, and no other subsets of $\{5, 6, 7, 8, 9, 10\}$ have this property.</p>
<p>You are given that $C(40,55) =15$, and $C(1000,1234) \text{ mod } 1000000007=975523611$.</p>

<p>Find $C(1000000,1234567) \text{ mod } 1000000007$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-0f4d-f37b305bfeb4
begin
    submit_answer(nothing; prob_num=619)
end

# ╔═╡ 1aedcd60-84a3-11eb-2878-69abe11b1567
html"""
<h2>Problem 620: Planetary Gears</h2>
<p>A circle $C$ of circumference $c$ centimetres has a smaller circle $S$ of circumference $s$ centimetres lying off-centre within it. Four other distinct circles, which we call "planets", with circumferences $p$, $p$, $q$, $q$ centimetres respectively ($p&lt;q$), are inscribed within $C$ but outside $S$, with each planet touching both $C$ and $S$ tangentially. The planets are permitted to overlap one another, but the boundaries of $S$ and $C$ must be at least 1cm apart at their closest point.</p>

<p>Now suppose that these circles are actually gears with perfectly meshing teeth at a pitch of 1cm. $C$ is an internal gear with teeth on the inside. We require that $c$, $s$, $p$, $q$ are all integers (as they are the numbers of teeth), and we further stipulate that any gear must have at least 5 teeth.</p>

<p>Note that "perfectly meshing" means that as the gears rotate, the ratio between their angular velocities remains constant, and the teeth of one gear perfectly align with the groves of the other gear and vice versa. Only for certain gear sizes and positions will it be possible for $S$ and $C$ each to mesh perfectly with all the planets. Arrangements where not all gears mesh perfectly are not valid.</p>

<p>Define $g(c,s,p,q)$ to be the number of such gear arrangements for given values of $c$, $s$, $p$, $q$: it turns out that this is finite as only certain discrete arrangements are possible satisfying the above conditions. For example, $g(16,5,5,6)=9$.</p>

<p>Here is one such arrangement:</p>
<div align="center"><img src="project/images/p620_planetary_gears.png" alt="Example arrangement" /></div>

<p>Let $G(n) = \sum_{s+p+q\le n} g(s+p+q,s,p,q)$ where the sum only includes cases with $p&lt;q$, $p\ge 5$, and $s\ge 5$, all integers. You are given that $G(16)=9$ and $G(20)=205$.</p>

<p>Find $G(500)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-079f-0d48b03b8c24
begin
    submit_answer(nothing; prob_num=620)
end

# ╔═╡ 1aedcd60-84a3-11eb-315f-6b2ecbe510e7
html"""
<h2>Problem 621: Expressing an integer as the sum of triangular numbers</h2>
<p>Gauss famously proved that every positive integer can be expressed as the sum of three <b>triangular numbers</b> (including 0 as the lowest triangular number).  In fact most numbers can be expressed as a sum of three triangular numbers in several ways.</p>
<p>
Let $G(n)$ be the number of ways of expressing $n$ as the sum of three triangular numbers, regarding different arrangements of the terms of the sum as distinct.</p>
<p>
For example, $G(9) = 7$, as 9 can be expressed as:  3+3+3, 0+3+6, 0+6+3, 3+0+6, 3+6+0, 6+0+3, 6+3+0.<br />  
You are given $G(1000) = 78$ and $G(10^6) = 2106$.</p>
<p>
Find $G(17 526 \times 10^9)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-10bc-d96c68d8d30f
begin
    submit_answer(nothing; prob_num=621)
end

# ╔═╡ 1aedcd60-84a3-11eb-2197-eb750066d127
html"""
<h2>Problem 622: Riffle Shuffles</h2>
<p>
A riffle shuffle is executed as follows: a deck of cards is split into two equal halves, with the top half taken in the left hand and the bottom half taken in the right hand. Next, the cards are interleaved exactly, with the top card in the right half inserted just after the top card in the left half, the 2nd card in the right half just after the 2nd card in the left half, etc. (Note that this process preserves the location of the top and bottom card of the deck)
</p>
<p>
Let $s(n)$ be the minimum number of consecutive riffle shuffles needed to restore a deck of size $n$ to its original configuration, where $n$ is a positive even number.</p>
<p>
Amazingly, a standard deck of $52$ cards will first return to its original configuration after only $8$ perfect shuffles, so $s(52) = 8$. It can be verified that a deck of $86$ cards will also return to its original configuration after exactly $8$ shuffles, and the sum of all values of $n$ that satisfy $s(n) = 8$ is $412$.
</p>
<p>
Find the sum of all values of n that satisfy $s(n) = 60$.
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-0974-c304f3d57a1e
begin
    submit_answer(nothing; prob_num=622)
end

# ╔═╡ 1aedcd60-84a3-11eb-031d-bfc897435ded
html"""
<h2>Problem 623: Lambda Count</h2>
<p>The <i>lambda-calculus</i> is a universal model of computation at the core of functional programming languages. It is based on <i>lambda-terms</i>, a minimal programming language featuring only function definitions, function calls and variables. Lambda-terms are built according to the following rules:</p>
<ul>
<li>Any <i>variable</i> $x$ (single letter, from some infinite alphabet) is a lambda-term.</li>
<li>If $M$ and $N$ are lambda-terms, then $(M N)$ is a lambda-term, called the <i>application</i> of $M$ to $N$.</li>
<li>If $x$ is a variable and $M$ is a term, then $(\lambda x. M)$ is a lambda-term, called an <i>abstraction</i>. An abstraction defines an anonymous function, taking $x$ as parameter and sending back $M$.</li>
</ul>

<p>A lambda-term $T$ is said to be <i>closed</i> if for all variables $x$, all occurrences of $x$ within $T$ are contained within some abstraction $(\lambda x. M)$ in $T$. The smallest such abstraction is said to <i>bind</i> the occurrence of the variable $x$. In other words, a lambda-term is closed if all its variables are bound to parameters of enclosing functions definitions. For example, the term $(\lambda x. x)$ is closed, while the term $(\lambda x. (x y))$ is not because $y$ is not bound.</p>

<p>Also, we can rename variables as long as no binding abstraction changes. This means that $(\lambda x. x)$ and $(\lambda y. y)$ should be considered equivalent since we merely renamed a parameter. Two terms equivalent modulo such renaming are called <i>$\alpha$-equivalent</i>. Note that $(\lambda x. (\lambda y. (x y)))$ and $(\lambda x. (\lambda x. (x x)))$ are not $\alpha$-equivalent, since the abstraction binding the first variable was the outer one and becomes the inner one. However, $(\lambda x. (\lambda y. (x y)))$ and $(\lambda y. (\lambda x. (y x)))$ are $\alpha$-equivalent.</p>

<p>The following table regroups the lambda-terms that can be written with at most $15$ symbols, symbols being parenthesis, $\lambda$, dot and variables.</p>

\[\begin{array}{|c|c|c|c|}
\hline
(\lambda x.x) &amp; (\lambda x.(x x)) &amp; (\lambda x.(\lambda y.x)) &amp; (\lambda x.(\lambda y.y)) \\
\hline
(\lambda x.(x (x x))) &amp; (\lambda x.((x x) x)) &amp; (\lambda x.(\lambda y.(x x))) &amp; (\lambda x.(\lambda y.(x y))) \\
\hline
(\lambda x.(\lambda y.(y x))) &amp; (\lambda x.(\lambda y.(y y))) &amp; (\lambda x.(x (\lambda y.x))) &amp; (\lambda x.(x (\lambda y.y))) \\
\hline
(\lambda x.((\lambda y.x) x)) &amp; (\lambda x.((\lambda y.y) x)) &amp; ((\lambda x.x) (\lambda x.x)) &amp; (\lambda x.(x (x (x x)))) \\
\hline
(\lambda x.(x ((x x) x))) &amp; (\lambda x.((x x) (x x))) &amp; (\lambda x.((x (x x)) x)) &amp; (\lambda x.(((x x) x) x)) \\
\hline
\end{array}\]

<p>Let be $\Lambda(n)$ the number of distinct closed lambda-terms that can be written using at most $n$ symbols, where terms that are $\alpha$-equivalent to one another should be counted only once. You are given that $\Lambda(6) = 1$, $\Lambda(9) = 2$, $\Lambda(15) = 20$ and $\Lambda(35) = 3166438$.</p>
<p>Find $\Lambda(2000)$. Give the answer modulo $1\,000\,000\,007$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-1678-e7caa3c3f7a1
begin
    submit_answer(nothing; prob_num=623)
end

# ╔═╡ 1aedcd60-84a3-11eb-3872-cb7e18d2abd2
html"""
<h2>Problem 624: Two heads are better than one</h2>
<p>
An unbiased coin is tossed repeatedly until two consecutive heads are obtained. Suppose these occur on the $(M-1)$th and $M$th toss.<br />
Let $P(n)$ be the probability that $M$ is divisible by $n$. For example, the outcomes HH, HTHH, and THTTHH all count towards $P(2)$, but THH and HTTHH do not.</p>
<p>
You are given that $P(2) =\frac 3 5$ and $P(3)=\frac 9  {31}$. Indeed, it can be shown that $P(n)$ is always a rational number.</p>
<p>
For a prime $p$ and a fully reduced fraction $\frac a b$, define $Q(\frac a b,p)$ to be the smallest positive $q$ for which $a \equiv b q \pmod{p}$.<br />
For example $Q(P(2), 109) = Q(\frac 3 5, 109) = 66$, because $5 \cdot 66 = 330 \equiv 3 \pmod{109}$ and 66 is the smallest positive such number.<br />
Similarly $Q(P(3),109) = 46$.</p>
<p>
Find $Q(P(10^{18}),1\,000\,000\,009)$.</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-2855-ddbb058243cd
begin
    submit_answer(nothing; prob_num=624)
end

# ╔═╡ 1aedcd60-84a3-11eb-0fd7-7526290bdd33
html"""
<h2>Problem 625: Gcd sum</h2>
<p>
$G(N)=\sum_{j=1}^N\sum_{i=1}^j \text{gcd}(i,j)$. <br />
You are given: $G(10)=122$.</p>
<p>
Find $G(10^{11})$. Give your answer modulo 998244353
</p>
"""

# ╔═╡ 1aedcd60-84a3-11eb-3545-af6b8af308ad
begin
    submit_answer(nothing; prob_num=625)
end

# ╔═╡ Cell order:
# ╠═1aedcd60-84a3-11eb-1fe8-a399504f61de
# ╟─1aedcd60-84a3-11eb-31cf-b331e292960f
# ╠═1aedcd60-84a3-11eb-107e-3b980ce72a6a
# ╟─1aedcd60-84a3-11eb-3cc7-ab66f0073e2f
# ╠═1aedcd60-84a3-11eb-1370-0dedd69ae63c
# ╟─1aedcd60-84a3-11eb-1b83-4780df4496b1
# ╠═1aedcd60-84a3-11eb-1ff9-eddd77bb7c66
# ╟─1aedcd60-84a3-11eb-10c8-f7da1b115437
# ╠═1aedcd60-84a3-11eb-0653-1d1d8e9bbd75
# ╟─1aedcd60-84a3-11eb-0bbf-7718ba6a4078
# ╠═1aedcd60-84a3-11eb-19c3-1f0925fc596f
# ╟─1aedcd60-84a3-11eb-3dfd-b93ec6aa5574
# ╠═1aedcd60-84a3-11eb-0e75-eb0457e6fe68
# ╟─1aedcd60-84a3-11eb-3154-695ed3a29ce1
# ╠═1aedcd60-84a3-11eb-27d5-955f388bd421
# ╟─1aedcd60-84a3-11eb-0ef5-ebd6bbbaa4cb
# ╠═1aedcd60-84a3-11eb-3e93-cf993d91f4de
# ╟─1aedcd60-84a3-11eb-34f1-23db3efafeb6
# ╠═1aedcd60-84a3-11eb-2092-bdabb403d57c
# ╟─1aedcd60-84a3-11eb-1df5-33cb07b431dc
# ╠═1aedcd60-84a3-11eb-08f5-e94358ba02c7
# ╟─1aedcd60-84a3-11eb-1524-21f8da9507fd
# ╠═1aedcd60-84a3-11eb-1a91-a39268b585d3
# ╟─1aedcd60-84a3-11eb-1fc0-e141fb261c4c
# ╠═1aedcd60-84a3-11eb-1ccf-9110bf08aa3d
# ╟─1aedcd60-84a3-11eb-09e0-39adb99512b3
# ╠═1aedcd60-84a3-11eb-01e3-05ef9b2dc804
# ╟─1aedcd60-84a3-11eb-1757-a342b025b2ee
# ╠═1aedcd60-84a3-11eb-2884-416863137deb
# ╟─1aedcd60-84a3-11eb-02f8-4f1ca1a4f642
# ╠═1aedcd60-84a3-11eb-327e-cd722c443c5c
# ╟─1aedcd60-84a3-11eb-212f-73fbc242c22a
# ╠═1aedcd60-84a3-11eb-2331-c5ef82e9f486
# ╟─1aedcd60-84a3-11eb-0289-c1f5f34d9c34
# ╠═1aedcd60-84a3-11eb-0327-e559e755e26d
# ╟─1aedcd60-84a3-11eb-1998-f3148baff00f
# ╠═1aedcd60-84a3-11eb-236d-2bff09b28044
# ╟─1aedcd60-84a3-11eb-14f3-fd134bae03f5
# ╠═1aedcd60-84a3-11eb-0f4d-f37b305bfeb4
# ╟─1aedcd60-84a3-11eb-2878-69abe11b1567
# ╠═1aedcd60-84a3-11eb-079f-0d48b03b8c24
# ╟─1aedcd60-84a3-11eb-315f-6b2ecbe510e7
# ╠═1aedcd60-84a3-11eb-10bc-d96c68d8d30f
# ╟─1aedcd60-84a3-11eb-2197-eb750066d127
# ╠═1aedcd60-84a3-11eb-0974-c304f3d57a1e
# ╟─1aedcd60-84a3-11eb-031d-bfc897435ded
# ╠═1aedcd60-84a3-11eb-1678-e7caa3c3f7a1
# ╟─1aedcd60-84a3-11eb-3872-cb7e18d2abd2
# ╠═1aedcd60-84a3-11eb-2855-ddbb058243cd
# ╟─1aedcd60-84a3-11eb-0fd7-7526290bdd33
# ╠═1aedcd60-84a3-11eb-3545-af6b8af308ad