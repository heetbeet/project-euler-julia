### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44524eb0-8435-11eb-0f64-db1ab8934c4b
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44524eb0-8435-11eb-16d8-f7085d51a5a9
html"""
<h2>Problem 351: Hexagonal orchards</h2>
<p>A <i>hexagonal orchard</i> of order <var>n</var> is a triangular lattice made up of points within a regular hexagon with side <var>n</var>. The following is an example of a hexagonal orchard of order 5:
</p>

<div align="center">
<img src="project/images/p351_hexorchard.png" class="dark_img" alt="p351_hexorchard.png" /><br /></div>

<p>
Highlighted in green are the points which are hidden from the center by a point closer to it. It can be seen that for a hexagonal orchard of order 5, 30 points are hidden from the center.
</p>

<p>
Let H(<var>n</var>) be the number of points hidden from the center in a hexagonal orchard of order <var>n</var>.
</p>

<p>
H(5) = 30. H(10) = 138. H(1 000) = 1177848.
</p>

<p>
Find H(100 000 000).
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0998-c96e44d85103
begin
    submit_answer(nothing; prob_num=351)
end

# ╔═╡ 44524eb0-8435-11eb-21eb-63a197190d88
html"""
<h2>Problem 352: Blood tests</h2>
<p>
Each one of the 25 sheep in a flock must be tested for a rare virus, known to affect 2% of the sheep population.
An accurate and extremely sensitive PCR test exists for blood samples, producing a clear positive / negative result, but it is very time-consuming and expensive.
</p>

<p>
Because of the high cost, the vet-in-charge suggests that instead of performing 25 separate tests, the following procedure can be used instead:<br /><br />
The sheep are split into 5 groups of 5 sheep in each group. 
For each group, the 5 samples are mixed together and a single test is performed. Then,
</p><ul><li>If the result is negative, all the sheep in that group are deemed to be virus-free.</li>
<li>If the result is positive, 5 additional tests will be performed (a separate test for each animal) to determine the affected individual(s).</li>
</ul><p>
Since the probability of infection for any specific animal is only 0.02, the first test (on the pooled samples) for each group will be:
</p><ul><li>Negative (and no more tests needed) with probability 0.98<sup>5</sup> = 0.9039207968.</li>
<li>Positive (5 additional tests needed) with probability 1 - 0.9039207968 = 0.0960792032.</li>
</ul><p>
Thus, the expected number of tests for each group is 1 + 0.0960792032 × 5 = 1.480396016.<br />
Consequently, all 5 groups can be screened using an average of only 1.480396016 × 5 = <b>7.40198008</b> tests, which represents a huge saving of more than 70% !
</p>

<p>
Although the scheme we have just described seems to be very efficient, it can still be improved considerably (always assuming that the test is sufficiently sensitive and that there are no adverse effects caused by mixing different samples). E.g.:
</p><ul><li>We may start by running a test on a mixture of all the 25 samples. It can be verified that in about 60.35% of the cases this test will be negative, thus no more tests will be needed. Further testing will only be required for the remaining 39.65% of the cases.</li>
<li>If we know that at least one animal in a group of 5 is infected and the first 4 individual tests come out negative, there is no need to run a test on the fifth animal (we know that it must be infected).</li>
<li>We can try a different number of groups / different number of animals in each group, adjusting those numbers at each level so that the total expected number of tests will be minimised.</li>
</ul><p>
To simplify the very wide range of possibilities, there is one restriction we place when devising the most cost-efficient testing scheme: whenever we start with a mixed sample, all the sheep contributing to that sample must be fully screened (i.e. a verdict of infected / virus-free must be reached for all of them) before we start examining any other animals.
</p>
For the current example, it turns out that the most cost-efficient testing scheme (we'll call it the <i>optimal strategy</i>) requires an average of just <b>4.155452</b> tests!


<p>
Using the optimal strategy, let T(<var>s</var>,<var>p</var>) represent the average number of tests needed to screen a flock of <var>s</var> sheep for a virus having probability <var>p</var> to be present in any individual.<br />
Thus, rounded to six decimal places, T(25, 0.02) = 4.155452 and T(25, 0.10) = 12.702124.
</p>

<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> T(10000, p) for p=0.01, 0.02, 0.03, ... 0.50.<br />
Give your answer rounded to six decimal places.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-2a77-e17ecc81776c
begin
    submit_answer(nothing; prob_num=352)
end

# ╔═╡ 44524eb0-8435-11eb-0c9d-e94c645689d1
html"""
<h2>Problem 353: Risky moon</h2>
<p>
A moon could be described by the sphere $C(r)$ with centre $(0,0,0)$ and radius $r$. 
</p>

<p>
There are stations on the moon at the points on the surface of $C(r)$ with integer coordinates. The station at $(0,0,r)$ is called North Pole station, the station at $(0,0,-r)$ is called South Pole station.
</p>

<p>
All stations are connected with each other via the shortest road on the great arc through the stations. A journey between two stations is risky. If <var>d</var> is the length of the road between two stations, $\left(\frac{d}{\pi r}\right)^2$ is a measure for the risk of the journey (let us call it the risk of the road). If the journey includes more than two stations, the risk of the journey is the sum of risks of the used roads.
</p>

<p>
A direct journey from  the North Pole station to the South Pole station has the length $\pi r$ and risk 1. The journey from the North Pole station to the South Pole station via $(0,r,0)$ has the same length, but a smaller risk:</p>
\[
\left(\frac{\frac{1}{2}\pi r}{\pi r}\right)^2+\left(\frac{\frac{1}{2}\pi r}{\pi r}\right)^2=0.5
\]

<p>
The minimal risk of a journey from the North Pole station to the South Pole station on $C(r)$ is $M(r)$.
</p>

<p>
You are given that $M(7)=0.1784943998$  rounded to 10 digits behind the decimal point. 
</p>

<p>
Find $\displaystyle{\sum_{n=1}^{15}M(2^n-1)}$.
</p>

<p>
Give your answer rounded to 10 digits behind the decimal point in the form a.bcdefghijk.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0382-c70b1ef33706
begin
    submit_answer(nothing; prob_num=353)
end

# ╔═╡ 44524eb0-8435-11eb-126c-cd97884361ac
html"""
<h2>Problem 354: Distances in a bee's honeycomb </h2>
<p>Consider a honey bee's honeycomb where each cell is a perfect regular hexagon with side length $1$.</p>

<div align="center">
<img src="project/images/p354_bee_honeycomb.png" alt="p354_bee_honeycomb.png" /></div>


<p>
One particular cell is occupied by the queen bee.<br />
For a positive real number $L$, let $\text{B}(L)$ count the cells with distance $L$ from the queen bee cell (all distances are measured from centre to centre); you may assume that the honeycomb is large enough to accommodate for any distance we wish to consider. <br />
For example, $\text{B}(\sqrt 3)=6$, $\text{B}(\sqrt {21}) = 12$ and $\text{B}(111\,111\,111) = 54$.</p>

<p>Find the number of $L \le 5 \times 10^{11}$ such that $\text{B}(L) = 450$.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-3688-039eff225aab
begin
    submit_answer(nothing; prob_num=354)
end

# ╔═╡ 44524eb0-8435-11eb-0866-55408aa1dad0
html"""
<h2>Problem 355: Maximal coprime subset</h2>
<p>
Define Co(<var>n</var>) to be the maximal possible sum of a set of mutually co-prime elements from {1, 2, ..., <var>n</var>}.<br /> For example Co(10) is 30 and hits that maximum on the subset {1, 5, 7, 8, 9}.
</p>

<p>
You are given that Co(30) = 193 and Co(100) = 1356. 
</p>

<p>Find Co(200000).
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0dae-334e873a2012
begin
    submit_answer(nothing; prob_num=355)
end

# ╔═╡ 44524eb0-8435-11eb-2451-f18b096b490c
html"""
<h2>Problem 356: Largest roots of cubic polynomials</h2>
<p>
Let <var>a</var><sub><var>n</var></sub> be the largest real root of a polynomial <var>g</var>(x) = x<sup>3</sup> - 2<sup><var>n</var></sup>·x<sup>2</sup> + <var>n</var>.<br />
For example, <var>a</var><sub>2</sub> = 3.86619826...</p>

<p>
Find the last eight digits of $\sum \limits_{i = 1}^{30} {\left \lfloor a_i^{987654321} \right \rfloor}$.</p>

<p>
<u><i>Note</i></u>: $\lfloor a \rfloor$ represents the floor function.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1174-bbc1e841adda
begin
    submit_answer(nothing; prob_num=356)
end

# ╔═╡ 44524eb0-8435-11eb-3a2d-a11a88b1d698
html"""
<h2>Problem 357: Prime generating integers</h2>
<p>
Consider the divisors of 30: 1,2,3,5,6,10,15,30.<br />
It can be seen that for every divisor <var>d</var> of 30, <var>d</var>+30/<var>d</var> is prime.
</p>
<p>
Find the sum of all positive integers <var>n</var> not exceeding 100 000 000<br />such that
for every divisor <var>d</var> of <var>n</var>, <var>d</var>+<var>n</var>/<var>d</var> is prime.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-092f-4f05497cb428
begin
    submit_answer(nothing; prob_num=357)
end

# ╔═╡ 44524eb0-8435-11eb-1fc3-a3eae72656d4
html"""
<h2>Problem 358: Cyclic numbers</h2>
<p>A <b>cyclic number</b> with <var>n</var> digits has a very interesting property:<br />
When it is multiplied by 1, 2, 3, 4, ... <var>n</var>, all the products have exactly the same digits, in the same order, but rotated in a circular fashion!
</p>

<p>
The smallest cyclic number is the 6-digit number 142857 :<br />
142857 × 1 = 142857<br />
142857 × 2 = 285714<br />
142857 × 3 = 428571<br />
142857 × 4 = 571428<br />
142857 × 5 = 714285<br />
142857 × 6 = 857142  
</p>

<p>
The next cyclic number is 0588235294117647 with 16 digits :<br />
0588235294117647 × 1 = 0588235294117647<br />
0588235294117647 × 2 = 1176470588235294<br />
0588235294117647 × 3 = 1764705882352941<br />
...<br />
0588235294117647 × 16 = 9411764705882352
</p>

<p>
Note that for cyclic numbers, leading zeros are important.
</p>

<p>
There is only one cyclic number for which, the eleven leftmost digits are 00000000137 and the five rightmost digits are 56789 (i.e., it has the form 00000000137...56789 with an unknown number of digits in the middle). Find the sum of all its digits.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0999-bdace9dc656a
begin
    submit_answer(nothing; prob_num=358)
end

# ╔═╡ 44524eb0-8435-11eb-289c-93b9cc052f2b
html"""
<h2>Problem 359: Hilbert's New Hotel</h2>
<p>
An infinite number of people (numbered 1, 2, 3, etc.) are lined up to get a room at Hilbert's newest infinite hotel. The hotel contains an infinite number of floors (numbered 1, 2, 3, etc.), and each floor contains an infinite number of rooms (numbered 1, 2, 3, etc.). 
</p>

<p>
Initially the hotel is empty. Hilbert declares a rule on how the <var>n</var><sup>th</sup> person is assigned a room: person <var>n</var> gets the first vacant room in the lowest numbered floor satisfying either of the following:
</p><ul><li>the floor is empty</li>
<li>the floor is not empty, and if the latest person taking a room in that floor is person <var>m</var>, then <var>m</var> + <var>n</var> is a perfect square</li>
</ul><p>
Person 1 gets room 1 in floor 1 since floor 1 is empty.
<br />Person 2 does not get room 2 in floor 1 since 1 + 2 = 3 is not a perfect square.
<br />Person 2 instead gets room 1 in floor 2 since floor 2 is empty.
<br />Person 3 gets room 2 in floor 1 since 1 + 3 = 4 is a perfect square.
</p>

<p>
Eventually, every person in the line gets a room in the hotel.
</p>

<p>
Define P(<var>f</var>, <var>r</var>) to be <var>n</var> if person <var>n</var> occupies room <var>r</var> in floor <var>f</var>, and 0 if no person occupies the room. Here are a few examples:
<br />P(1, 1) = 1
<br />P(1, 2) = 3
<br />P(2, 1) = 2
<br />P(10, 20) = 440
<br />P(25, 75) = 4863
<br />P(99, 100) = 19454
</p>

<p>
Find the sum of all P(<var>f</var>, <var>r</var>) for all positive <var>f</var> and <var>r</var> such that <var>f</var> × <var>r</var> = 71328803586048 and give the last 8 digits as your answer.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0c9b-0f8976783252
begin
    submit_answer(nothing; prob_num=359)
end

# ╔═╡ 44524eb0-8435-11eb-1042-67f5e7adb29e
html"""
<h2>Problem 360: Scary Sphere</h2>
<p>
Given two points (x<sub>1</sub>,y<sub>1</sub>,z<sub>1</sub>) and (x<sub>2</sub>,y<sub>2</sub>,z<sub>2</sub>) in three dimensional space, the <b>Manhattan distance</b>  between those points is defined as <br /> |x<sub>1</sub>-x<sub>2</sub>|+|y<sub>1</sub>-y<sub>2</sub>|+|z<sub>1</sub>-z<sub>2</sub>|.
</p>
<p>
Let C(<var>r</var>) be a sphere with radius <var>r</var> and center in the origin O(0,0,0).<br />
Let I(<var>r</var>) be the set of all points with integer coordinates on the surface of C(<var>r</var>).<br />
Let S(<var>r</var>) be the sum of the Manhattan distances of all elements of I(<var>r</var>) to the origin O.
</p>
<p>
E.g. S(45)=34518.
</p>
<p>
Find S(10<sup>10</sup>).
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-3b13-b9b283621632
begin
    submit_answer(nothing; prob_num=360)
end

# ╔═╡ 44524eb0-8435-11eb-1e67-a3a305133d95
html"""
<h2>Problem 361: Subsequence of Thue-Morse sequence</h2>
<p>The <b>Thue-Morse sequence</b> {T<sub><var>n</var></sub>} is a binary sequence satisfying:</p>
<ul><li>T<sub>0</sub> = 0</li>
<li>T<sub>2<var>n</var></sub> = T<sub><var>n</var></sub></li>
<li>T<sub>2<var>n</var>+1</sub> = 1 - T<sub><var>n</var></sub></li>
</ul><p>
The first several terms of {T<sub><var>n</var></sub>} are given as follows:<br />
01101001<span style="color:#FF0000;">10010</span>1101001011001101001....
</p>

<p>
We define {A<sub><var>n</var></sub>} as the sorted sequence of integers such that the binary expression of each element appears as a subsequence in {T<sub><var>n</var></sub>}.<br />
For example, the decimal number 18 is expressed as 10010 in binary. 10010 appears in {T<sub><var>n</var></sub>} (T<sub>8</sub> to T<sub>12</sub>), so 18 is an element of {A<sub><var>n</var></sub>}.<br />
The decimal number 14 is expressed as 1110 in binary. 1110 never appears in {T<sub><var>n</var></sub>}, so 14 is not an element of {A<sub><var>n</var></sub>}.
</p>

<p>
The first several terms of A<sub><var>n</var></sub> are given as follows:<br /></p><div align="center">
<table cellspacing="1" cellpadding="5" border="0" align="center"><tr><td align="left"><var>n</var></td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>…</td></tr><tr><td>A<sub><var>n</var></sub></td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>18</td><td>…</td></tr></table></div>


<p>
We can also verify that A<sub>100</sub> = 3251 and A<sub>1000</sub> = 80852364498.
</p>

<p>
Find the last 9 digits of $\sum \limits_{k = 1}^{18} {A_{10^k}}$.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-08c4-333fee8d9924
begin
    submit_answer(nothing; prob_num=361)
end

# ╔═╡ 44524eb0-8435-11eb-0f7e-25513dfce0f7
html"""
<h2>Problem 362: Squarefree factors</h2>
<p>
Consider the number 54.<br />
54 can be factored in 7 distinct ways into one or more factors larger than 1:<br />
54, 2×27, 3×18, 6×9, 3×3×6, 2×3×9 and 2×3×3×3.<br />
If we require that the factors are all squarefree only two ways remain: 3×3×6 and 2×3×3×3.
</p>
<p>
Let's call Fsf(<var>n</var>) the number of ways <var>n</var> can be factored into one or more squarefree factors larger than 1, so
Fsf(54)=2.
</p>
<p>
Let S(<var>n</var>) be <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> Fsf(<var>k</var>) for <var>k</var>=2 to <var>n</var>.
</p>
<p>
S(100)=193.
</p>
<p>
Find S(10 000 000 000). 
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1454-399e1d300d98
begin
    submit_answer(nothing; prob_num=362)
end

# ╔═╡ 44524eb0-8435-11eb-378f-e15364e0e466
html"""
<h2>Problem 363: Bézier Curves</h2>
<p>A cubic Bézier curve is defined by four points: $P_0, P_1, P_2,$ and $P_3$.</p>

<div class="float_right"><img src="project/images/p363_bezier.png" class="dark_img" alt="p363_bezier.png" /></div>

<p>The curve is constructed as follows:</p>

<p>On the segments $P_0 P_1$, $P_1 P_2$, and $P_2 P_3$ the points $Q_0, Q_1,$ and $Q_2$ are drawn such that $\dfrac{P_0 Q_0}{P_0 P_1} = \dfrac{P_1 Q_1}{P_1 P_2} = \dfrac{P_2 Q_2}{P_2 P_3} = t$, with $t$ in $[0, 1]$.</p>

<p>On the segments $Q_0 Q_1$ and $Q_1 Q_2$ the points $R_0$ and $R_1$ are drawn such that<br />
$\dfrac{Q_0 R_0}{Q_0 Q_1} = \dfrac{Q_1 R_1}{Q_1 Q_2} = t$ for the same value of $t$.</p>

<p>On the segment $R_0 R_1$ the point $B$ is drawn such that $\dfrac{R_0 B}{R_0 R_1} = t$ for the same value of $t$.</p>

<p>The Bézier curve defined by the points $P_0, P_1, P_2, P_3$ is the locus of $B$ as $Q_0$ takes all possible positions on the segment $P_0 P_1$.<br />
(Please note that for all points the value of $t$ is the same.)</p>



<p>From the construction it is clear that the Bézier curve will be tangent to the segments $P_0 P_1$ in $P_0$ and $P_2 P_3$ in $P_3$.</p>

<p>A cubic Bézier curve with $P_0 = (1, 0), P_1 = (1, v), P_2 = (v, 1),$ and $P_3 = (0, 1)$ is used to approximate a quarter circle.<br />
The value $v \gt 0$ is chosen such that the area enclosed by the lines $O P_0, OP_3$ and the curve is equal to $\dfrac{\pi}{4}$ (the area of the quarter circle).</p>

<p>By how many percent does the length of the curve differ from the length of the quarter circle?<br />
That is, if $L$ is the length of the curve, calculate $100 \times \dfrac{L - \frac{\pi}{2}}{\frac{\pi}{2}}$<br />
Give your answer rounded to 10 digits behind the decimal point.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-3b23-df4945d72e26
begin
    submit_answer(nothing; prob_num=363)
end

# ╔═╡ 44524eb0-8435-11eb-0c57-9fc88e67dbff
html"""
<h2>Problem 364: Comfortable distance</h2>
<p>
There are <var>N</var> seats in a row. <var>N</var> people come after each other to fill the seats according to the following rules:
</p><ol type="1"><li>If there is any seat whose adjacent seat(s) are not occupied take such a seat.</li>
<li>If there is no such seat and there is any seat for which only one adjacent seat is occupied take such a seat.</li>
<li>Otherwise take one of the remaining available seats. </li>
</ol>
Let T(<var>N</var>) be the number of possibilities that <var>N</var> seats are occupied by <var>N</var> people with the given rules.<br /> The following figure shows T(4)=8.


<div align="center">
<img src="project/images/p364_comf_dist.gif" class="dark_img" alt="p364_comf_dist.gif" /></div>

<p>We can verify that T(10) = 61632 and T(1 000) mod 100 000 007 = 47255094.</p>
<p>Find T(1 000 000) mod 100 000 007.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-2484-db383eff1459
begin
    submit_answer(nothing; prob_num=364)
end

# ╔═╡ 44524eb0-8435-11eb-1459-9fd22255ffaf
html"""
<h2>Problem 365: A huge binomial coefficient</h2>
<p>
The binomial coefficient $\displaystyle{\binom{10^{18}}{10^9}}$ is a number with more than 9 billion ($9\times 10^9$) digits.
</p>
<p>
Let $M(n,k,m)$ denote the binomial coefficient $\displaystyle{\binom{n}{k}}$ modulo $m$.
</p>
<p>
Calculate $\displaystyle{\sum M(10^{18},10^9,p\cdot q\cdot r)}$ for $1000\lt p\lt q\lt r\lt 5000$ and $p$,$q$,$r$ prime.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-2784-23b639d63979
begin
    submit_answer(nothing; prob_num=365)
end

# ╔═╡ 44524eb0-8435-11eb-392b-1bbb60578c20
html"""
<h2>Problem 366: Stone Game III</h2>
<p>
Two players, Anton and Bernhard, are playing the following game.<br />
There is one pile of n stones.<br />
The first player may remove any positive number of stones, but not the whole pile.<br />
Thereafter, each player may remove at most twice the number of stones his opponent took on the previous move.<br />
The player who removes the last stone wins.
</p>
<p>
E.g. n=5<br />
If the first player takes anything more than one stone the next player will be able to take all remaining stones.<br />
If the first player takes one stone, leaving four, his opponent will take also one stone, leaving three stones.<br />
The first player cannot take all three because he may take at most 2x1=2 stones. So let's say he takes also one stone, leaving 2. The second player can take the two remaining stones and wins.<br />
So 5 is a losing position for the first player.<br />
For some winning positions there is more than one possible move for the first player.<br />
E.g. when n=17 the first player can remove one or four stones.
</p>
<p>
Let M(n) be the maximum number of stones the first player can take from a winning position <i>at his first turn</i> and M(n)=0 for any other position.
</p>
<p>
<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(n) for n≤100 is 728.
</p>
<p>
Find  <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(n) for n≤10<sup>18</sup>.
Give your answer modulo 10<sup>8</sup>.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-016f-31b8205739f4
begin
    submit_answer(nothing; prob_num=366)
end

# ╔═╡ 44524eb0-8435-11eb-3aa0-3dfe530f9c5c
html"""
<h2>Problem 367: Bozo sort</h2>
<p>
<b>Bozo sort</b>, not to be confused with the slightly less efficient <b>bogo sort</b>, consists out of checking if the input sequence is sorted and if not swapping randomly two elements. This is repeated until eventually the sequence is sorted.
</p>
<p>
If we consider all permutations of the first 4 natural numbers as input the expectation value of the number of swaps, averaged over all 4! input sequences is 24.75.<br />
The already sorted sequence takes 0 steps. 
</p>
<p>
In this problem we consider the following variant on bozo sort.<br />
If the sequence is not in order we pick three elements at random and shuffle these three elements randomly.<br />
All 3!=6 permutations of those three elements are equally likely. <br />
The already sorted sequence will take 0 steps.<br />
If we consider all permutations of the first 4 natural numbers as input the expectation value of the number of shuffles, averaged over all 4! input sequences is 27.5. <br />
Consider as input sequences the permutations of the first 11 natural numbers.<br />
Averaged over all 11! input sequences, what is the expected number of shuffles this sorting algorithm will perform?
</p>
<p>
Give your answer rounded to the nearest integer.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-2505-37e23d25b428
begin
    submit_answer(nothing; prob_num=367)
end

# ╔═╡ 44524eb0-8435-11eb-0c5c-6369245ef0e9
html"""
<h2>Problem 368: A Kempner-like series</h2>
<p>The <b> harmonic series </b> $1 + \dfrac{1}{2} + \dfrac{1}{3} + \dfrac{1}{4} + ...$ is well known to be divergent.</p>

<p>If we however omit from this series every term where the denominator has a 9 in it, the series remarkably enough converges to approximately 22.9206766193.<br />
This modified harmonic series is called the <b>Kempner</b> series.</p>

<p>Let us now consider another modified harmonic series by omitting from the harmonic series every term where the denominator has 3 or more equal consecutive digits.
One can verify that out of the first 1200 terms of the harmonic series, only 20 terms will be omitted.<br />
These 20 omitted terms are:</p>
<p>$$\dfrac{1}{111}, \dfrac{1}{222}, \dfrac{1}{333}, \dfrac{1}{444}, \dfrac{1}{555}, \dfrac{1}{666}, \dfrac{1}{777}, \dfrac{1}{888}, \dfrac{1}{999}, \dfrac{1}{1000}, \dfrac{1}{1110},$$
$$\dfrac{1}{1111}, \dfrac{1}{1112}, \dfrac{1}{1113}, \dfrac{1}{1114}, \dfrac{1}{1115}, \dfrac{1}{1116}, \dfrac{1}{1117}, \dfrac{1}{1118}, \dfrac{1}{1119}$$</p>

<p>This series converges as well.</p>

<p>Find the value the series converges to.<br />
Give your answer rounded to 10 digits behind the decimal point.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0a2c-49f31fa28e1f
begin
    submit_answer(nothing; prob_num=368)
end

# ╔═╡ 44524eb0-8435-11eb-1ec0-bd8ca996a622
html"""
<h2>Problem 369: Badugi</h2>
<p>In a standard 52 card deck of playing cards, a set of 4 cards is a <b>Badugi</b> if it contains 4 cards with no pairs and no two cards of the same suit.</p>

<p>Let f(<var>n</var>) be the number of ways to choose <var>n</var> cards with a 4 card subset that is a Badugi.  For example, there are 2598960 ways to choose five cards from a standard 52 card deck, of which 514800 contain a 4 card subset that is a Badugi, so f(5) = 514800.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>n</var>)  for 4 ≤ <var>n</var> ≤ 13.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-22f0-3fce1222ce95
begin
    submit_answer(nothing; prob_num=369)
end

# ╔═╡ 44524eb0-8435-11eb-2295-9f52b4fb70b9
html"""
<h2>Problem 370: Geometric triangles</h2>
<p>Let us define a <i>geometric triangle</i> as an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> so that its sides form a <b>geometric progression</b>, i.e. <var>b<sup>2</sup></var> = <var>a</var> · <var>c</var> . </p> 

<p>An example of such a geometric triangle is the triangle with sides <var>a</var> = 144, <var>b</var> = 156 and <var>c</var> = 169.</p>

<p>There are 861805 geometric triangles with perimeter ≤ 10<sup>6</sup> .</p>

<p>How many geometric triangles exist with perimeter ≤ 2.5·10<sup>13</sup> ?</p>
"""

# ╔═╡ 44524eb0-8435-11eb-10d9-174cf4a3a9fe
begin
    submit_answer(nothing; prob_num=370)
end

# ╔═╡ 44524eb0-8435-11eb-0643-47b8f2c16ddf
html"""
<h2>Problem 371: Licence plates</h2>
<p>
Oregon licence plates consist of three letters followed by a three digit number (each digit can be from [0..9]).<br />
While driving to work Seth plays the following game:<br />
Whenever the numbers of two licence plates seen on his trip add to 1000 that's a win.
</p>
<p>
E.g. MIC-012 and HAN-988 is a win and RYU-500 and SET-500 too (as long as he sees them in the same trip). 
</p><p>
</p><p>
Find the expected number of plates he needs to see for a win.<br />
Give your answer rounded to 8 decimal places behind the decimal point.
</p>
<p style="font-size:88%;">
<b>Note:</b> We assume that each licence plate seen is equally likely to have any three digit number on it.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-0326-4f0cca0e272e
begin
    submit_answer(nothing; prob_num=371)
end

# ╔═╡ 44524eb0-8435-11eb-0065-65c2b1f75800
html"""
<h2>Problem 372: Pencils of rays</h2>
<p>
Let $R(M, N)$ be the number of lattice points $(x, y)$ which satisfy $M\!\lt\!x\!\le\!N$, $M\!\lt\!y\!\le\!N$ and $\large\left\lfloor\!\frac{y^2}{x^2}\!\right\rfloor$ is odd.<br />
We can verify that $R(0, 100) = 3019$ and $R(100, 10000) = 29750422$.<br />
Find $R(2\cdot10^6, 10^9)$.
</p>

<p>
<u><i>Note</i></u>: $\lfloor x\rfloor$ represents the floor function.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1cde-c594645d31b4
begin
    submit_answer(nothing; prob_num=372)
end

# ╔═╡ 44524eb0-8435-11eb-0245-69935f2f6342
html"""
<h2>Problem 373: Circumscribed Circles</h2>
<p>
Every triangle has a circumscribed circle that goes through the three vertices.
Consider all integer sided triangles for which the radius of the circumscribed circle is integral as well.
</p>
<p>
Let S(<var>n</var>) be the sum of the radii of the circumscribed circles of all such triangles for which the radius does not exceed <var>n</var>.
</p>
<p>S(100)=4950 and S(1200)=1653605.
</p>
<p>
Find S(10<sup>7</sup>).
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1916-49d2abb281d6
begin
    submit_answer(nothing; prob_num=373)
end

# ╔═╡ 44524eb0-8435-11eb-3529-5b29826ae442
html"""
<h2>Problem 374: Maximum Integer Partition Product</h2>
<p>An integer partition of a number <var>n</var> is a way of writing <var>n</var> as a sum of positive integers.</p>

<p>Partitions that differ only in the order of their summands are considered the same.
A partition of <var>n</var> into <b>distinct parts</b> is a partition of <var>n</var> in which every part occurs at most once.</p>

<p>The partitions of 5 into distinct parts are:
<br />5, 4+1 and 3+2.</p>

<p>Let f(<var>n</var>) be the maximum product of the parts of any such partition of <var>n</var> into distinct parts and let m(<var>n</var>) be the number of elements of any such partition of <var>n</var> with that product.</p>

<p>So f(5)=6 and m(5)=2.</p>

<p>For <var>n</var>=10 the partition with the largest product is 10=2+3+5, which gives f(10)=30 and m(10)=3.
<br />And their product, f(10)·m(10) = 30·3 = 90</p>

<p>It can be verified that
<br /><span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>n</var>)·m(<var>n</var>) for 1 ≤ <var>n</var> ≤ 100 = 1683550844462.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>n</var>)·m(<var>n</var>) for 1 ≤ <var>n</var> ≤ 10<sup>14</sup>.
<br />Give your answer modulo 982451653, the 50 millionth prime.</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1b7d-0d2211ba3e5f
begin
    submit_answer(nothing; prob_num=374)
end

# ╔═╡ 44524eb0-8435-11eb-39ea-5b3b9a7af5db
html"""
<h2>Problem 375: Minimum of subsequences</h2>
<p>Let $S_n$ be an integer sequence produced with the following pseudo-random number generator:</p>
\[
\begin{equation}
\begin{split}
S_0 &amp; = 290797 \\
S_{n+1} &amp; = S_n^2 \bmod 50515093
\end{split}
\end{equation}
\]

<p>
Let $A(i, j)$ be the minimum of the numbers $S_i, S_{i+1}, \ldots, S_j$ for $i\le j$.<br />
Let $M(N) = \sum A(i, j)$ for $1 \le i \le j \le N$.<br />
We can verify that $M(10) = 432256955$ and $M(10\,000) = 3264567774119$.</p>

<p>
Find $M(2\,000\,000\,000)$.
</p>
"""

# ╔═╡ 44524eb0-8435-11eb-1ae6-b5cdedbfbd0c
begin
    submit_answer(nothing; prob_num=375)
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