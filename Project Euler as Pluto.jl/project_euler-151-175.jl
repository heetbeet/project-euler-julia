### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1abd6e90-84a3-11eb-179c-315a3fbf8ef1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1abd6e90-84a3-11eb-1404-b18056fc4043
html"""
<h2>Problem 151: Paper sheets of standard sizes: an expected-value problem</h2>
<p>A printing shop runs 16 batches (jobs) every week and each batch requires a sheet of special colour-proofing paper of size A5.</p>

<p>Every Monday morning, the supervisor opens a new envelope, containing a large sheet of the special paper with size A1.</p>

<p>The supervisor proceeds to cut it in half, thus getting two sheets of size A2. Then one of the sheets is cut in half to get two sheets of size A3 and so on until an A5-size sheet is obtained, which is needed for the first batch of the week.</p>

<p>All the unused sheets are placed back in the envelope.</p>

<div class="center"><img src="project/images/p151.png" class="dark_img" alt="" /></div>

<p>At the beginning of each subsequent batch, the supervisor takes from the envelope one sheet of paper at random. If it is of size A5, then it is used. If it is larger, then the 'cut-in-half' procedure is repeated until an A5-size sheet is obtained, and any remaining sheets are always placed back in the envelope.</p>

<p>Excluding the first and last batch of the week, find the expected number of times (during each week) that the supervisor finds a single sheet of paper in the envelope.</p>

<p>Give your answer rounded to six decimal places using the format x.xxxxxx .</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-06a1-5fbc8f9a4970
begin
    submit_answer(nothing; prob_num=151)
end

# ╔═╡ 1abd6e90-84a3-11eb-03c7-6360f767bae6
html"""
<h2>Problem 152: Writing 1/2 as a sum of inverse squares</h2>
<p>There are several ways to write the number 1/2 as a sum of inverse squares using <i>distinct</i> integers.</p>
<p>For instance, the numbers {2,3,4,5,7,12,15,20,28,35} can be used:</p>
<p>$$\begin{align}\dfrac{1}{2} &amp;= \dfrac{1}{2^2} + \dfrac{1}{3^2} + \dfrac{1}{4^2} + \dfrac{1}{5^2} +\\
&amp;\quad \dfrac{1}{7^2} + \dfrac{1}{12^2} + \dfrac{1}{15^2} + \dfrac{1}{20^2} +\\
&amp;\quad \dfrac{1}{28^2} + \dfrac{1}{35^2}\end{align}$$</p>
<p>In fact, only using integers between 2 and 45 inclusive, there are exactly three ways to do it, the remaining two being: {2,3,4,6,7,9,10,20,28,35,36,45} and {2,3,4,6,7,9,12,15,28,30,35,36,45}.</p>
<p>How many ways are there to write the number 1/2 as a sum of inverse squares using distinct integers between 2 and 80 inclusive?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-10fe-510128434a75
begin
    submit_answer(nothing; prob_num=152)
end

# ╔═╡ 1abd6e90-84a3-11eb-2443-75b7b398dee3
html"""
<h2>Problem 153: Investigating Gaussian Integers</h2>
<p>As we all know the equation <var>x</var><sup>2</sup>=-1 has no solutions for real <var>x</var>.
<br />
If we however introduce the imaginary number <var>i</var> this equation has two solutions: <var>x=i</var> and <var>x=-i</var>.
<br />
If we go a step further the equation (<var>x</var>-3)<sup>2</sup>=-4 has two complex solutions: <var>x</var>=3+2<var>i</var> and <var>x</var>=3-2<var>i</var>.
<br /><var>x</var>=3+2<var>i</var> and <var>x</var>=3-2<var>i</var> are called each others' complex conjugate.
<br />
Numbers of the form <var>a</var>+<var>bi</var> are called complex numbers.
<br />
In general <var>a</var>+<var>bi</var> and <var>a</var>−<var>bi</var> are each other's complex conjugate.</p>
<p>A Gaussian Integer is a complex number <var>a</var>+<var>bi</var> such that both <var>a</var> and <var>b</var> are integers.
<br />
The regular integers are also Gaussian integers (with <var>b</var>=0).
<br />
To distinguish them from Gaussian integers with <var>b</var> ≠ 0 we call such integers "rational integers."
<br />
A Gaussian integer is called a divisor of a rational integer <var>n</var> if the result is also a Gaussian integer.
<br />
If for example we divide 5 by 1+2<var>i</var> we can simplify $\dfrac{5}{1 + 2i}$ in the following manner:
<br />
Multiply numerator and denominator by the complex conjugate of 1+2<var>i</var>: 1−2<var>i</var>.
<br />
The result is $\dfrac{5}{1 + 2i} = \dfrac{5}{1 + 2i}\dfrac{1 - 2i}{1 - 2i} = \dfrac{5(1 - 2i)}{1 - (2i)^2} = \dfrac{5(1 - 2i)}{1 - (-4)} = \dfrac{5(1 - 2i)}{5} = 1 - 2i$.
<br />
So 1+2<var>i</var> is a divisor of 5.
<br />
Note that 1+<var>i</var> is not a divisor of 5 because $\dfrac{5}{1 + i} = \dfrac{5}{2} - \dfrac{5}{2}i$.
<br />
Note also that if the Gaussian Integer (<var>a</var>+<var>bi</var>) is a divisor of a rational integer <var>n</var>, then its complex conjugate (<var>a</var>−<var>bi</var>) is also a divisor of <var>n</var>.</p>
<p>In fact, 5 has six divisors such that the real part is positive: {1, 1 + 2<var>i</var>, 1 − 2<var>i</var>, 2 + <var>i</var>, 2 − <var>i</var>, 5}.
<br />
The following is a table of all of the divisors for the first five positive rational integers:</p>
<table align="center" border="1"><tr><td width="20">
<var>n</var></td><td> Gaussian integer divisors<br />
with positive real part</td><td>Sum s(<var>n</var>) of <br />these

divisors</td></tr><tr><td>1</td><td>1</td><td>1</td>
</tr><tr><td>2</td><td>1, 1+<var>i</var>, 1-<var>i</var>, 2</td><td>5</td>
</tr><tr><td>3</td><td>1, 3</td><td>4</td>
</tr><tr><td>4</td><td>1, 1+<var>i</var>, 1-<var>i</var>, 2, 2+2<var>i</var>, 2-2<var>i</var>,4</td><td>13</td>
</tr><tr><td>5</td><td>1, 1+2<var>i</var>, 1-2<var>i</var>, 2+<var>i</var>, 2-<var>i</var>, 5</td><td>12</td>
</tr></table><p>For divisors with positive real parts, then, we have: $\sum \limits_{n = 1}^{5} {s(n)} = 35$.</p>
<p>For $\sum \limits_{n = 1}^{10^5} {s(n)} = 17924657155$.</p>
<p>What is $\sum \limits_{n = 1}^{10^8} {s(n)}$?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-330e-8321081160ab
begin
    submit_answer(nothing; prob_num=153)
end

# ╔═╡ 1abd6e90-84a3-11eb-1ef1-e137d9d31214
html"""
<h2>Problem 154: Exploring Pascal's pyramid</h2>
<p>A triangular pyramid is constructed using spherical balls so that each ball rests on exactly three balls of the next lower level.</p>
<div class="center"><img src="project/images/p154_pyramid.png" class="dark_img" alt="" /></div>
<p>Then, we calculate the number of paths leading from the apex to each position:</p>
<p>A path starts at the apex and progresses downwards to any of the three spheres directly below the current position.</p>
<p>Consequently, the number of paths to reach a certain position is the sum of the numbers immediately above it (depending on the position, there are up to three numbers above it).</p>
<p>The result is <i>Pascal's pyramid</i> and the numbers at each level <var>n</var> are the coefficients of the trinomial expansion 
(<var>x + y + z</var>)<sup><var>n</var></sup>.</p>
<p>How many coefficients in the expansion of (<var>x + y + z</var>)<sup>200000</sup> are multiples of 10<sup>12</sup>?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-26f5-c37ef41b3fb6
begin
    submit_answer(nothing; prob_num=154)
end

# ╔═╡ 1abd6e90-84a3-11eb-01f3-718ff20b5cc9
html"""
<h2>Problem 155: Counting Capacitor Circuits</h2>
<p>An electric circuit uses exclusively identical capacitors of the same value C.
<br />
The capacitors can be connected in series or in parallel to form sub-units, which can then be connected in series or in parallel with other capacitors or other sub-units to form larger sub-units, and so on up to a final circuit.</p>
<p>Using this simple procedure and up to <var>n</var> identical capacitors, we can make circuits having a range of different total capacitances. For example, using up to <var>n</var>=3 capacitors of 60 $\mu$ F each, we can obtain the following 7 distinct total capacitance values: </p>
<div class="center"><img src="project/images/p155_capacitors1.gif" class="dark_img" alt="" /></div>
<p>If we denote by <var>D</var>(<var>n</var>) the number of distinct total capacitance values we can obtain when using up to <var>n</var> equal-valued capacitors and the simple procedure described above, we have: <var>D</var>(1)=1, <var>D</var>(2)=3, <var>D</var>(3)=7 ...</p>
<p>Find <var>D</var>(18).</p>
<p><i>Reminder :</i> When connecting capacitors C<sub>1</sub>, C<sub>2</sub> etc in parallel, the total capacitance is C<sub>T</sub> = C<sub>1</sub> + C<sub>2</sub> +...,
<br />
whereas when connecting them in series, the overall capacitance is given by: $\dfrac{1}{C_T} = \dfrac{1}{C_1} + \dfrac{1}{C_2} + ...$</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3091-fb25ffb82eaa
begin
    submit_answer(nothing; prob_num=155)
end

# ╔═╡ 1abd6e90-84a3-11eb-04f1-91b399c06a20
html"""
<h2>Problem 156: Counting Digits</h2>
<p>Starting from zero the natural numbers are written down in base 10 like this:
<br />
0 1 2 3 4 5 6 7 8 9 10 11 12....
</p>
<p>Consider the digit <var>d</var>=1. After we write down each number <var>n</var>, we will update the number of ones that have occurred and call this number <var>f</var>(<var>n</var>,1). The first values for <var>f</var>(<var>n</var>,1), then, are as follows:</p>
<div class="center">
<table class="center" align="center"><tr><td><var>n</var></td><td><var>f</var>(<var>n</var>,1)</td>
</tr><tr><td>0</td><td>0</td>
</tr><tr><td>1</td><td>1</td>
</tr><tr><td>2</td><td>1</td>
</tr><tr><td>3</td><td>1</td>
</tr><tr><td>4</td><td>1</td>
</tr><tr><td>5</td><td>1</td>
</tr><tr><td>6</td><td>1</td>
</tr><tr><td>7</td><td>1</td>
</tr><tr><td>8</td><td>1</td>
</tr><tr><td>9</td><td>1</td>
</tr><tr><td>10</td><td>2</td>
</tr><tr><td>11</td><td>4</td>
</tr><tr><td>12</td><td>5</td>
</tr></table></div>
<p>Note that <var>f</var>(<var>n</var>,1) never equals 3.
<br />
So the first two solutions of the equation <var>f</var>(<var>n</var>,1)=<var>n</var> are <var>n</var>=0 and <var>n</var>=1. The next solution is <var>n</var>=199981.</p>
<p>In the same manner the function <var>f</var>(<var>n,d</var>) gives the total number of digits <var>d</var> that have been written down after the number <var>n</var> has been written.
<br />
In fact, for every digit <var>d</var> ≠ 0, 0 is the first solution of the equation <var>f</var>(<var>n,d</var>)=<var>n</var>.</p>
<p>Let <var>s</var>(<var>d</var>) be the sum of all the solutions for which <var>f</var>(<var>n,d</var>)=<var>n</var>.
<br />
You are given that <var>s</var>(1)=22786974071.</p>
<p>Find  <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> <var>s</var>(<var>d</var>) for 1 ≤ d ≤ 9.</p>
<p>Note: if, for some <var>n</var>, <var>f</var>(<var>n,d</var>)=<var>n</var>
 for more than one value of <var>d</var> this value of <var>n</var> is counted again for every value of <var>d</var> for which <var>f</var>(<var>n,d</var>)=<var>n</var>.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2692-f3240a6f8f56
begin
    submit_answer(nothing; prob_num=156)
end

# ╔═╡ 1abd6e90-84a3-11eb-2203-4d286b5079dc
html"""
<h2>Problem 157: Solving the diophantine equation <sup>1</sup>/<sub><var>a</var></sub>+<sup>1</sup>/<sub><var>b</var></sub>= <sup><var>p</var></sup>/<sub>10<sup><var>n</var></sup></sub> </h2>
<p>Consider the diophantine equation <sup>1</sup>/<sub><var>a</var></sub>+<sup>1</sup>/<sub><var>b</var></sub>= <sup><var>p</var></sup>/<sub>10<sup><var>n</var></sup></sub> with <var>a, b, p, n</var> positive integers and <var>a</var> ≤ <var>b</var>.<br />
For <var>n</var>=1 this equation has 20 solutions that are listed below:</p>
<table><tr><td width="120"><sup>1</sup>/<sub>1</sub>+<sup>1</sup>/<sub>1</sub>=<sup>20</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>1</sub>+<sup>1</sup>/<sub>2</sub>=<sup>15</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>1</sub>+<sup>1</sup>/<sub>5</sub>=<sup>12</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>1</sub>+<sup>1</sup>/<sub>10</sub>=<sup>11</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>2</sub>+<sup>1</sup>/<sub>2</sub>=<sup>10</sup>/<sub>10</sub></td>
</tr><tr><td width="120"><sup>1</sup>/<sub>2</sub>+<sup>1</sup>/<sub>5</sub>=<sup>7</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>2</sub>+<sup>1</sup>/<sub>10</sub>=<sup>6</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>3</sub>+<sup>1</sup>/<sub>6</sub>=<sup>5</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>3</sub>+<sup>1</sup>/<sub>15</sub>=<sup>4</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>4</sub>+<sup>1</sup>/<sub>4</sub>=<sup>5</sup>/<sub>10</sub></td>
</tr><tr><td width="120"><sup>1</sup>/<sub>4</sub>+<sup>1</sup>/<sub>20</sub>=<sup>3</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>5</sub>+<sup>1</sup>/<sub>5</sub>=<sup>4</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>5</sub>+<sup>1</sup>/<sub>10</sub>=<sup>3</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>6</sub>+<sup>1</sup>/<sub>30</sub>=<sup>2</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>10</sub>+<sup>1</sup>/<sub>10</sub>=<sup>2</sup>/<sub>10</sub></td>
</tr><tr><td width="120"><sup>1</sup>/<sub>11</sub>+<sup>1</sup>/<sub>110</sub>=<sup>1</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>12</sub>+<sup>1</sup>/<sub>60</sub>=<sup>1</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>14</sub>+<sup>1</sup>/<sub>35</sub>=<sup>1</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>15</sub>+<sup>1</sup>/<sub>30</sub>=<sup>1</sup>/<sub>10</sub></td>
<td width="120"><sup>1</sup>/<sub>20</sub>+<sup>1</sup>/<sub>20</sub>=<sup>1</sup>/<sub>10</sub></td>
</tr></table><p>How many solutions has this equation for 1 ≤ <var>n</var> ≤ 9?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3e52-ab196dfd5a6d
begin
    submit_answer(nothing; prob_num=157)
end

# ╔═╡ 1abd6e90-84a3-11eb-0b58-43ce86037545
html"""
<h2>Problem 158: Exploring strings for which only one character comes lexicographically after its neighbour to the left</h2>
<p>Taking three different letters from the 26 letters of the alphabet, character strings of length three can be formed.<br />
Examples are 'abc', 'hat' and 'zyx'.<br />
When we study these three examples we see that for 'abc' two characters come lexicographically after its neighbour to the left.<br /> 
For 'hat' there is exactly one character that comes lexicographically after its neighbour to the left. For 'zyx' there are zero characters that come lexicographically after its neighbour to the left.<br />
In all there are 10400 strings of length 3 for which exactly one character comes lexicographically after its neighbour to the left.</p>
<p>We now consider strings of <var>n</var> ≤ 26 different characters from the alphabet.<br /> 
For every <var>n</var>, p(<var>n</var>) is the number of strings of length <var>n</var> for which exactly one character comes lexicographically after its neighbour to the left.</p> 
<p>What is the maximum value of p(<var>n</var>)?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2a0c-eb917c8cf7bc
begin
    submit_answer(nothing; prob_num=158)
end

# ╔═╡ 1abd6e90-84a3-11eb-325b-c7baed3e4bbb
html"""
<h2>Problem 159: Digital root sums of factorisations</h2>
<p>A composite number can be factored many different ways.  
For instance, not including multiplication by one, 24 can be factored in 7 distinct ways:</p>
<div class="margin_left">
24 = 2x2x2x3<br />
24 = 2x3x4<br />
24 = 2x2x6<br />
24 = 4x6<br />
24 = 3x8<br />
24 = 2x12<br />
24 = 24
</div>
<p>Recall that the digital root of a number, in base 10, is found by adding together the digits of that number, 
and repeating that process until a number is arrived at that is less than 10.  
Thus the digital root of 467 is 8.</p>
<p>We shall call a Digital Root Sum (DRS) the sum of the digital roots of the individual factors of our number.<br />
 The chart below demonstrates all of the DRS values for 24.</p>
<table class="grid center">
<tr><th>Factorisation</th><th>Digital Root Sum</th></tr>
<tr><td>2x2x2x3</td><td>9</td></tr>
<tr><td>2x3x4</td><td>9</td></tr>
<tr><td>2x2x6</td><td>10</td></tr>
<tr><td>4x6</td><td>10</td></tr>
<tr><td>3x8</td><td>11</td></tr>
<tr><td>2x12</td><td>5</td></tr>
<tr><td>24</td><td>6</td></tr>
</table>
<p>The maximum Digital Root Sum  of 24 is 11.<br />
The function mdrs(<var>n</var>) gives the maximum Digital Root Sum of <var>n</var>. So  mdrs(24)=11.<br />
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> mdrs(<var>n</var>) for 1 &lt; <var>n</var> &lt; 1,000,000.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2489-c9f91bd2fe6b
begin
    submit_answer(nothing; prob_num=159)
end

# ╔═╡ 1abd6e90-84a3-11eb-3307-d3387ee66b99
html"""
<h2>Problem 160: Factorial trailing digits</h2>
<p>For any N, let f(N) be the last five digits before the trailing zeroes in N!.<br />
For example,</p>
<p class="margin_left">9! = 362880 so f(9)=36288<br />
10! = 3628800 so f(10)=36288<br />
20! = 2432902008176640000 so f(20)=17664</p>
<p>Find f(1,000,000,000,000)</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-1b60-557b61db98a6
begin
    submit_answer(nothing; prob_num=160)
end

# ╔═╡ 1abd6e90-84a3-11eb-3549-9915d0bfebe5
html"""
<h2>Problem 161: Triominoes</h2>
<p>A triomino is a shape consisting of three squares joined via the edges.
There are two basic forms:</p>

<p class="center"><img src="project/images/p161_trio1.gif" class="dark_img" alt="" /></p>

<p>If all possible orientations are taken into account there are six:</p>

<p class="center"><img src="project/images/p161_trio3.gif" class="dark_img" alt="" /></p>

<p>Any n by m grid for which nxm is divisible by 3 can be tiled with triominoes.<br />
If we consider tilings that can be obtained by reflection or rotation from another tiling as different there are 41 ways a 2 by 9 grid can be  tiled with triominoes:</p>

<p class="center"><img src="project/images/p161_k9.gif" class="dark_img" alt="" /></p>

<p>In how many ways can a 9 by 12 grid be tiled in this way by triominoes?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3bd7-a7de704d4b1f
begin
    submit_answer(nothing; prob_num=161)
end

# ╔═╡ 1abd6e90-84a3-11eb-23a7-731f761b60f7
html"""
<h2>Problem 162: Hexadecimal numbers</h2>
<p>In  the hexadecimal number system numbers are represented using 16 different digits:</p>
<div class="center">0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F</div>
<p>The hexadecimal number AF when written in the decimal number system equals 10x16+15=175.</p>
<p>In the 3-digit hexadecimal numbers 10A, 1A0, A10, and A01 the digits 0,1 and A are all present.<br />
Like numbers written in base ten we write hexadecimal numbers without leading zeroes.</p>
<p>How many hexadecimal numbers containing at most sixteen hexadecimal digits exist with all of the digits 0,1, and A present at least once?<br />
Give your answer as a hexadecimal number.</p>
<p>(A,B,C,D,E and F in upper case, without any leading or trailing code that marks the number as hexadecimal and without leading zeroes , e.g. 1A3F and not: 1a3f and not 0x1a3f and not $1A3F and not #1A3F and not 0000001A3F)</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-32d6-7dfa368d8d24
begin
    submit_answer(nothing; prob_num=162)
end

# ╔═╡ 1abd6e90-84a3-11eb-2ae8-811b46138907
html"""
<h2>Problem 163: Cross-hatched triangles</h2>
<p>Consider an equilateral triangle in which straight lines are drawn from each vertex to the middle of the opposite side, such as in the <i>size 1</i> triangle in the sketch below.</p>
<div class="center"><img src="project/images/p163.gif" class="dark_img" alt="" /></div>
<p>Sixteen triangles of either different shape or size or orientation or location can now be observed in that triangle. Using <i>size 1</i> triangles as building blocks, larger triangles can be formed, such as the <i>size 2</i> triangle in the above sketch. One-hundred and four triangles of either different shape or size or orientation or location can now be observed in that <i>size 2</i> triangle.</p>
<p>It can be observed that the <i>size 2</i> triangle contains 4 <i>size 1</i> triangle building blocks. A <i>size 3</i> triangle would contain 9 <i>size 1</i> triangle building blocks and a <i>size n</i> triangle would thus contain <i>n<sup>2</sup> size 1</i> triangle building blocks.</p>
<p>If we denote T(<var>n</var>) as the number of triangles present in a triangle of <i>size <var>n</var></i>, then</p>
<p class="margin_left">T(1) = 16<br />
T(2) = 104</p>
<p>Find T(36).</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2545-efa2ebee0246
begin
    submit_answer(nothing; prob_num=163)
end

# ╔═╡ 1abd6e90-84a3-11eb-0f50-f9d526c098a4
html"""
<h2>Problem 164: Numbers for which no three consecutive digits have a sum greater than a given value</h2>
<p>How many 20 digit numbers <var>n</var> (without any leading zero) exist such that no three consecutive digits of <var>n</var> have a sum greater than 9?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-0acd-e7dd08ff1e09
begin
    submit_answer(nothing; prob_num=164)
end

# ╔═╡ 1abd6e90-84a3-11eb-0cf5-85791343143f
html"""
<h2>Problem 165: Intersections</h2>
<p>A segment is uniquely defined by its two endpoints.<br /> By considering two line segments in plane geometry there are three possibilities:<br /> 
the segments have zero points, one point, or infinitely many points in common.</p>
<p>Moreover when two segments have exactly one point in common it might be the case that that common point is an endpoint of either one of the segments or of both. If a common point of two segments is not an endpoint of either of the segments it is an interior point of both segments.<br />
We will call a common point T of two segments L<sub>1</sub> and L<sub>2</sub> a true intersection point of L<sub>1</sub> and L<sub>2</sub>  if T is the only common point of L<sub>1</sub> and L<sub>2</sub>  and T is an interior point of both segments.
</p>
<p>Consider the three segments L<sub>1</sub>, L<sub>2</sub>, and L<sub>3</sub>:</p>
<p class="margin_left">L<sub>1</sub>: (27, 44) to (12, 32)<br />
L<sub>2</sub>: (46, 53) to (17, 62)<br />
L<sub>3</sub>: (46, 70) to (22, 40)</p>
<p>It can be verified that line segments L<sub>2</sub> and L<sub>3</sub> have a true intersection point. We note that as the one of the end points of L<sub>3</sub>: (22,40) lies on L<sub>1</sub> this is not considered to be a true point of intersection. L<sub>1</sub> and L<sub>2</sub> have no common point. So among the three line segments, we find one true intersection point.</p>
<p>Now let us do the same for 5000 line segments. To this end, we generate 20000 numbers using the so-called "Blum Blum Shub" pseudo-random number generator.</p>
<p class="margin_left">s<sub>0</sub> = 290797<br /><br />
s<sub>n+1</sub> = s<sub>n</sub>×s<sub>n</sub> (modulo 50515093)<br /><br />
t<sub>n</sub> = s<sub>n</sub> (modulo 500)</p>
<p>To create each line segment, we use four consecutive numbers t<sub>n</sub>. That is, the first line segment is given by:</p>
<p>(t<sub>1</sub>, t<sub>2</sub>) to (t<sub>3</sub>, t<sub>4</sub>)</p>
<p>The first four numbers computed according to the above generator should be: 27, 144, 12 and 232. The first segment would thus be (27,144) to (12,232).</p>
<p>How many distinct true intersection points are found among the 5000 line segments?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-3b44-d988b72d2561
begin
    submit_answer(nothing; prob_num=165)
end

# ╔═╡ 1abd6e90-84a3-11eb-285c-775af4a6c95c
html"""
<h2>Problem 166: Criss Cross</h2>
<p>A 4x4 grid is filled with digits d, 0 ≤ d ≤ 9.</p>

<p>It can be seen that in the grid</p>

<p class="center">
6 3 3 0<br />
5 0 4 3<br />
0 7 1 4<br />
1 2 4 5</p>

<p>the sum of each row and each column has the value 12. Moreover the sum of each diagonal is also 12.</p>

<p>In how many ways can you fill a 4x4 grid with the digits d, 0 ≤ d ≤ 9 so that each row, each column, and both diagonals have the same sum?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-0517-ad91975d34af
begin
    submit_answer(nothing; prob_num=166)
end

# ╔═╡ 1abd6e90-84a3-11eb-17b1-4b5d2b9c4bcf
html"""
<h2>Problem 167: Investigating Ulam sequences</h2>
<p>For two positive integers a and b, the Ulam sequence U(a,b) is defined by U(a,b)<sub>1</sub> = a, U(a,b)<sub>2</sub> = b and for k &gt; 2,
U(a,b)<sub>k</sub> is the smallest integer greater than U(a,b)<sub>(k-1)</sub> which can be written in exactly one way as the sum of two distinct previous members of U(a,b).</p>
<p>For example, the sequence U(1,2) begins with<br />
1, 2, 3 = 1 + 2, 4 = 1 + 3, 6 = 2 + 4, 8 = 2 + 6, 11 = 3 + 8;<br />
5 does not belong to it because 5 = 1 + 4 = 2 + 3 has two representations as the sum of two previous members, likewise 7 = 1 + 6 = 3 + 4.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> U(2,2<var>n</var>+1)<sub><var>k</var></sub> for 2 ≤ <var>n</var> ≤10, where <var>k</var> = 10<sup>11</sup>.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-0003-2f018a6ae5af
begin
    submit_answer(nothing; prob_num=167)
end

# ╔═╡ 1abd6e90-84a3-11eb-11b8-65b1351110b3
html"""
<h2>Problem 168: Number Rotations</h2>
<p>Consider the number 142857. We can right-rotate this number by moving the last digit (7) to the front of it, giving us 714285.<br />
It can be verified that 714285=5×142857.<br />
This demonstrates an unusual property of 142857: it is a divisor of its right-rotation.</p>
<p>Find the last 5 digits of the sum of all integers <var>n</var>, 10 &lt; <var>n</var> &lt; 10<sup>100</sup>, that have this property.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-17f4-550d2e161eef
begin
    submit_answer(nothing; prob_num=168)
end

# ╔═╡ 1abd6e90-84a3-11eb-147a-a14179119b16
html"""
<h2>Problem 169: Exploring the number of different ways a number can be expressed as a sum of powers of 2</h2>
<p>Define f(0)=1 and f(<var>n</var>) to be the number of different ways <var>n</var> can be expressed as a sum of integer powers of 2 using each power no more than twice.</p>
<p>For example, f(10)=5 since there are five different ways to express 10:</p>
<p class="margin_left">1 + 1 + 8<br />
1 + 1 + 4 + 4<br />1 + 1 + 2 + 2 + 4<br />
2 + 4 + 4<br />
2 + 8</p>
<p>What is f(10<sup>25</sup>)?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-2c32-d3464cb9c515
begin
    submit_answer(nothing; prob_num=169)
end

# ╔═╡ 1abd6e90-84a3-11eb-0633-412abe0c39d9
html"""
<h2>Problem 170: Find the largest 0 to 9 pandigital that can be formed by concatenating products</h2>
<p>Take the number 6 and multiply it by each of 1273 and 9854:</p>

<p class="margin_left">6 × 1273 =  7638<br />
6 × 9854 = 59124</p>

<p>By concatenating these products we get the 1 to 9 pandigital 763859124. We will call 763859124 the "concatenated product of 6 and (1273,9854)". Notice too, that the concatenation of the input numbers, 612739854, is also 1 to 9 pandigital.</p>

<p>The same can be done for 0 to 9 pandigital numbers.</p>

<p>What is the largest 0 to 9 pandigital 10-digit concatenated product of an integer with two or more other integers, such that the concatenation of the input numbers is also a 0 to 9 pandigital 10-digit number?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-33a3-853023e1efce
begin
    submit_answer(nothing; prob_num=170)
end

# ╔═╡ 1abd6e90-84a3-11eb-1a10-8bd60f3e4f0f
html"""
<h2>Problem 171: Finding numbers for which the sum of the squares of the digits is a square</h2>
<p>For a positive integer <var>n</var>, let f(<var>n</var>) be the sum of the squares of the digits (in base 10) of <var>n</var>, e.g.</p>
<p class="margin_left">f(3) = 3<sup>2</sup> = 9,<br />
f(25) = 2<sup>2</sup> + 5<sup>2</sup> = 4 + 25 = 29,<br />
f(442) = 4<sup>2</sup> + 4<sup>2</sup> + 2<sup>2</sup> = 16 + 16 + 4 = 36</p>
<p>Find the last nine digits of the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 10<sup>20</sup>, such that f(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-1868-f3f2e1f9b92a
begin
    submit_answer(nothing; prob_num=171)
end

# ╔═╡ 1abd6e90-84a3-11eb-1b6d-4f57616a03e3
html"""
<h2>Problem 172: Investigating numbers with few repeated digits</h2>
<p>How many 18-digit numbers <var>n</var> (without leading zeros) are there such that no digit occurs more than three times in <var>n</var>?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-117e-b3881f3a5021
begin
    submit_answer(nothing; prob_num=172)
end

# ╔═╡ 1abd6e90-84a3-11eb-0098-afb9c84bf4af
html"""
<h2>Problem 173: Using up to one million tiles how many different "hollow" square laminae can be formed?</h2>
<p>We shall define a square lamina to be a square outline with a square "hole" so that the shape possesses vertical and horizontal symmetry. For example, using exactly thirty-two square tiles we can form two different square laminae:</p>
<div class="center">
<img src="project/images/p173_square_laminas.gif" alt="" /></div>
<p>With one-hundred tiles, and not necessarily using all of the tiles at one time, it is possible to form forty-one different square laminae.</p>
<p>Using up to one million tiles how many different square laminae can be formed?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-02da-a36c3d662c83
begin
    submit_answer(nothing; prob_num=173)
end

# ╔═╡ 1abd6e90-84a3-11eb-25af-334c06cec9b8
html"""
<h2>Problem 174: Counting the number of "hollow" square laminae that can form one, two, three, ... distinct arrangements</h2>
<p>We shall define a square lamina to be a square outline with a square "hole" so that the shape possesses vertical and horizontal symmetry.</p>
<p>Given eight tiles it is possible to form a lamina in only one way: 3x3 square with a 1x1 hole in the middle. However, using thirty-two tiles it is possible to form two distinct laminae.</p>
<div class="center">
<img src="project/images/p173_square_laminas.gif" alt="" /></div>
<p>If <var>t</var> represents the number of tiles used, we shall say that <var>t</var> = 8 is type L(1) and <var>t</var> = 32 is type L(2).</p>
<p>Let N(<var>n</var>) be the number of <var>t</var> ≤ 1000000 such that <var>t</var> is type L(<var>n</var>); for example, N(15) = 832.</p>
<p>What is <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> N(<var>n</var>) for 1 ≤ <var>n</var> ≤ 10?</p>
"""

# ╔═╡ 1abd6e90-84a3-11eb-12eb-612ee0e22415
begin
    submit_answer(nothing; prob_num=174)
end

# ╔═╡ 1abd6e90-84a3-11eb-284c-83f251b0384a
html"""
<h2>Problem 175: Fractions involving the number of different ways a number can be expressed as a sum of powers of 2</h2>
Define f(0)=1 and f(<var>n</var>) to be the number of ways to write <var>n</var> as a sum of powers of 2 where no power occurs more than twice. <br /><br />

For example, f(10)=5 since there are five different ways to express 10:<br />10 = 8+2 = 8+1+1 = 4+4+2 = 4+2+2+1+1 = 4+4+1+1<br /><br />

It can be shown that for every fraction <var>p/q</var> (<var>p</var>&gt;0, <var>q</var>&gt;0) there exists at least one integer <var>n</var> such that<br /> f(<var>n</var>)/f(<var>n</var>-1)=<var>p/q</var>.<br /><br />
For instance, the smallest <var>n</var> for which f(<var>n</var>)/f(<var>n</var>-1)=13/17 is 241.<br />
The binary expansion of 241 is 11110001.<br />
Reading this binary number from the most significant bit to the least significant bit there are 4 one's, 3 zeroes and 1 one. We shall call the string 4,3,1 the <span style="font-style:italic;">Shortened Binary Expansion</span> of 241.<br /><br />
Find the Shortened Binary Expansion of the smallest <var>n</var> for which<br /> f(<var>n</var>)/f(<var>n</var>-1)=123456789/987654321.<br /><br />
Give your answer as comma separated integers, without any whitespaces.
"""

# ╔═╡ 1abd6e90-84a3-11eb-308a-bd46fe390d2b
begin
    submit_answer(nothing; prob_num=175)
end

# ╔═╡ Cell order:
# ╠═1abd6e90-84a3-11eb-179c-315a3fbf8ef1
# ╟─1abd6e90-84a3-11eb-1404-b18056fc4043
# ╠═1abd6e90-84a3-11eb-06a1-5fbc8f9a4970
# ╟─1abd6e90-84a3-11eb-03c7-6360f767bae6
# ╠═1abd6e90-84a3-11eb-10fe-510128434a75
# ╟─1abd6e90-84a3-11eb-2443-75b7b398dee3
# ╠═1abd6e90-84a3-11eb-330e-8321081160ab
# ╟─1abd6e90-84a3-11eb-1ef1-e137d9d31214
# ╠═1abd6e90-84a3-11eb-26f5-c37ef41b3fb6
# ╟─1abd6e90-84a3-11eb-01f3-718ff20b5cc9
# ╠═1abd6e90-84a3-11eb-3091-fb25ffb82eaa
# ╟─1abd6e90-84a3-11eb-04f1-91b399c06a20
# ╠═1abd6e90-84a3-11eb-2692-f3240a6f8f56
# ╟─1abd6e90-84a3-11eb-2203-4d286b5079dc
# ╠═1abd6e90-84a3-11eb-3e52-ab196dfd5a6d
# ╟─1abd6e90-84a3-11eb-0b58-43ce86037545
# ╠═1abd6e90-84a3-11eb-2a0c-eb917c8cf7bc
# ╟─1abd6e90-84a3-11eb-325b-c7baed3e4bbb
# ╠═1abd6e90-84a3-11eb-2489-c9f91bd2fe6b
# ╟─1abd6e90-84a3-11eb-3307-d3387ee66b99
# ╠═1abd6e90-84a3-11eb-1b60-557b61db98a6
# ╟─1abd6e90-84a3-11eb-3549-9915d0bfebe5
# ╠═1abd6e90-84a3-11eb-3bd7-a7de704d4b1f
# ╟─1abd6e90-84a3-11eb-23a7-731f761b60f7
# ╠═1abd6e90-84a3-11eb-32d6-7dfa368d8d24
# ╟─1abd6e90-84a3-11eb-2ae8-811b46138907
# ╠═1abd6e90-84a3-11eb-2545-efa2ebee0246
# ╟─1abd6e90-84a3-11eb-0f50-f9d526c098a4
# ╠═1abd6e90-84a3-11eb-0acd-e7dd08ff1e09
# ╟─1abd6e90-84a3-11eb-0cf5-85791343143f
# ╠═1abd6e90-84a3-11eb-3b44-d988b72d2561
# ╟─1abd6e90-84a3-11eb-285c-775af4a6c95c
# ╠═1abd6e90-84a3-11eb-0517-ad91975d34af
# ╟─1abd6e90-84a3-11eb-17b1-4b5d2b9c4bcf
# ╠═1abd6e90-84a3-11eb-0003-2f018a6ae5af
# ╟─1abd6e90-84a3-11eb-11b8-65b1351110b3
# ╠═1abd6e90-84a3-11eb-17f4-550d2e161eef
# ╟─1abd6e90-84a3-11eb-147a-a14179119b16
# ╠═1abd6e90-84a3-11eb-2c32-d3464cb9c515
# ╟─1abd6e90-84a3-11eb-0633-412abe0c39d9
# ╠═1abd6e90-84a3-11eb-33a3-853023e1efce
# ╟─1abd6e90-84a3-11eb-1a10-8bd60f3e4f0f
# ╠═1abd6e90-84a3-11eb-1868-f3f2e1f9b92a
# ╟─1abd6e90-84a3-11eb-1b6d-4f57616a03e3
# ╠═1abd6e90-84a3-11eb-117e-b3881f3a5021
# ╟─1abd6e90-84a3-11eb-0098-afb9c84bf4af
# ╠═1abd6e90-84a3-11eb-02da-a36c3d662c83
# ╟─1abd6e90-84a3-11eb-25af-334c06cec9b8
# ╠═1abd6e90-84a3-11eb-12eb-612ee0e22415
# ╟─1abd6e90-84a3-11eb-284c-83f251b0384a
# ╠═1abd6e90-84a3-11eb-308a-bd46fe390d2b