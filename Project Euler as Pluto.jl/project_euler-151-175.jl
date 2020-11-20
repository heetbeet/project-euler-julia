### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4588d062-2b34-11eb-2e36-db911f413707
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4588d062-2b34-11eb-31e3-cfd7893a7384
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

# ╔═╡ 4588d062-2b34-11eb-1726-93b2ba0882eb
begin
    submit_answer(nothing; prob_num=157)
end

# ╔═╡ 4588d062-2b34-11eb-2147-531fc82e3cc6
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

# ╔═╡ 4588d062-2b34-11eb-316f-8d2ad4ea684e
begin
    submit_answer(nothing; prob_num=158)
end

# ╔═╡ 4588d062-2b34-11eb-1558-6532eefe7010
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

# ╔═╡ 4588d062-2b34-11eb-2e32-73d4dddfc888
begin
    submit_answer(nothing; prob_num=159)
end

# ╔═╡ 4588d062-2b34-11eb-0614-3702855082c4
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

# ╔═╡ 4588d062-2b34-11eb-0cf0-6f5c66fda5ca
begin
    submit_answer(nothing; prob_num=160)
end

# ╔═╡ 4588d062-2b34-11eb-20aa-3ff4c30a102e
html"""
<h2>Problem 155: Counting Capacitor Circuits</h2>
<p>An electric circuit uses exclusively identical capacitors of the same value C.
<br />
The capacitors can be connected in series or in parallel to form sub-units, which can then be connected in series or in parallel with other capacitors or other sub-units to form larger sub-units, and so on up to a final circuit.</p>
<p>Using this simple procedure and up to <var>n</var> identical capacitors, we can make circuits having a range of different total capacitances. For example, using up to <var>n</var>=3 capacitors of 60 <img src="project/images/p155_capsmu.gif" width="12" height="21" alt="" style="vertical-align:middle;" />F each, we can obtain the following 7 distinct total capacitance values: </p>
<div class="center"><img src="project/images/p155_capacitors1.gif" class="dark_img" alt="" /></div>
<p>If we denote by <var>D</var>(<var>n</var>) the number of distinct total capacitance values we can obtain when using up to <var>n</var> equal-valued capacitors and the simple procedure described above, we have: <var>D</var>(1)=1, <var>D</var>(2)=3, <var>D</var>(3)=7 ...</p>
<p>Find <var>D</var>(18).</p>
<p><i>Reminder :</i> When connecting capacitors C<sub>1</sub>, C<sub>2</sub> etc in parallel, the total capacitance is C<sub>T</sub> = C<sub>1</sub> + C<sub>2</sub> +...,
<br />
whereas when connecting them in series, the overall capacitance is given by: $\dfrac{1}{C_T} = \dfrac{1}{C_1} + \dfrac{1}{C_2} + ...$</p>
"""

# ╔═╡ 4588d062-2b34-11eb-1f23-c12b175e105d
begin
    submit_answer(nothing; prob_num=161)
end

# ╔═╡ 4588d062-2b34-11eb-1e07-293129af0422
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

# ╔═╡ 4588d062-2b34-11eb-075e-e9d19fc7fc0c
begin
    submit_answer(nothing; prob_num=162)
end

# ╔═╡ 4588d062-2b34-11eb-00b6-13b28de1fa1e
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

# ╔═╡ 4588d062-2b34-11eb-11ea-ddb1eeae0770
begin
    submit_answer(nothing; prob_num=163)
end

# ╔═╡ 4588d062-2b34-11eb-21bc-45dd966d8e22
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

# ╔═╡ 4588d062-2b34-11eb-2376-6b79475cd76b
begin
    submit_answer(nothing; prob_num=164)
end

# ╔═╡ 4588f770-2b34-11eb-1a6a-0973636b838d
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
<table align="center" border="1" cellpadding="2" cellspacing="0"><tr><th>Factorisation</th><th>Digital Root Sum</th></tr><tr><td><div class="margin_left">2x2x2x3</div></td>
<td><div class="center">9</div></td></tr><tr><td><div class="margin_left">2x3x4</div></td>
<td><div class="center">9</div></td></tr><tr><td><div class="margin_left">2x2x6</div></td>
<td><div class="center">10</div></td></tr><tr><td><div class="margin_left">4x6</div></td>
<td><div class="center">10</div></td></tr><tr><td><div class="margin_left">3x8</div></td>
<td><div class="center">11</div></td></tr><tr><td><div class="margin_left">2x12</div></td>
<td><div class="center">5</div></td></tr><tr><td><div class="margin_left">24</div></td>
<td><div class="center">6</div></td></tr></table><p>The maximum Digital Root Sum  of 24 is 11.<br />
The function mdrs(<var>n</var>) gives the maximum Digital Root Sum of <var>n</var>. So  mdrs(24)=11.<br />
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> mdrs(<var>n</var>) for 1 &lt; <var>n</var> &lt; 1,000,000.</p>
"""

# ╔═╡ 4588f770-2b34-11eb-0c89-fb491a65926b
begin
    submit_answer(nothing; prob_num=165)
end

# ╔═╡ 4588f770-2b34-11eb-2820-153768066e94
html"""
<h2>Problem 160: Factorial trailing digits</h2>
<p>For any N, let f(N) be the last five digits before the trailing zeroes in N!.<br />
For example,</p>
<p class="margin_left">9! = 362880 so f(9)=36288<br />
10! = 3628800 so f(10)=36288<br />
20! = 2432902008176640000 so f(20)=17664</p>
<p>Find f(1,000,000,000,000)</p>
"""

# ╔═╡ 4588f770-2b34-11eb-088b-4d1e34247696
begin
    submit_answer(nothing; prob_num=166)
end

# ╔═╡ 4588f770-2b34-11eb-2965-cf0fc1c46aa4
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

# ╔═╡ 4588f770-2b34-11eb-000b-ebdbb65d43db
begin
    submit_answer(nothing; prob_num=167)
end

# ╔═╡ 4588f770-2b34-11eb-2824-8d03ae680423
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

# ╔═╡ 4588f770-2b34-11eb-14be-3f643cda1c1d
begin
    submit_answer(nothing; prob_num=168)
end

# ╔═╡ 4588f770-2b34-11eb-1ddf-c78704c02de5
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

# ╔═╡ 4588f770-2b34-11eb-3d31-c3c68dad0739
begin
    submit_answer(nothing; prob_num=169)
end

# ╔═╡ 4588f770-2b34-11eb-28ec-a39a47cba00b
html"""
<h2>Problem 164: Numbers for which no three consecutive digits have a sum greater than a given value</h2>
<p>How many 20 digit numbers <var>n</var> (without any leading zero) exist such that no three consecutive digits of <var>n</var> have a sum greater than 9?</p>
"""

# ╔═╡ 4588f770-2b34-11eb-3fd7-8dcea98121d0
begin
    submit_answer(nothing; prob_num=170)
end

# ╔═╡ 4588f770-2b34-11eb-2805-19dfbc845310
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

# ╔═╡ 4588f770-2b34-11eb-1306-673f82296b32
begin
    submit_answer(nothing; prob_num=171)
end

# ╔═╡ 4588f770-2b34-11eb-1104-3d8595c9e62f
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

# ╔═╡ 4588f770-2b34-11eb-3020-57e7da902ad4
begin
    submit_answer(nothing; prob_num=172)
end

# ╔═╡ 4588f770-2b34-11eb-2135-dfbb0ba8007f
html"""
<h2>Problem 167: Investigating Ulam sequences</h2>
<p>For two positive integers a and b, the Ulam sequence U(a,b) is defined by U(a,b)<sub>1</sub> = a, U(a,b)<sub>2</sub> = b and for k &gt; 2,
U(a,b)<sub>k</sub> is the smallest integer greater than U(a,b)<sub>(k-1)</sub> which can be written in exactly one way as the sum of two distinct previous members of U(a,b).</p>
<p>For example, the sequence U(1,2) begins with<br />
1, 2, 3 = 1 + 2, 4 = 1 + 3, 6 = 2 + 4, 8 = 2 + 6, 11 = 3 + 8;<br />
5 does not belong to it because 5 = 1 + 4 = 2 + 3 has two representations as the sum of two previous members, likewise 7 = 1 + 6 = 3 + 4.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> U(2,2<var>n</var>+1)<sub><var>k</var></sub> for 2 ≤ <var>n</var> ≤10, where <var>k</var> = 10<sup>11</sup>.</p>
"""

# ╔═╡ 4588f770-2b34-11eb-1cda-0188c464dfeb
begin
    submit_answer(nothing; prob_num=173)
end

# ╔═╡ 4588f770-2b34-11eb-17c3-5bc32d7c7974
html"""
<h2>Problem 168: Number Rotations</h2>
<p>Consider the number 142857. We can right-rotate this number by moving the last digit (7) to the front of it, giving us 714285.<br />
It can be verified that 714285=5×142857.<br />
This demonstrates an unusual property of 142857: it is a divisor of its right-rotation.</p>
<p>Find the last 5 digits of the sum of all integers <var>n</var>, 10 &lt; <var>n</var> &lt; 10<sup>100</sup>, that have this property.</p>
"""

# ╔═╡ 4588f770-2b34-11eb-3efd-9f586282e1d0
begin
    submit_answer(nothing; prob_num=174)
end

# ╔═╡ 4588f770-2b34-11eb-103c-cd0441611041
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

# ╔═╡ 4588f770-2b34-11eb-0c57-6f1dcdad0c72
begin
    submit_answer(nothing; prob_num=175)
end

# ╔═╡ 4588f770-2b34-11eb-0d8f-5f15661cd6bb
html"""
<h2>Problem 170: Find the largest 0 to 9 pandigital that can be formed by concatenating products</h2>
<p>Take the number 6 and multiply it by each of 1273 and 9854:</p>

<p class="margin_left">6 × 1273 =  7638<br />
6 × 9854 = 59124</p>

<p>By concatenating these products we get the 1 to 9 pandigital 763859124. We will call 763859124 the "concatenated product of 6 and (1273,9854)". Notice too, that the concatenation of the input numbers, 612739854, is also 1 to 9 pandigital.</p>

<p>The same can be done for 0 to 9 pandigital numbers.</p>

<p>What is the largest 0 to 9 pandigital 10-digit concatenated product of an integer with two or more other integers, such that the concatenation of the input numbers is also a 0 to 9 pandigital 10-digit number?</p>
"""

# ╔═╡ 4588f770-2b34-11eb-153b-654d6adc1964
begin
    submit_answer(nothing; prob_num=176)
end

# ╔═╡ 4588f770-2b34-11eb-0f04-cf4706e870b7
html"""
<h2>Problem 171: Finding numbers for which the sum of the squares of the digits is a square</h2>
<p>For a positive integer <var>n</var>, let f(<var>n</var>) be the sum of the squares of the digits (in base 10) of <var>n</var>, e.g.</p>
<p class="margin_left">f(3) = 3<sup>2</sup> = 9,<br />
f(25) = 2<sup>2</sup> + 5<sup>2</sup> = 4 + 25 = 29,<br />
f(442) = 4<sup>2</sup> + 4<sup>2</sup> + 2<sup>2</sup> = 16 + 16 + 4 = 36</p>
<p>Find the last nine digits of the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 10<sup>20</sup>, such that f(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 4588f770-2b34-11eb-1595-5dffb3eb00bf
begin
    submit_answer(nothing; prob_num=177)
end

# ╔═╡ 4588f770-2b34-11eb-1b6e-07beec380cb1
html"""
<h2>Problem 172: Investigating numbers with few repeated digits</h2>
<p>How many 18-digit numbers <var>n</var> (without leading zeros) are there such that no digit occurs more than three times in <var>n</var>?</p>
"""

# ╔═╡ 4588f770-2b34-11eb-2f76-ff3e9a1834bf
begin
    submit_answer(nothing; prob_num=178)
end

# ╔═╡ 4588f770-2b34-11eb-0dae-fbcc9922a7e6
html"""
<h2>Problem 173: Using up to one million tiles how many different "hollow" square laminae can be formed?</h2>
<p>We shall define a square lamina to be a square outline with a square "hole" so that the shape possesses vertical and horizontal symmetry. For example, using exactly thirty-two square tiles we can form two different square laminae:</p>
<div class="center">
<img src="project/images/p173_square_laminas.gif" alt="" /></div>
<p>With one-hundred tiles, and not necessarily using all of the tiles at one time, it is possible to form forty-one different square laminae.</p>
<p>Using up to one million tiles how many different square laminae can be formed?</p>
"""

# ╔═╡ 4588f770-2b34-11eb-357f-7dd9fb37ce3e
begin
    submit_answer(nothing; prob_num=179)
end

# ╔═╡ 4588f770-2b34-11eb-1c97-d327ae637b1a
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

# ╔═╡ 4588f770-2b34-11eb-3a07-4dad7cc05839
begin
    submit_answer(nothing; prob_num=180)
end

# ╔═╡ 45891e80-2b34-11eb-0271-dd82efa40220
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

# ╔═╡ 45891e80-2b34-11eb-1c49-9dd1cc9b87af
begin
    submit_answer(nothing; prob_num=181)
end

# ╔═╡ 45891e80-2b34-11eb-135a-a94b0817553c
html"""
<h2>Problem 176: Right-angled triangles that share a cathetus</h2>
<p>The four right-angled triangles with sides (9,12,15), (12,16,20), (5,12,13) and (12,35,37) all have one of the shorter sides (catheti) equal to 12. It can be shown that no other integer sided right-angled triangle exists with one of the catheti equal to 12.</p>
<p>Find the smallest integer that can be the length of a cathetus of exactly 47547 different integer sided right-angled triangles.</p>
"""

# ╔═╡ 45891e80-2b34-11eb-074b-7ba799eddfbb
begin
    submit_answer(nothing; prob_num=182)
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