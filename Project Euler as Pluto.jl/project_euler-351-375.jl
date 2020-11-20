### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 459839b0-2b34-11eb-064f-4933f4ab52c2
include((@__DIR__)*"/shared.jl");

# ╔═╡ 459839b0-2b34-11eb-2871-1dc6cdff46f5
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

# ╔═╡ 459839b0-2b34-11eb-0533-c7b1f37cac78
begin
    submit_answer(nothing; prob_num=365)
end

# ╔═╡ 459839b0-2b34-11eb-1552-4d1c9ced47a9
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

# ╔═╡ 459839b0-2b34-11eb-1729-25b0fe1d934c
begin
    submit_answer(nothing; prob_num=366)
end

# ╔═╡ 459839b0-2b34-11eb-13e5-4fa89f502df0
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

# ╔═╡ 459839b0-2b34-11eb-264b-3531fd9508e8
begin
    submit_answer(nothing; prob_num=367)
end

# ╔═╡ 459839b0-2b34-11eb-3bae-5ff59d1ecaed
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

# ╔═╡ 459839b0-2b34-11eb-260b-f5887e88e5ca
begin
    submit_answer(nothing; prob_num=368)
end

# ╔═╡ 459860c2-2b34-11eb-304b-d7c05aaa345b
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

# ╔═╡ 459860c2-2b34-11eb-08c4-2f6f5b478866
begin
    submit_answer(nothing; prob_num=369)
end

# ╔═╡ 459860c2-2b34-11eb-0ecd-fb369166758b
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

# ╔═╡ 459860c2-2b34-11eb-1fb2-e132215d0fc5
begin
    submit_answer(nothing; prob_num=370)
end

# ╔═╡ 459860c2-2b34-11eb-1764-e9eeab1c2977
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

# ╔═╡ 459860c2-2b34-11eb-154d-41804e588b73
begin
    submit_answer(nothing; prob_num=371)
end

# ╔═╡ 459860c2-2b34-11eb-341f-c18abadcb439
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

# ╔═╡ 459860c2-2b34-11eb-2826-0de1a79b7be1
begin
    submit_answer(nothing; prob_num=372)
end

# ╔═╡ 459860c2-2b34-11eb-1613-e105988161f8
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

# ╔═╡ 459860c2-2b34-11eb-1784-6d358d340229
begin
    submit_answer(nothing; prob_num=373)
end

# ╔═╡ 459860c2-2b34-11eb-11b3-41566a4d02d8
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

# ╔═╡ 459860c2-2b34-11eb-17e6-6108be09ec0b
begin
    submit_answer(nothing; prob_num=374)
end

# ╔═╡ 459860c2-2b34-11eb-35a7-e180a4999f9b
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

# ╔═╡ 459860c2-2b34-11eb-192c-f9df535141ba
begin
    submit_answer(nothing; prob_num=375)
end

# ╔═╡ 459860c2-2b34-11eb-118b-014a904878c5
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

# ╔═╡ 459860c2-2b34-11eb-03b4-b9694795facf
begin
    submit_answer(nothing; prob_num=376)
end

# ╔═╡ 459860c2-2b34-11eb-09c0-f31057a48280
html"""
<h2>Problem 363: Bézier Curves</h2>
<p>A cubic Bézier curve is defined by four points: $P_0, P_1, P_2,$ and $P_4$.</p>

<div class="float_right"><img src="project/images/p363_bezier.png" class="dark_img" alt="p363_bezier.png" /></div>

<p>The curve is constructed as follows:</p>

<p>On the segments $P_0 P_1$, $P_1 P_2$, and $P_2 P_3$ the points $Q_0, Q_1,$ and $Q_2$ are drawn such that $\dfrac{P_0 Q_0}{P_0 P_1} = \dfrac{P_1 Q_1}{P_1 P_2} = \dfrac{P_2 Q_2}{P_2 P_3} = t$, with $t$ in $[0, 1]$.</p>

<p>On the segments $Q_0 Q_1$ and $Q_1 Q_2$ the points $R_0$ and $R_1$ are drawn such that<br />
$\dfrac{Q_0 R_0}{Q_0 Q_1} = \dfrac{Q_1 R_1}{Q_1 Q_2} = t$ for the same value of $t$.</p>

<p>On the segment $R_0 R_1$ the point $B$ is drawn such that $\dfrac{R_0 B}{R_0 R_1} = t$ for the same value of $t$.</p>

<p>The Bézier curve defined by the points $P_0, P_1, P_2, P_3$ is the locus of $B$ as $Q_0$ takes all possible positions on the segment $P_0 P_1$.<br />
(Please note that for all points the value of $t$ is the same.)</p>

<p>At <a href="http://home.kpn.nl/hklein/bezier/bezier.html">this (external) web address</a> you will find an applet that allows you to drag the points $P_0, P_1, P_2,$ and $P_3$ to see what the Bézier curve (green curve) defined by those points looks like. You can also drag the point $Q_0$ along the segment $P_0 P_1$.</p>

<p>From the construction it is clear that the Bézier curve will be tangent to the segments $P_0 P_1$ in $P_0$ and $P_2 P_3$ in $P_3$.</p>

<p>A cubic Bézier curve with $P_0 = (1, 0), P_1 = (1, v), P_2 = (v, 1),$ and $P_3 = (0, 1)$ is used to approximate a quarter circle.<br />
The value $v \gt 0$ is chosen such that the area enclosed by the lines $O P_0, OP_3$ and the curve is equal to $\dfrac{\pi}{4}$ (the area of the quarter circle).</p>

<p>By how many percent does the length of the curve differ from the length of the quarter circle?<br />
That is, if $L$ is the length of the curve, calculate $100 \times \dfrac{L - \frac{\pi}{2}}{\frac{\pi}{2}}$<br />
Give your answer rounded to 10 digits behind the decimal point.</p>
"""

# ╔═╡ 459860c2-2b34-11eb-1d28-5db203dc1443
begin
    submit_answer(nothing; prob_num=377)
end

# ╔═╡ 459860c2-2b34-11eb-1c0f-cf15d5a58ffc
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

# ╔═╡ 459860c2-2b34-11eb-0644-cbdda347c3b7
begin
    submit_answer(nothing; prob_num=378)
end

# ╔═╡ 459860c2-2b34-11eb-2143-551ba310e722
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

# ╔═╡ 459860c2-2b34-11eb-0255-7fcf5ec3dcbe
begin
    submit_answer(nothing; prob_num=379)
end

# ╔═╡ 459860c2-2b34-11eb-1233-af366f348cde
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

# ╔═╡ 459860c2-2b34-11eb-291e-dd921dad94a9
begin
    submit_answer(nothing; prob_num=380)
end

# ╔═╡ 459860c2-2b34-11eb-29d0-bbcdbc04a0b6
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

# ╔═╡ 459860c2-2b34-11eb-15f2-115e4a9bf05b
begin
    submit_answer(nothing; prob_num=381)
end

# ╔═╡ 459860c2-2b34-11eb-0921-cfff97c657d2
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

# ╔═╡ 459860c2-2b34-11eb-3bc8-3bb6134b4797
begin
    submit_answer(nothing; prob_num=382)
end

# ╔═╡ 459860c2-2b34-11eb-0618-55607c8c694a
html"""
<h2>Problem 369: Badugi</h2>
<p>In a standard 52 card deck of playing cards, a set of 4 cards is a <b>Badugi</b> if it contains 4 cards with no pairs and no two cards of the same suit.</p>

<p>Let f(<var>n</var>) be the number of ways to choose <var>n</var> cards with a 4 card subset that is a Badugi.  For example, there are 2598960 ways to choose five cards from a standard 52 card deck, of which 514800 contain a 4 card subset that is a Badugi, so f(5) = 514800.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>n</var>)  for 4 ≤ <var>n</var> ≤ 13.</p>
"""

# ╔═╡ 459860c2-2b34-11eb-33cf-79620fc62834
begin
    submit_answer(nothing; prob_num=383)
end

# ╔═╡ 459860c2-2b34-11eb-0757-3bc22ef19324
html"""
<h2>Problem 370: Geometric triangles</h2>
<p>Let us define a <i>geometric triangle</i> as an integer sided triangle with sides <var>a</var> ≤ <var>b</var> ≤ <var>c</var> so that its sides form a <b>geometric progression</b>, i.e. <var>b<sup>2</sup></var> = <var>a</var> · <var>c</var> . </p> 

<p>An example of such a geometric triangle is the triangle with sides <var>a</var> = 144, <var>b</var> = 156 and <var>c</var> = 169.</p>

<p>There are 861805 geometric triangles with perimeter ≤ 10<sup>6</sup> .</p>

<p>How many geometric triangles exist with perimeter ≤ 2.5·10<sup>13</sup> ?</p>
"""

# ╔═╡ 459860c2-2b34-11eb-11e4-0fb50d776ef1
begin
    submit_answer(nothing; prob_num=384)
end

# ╔═╡ 459860c2-2b34-11eb-2a73-ed33eee8fbb1
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

# ╔═╡ 459860c2-2b34-11eb-0f34-119b144940eb
begin
    submit_answer(nothing; prob_num=385)
end

# ╔═╡ 459860c2-2b34-11eb-0592-41e41a5869bf
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

# ╔═╡ 459860c2-2b34-11eb-373b-bdff869e2392
begin
    submit_answer(nothing; prob_num=386)
end

# ╔═╡ 459860c2-2b34-11eb-3e09-d1b166fc3796
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

# ╔═╡ 459860c2-2b34-11eb-19f4-93847b786eab
begin
    submit_answer(nothing; prob_num=387)
end

# ╔═╡ 459887d0-2b34-11eb-0949-8973e13d962d
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

# ╔═╡ 459887d0-2b34-11eb-3303-fd0a26bfbec5
begin
    submit_answer(nothing; prob_num=388)
end

# ╔═╡ 459887d0-2b34-11eb-067d-b94593694eb7
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

# ╔═╡ 459887d0-2b34-11eb-045f-b3e2d262bce4
begin
    submit_answer(nothing; prob_num=389)
end

# ╔═╡ 459887d0-2b34-11eb-10ce-d7c0729ead77
html"""
<h2>Problem 376: Nontransitive sets of dice</h2>
<p>
Consider the following set of dice with nonstandard pips:
</p>

<p>
Die A: 1 4 4 4 4 4<br />
Die B: 2 2 2 5 5 5<br />
Die C: 3 3 3 3 3 6<br /></p>

<p>
A game is played by two players picking a die in turn and rolling it. The player who rolls the highest value wins.
</p>

<p>
If the first player picks die A and the second player picks die B we get<br />
P(second player wins) = <sup>7</sup>/<sub>12</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
If the first player picks die B and the second player picks die C we get<br />
P(second player wins) = <sup>7</sup>/<sub>12</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
If the first player picks die C and the second player picks die A we get<br />
P(second player wins) = <sup>25</sup>/<sub>36</sub> &gt; <sup>1</sup>/<sub>2</sub></p>

<p>
So whatever die the first player picks, the second player can pick another die and have a larger than 50% chance of winning.<br />
A set of dice having this property is called a <b>nontransitive set of dice</b>.
</p>

<p>
We wish to investigate how many sets of nontransitive dice exist. We will assume the following conditions:</p><ul><li>There are three six-sided dice with each side having between 1 and <var>N</var> pips, inclusive.</li>
<li>Dice with the same set of pips are equal, regardless of which side on the die the pips are located.</li>
<li>The same pip value may appear on multiple dice; if both players roll the same value neither player wins.</li>
<li>The sets of dice {A,B,C}, {B,C,A} and {C,A,B} are the same set.</li>
</ul><p>
For <var>N</var> = 7 we find there are 9780 such sets.<br />
How many are there for <var>N</var> = 30 ?
</p>
"""

# ╔═╡ 459887d0-2b34-11eb-2c11-49e1c9b2e801
begin
    submit_answer(nothing; prob_num=390)
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