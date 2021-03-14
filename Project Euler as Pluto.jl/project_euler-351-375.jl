### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1acf21d0-84a3-11eb-2c4d-2533b2f84ddf
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1acf21d0-84a3-11eb-289f-b1c6d2548e6f
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

# ╔═╡ 1acf21d0-84a3-11eb-1373-0ffdafed2308
begin
    submit_answer(nothing; prob_num=351)
end

# ╔═╡ 1acf21d0-84a3-11eb-1bcd-0fddce06811d
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

# ╔═╡ 1acf21d0-84a3-11eb-1f97-c9618c6d582d
begin
    submit_answer(nothing; prob_num=352)
end

# ╔═╡ 1acf21d0-84a3-11eb-034f-3d5b61b13ec5
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

# ╔═╡ 1acf21d0-84a3-11eb-25cf-0db88679d3b5
begin
    submit_answer(nothing; prob_num=353)
end

# ╔═╡ 1acf21d0-84a3-11eb-23eb-b96bb8f7ea2d
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

# ╔═╡ 1acf21d0-84a3-11eb-01a3-9501e0ace321
begin
    submit_answer(nothing; prob_num=354)
end

# ╔═╡ 1acf21d0-84a3-11eb-3478-97d2e182f245
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

# ╔═╡ 1acf21d0-84a3-11eb-0710-45cb1c0dbef7
begin
    submit_answer(nothing; prob_num=355)
end

# ╔═╡ 1acf21d0-84a3-11eb-2463-8368437286a6
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

# ╔═╡ 1acf21d0-84a3-11eb-3a97-9b218c391845
begin
    submit_answer(nothing; prob_num=356)
end

# ╔═╡ 1acf21d0-84a3-11eb-2070-2bbee9013132
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

# ╔═╡ 1acf21d0-84a3-11eb-374c-3dedaa38497f
begin
    submit_answer(nothing; prob_num=357)
end

# ╔═╡ 1acf21d0-84a3-11eb-1bb1-f53687e46d5a
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

# ╔═╡ 1acf21d0-84a3-11eb-2df1-193183c60e91
begin
    submit_answer(nothing; prob_num=358)
end

# ╔═╡ 1acf21d0-84a3-11eb-3e27-576754bb6639
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

# ╔═╡ 1acf21d0-84a3-11eb-0948-c19298a32c73
begin
    submit_answer(nothing; prob_num=359)
end

# ╔═╡ 1acf21d0-84a3-11eb-3ea5-a53d9edbcffc
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

# ╔═╡ 1acf21d0-84a3-11eb-0950-e9deae5780d1
begin
    submit_answer(nothing; prob_num=360)
end

# ╔═╡ 1acf21d0-84a3-11eb-33d8-cf64266c8636
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

# ╔═╡ 1acf21d0-84a3-11eb-163a-1753d771dde5
begin
    submit_answer(nothing; prob_num=361)
end

# ╔═╡ 1acf21d0-84a3-11eb-0988-c5d7cffbe046
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

# ╔═╡ 1acf21d0-84a3-11eb-3b51-cd9bd080ae48
begin
    submit_answer(nothing; prob_num=362)
end

# ╔═╡ 1acf21d0-84a3-11eb-11b4-b57870e4fe43
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

# ╔═╡ 1acf21d0-84a3-11eb-0cad-5da6f14f52ec
begin
    submit_answer(nothing; prob_num=363)
end

# ╔═╡ 1acf21d0-84a3-11eb-2c32-1bb91402bba7
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

# ╔═╡ 1acf21d0-84a3-11eb-2636-d9d123be7984
begin
    submit_answer(nothing; prob_num=364)
end

# ╔═╡ 1acf21d0-84a3-11eb-1d08-f7ad9c0686a0
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

# ╔═╡ 1acf21d0-84a3-11eb-1d2a-6751a686763c
begin
    submit_answer(nothing; prob_num=365)
end

# ╔═╡ 1acf21d0-84a3-11eb-286a-2b131ddfb1d9
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

# ╔═╡ 1acf21d0-84a3-11eb-1052-2d42d492c89d
begin
    submit_answer(nothing; prob_num=366)
end

# ╔═╡ 1acf21d0-84a3-11eb-290d-55091b5be7c5
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

# ╔═╡ 1acf21d0-84a3-11eb-0f6b-af494b46270b
begin
    submit_answer(nothing; prob_num=367)
end

# ╔═╡ 1acf21d0-84a3-11eb-089c-7154edf24a34
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

# ╔═╡ 1acf21d0-84a3-11eb-38ea-75363c5aa0fa
begin
    submit_answer(nothing; prob_num=368)
end

# ╔═╡ 1acf21d0-84a3-11eb-2567-875f8192b73c
html"""
<h2>Problem 369: Badugi</h2>
<p>In a standard 52 card deck of playing cards, a set of 4 cards is a <b>Badugi</b> if it contains 4 cards with no pairs and no two cards of the same suit.</p>

<p>Let f(<var>n</var>) be the number of ways to choose <var>n</var> cards with a 4 card subset that is a Badugi.  For example, there are 2598960 ways to choose five cards from a standard 52 card deck, of which 514800 contain a 4 card subset that is a Badugi, so f(5) = 514800.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>n</var>)  for 4 ≤ <var>n</var> ≤ 13.</p>
"""

# ╔═╡ 1acf21d0-84a3-11eb-3c3d-cd090b4dbcd9
begin
    submit_answer(nothing; prob_num=369)
end

# ╔═╡ 1acf21d0-84a3-11eb-0802-b1f3b5575bd3
html"""
<h2>Problem 370: Geometric triangles</h2>
<p>Let us define a <i>geometric triangle</i> as an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> so that its sides form a <b>geometric progression</b>, i.e. <var>b<sup>2</sup></var> = <var>a</var> · <var>c</var> . </p> 

<p>An example of such a geometric triangle is the triangle with sides <var>a</var> = 144, <var>b</var> = 156 and <var>c</var> = 169.</p>

<p>There are 861805 geometric triangles with perimeter ≤ 10<sup>6</sup> .</p>

<p>How many geometric triangles exist with perimeter ≤ 2.5·10<sup>13</sup> ?</p>
"""

# ╔═╡ 1acf21d0-84a3-11eb-13d6-f32f2279cdc1
begin
    submit_answer(nothing; prob_num=370)
end

# ╔═╡ 1acf21d0-84a3-11eb-2d83-29230789870c
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

# ╔═╡ 1acf21d0-84a3-11eb-0e26-7b7a929471cb
begin
    submit_answer(nothing; prob_num=371)
end

# ╔═╡ 1acf21d0-84a3-11eb-131e-67d1b573d041
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

# ╔═╡ 1acf21d0-84a3-11eb-3a8a-dfd90a106c90
begin
    submit_answer(nothing; prob_num=372)
end

# ╔═╡ 1acf21d0-84a3-11eb-3bf7-ab3cb4057627
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

# ╔═╡ 1acf21d0-84a3-11eb-2f97-8f53b041367f
begin
    submit_answer(nothing; prob_num=373)
end

# ╔═╡ 1acf21d0-84a3-11eb-149b-57e422351642
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

# ╔═╡ 1acf21d0-84a3-11eb-1800-87ccdbcab195
begin
    submit_answer(nothing; prob_num=374)
end

# ╔═╡ 1acf21d0-84a3-11eb-26d8-5b91f736e573
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

# ╔═╡ 1acf21d0-84a3-11eb-1f5d-8740f24c2925
begin
    submit_answer(nothing; prob_num=375)
end

# ╔═╡ Cell order:
# ╠═1acf21d0-84a3-11eb-2c4d-2533b2f84ddf
# ╟─1acf21d0-84a3-11eb-289f-b1c6d2548e6f
# ╠═1acf21d0-84a3-11eb-1373-0ffdafed2308
# ╟─1acf21d0-84a3-11eb-1bcd-0fddce06811d
# ╠═1acf21d0-84a3-11eb-1f97-c9618c6d582d
# ╟─1acf21d0-84a3-11eb-034f-3d5b61b13ec5
# ╠═1acf21d0-84a3-11eb-25cf-0db88679d3b5
# ╟─1acf21d0-84a3-11eb-23eb-b96bb8f7ea2d
# ╠═1acf21d0-84a3-11eb-01a3-9501e0ace321
# ╟─1acf21d0-84a3-11eb-3478-97d2e182f245
# ╠═1acf21d0-84a3-11eb-0710-45cb1c0dbef7
# ╟─1acf21d0-84a3-11eb-2463-8368437286a6
# ╠═1acf21d0-84a3-11eb-3a97-9b218c391845
# ╟─1acf21d0-84a3-11eb-2070-2bbee9013132
# ╠═1acf21d0-84a3-11eb-374c-3dedaa38497f
# ╟─1acf21d0-84a3-11eb-1bb1-f53687e46d5a
# ╠═1acf21d0-84a3-11eb-2df1-193183c60e91
# ╟─1acf21d0-84a3-11eb-3e27-576754bb6639
# ╠═1acf21d0-84a3-11eb-0948-c19298a32c73
# ╟─1acf21d0-84a3-11eb-3ea5-a53d9edbcffc
# ╠═1acf21d0-84a3-11eb-0950-e9deae5780d1
# ╟─1acf21d0-84a3-11eb-33d8-cf64266c8636
# ╠═1acf21d0-84a3-11eb-163a-1753d771dde5
# ╟─1acf21d0-84a3-11eb-0988-c5d7cffbe046
# ╠═1acf21d0-84a3-11eb-3b51-cd9bd080ae48
# ╟─1acf21d0-84a3-11eb-11b4-b57870e4fe43
# ╠═1acf21d0-84a3-11eb-0cad-5da6f14f52ec
# ╟─1acf21d0-84a3-11eb-2c32-1bb91402bba7
# ╠═1acf21d0-84a3-11eb-2636-d9d123be7984
# ╟─1acf21d0-84a3-11eb-1d08-f7ad9c0686a0
# ╠═1acf21d0-84a3-11eb-1d2a-6751a686763c
# ╟─1acf21d0-84a3-11eb-286a-2b131ddfb1d9
# ╠═1acf21d0-84a3-11eb-1052-2d42d492c89d
# ╟─1acf21d0-84a3-11eb-290d-55091b5be7c5
# ╠═1acf21d0-84a3-11eb-0f6b-af494b46270b
# ╟─1acf21d0-84a3-11eb-089c-7154edf24a34
# ╠═1acf21d0-84a3-11eb-38ea-75363c5aa0fa
# ╟─1acf21d0-84a3-11eb-2567-875f8192b73c
# ╠═1acf21d0-84a3-11eb-3c3d-cd090b4dbcd9
# ╟─1acf21d0-84a3-11eb-0802-b1f3b5575bd3
# ╠═1acf21d0-84a3-11eb-13d6-f32f2279cdc1
# ╟─1acf21d0-84a3-11eb-2d83-29230789870c
# ╠═1acf21d0-84a3-11eb-0e26-7b7a929471cb
# ╟─1acf21d0-84a3-11eb-131e-67d1b573d041
# ╠═1acf21d0-84a3-11eb-3a8a-dfd90a106c90
# ╟─1acf21d0-84a3-11eb-3bf7-ab3cb4057627
# ╠═1acf21d0-84a3-11eb-2f97-8f53b041367f
# ╟─1acf21d0-84a3-11eb-149b-57e422351642
# ╠═1acf21d0-84a3-11eb-1800-87ccdbcab195
# ╟─1acf21d0-84a3-11eb-26d8-5b91f736e573
# ╠═1acf21d0-84a3-11eb-1f5d-8740f24c2925