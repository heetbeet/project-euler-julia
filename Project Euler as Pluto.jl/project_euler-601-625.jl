### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 45b5acc0-2b34-11eb-3960-fd2c526a3998
include((@__DIR__)*"/shared.jl");

# ╔═╡ 45b5acc0-2b34-11eb-0404-1f0b1826a1da
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

# ╔═╡ 45b5acc0-2b34-11eb-120b-374684b82221
begin
    submit_answer(nothing; prob_num=625)
end

# ╔═╡ 45b5acc0-2b34-11eb-248e-fd66afb2904e
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

# ╔═╡ 45b5acc0-2b34-11eb-0e0f-e78ad76ac1d6
begin
    submit_answer(nothing; prob_num=626)
end

# ╔═╡ 45b5acc0-2b34-11eb-3c9e-2335f3518eff
html"""
<h2>Problem 603: Substring sums of prime concatenations</h2>
<p>Let $S(n)$ be the sum of all contiguous integer-substrings that can be formed from the integer $n$. The substrings need not be distinct. </p>

<p>For example, $S(2024) = 2 + 0 + 2 + 4 + 20 + 02 + 24 + 202 + 024 + 2024 = 2304$.</p>

<p>Let $P(n)$ be the integer formed by concatenating the first $n$ primes together. For example, $P(7) = 2357111317$.</p>

<p>Let $C(n, k)$ be the integer formed by concatenating $k$ copies of $P(n)$ together. For example, $C(7, 3) = 235711131723571113172357111317$.</p>

<p>Evaluate $S(C(10^6, 10^{12}))$ mod $(10^9 + 7)$.</p>
"""

# ╔═╡ 45b5acc0-2b34-11eb-1c91-b9de908e9a5e
begin
    submit_answer(nothing; prob_num=627)
end

# ╔═╡ 45b5d3d0-2b34-11eb-0716-858fa9bbdb2a
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

# ╔═╡ 45b5d3d0-2b34-11eb-2f01-ff15776cb801
begin
    submit_answer(nothing; prob_num=628)
end

# ╔═╡ 45b5d3d0-2b34-11eb-09b4-fb75feaae948
html"""
<h2>Problem 605: Pairwise Coin-Tossing Game</h2>
<p>Consider an $n$-player game played in consecutive pairs: Round $1$ takes place between players $1$ and $2$, round $2$ takes place between players $2$ and $3$, and so on and so forth, all the way up to round $n$, which takes place between players $n$ and $1$. Then round $n+1$ takes place between players $1$ and $2$ as the entire cycle starts again.</p>

<p>In other words, during round $r$, player $((r-1) \bmod n) + 1$ faces off against player $(r \bmod n) + 1$.</p>

<p>During each round, a fair coin is tossed to decide which of the two players wins that round. If any given player wins both rounds $r$ and $r+1$, then that player wins the entire game.</p>

<p>Let $P_n(k)$ be the probability that player $k$ wins in an $n$-player game, in the form of a reduced fraction. For example, $P_3(1) = 12/49$ and $P_6(2) = 368/1323$.</p>

<p>Let $M_n(k)$ be the product of the reduced numerator and denominator of $P_n(k)$. For example, $M_3(1) = 588$ and $M_6(2) = 486864$.</p>

<p>Find the last $8$ digits of $M_{10^8+7}(10^4+7)$.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-3b2a-81a27a77d4ea
begin
    submit_answer(nothing; prob_num=629)
end

# ╔═╡ 45b5d3d0-2b34-11eb-1901-4b0e60e9180b
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

# ╔═╡ 45b5d3d0-2b34-11eb-02b7-35b1f2551809
begin
    submit_answer(nothing; prob_num=630)
end

# ╔═╡ 45b5d3d0-2b34-11eb-301c-a32ff1366244
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

# ╔═╡ 45b5d3d0-2b34-11eb-32b7-4b1fd9a6e8bc
begin
    submit_answer(nothing; prob_num=631)
end

# ╔═╡ 45b5d3d0-2b34-11eb-1a1f-51f09a6f79bb
html"""
<h2>Problem 608: Divisor Sums</h2>
<p>Let $D(m,n)=\displaystyle\sum_{d|m}\sum_{k=1}^n\sigma_{\small 0}(kd)$ where $d$ runs through all divisors of $m$ and $\sigma_{\small 0}(n)$ is the number of divisors of $n$.<br />
You are given $D(3!,10^2)=3398$ and $D(4!,10^6)=268882292$.</p>

<p>Find $D(200!,10^{12}) \text{ mod } (10^9 + 7)$.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-2ee6-8faf11ba3034
begin
    submit_answer(nothing; prob_num=632)
end

# ╔═╡ 45b5d3d0-2b34-11eb-3ace-0becac00fe8b
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

# ╔═╡ 45b5d3d0-2b34-11eb-0aa9-519404dd8cc3
begin
    submit_answer(nothing; prob_num=633)
end

# ╔═╡ 45b5d3d0-2b34-11eb-0abd-b7c15ae55ebb
html"""
<h2>Problem 610: Roman Numerals II</h2>
<p>A random generator produces a sequence of symbols drawn from the set {<span style="font-family:'courier new', monospace;">I</span>, <span style="font-family:'courier new', monospace;">V</span>, <span style="font-family:'courier new', monospace;">X</span>, <span style="font-family:'courier new', monospace;">L</span>, <span style="font-family:'courier new', monospace;">C</span>, <span style="font-family:'courier new', monospace;">D</span>, <span style="font-family:'courier new', monospace;">M</span>, <span style="font-family:'courier new', monospace;">#</span>}. Each item in the sequence is determined by selecting one of these symbols at random, independently of the other items in the sequence. At each step, the seven letters are equally likely to be selected, with probability 14% each, but the <span style="font-family:'courier new', monospace;">#</span> symbol only has a 2% chance of selection.</p>

<p>We write down the sequence of letters from left to right as they are generated, and we stop at the first occurrence of the <span style="font-family:'courier new', monospace;">#</span> symbol (without writing it). However, we stipulate that what we have written down must always (when non-empty) be a valid Roman numeral representation in minimal form. If appending the next letter would contravene this then we simply skip it and try again with the next symbol generated.</p>

<p>Please take careful note of <a href="about=roman_numerals">About... Roman Numerals</a> for the definitive rules for this problem on what constitutes a "valid Roman numeral representation" and "minimal form". For example, the (only) sequence that represents 49 is <span style="font-family:'courier new', monospace;">XLIX</span>. The subtractive combination <span style="font-family:'courier new', monospace;">IL</span> is invalid because of rule (ii), while <span style="font-family:'courier new', monospace;">XXXXIX</span> is valid but not minimal. The rules do not place any restriction on the number of occurrences of <span style="font-family:'courier new', monospace;">M</span>, so all positive integers have a valid representation. These are the same rules as were used in <a href="problem=89">Problem 89</a>, and members are invited to solve that problem first.</p>

<p>Find the expected value of the number represented by what we have written down when we stop. (If nothing is written down then count that as zero.) Give your answer rounded to 8 places after the decimal point.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-2460-5dcfe0d0be73
begin
    submit_answer(nothing; prob_num=634)
end

# ╔═╡ 45b5d3d0-2b34-11eb-1a86-01e9e8084242
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

# ╔═╡ 45b5d3d0-2b34-11eb-0abe-979f2dec7fd1
begin
    submit_answer(nothing; prob_num=635)
end

# ╔═╡ 45b5d3d0-2b34-11eb-2a4b-490220e41e1e
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

# ╔═╡ 45b5d3d0-2b34-11eb-3c8d-91884bcee7b6
begin
    submit_answer(nothing; prob_num=636)
end

# ╔═╡ 45b5d3d0-2b34-11eb-273a-319668cab09d
html"""
<h2>Problem 613: Pythagorean Ant</h2>
<p>Dave is doing his homework on the balcony and, preparing a presentation about Pythagorean triangles, has just cut out a triangle with side lengths 30cm, 40cm and 50cm from some cardboard, when a gust of wind blows the triangle down into the garden.<br />
Another gust blows a small ant straight onto this triangle. The poor ant is completely disoriented and starts to crawl straight ahead in random direction in order to get back into the grass.</p>

<p>Assuming that all possible positions of the ant within the triangle and all possible directions of moving on are equiprobable, what is the probability that the ant leaves the triangle along its longest side?<br />
Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-07f8-4b6a039495f0
begin
    submit_answer(nothing; prob_num=637)
end

# ╔═╡ 45b5d3d0-2b34-11eb-0a15-8dffd9bf1522
html"""
<h2>Problem 614: Special partitions 2</h2>
<p>An <b>integer partition</b> of a number $n$ is a way of writing $n$ as a sum of positive integers. Partitions that differ only by the order of their summands are considered the same.</p>

<p>We call an integer partition <i>special</i> if 1) all its summands are distinct, and 2) all its even summands are also divisible by 4. <br />For example, the special partitions of $10$ are: \[10 = 1+4+5=3+7=1+9\]
The number $10$ admits many more integer partitions (a total of 42), but only those three are special.</p>

<p>Let be $P(n)$ the number of special integer partitions of $n$. You are given that $P(1) = 1$, $P(2) = 0$, $P(3) = 1$, $P(6) = 1$, $P(10)=3$, $P(100) = 37076$ and $P(1000)=3699177285485660336$.</p>

<p>Find $\displaystyle \sum_{i=1}^{10^7}{P(i)}$. Give the result modulo $10^9+7$.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-00b3-99a89a731600
begin
    submit_answer(nothing; prob_num=638)
end

# ╔═╡ 45b5d3d0-2b34-11eb-3de4-731b480ad975
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

# ╔═╡ 45b5d3d0-2b34-11eb-15c8-19672d360a6f
begin
    submit_answer(nothing; prob_num=639)
end

# ╔═╡ 45b5d3d0-2b34-11eb-0cf8-c7af4c49d133
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

# ╔═╡ 45b5d3d0-2b34-11eb-010f-0d6656b47447
begin
    submit_answer(nothing; prob_num=640)
end

# ╔═╡ 45b5d3d0-2b34-11eb-1aba-4369ea4e63a7
html"""
<h2>Problem 617: Mirror Power Sequence</h2>
<p>For two integers $n,e &gt; 1$, we define a $(n,e)$-<i>MPS (Mirror Power Sequence)</i> to be an infinite sequence of integers $(a_i)_{i\ge 0}$ such that for all $i\ge 0$, $a_{i+1} = min(a_i^e,n-a_i^e)$ and $a_i &gt; 1$.<br /> Examples of such sequences are the two $(18,2)$-MPS sequences made of alternating $2$ and $4$.</p>

<p>Note that even though such a sequence is uniquely determined by $n,e$ and $a_0$, for most values such a sequence does not exist. For example, no $(n,e)$-MPS exists for $n &lt; 6$.</p>

<p>Define $C(n)$ to be the number of $(n,e)$-MPS for some $e$, and $\displaystyle D(N) = \sum_{n=2}^N {C(n)}$.
<br />You are given that $D(10) = 2$, $D(100) = 21$, $D(1000) = 69$, $D(10^6) = 1303$ and $D(10^{12}) = 1014800$.</p>
 
<p>Find $D(10^{18})$.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-30dc-b9ca870ef1c9
begin
    submit_answer(nothing; prob_num=641)
end

# ╔═╡ 45b5d3d0-2b34-11eb-2eb0-07a8c62c379a
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

# ╔═╡ 45b5d3d0-2b34-11eb-3b9c-bf00dc763e27
begin
    submit_answer(nothing; prob_num=642)
end

# ╔═╡ 45b5d3d0-2b34-11eb-361c-2f29b6dc6d8a
html"""
<h2>Problem 619: Square subsets</h2>
<p>For a set of positive integers $\{a, a+1, a+2, \dots , b\}$, let $C(a,b)$ be the number of non-empty subsets in which the product of all elements is a perfect square.</p>
<p>For example $C(5,10)=3$, since the products of all elements of $\{5, 8, 10\}$, $\{5, 8, 9, 10\}$ and $\{9\}$ are perfect squares, and no other subsets of $\{5, 6, 7, 8, 9, 10\}$ have this property.</p>
<p>You are given that $C(40,55) =15$, and $C(1000,1234) \text{ mod } 1000000007=975523611$.</p>

<p>Find $C(1000000,1234567) \text{ mod } 1000000007$.</p>
"""

# ╔═╡ 45b5d3d0-2b34-11eb-3b09-314ad0ac748a
begin
    submit_answer(nothing; prob_num=643)
end

# ╔═╡ 45b5d3d0-2b34-11eb-3a83-8552afadb4ca
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

# ╔═╡ 45b5d3d0-2b34-11eb-173c-0707321e9e23
begin
    submit_answer(nothing; prob_num=644)
end

# ╔═╡ 45b5fae2-2b34-11eb-389c-393d1b9df33c
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

# ╔═╡ 45b5fae2-2b34-11eb-386e-1b65177f1d7e
begin
    submit_answer(nothing; prob_num=645)
end

# ╔═╡ 45b5fae2-2b34-11eb-0277-e9ed3aef490a
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

# ╔═╡ 45b5fae2-2b34-11eb-1b9c-8950287fb0da
begin
    submit_answer(nothing; prob_num=646)
end

# ╔═╡ 45b5fae2-2b34-11eb-1f58-59171c7b4a01
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

# ╔═╡ 45b5fae2-2b34-11eb-043e-0d099ce7036f
begin
    submit_answer(nothing; prob_num=647)
end

# ╔═╡ 45b5fae2-2b34-11eb-0769-277be417b8e7
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

# ╔═╡ 45b5fae2-2b34-11eb-15c8-c94e636e8bea
begin
    submit_answer(nothing; prob_num=648)
end

# ╔═╡ 45b5fae2-2b34-11eb-2fc0-f701e39a7535
html"""
<h2>Problem 625: Gcd sum</h2>
<p>
$G(N)=\sum_{j=1}^N\sum_{i=1}^j \text{gcd}(i,j)$. <br />
You are given: $G(10)=122$.</p>
<p>
Find $G(10^{11})$. Give your answer modulo 998244353
</p>
"""

# ╔═╡ 45b5fae2-2b34-11eb-2e8c-5bf528cd6139
begin
    submit_answer(nothing; prob_num=649)
end

# ╔═╡ 45b5fae2-2b34-11eb-1a04-69ef41d40625
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

# ╔═╡ 45b5fae2-2b34-11eb-1c16-f584346383c1
begin
    submit_answer(nothing; prob_num=650)
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
# ╠═45a7f122-2b34-11eb-27e0-2d798c62e1d2
# ╟─45a7f122-2b34-11eb-3021-dd99d3c18665
# ╠═45a7f122-2b34-11eb-300a-bf1b1331b8eb
# ╟─45a7f122-2b34-11eb-1e10-97bbe59907c1
# ╠═45a7f122-2b34-11eb-3c02-8f81e1d3e76d
# ╟─45a7f122-2b34-11eb-260e-31c2c52a73d3
# ╠═45a7f122-2b34-11eb-1e7a-73a2bb0883b6
# ╟─45a7f122-2b34-11eb-2207-0d4f736ca6b9
# ╠═45a7f122-2b34-11eb-3dbb-15f8f1c288ca
# ╟─45a7f122-2b34-11eb-271a-ad2a70acac3a
# ╠═45a7f122-2b34-11eb-035c-1730c421a61d
# ╟─45a7f122-2b34-11eb-053a-c5d76bdc9d0d
# ╠═45a7f122-2b34-11eb-35cf-679cb28eecef
# ╟─45a7f122-2b34-11eb-1cfd-0b920fd51364
# ╠═45a7f122-2b34-11eb-08ca-43efdfbd6cf5
# ╟─45a7f122-2b34-11eb-351f-5b0bfffae152
# ╠═45a7f122-2b34-11eb-2132-37183481891d
# ╟─45a7f122-2b34-11eb-35ac-dd2b8b787e08
# ╠═45a7f122-2b34-11eb-0961-d785669820be
# ╟─45a7f122-2b34-11eb-12fc-c77b46fdfb6e
# ╠═45a7f122-2b34-11eb-1472-3b2490c4107c
# ╟─45a7f122-2b34-11eb-1773-f9a6ba6cf3c6
# ╠═45a7f122-2b34-11eb-3ca4-35174d05db5c
# ╟─45a7f122-2b34-11eb-291b-7f5203c0f5d6
# ╠═45a7f122-2b34-11eb-2be7-039caeaafdef
# ╟─45a7f122-2b34-11eb-16ae-4579f348e8fa
# ╠═45a7f122-2b34-11eb-3473-ad06c6b5b38a
# ╟─45a7f122-2b34-11eb-085a-ed1e796a89bd
# ╠═45a7f122-2b34-11eb-1d13-df89d88a3307
# ╟─45a81830-2b34-11eb-2261-d5287244c324
# ╠═45a81830-2b34-11eb-038e-13a0c5924017
# ╟─45a81830-2b34-11eb-27e4-f11b442fe22e
# ╠═45a81830-2b34-11eb-1f41-2dc1fe48b0da
# ╟─45a81830-2b34-11eb-15c2-2dc4c9e6974e
# ╠═45a81830-2b34-11eb-2f18-f3e4d4d573a7
# ╟─45a81830-2b34-11eb-1e88-6d5c851a2bf4
# ╠═45a81830-2b34-11eb-3700-9d829004bde7
# ╟─45a81830-2b34-11eb-22a5-832ed7d8df5a
# ╠═45a81830-2b34-11eb-3c11-c3bb9d2d2dba
# ╟─45a81830-2b34-11eb-1c98-5fc8446490b1
# ╠═45a81830-2b34-11eb-1a76-77b1d01acfb7
# ╟─45a81830-2b34-11eb-2775-03ad6cefbb0b
# ╠═45a81830-2b34-11eb-08f4-811104ecbd26
# ╟─45a81830-2b34-11eb-1df5-53ee174a6400
# ╠═45a81830-2b34-11eb-11a0-f7063b93262f
# ╟─45a81830-2b34-11eb-3f45-1bf2f533ed5e
# ╠═45a81830-2b34-11eb-02b1-6beeb61e301c
# ╟─45a81830-2b34-11eb-2754-9501f42b9601
# ╠═45a81830-2b34-11eb-0399-b50c9927cfc3
# ╟─45a81830-2b34-11eb-3579-1d911340d491
# ╠═45a81830-2b34-11eb-1cb7-cd850b87f197
# ╟─45a81830-2b34-11eb-15be-cf5f62a20ace
# ╠═45a81830-2b34-11eb-1f62-ffd2532db379
# ╠═45aa8930-2b34-11eb-198d-0f70d0029f95
# ╟─45aa8930-2b34-11eb-3070-873bb20ca5ea
# ╠═45aa8930-2b34-11eb-3b17-b34c4ff8d7aa
# ╟─45aab040-2b34-11eb-3a32-297c2e54acc5
# ╠═45aab040-2b34-11eb-3b4d-cd55dd7f5e5f
# ╟─45aab040-2b34-11eb-35b7-b1079285499b
# ╠═45aab040-2b34-11eb-0ee3-5fc240a4659f
# ╟─45aab040-2b34-11eb-16f3-0105e7aada2d
# ╠═45aab040-2b34-11eb-38ee-758a4d0e9a32
# ╟─45aab040-2b34-11eb-2dda-037fd93e867e
# ╠═45aab040-2b34-11eb-05e2-2198d4aaf57e
# ╟─45aab040-2b34-11eb-044a-393c7c25279a
# ╠═45aab040-2b34-11eb-0970-eb2bd447d724
# ╟─45aab040-2b34-11eb-1883-29e69b72765d
# ╠═45aab040-2b34-11eb-31c3-0bfc4eb08ff0
# ╟─45aab040-2b34-11eb-18db-b79cf17f0291
# ╠═45aab040-2b34-11eb-3a28-6936ab864f47
# ╟─45aab040-2b34-11eb-2c5e-bd8a00796bcf
# ╠═45aab040-2b34-11eb-15cb-797070229bfd
# ╟─45aab040-2b34-11eb-23ac-076cc42d97aa
# ╠═45aab040-2b34-11eb-1bc8-f9983d368064
# ╟─45aab040-2b34-11eb-32f9-c719f480ff08
# ╠═45aab040-2b34-11eb-3da1-298bee9351be
# ╟─45aab040-2b34-11eb-204f-29cc86519bb4
# ╠═45aab040-2b34-11eb-2b52-57061abf5ea9
# ╟─45aab040-2b34-11eb-106c-172dd4a28100
# ╠═45aab040-2b34-11eb-0ed0-d51394782ddc
# ╟─45aab040-2b34-11eb-3649-e5273264a003
# ╠═45aab040-2b34-11eb-05c5-d5189dad5c57
# ╟─45aab040-2b34-11eb-1023-3fa66c2f7c33
# ╠═45aab040-2b34-11eb-3415-fd5ae910911e
# ╟─45aab040-2b34-11eb-3925-f5df60209408
# ╠═45aab040-2b34-11eb-352d-41e828af1771
# ╟─45aab040-2b34-11eb-3746-ab84a3ddfdf4
# ╠═45aab040-2b34-11eb-1c9e-bd0e8a904438
# ╟─45aab040-2b34-11eb-0bb2-b9ee1a7cdced
# ╠═45aab040-2b34-11eb-27a2-7747ee135529
# ╟─45aab040-2b34-11eb-17b1-61950962f40f
# ╠═45aab040-2b34-11eb-16c2-ed469c46ad96
# ╟─45aad750-2b34-11eb-0eaa-ade79b78028f
# ╠═45aad750-2b34-11eb-0378-fd4f9b8d53c2
# ╟─45aad750-2b34-11eb-2407-f7c7c9dcebf9
# ╠═45aad750-2b34-11eb-2884-e3e91ac9809d
# ╟─45aad750-2b34-11eb-24bb-f5e95a3916c1
# ╠═45aad750-2b34-11eb-0a60-13a9981ecb9a
# ╟─45aad750-2b34-11eb-0fb7-b3065c1e2e16
# ╠═45aad750-2b34-11eb-0662-0f4f2d7a1fe6
# ╟─45aad750-2b34-11eb-3b96-87f34f82a5e5
# ╠═45aad750-2b34-11eb-376f-e5cfd519957c
# ╟─45aad750-2b34-11eb-025c-c5d62bb27476
# ╠═45aad750-2b34-11eb-33bf-6b06bbcb77b5
# ╟─45aad750-2b34-11eb-3ce3-5b313afd9165
# ╠═45aad750-2b34-11eb-06e0-0b163eebfcb7
# ╠═45aea7e0-2b34-11eb-2eee-1b2b4bb711f5
# ╟─45aea7e0-2b34-11eb-1c01-db7d18aa9727
# ╠═45aea7e0-2b34-11eb-221b-5f15036206c6
# ╟─45aea7e0-2b34-11eb-3dc1-8db3cbbb8e32
# ╠═45aea7e0-2b34-11eb-15cb-2db8f7120ab9
# ╟─45aea7e0-2b34-11eb-107d-9393b989149b
# ╠═45aea7e0-2b34-11eb-1015-d5b1359cbdc8
# ╟─45aecef0-2b34-11eb-2af6-4deeb44ff0e3
# ╠═45aecef0-2b34-11eb-1dad-79b67ff0c0ba
# ╟─45aecef0-2b34-11eb-1fb1-8b2f63c2d432
# ╠═45aecef0-2b34-11eb-0d30-7f86e18317e5
# ╟─45aecef0-2b34-11eb-260d-99b0c92d200f
# ╠═45aecef0-2b34-11eb-0063-a5699f572b93
# ╟─45aecef0-2b34-11eb-1f89-6775751b1729
# ╠═45aecef0-2b34-11eb-3c8d-6b239c9c6f75
# ╟─45aecef0-2b34-11eb-2afa-5708a5773127
# ╠═45aecef0-2b34-11eb-16a0-6bd928ee8b33
# ╟─45aecef0-2b34-11eb-2d39-b1433af28a18
# ╠═45aecef0-2b34-11eb-1386-232d206f54ae
# ╟─45aecef0-2b34-11eb-3f11-6d8640892fd1
# ╠═45aecef0-2b34-11eb-24f8-8f4da6d9d6f1
# ╟─45aecef0-2b34-11eb-3a45-8d71a98f2832
# ╠═45aecef0-2b34-11eb-0307-dd07b789c922
# ╟─45aecef0-2b34-11eb-367d-fd0545bd8867
# ╠═45aecef0-2b34-11eb-27c9-7309ffd6d79e
# ╟─45aecef0-2b34-11eb-05dd-853c36d895ae
# ╠═45aecef0-2b34-11eb-1bf8-8f1289767ff2
# ╟─45aecef0-2b34-11eb-2721-9f59cff93031
# ╠═45aecef0-2b34-11eb-0e5f-2f1ffd3ff60b
# ╟─45aecef0-2b34-11eb-2277-09004eea685a
# ╠═45aecef0-2b34-11eb-060b-619a5601f3df
# ╟─45aecef0-2b34-11eb-04f8-6daab50f016c
# ╠═45aecef0-2b34-11eb-3fc7-631586cf9f84
# ╟─45aecef0-2b34-11eb-1690-3923a633ffb2
# ╠═45aecef0-2b34-11eb-237b-6b0354c149bd
# ╟─45aecef0-2b34-11eb-17d5-41536bb246bb
# ╠═45aecef0-2b34-11eb-3389-f925699f8fa8
# ╟─45aecef0-2b34-11eb-3dbe-f5dc18432b9f
# ╠═45aecef0-2b34-11eb-0e24-f72a1c070b22
# ╟─45aecef0-2b34-11eb-364e-ffcb2c064b1b
# ╠═45aecef0-2b34-11eb-025f-1f635928253f
# ╟─45aecef0-2b34-11eb-0b22-59ff97cc33d1
# ╠═45aecef0-2b34-11eb-22c2-ad182e77fdd4
# ╟─45aef602-2b34-11eb-07d8-57b6d50490ce
# ╠═45aef602-2b34-11eb-3f1f-7d1284e9e132
# ╟─45aef602-2b34-11eb-3649-87567ce24013
# ╠═45aef602-2b34-11eb-23e8-fbd3de014f86
# ╟─45aef602-2b34-11eb-10a6-29583cb09d00
# ╠═45aef602-2b34-11eb-084b-8b35f2300f31
# ╟─45aef602-2b34-11eb-300b-af9ff5897d8b
# ╠═45aef602-2b34-11eb-37f5-eb365c6e349c
# ╟─45aef602-2b34-11eb-1cf6-476ce8128fca
# ╠═45aef602-2b34-11eb-3a63-17b2d97a1538
# ╠═45b29f80-2b34-11eb-0c5f-956e75471b53
# ╟─45b29f80-2b34-11eb-399a-e136a9b6d71b
# ╠═45b29f80-2b34-11eb-0111-63f65d8a05e9
# ╟─45b2c690-2b34-11eb-3f9a-315ec5fd516f
# ╠═45b2c690-2b34-11eb-16a9-a1cf40c61e20
# ╟─45b2c690-2b34-11eb-2020-a30d6162b639
# ╠═45b2c690-2b34-11eb-260c-eb5ab7791b07
# ╟─45b2c690-2b34-11eb-21d6-7da05d37f383
# ╠═45b2c690-2b34-11eb-3974-355bb51082de
# ╟─45b2c690-2b34-11eb-06af-edc44499b497
# ╠═45b2c690-2b34-11eb-3ab6-8fe710ec86a2
# ╟─45b2c690-2b34-11eb-1a03-d9ba127ea3a4
# ╠═45b2c690-2b34-11eb-2642-615a9e94d9b1
# ╟─45b2c690-2b34-11eb-2488-8bdff5c73216
# ╠═45b2c690-2b34-11eb-2b51-1f13eb469334
# ╟─45b2c690-2b34-11eb-1e39-ede861c82384
# ╠═45b2c690-2b34-11eb-3e91-61657a526f68
# ╟─45b2c690-2b34-11eb-2ef2-b1c685feaea4
# ╠═45b2c690-2b34-11eb-3245-6974ccf4b33b
# ╟─45b2c690-2b34-11eb-1d4a-e3cdc7030121
# ╠═45b2c690-2b34-11eb-340a-d30e39d38837
# ╟─45b2c690-2b34-11eb-0c24-035fbe0fc3f0
# ╠═45b2c690-2b34-11eb-287f-a5dab8be7972
# ╟─45b2c690-2b34-11eb-05a6-5d34515d2cda
# ╠═45b2c690-2b34-11eb-3f35-e78d27a867f5
# ╟─45b2c690-2b34-11eb-0fc5-c389c1491752
# ╠═45b2c690-2b34-11eb-169e-1d6a5fca5aaf
# ╟─45b2c690-2b34-11eb-0f7e-c1e3be5d8477
# ╠═45b2c690-2b34-11eb-27e7-9b0ca57e379c
# ╟─45b2c690-2b34-11eb-1a14-633ed1c0a251
# ╠═45b2c690-2b34-11eb-07e6-250313b5726c
# ╟─45b2c690-2b34-11eb-14d8-6f820fe94de6
# ╠═45b2c690-2b34-11eb-0b52-bb9d9f4f5200
# ╟─45b2c690-2b34-11eb-0bb0-7d54a8a3db7a
# ╠═45b2c690-2b34-11eb-0c9a-7957c6801636
# ╟─45b2c690-2b34-11eb-1e75-93ec35c2646b
# ╠═45b2c690-2b34-11eb-1401-6ba5db6b5de0
# ╟─45b2c690-2b34-11eb-0031-2ba54a311f4b
# ╠═45b2c690-2b34-11eb-2ff6-8db2df618047
# ╟─45b2c690-2b34-11eb-2459-77d6a92e07c2
# ╠═45b2c690-2b34-11eb-3132-ab2bc777d82d
# ╟─45b2c690-2b34-11eb-2bb7-f5b828214992
# ╠═45b2c690-2b34-11eb-2330-c5855291b2ec
# ╟─45b2ed9e-2b34-11eb-0e4a-317e34b37b32
# ╠═45b2ed9e-2b34-11eb-1c08-a33eeeca3f44
# ╟─45b2ed9e-2b34-11eb-318b-afce8ae22684
# ╠═45b2ed9e-2b34-11eb-37fa-81fef5ae0401
# ╟─45b2ed9e-2b34-11eb-36cb-999659789a02
# ╠═45b2ed9e-2b34-11eb-02ac-03e689f03420
# ╟─45b2ed9e-2b34-11eb-31ce-954a8e822069
# ╠═45b2ed9e-2b34-11eb-3016-a3dfdb0f1dd6
# ╟─45b2ed9e-2b34-11eb-1f63-0d0ed5408e19
# ╠═45b2ed9e-2b34-11eb-2012-990ed104ee84
# ╠═45b5acc0-2b34-11eb-3960-fd2c526a3998
# ╟─45b5acc0-2b34-11eb-0404-1f0b1826a1da
# ╠═45b5acc0-2b34-11eb-120b-374684b82221
# ╟─45b5acc0-2b34-11eb-248e-fd66afb2904e
# ╠═45b5acc0-2b34-11eb-0e0f-e78ad76ac1d6
# ╟─45b5acc0-2b34-11eb-3c9e-2335f3518eff
# ╠═45b5acc0-2b34-11eb-1c91-b9de908e9a5e
# ╟─45b5d3d0-2b34-11eb-0716-858fa9bbdb2a
# ╠═45b5d3d0-2b34-11eb-2f01-ff15776cb801
# ╟─45b5d3d0-2b34-11eb-09b4-fb75feaae948
# ╠═45b5d3d0-2b34-11eb-3b2a-81a27a77d4ea
# ╟─45b5d3d0-2b34-11eb-1901-4b0e60e9180b
# ╠═45b5d3d0-2b34-11eb-02b7-35b1f2551809
# ╟─45b5d3d0-2b34-11eb-301c-a32ff1366244
# ╠═45b5d3d0-2b34-11eb-32b7-4b1fd9a6e8bc
# ╟─45b5d3d0-2b34-11eb-1a1f-51f09a6f79bb
# ╠═45b5d3d0-2b34-11eb-2ee6-8faf11ba3034
# ╟─45b5d3d0-2b34-11eb-3ace-0becac00fe8b
# ╠═45b5d3d0-2b34-11eb-0aa9-519404dd8cc3
# ╟─45b5d3d0-2b34-11eb-0abd-b7c15ae55ebb
# ╠═45b5d3d0-2b34-11eb-2460-5dcfe0d0be73
# ╟─45b5d3d0-2b34-11eb-1a86-01e9e8084242
# ╠═45b5d3d0-2b34-11eb-0abe-979f2dec7fd1
# ╟─45b5d3d0-2b34-11eb-2a4b-490220e41e1e
# ╠═45b5d3d0-2b34-11eb-3c8d-91884bcee7b6
# ╟─45b5d3d0-2b34-11eb-273a-319668cab09d
# ╠═45b5d3d0-2b34-11eb-07f8-4b6a039495f0
# ╟─45b5d3d0-2b34-11eb-0a15-8dffd9bf1522
# ╠═45b5d3d0-2b34-11eb-00b3-99a89a731600
# ╟─45b5d3d0-2b34-11eb-3de4-731b480ad975
# ╠═45b5d3d0-2b34-11eb-15c8-19672d360a6f
# ╟─45b5d3d0-2b34-11eb-0cf8-c7af4c49d133
# ╠═45b5d3d0-2b34-11eb-010f-0d6656b47447
# ╟─45b5d3d0-2b34-11eb-1aba-4369ea4e63a7
# ╠═45b5d3d0-2b34-11eb-30dc-b9ca870ef1c9
# ╟─45b5d3d0-2b34-11eb-2eb0-07a8c62c379a
# ╠═45b5d3d0-2b34-11eb-3b9c-bf00dc763e27
# ╟─45b5d3d0-2b34-11eb-361c-2f29b6dc6d8a
# ╠═45b5d3d0-2b34-11eb-3b09-314ad0ac748a
# ╟─45b5d3d0-2b34-11eb-3a83-8552afadb4ca
# ╠═45b5d3d0-2b34-11eb-173c-0707321e9e23
# ╟─45b5fae2-2b34-11eb-389c-393d1b9df33c
# ╠═45b5fae2-2b34-11eb-386e-1b65177f1d7e
# ╟─45b5fae2-2b34-11eb-0277-e9ed3aef490a
# ╠═45b5fae2-2b34-11eb-1b9c-8950287fb0da
# ╟─45b5fae2-2b34-11eb-1f58-59171c7b4a01
# ╠═45b5fae2-2b34-11eb-043e-0d099ce7036f
# ╟─45b5fae2-2b34-11eb-0769-277be417b8e7
# ╠═45b5fae2-2b34-11eb-15c8-c94e636e8bea
# ╟─45b5fae2-2b34-11eb-2fc0-f701e39a7535
# ╠═45b5fae2-2b34-11eb-2e8c-5bf528cd6139
# ╟─45b5fae2-2b34-11eb-1a04-69ef41d40625
# ╠═45b5fae2-2b34-11eb-1c16-f584346383c1