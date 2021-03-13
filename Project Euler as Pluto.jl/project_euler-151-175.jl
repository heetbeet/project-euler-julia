### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44237680-8435-11eb-135b-19327a245789
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44237680-8435-11eb-3bcd-afb42e469ae3
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

# ╔═╡ 44237680-8435-11eb-0f2b-f12db7136caf
begin
    submit_answer(nothing; prob_num=151)
end

# ╔═╡ 44237680-8435-11eb-13f4-858eb6852fc9
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

# ╔═╡ 44237680-8435-11eb-1e80-51fca3d68a98
begin
    submit_answer(nothing; prob_num=152)
end

# ╔═╡ 44237680-8435-11eb-3e44-495ef5f74b0e
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

# ╔═╡ 44237680-8435-11eb-2848-bb1111e25363
begin
    submit_answer(nothing; prob_num=153)
end

# ╔═╡ 442487f0-8435-11eb-20b2-5727a3aa0023
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

# ╔═╡ 442487f0-8435-11eb-0e96-59bfb1990dba
begin
    submit_answer(nothing; prob_num=154)
end

# ╔═╡ 442487f0-8435-11eb-2f23-6b2d9596fd45
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

# ╔═╡ 442487f0-8435-11eb-15d3-2ba1ebf8ddac
begin
    submit_answer(nothing; prob_num=155)
end

# ╔═╡ 442487f0-8435-11eb-064c-fd2705b3107f
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

# ╔═╡ 442487f0-8435-11eb-39d2-8de8cb6757e2
begin
    submit_answer(nothing; prob_num=156)
end

# ╔═╡ 442487f0-8435-11eb-26d2-d39743799f85
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

# ╔═╡ 442487f0-8435-11eb-3e7a-3bbcded31a41
begin
    submit_answer(nothing; prob_num=157)
end

# ╔═╡ 442487f0-8435-11eb-2dc0-09a1dad5a77f
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

# ╔═╡ 442487f0-8435-11eb-1f56-e9b0dba1cf41
begin
    submit_answer(nothing; prob_num=158)
end

# ╔═╡ 442487f0-8435-11eb-3561-f9c16dead153
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

# ╔═╡ 442487f0-8435-11eb-0675-e98e0e1b5150
begin
    submit_answer(nothing; prob_num=159)
end

# ╔═╡ 442487f0-8435-11eb-0c8f-d526eca21eec
html"""
<h2>Problem 160: Factorial trailing digits</h2>
<p>For any N, let f(N) be the last five digits before the trailing zeroes in N!.<br />
For example,</p>
<p class="margin_left">9! = 362880 so f(9)=36288<br />
10! = 3628800 so f(10)=36288<br />
20! = 2432902008176640000 so f(20)=17664</p>
<p>Find f(1,000,000,000,000)</p>
"""

# ╔═╡ 442487f0-8435-11eb-2c08-f31eb883d147
begin
    submit_answer(nothing; prob_num=160)
end

# ╔═╡ 442487f0-8435-11eb-1f0a-75f4e1bc175b
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

# ╔═╡ 442487f0-8435-11eb-0bc4-c5db4ae9a010
begin
    submit_answer(nothing; prob_num=161)
end

# ╔═╡ 442487f0-8435-11eb-156d-e567ef033dc9
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

# ╔═╡ 442487f0-8435-11eb-2dd6-83e052ecdc6e
begin
    submit_answer(nothing; prob_num=162)
end

# ╔═╡ 442487f0-8435-11eb-3358-1ba0297cdde3
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

# ╔═╡ 442487f0-8435-11eb-26b5-07b263e19a35
begin
    submit_answer(nothing; prob_num=163)
end

# ╔═╡ 442487f0-8435-11eb-198c-4f3571827cf3
html"""
<h2>Problem 164: Numbers for which no three consecutive digits have a sum greater than a given value</h2>
<p>How many 20 digit numbers <var>n</var> (without any leading zero) exist such that no three consecutive digits of <var>n</var> have a sum greater than 9?</p>
"""

# ╔═╡ 442487f0-8435-11eb-023e-154d3913e6fd
begin
    submit_answer(nothing; prob_num=164)
end

# ╔═╡ 442487f0-8435-11eb-37e0-a3b4e1b6db38
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

# ╔═╡ 442487f0-8435-11eb-0860-97994c8f4bff
begin
    submit_answer(nothing; prob_num=165)
end

# ╔═╡ 442487f0-8435-11eb-11a4-153b49c99f3b
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

# ╔═╡ 442487f0-8435-11eb-2e5d-33530b49f906
begin
    submit_answer(nothing; prob_num=166)
end

# ╔═╡ 442487f0-8435-11eb-3699-0591d3e325c7
html"""
<h2>Problem 167: Investigating Ulam sequences</h2>
<p>For two positive integers a and b, the Ulam sequence U(a,b) is defined by U(a,b)<sub>1</sub> = a, U(a,b)<sub>2</sub> = b and for k &gt; 2,
U(a,b)<sub>k</sub> is the smallest integer greater than U(a,b)<sub>(k-1)</sub> which can be written in exactly one way as the sum of two distinct previous members of U(a,b).</p>
<p>For example, the sequence U(1,2) begins with<br />
1, 2, 3 = 1 + 2, 4 = 1 + 3, 6 = 2 + 4, 8 = 2 + 6, 11 = 3 + 8;<br />
5 does not belong to it because 5 = 1 + 4 = 2 + 3 has two representations as the sum of two previous members, likewise 7 = 1 + 6 = 3 + 4.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> U(2,2<var>n</var>+1)<sub><var>k</var></sub> for 2 ≤ <var>n</var> ≤10, where <var>k</var> = 10<sup>11</sup>.</p>
"""

# ╔═╡ 442487f0-8435-11eb-0aef-8d914e0b52cc
begin
    submit_answer(nothing; prob_num=167)
end

# ╔═╡ 442487f0-8435-11eb-0681-8dca8a272fe6
html"""
<h2>Problem 168: Number Rotations</h2>
<p>Consider the number 142857. We can right-rotate this number by moving the last digit (7) to the front of it, giving us 714285.<br />
It can be verified that 714285=5×142857.<br />
This demonstrates an unusual property of 142857: it is a divisor of its right-rotation.</p>
<p>Find the last 5 digits of the sum of all integers <var>n</var>, 10 &lt; <var>n</var> &lt; 10<sup>100</sup>, that have this property.</p>
"""

# ╔═╡ 442487f0-8435-11eb-23c0-8da908bcd7f4
begin
    submit_answer(nothing; prob_num=168)
end

# ╔═╡ 442487f0-8435-11eb-0601-a53676b64119
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

# ╔═╡ 442487f0-8435-11eb-2c1e-db16fa4d5bb5
begin
    submit_answer(nothing; prob_num=169)
end

# ╔═╡ 442487f0-8435-11eb-1bca-e119a24c410c
html"""
<h2>Problem 170: Find the largest 0 to 9 pandigital that can be formed by concatenating products</h2>
<p>Take the number 6 and multiply it by each of 1273 and 9854:</p>

<p class="margin_left">6 × 1273 =  7638<br />
6 × 9854 = 59124</p>

<p>By concatenating these products we get the 1 to 9 pandigital 763859124. We will call 763859124 the "concatenated product of 6 and (1273,9854)". Notice too, that the concatenation of the input numbers, 612739854, is also 1 to 9 pandigital.</p>

<p>The same can be done for 0 to 9 pandigital numbers.</p>

<p>What is the largest 0 to 9 pandigital 10-digit concatenated product of an integer with two or more other integers, such that the concatenation of the input numbers is also a 0 to 9 pandigital 10-digit number?</p>
"""

# ╔═╡ 442487f0-8435-11eb-061d-6566ec0a6f45
begin
    submit_answer(nothing; prob_num=170)
end

# ╔═╡ 442487f0-8435-11eb-14a6-9dae49adaa95
html"""
<h2>Problem 171: Finding numbers for which the sum of the squares of the digits is a square</h2>
<p>For a positive integer <var>n</var>, let f(<var>n</var>) be the sum of the squares of the digits (in base 10) of <var>n</var>, e.g.</p>
<p class="margin_left">f(3) = 3<sup>2</sup> = 9,<br />
f(25) = 2<sup>2</sup> + 5<sup>2</sup> = 4 + 25 = 29,<br />
f(442) = 4<sup>2</sup> + 4<sup>2</sup> + 2<sup>2</sup> = 16 + 16 + 4 = 36</p>
<p>Find the last nine digits of the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 10<sup>20</sup>, such that f(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 442487f0-8435-11eb-268d-29357b327335
begin
    submit_answer(nothing; prob_num=171)
end

# ╔═╡ 442487f0-8435-11eb-0c71-a1f418d12248
html"""
<h2>Problem 172: Investigating numbers with few repeated digits</h2>
<p>How many 18-digit numbers <var>n</var> (without leading zeros) are there such that no digit occurs more than three times in <var>n</var>?</p>
"""

# ╔═╡ 442487f0-8435-11eb-3df5-3f0c97e2d6c5
begin
    submit_answer(nothing; prob_num=172)
end

# ╔═╡ 442487f0-8435-11eb-0ad9-e372967a97ff
html"""
<h2>Problem 173: Using up to one million tiles how many different "hollow" square laminae can be formed?</h2>
<p>We shall define a square lamina to be a square outline with a square "hole" so that the shape possesses vertical and horizontal symmetry. For example, using exactly thirty-two square tiles we can form two different square laminae:</p>
<div class="center">
<img src="project/images/p173_square_laminas.gif" alt="" /></div>
<p>With one-hundred tiles, and not necessarily using all of the tiles at one time, it is possible to form forty-one different square laminae.</p>
<p>Using up to one million tiles how many different square laminae can be formed?</p>
"""

# ╔═╡ 442487f0-8435-11eb-3617-2b065bd5b48a
begin
    submit_answer(nothing; prob_num=173)
end

# ╔═╡ 442487f0-8435-11eb-0edc-9f1d7b075086
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

# ╔═╡ 442487f0-8435-11eb-108c-45c64002788c
begin
    submit_answer(nothing; prob_num=174)
end

# ╔═╡ 442487f0-8435-11eb-07ba-f72fda7f1a17
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

# ╔═╡ 442487f0-8435-11eb-3e3b-15ee0d19b297
begin
    submit_answer(nothing; prob_num=175)
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