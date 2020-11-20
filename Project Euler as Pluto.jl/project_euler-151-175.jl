### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22dd8d70-2b5d-11eb-30ce-abe36c910402
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22dd8d70-2b5d-11eb-0f31-49efe5189204
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

# ╔═╡ 22dd8d70-2b5d-11eb-36e4-019b48eb74dc
begin
    submit_answer(nothing; prob_num=151)
end

# ╔═╡ 22dd8d70-2b5d-11eb-15ae-9fda689f028a
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

# ╔═╡ 22dd8d70-2b5d-11eb-0dfb-099111b6e1b3
begin
    submit_answer(nothing; prob_num=152)
end

# ╔═╡ 22dd8d70-2b5d-11eb-3030-7d566c1d797e
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

# ╔═╡ 22dd8d70-2b5d-11eb-0ea4-8dca50acb401
begin
    submit_answer(nothing; prob_num=153)
end

# ╔═╡ 22dd8d70-2b5d-11eb-0e35-23ca6474cf7d
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

# ╔═╡ 22dd8d70-2b5d-11eb-3280-a73c54387b57
begin
    submit_answer(nothing; prob_num=154)
end

# ╔═╡ 22dd8d70-2b5d-11eb-2464-ed9537689590
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

# ╔═╡ 22dd8d70-2b5d-11eb-2943-ffd94cccc575
begin
    submit_answer(nothing; prob_num=155)
end

# ╔═╡ 22dd8d70-2b5d-11eb-080f-7dc3133ad27f
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

# ╔═╡ 22dd8d70-2b5d-11eb-1429-31bbbb7d6cc5
begin
    submit_answer(nothing; prob_num=156)
end

# ╔═╡ 22dd8d70-2b5d-11eb-098e-c91b8b3d5312
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

# ╔═╡ 22dd8d70-2b5d-11eb-280f-dbc00e4d7de8
begin
    submit_answer(nothing; prob_num=157)
end

# ╔═╡ 22dd8d70-2b5d-11eb-1d42-d383f63aa63f
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

# ╔═╡ 22dd8d70-2b5d-11eb-35a7-4f6e8928908c
begin
    submit_answer(nothing; prob_num=158)
end

# ╔═╡ 22ddb480-2b5d-11eb-05c5-77cfdef309c4
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

# ╔═╡ 22ddb480-2b5d-11eb-2112-d9bb1d1c1625
begin
    submit_answer(nothing; prob_num=159)
end

# ╔═╡ 22ddb480-2b5d-11eb-1d1c-73bf387370a3
html"""
<h2>Problem 160: Factorial trailing digits</h2>
<p>For any N, let f(N) be the last five digits before the trailing zeroes in N!.<br />
For example,</p>
<p class="margin_left">9! = 362880 so f(9)=36288<br />
10! = 3628800 so f(10)=36288<br />
20! = 2432902008176640000 so f(20)=17664</p>
<p>Find f(1,000,000,000,000)</p>
"""

# ╔═╡ 22ddb480-2b5d-11eb-3947-bb0ca2a1f03d
begin
    submit_answer(nothing; prob_num=160)
end

# ╔═╡ 22ddb480-2b5d-11eb-3b87-3d5a1b38560e
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

# ╔═╡ 22ddb480-2b5d-11eb-1262-5bf7ca3414cf
begin
    submit_answer(nothing; prob_num=161)
end

# ╔═╡ 22ddb480-2b5d-11eb-3535-7fde9361bab7
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

# ╔═╡ 22ddb480-2b5d-11eb-21ae-d108a7dc578d
begin
    submit_answer(nothing; prob_num=162)
end

# ╔═╡ 22ddb480-2b5d-11eb-1fe8-ad308462499c
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

# ╔═╡ 22ddb480-2b5d-11eb-0212-6d80024258f2
begin
    submit_answer(nothing; prob_num=163)
end

# ╔═╡ 22dddb90-2b5d-11eb-058f-6f845677e37f
html"""
<h2>Problem 164: Numbers for which no three consecutive digits have a sum greater than a given value</h2>
<p>How many 20 digit numbers <var>n</var> (without any leading zero) exist such that no three consecutive digits of <var>n</var> have a sum greater than 9?</p>
"""

# ╔═╡ 22dddb90-2b5d-11eb-3536-496c908adf90
begin
    submit_answer(nothing; prob_num=164)
end

# ╔═╡ 22dddb90-2b5d-11eb-3481-0f838562460f
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

# ╔═╡ 22dddb90-2b5d-11eb-3bfe-5d4097e11f99
begin
    submit_answer(nothing; prob_num=165)
end

# ╔═╡ 22dddb90-2b5d-11eb-10a5-e3553bd61029
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

# ╔═╡ 22dddb90-2b5d-11eb-2841-05e67cca846f
begin
    submit_answer(nothing; prob_num=166)
end

# ╔═╡ 22dddb90-2b5d-11eb-011d-d7df6eefef7e
html"""
<h2>Problem 167: Investigating Ulam sequences</h2>
<p>For two positive integers a and b, the Ulam sequence U(a,b) is defined by U(a,b)<sub>1</sub> = a, U(a,b)<sub>2</sub> = b and for k &gt; 2,
U(a,b)<sub>k</sub> is the smallest integer greater than U(a,b)<sub>(k-1)</sub> which can be written in exactly one way as the sum of two distinct previous members of U(a,b).</p>
<p>For example, the sequence U(1,2) begins with<br />
1, 2, 3 = 1 + 2, 4 = 1 + 3, 6 = 2 + 4, 8 = 2 + 6, 11 = 3 + 8;<br />
5 does not belong to it because 5 = 1 + 4 = 2 + 3 has two representations as the sum of two previous members, likewise 7 = 1 + 6 = 3 + 4.</p>
<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> U(2,2<var>n</var>+1)<sub><var>k</var></sub> for 2 ≤ <var>n</var> ≤10, where <var>k</var> = 10<sup>11</sup>.</p>
"""

# ╔═╡ 22dddb90-2b5d-11eb-3e7b-e761cb8814f3
begin
    submit_answer(nothing; prob_num=167)
end

# ╔═╡ 22dddb90-2b5d-11eb-36ac-81ff7582544e
html"""
<h2>Problem 168: Number Rotations</h2>
<p>Consider the number 142857. We can right-rotate this number by moving the last digit (7) to the front of it, giving us 714285.<br />
It can be verified that 714285=5×142857.<br />
This demonstrates an unusual property of 142857: it is a divisor of its right-rotation.</p>
<p>Find the last 5 digits of the sum of all integers <var>n</var>, 10 &lt; <var>n</var> &lt; 10<sup>100</sup>, that have this property.</p>
"""

# ╔═╡ 22dddb90-2b5d-11eb-19e7-5d14a377fdd6
begin
    submit_answer(nothing; prob_num=168)
end

# ╔═╡ 22dddb90-2b5d-11eb-3fb2-ed04fca6b68a
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

# ╔═╡ 22dddb90-2b5d-11eb-1bcb-f3e1fc9ff082
begin
    submit_answer(nothing; prob_num=169)
end

# ╔═╡ 22dddb90-2b5d-11eb-06a4-b58f3b5f9a78
html"""
<h2>Problem 170: Find the largest 0 to 9 pandigital that can be formed by concatenating products</h2>
<p>Take the number 6 and multiply it by each of 1273 and 9854:</p>

<p class="margin_left">6 × 1273 =  7638<br />
6 × 9854 = 59124</p>

<p>By concatenating these products we get the 1 to 9 pandigital 763859124. We will call 763859124 the "concatenated product of 6 and (1273,9854)". Notice too, that the concatenation of the input numbers, 612739854, is also 1 to 9 pandigital.</p>

<p>The same can be done for 0 to 9 pandigital numbers.</p>

<p>What is the largest 0 to 9 pandigital 10-digit concatenated product of an integer with two or more other integers, such that the concatenation of the input numbers is also a 0 to 9 pandigital 10-digit number?</p>
"""

# ╔═╡ 22dddb90-2b5d-11eb-2e46-d7297d25806c
begin
    submit_answer(nothing; prob_num=170)
end

# ╔═╡ 22dddb90-2b5d-11eb-181d-b176931a71ec
html"""
<h2>Problem 171: Finding numbers for which the sum of the squares of the digits is a square</h2>
<p>For a positive integer <var>n</var>, let f(<var>n</var>) be the sum of the squares of the digits (in base 10) of <var>n</var>, e.g.</p>
<p class="margin_left">f(3) = 3<sup>2</sup> = 9,<br />
f(25) = 2<sup>2</sup> + 5<sup>2</sup> = 4 + 25 = 29,<br />
f(442) = 4<sup>2</sup> + 4<sup>2</sup> + 2<sup>2</sup> = 16 + 16 + 4 = 36</p>
<p>Find the last nine digits of the sum of all <var>n</var>, 0 &lt; <var>n</var> &lt; 10<sup>20</sup>, such that f(<var>n</var>) is a perfect square.</p>
"""

# ╔═╡ 22dddb90-2b5d-11eb-0f42-b78a1e2e1cb9
begin
    submit_answer(nothing; prob_num=171)
end

# ╔═╡ 22de02a2-2b5d-11eb-1902-6f659fc2252a
html"""
<h2>Problem 172: Investigating numbers with few repeated digits</h2>
<p>How many 18-digit numbers <var>n</var> (without leading zeros) are there such that no digit occurs more than three times in <var>n</var>?</p>
"""

# ╔═╡ 22de02a2-2b5d-11eb-14a5-73c17eae0db6
begin
    submit_answer(nothing; prob_num=172)
end

# ╔═╡ 22de02a2-2b5d-11eb-2aec-25a1323bf505
html"""
<h2>Problem 173: Using up to one million tiles how many different "hollow" square laminae can be formed?</h2>
<p>We shall define a square lamina to be a square outline with a square "hole" so that the shape possesses vertical and horizontal symmetry. For example, using exactly thirty-two square tiles we can form two different square laminae:</p>
<div class="center">
<img src="project/images/p173_square_laminas.gif" alt="" /></div>
<p>With one-hundred tiles, and not necessarily using all of the tiles at one time, it is possible to form forty-one different square laminae.</p>
<p>Using up to one million tiles how many different square laminae can be formed?</p>
"""

# ╔═╡ 22de02a2-2b5d-11eb-0fef-9dc7906a8dcd
begin
    submit_answer(nothing; prob_num=173)
end

# ╔═╡ 22de02a2-2b5d-11eb-1fc3-bd420e708ee5
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

# ╔═╡ 22de02a2-2b5d-11eb-259f-a3bda9a06c17
begin
    submit_answer(nothing; prob_num=174)
end

# ╔═╡ 22de02a2-2b5d-11eb-08e2-a3aabeec274f
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

# ╔═╡ 22de02a2-2b5d-11eb-0eed-27b312234036
begin
    submit_answer(nothing; prob_num=175)
end

# ╔═╡ Cell order:
# ╠═22d63a70-2b5d-11eb-2e8b-6196c236bb71
# ╟─22d63a70-2b5d-11eb-1913-ab2b23661965
# ╠═22d63a70-2b5d-11eb-0198-5d9ac07245bf
# ╟─22d63a70-2b5d-11eb-2d5f-1ffbf1a3b055
# ╠═22d63a70-2b5d-11eb-3902-6bb8565913a8
# ╟─22d63a70-2b5d-11eb-3ec5-1fdc1c354ee6
# ╠═22d63a70-2b5d-11eb-2c9c-d5b39f9c1433
# ╟─22d63a70-2b5d-11eb-03d1-458e51340ac1
# ╠═22d63a70-2b5d-11eb-24f1-35a3c5a2eca3
# ╟─22d63a70-2b5d-11eb-37d4-4506a74fe1cd
# ╠═22d63a70-2b5d-11eb-3742-378d98971561
# ╟─22d63a70-2b5d-11eb-322f-870a60d45ebd
# ╠═22d63a70-2b5d-11eb-0de3-fde56aea3ece
# ╟─22d63a70-2b5d-11eb-14df-1592b95f5ec3
# ╠═22d63a70-2b5d-11eb-2600-93c4c715c39f
# ╟─22d63a70-2b5d-11eb-10bf-6b21e93c1e04
# ╠═22d63a70-2b5d-11eb-36dd-23b7e6296e0b
# ╟─22d63a70-2b5d-11eb-27d9-f3beecfbb997
# ╠═22d63a70-2b5d-11eb-1404-0f40d76c150b
# ╟─22d63a70-2b5d-11eb-1b96-a9e051b9d357
# ╠═22d63a70-2b5d-11eb-1655-c13d647bdddb
# ╟─22d63a70-2b5d-11eb-2170-21b6cb46ff99
# ╠═22d63a70-2b5d-11eb-2551-153c259280a1
# ╟─22d66180-2b5d-11eb-2a1e-071a3f4af3f1
# ╠═22d66180-2b5d-11eb-28f0-119daeb4e6a7
# ╟─22d66180-2b5d-11eb-364d-a988509f2cdf
# ╠═22d66180-2b5d-11eb-3bc9-071156392d00
# ╟─22d66180-2b5d-11eb-22b2-81ee1b00fc1c
# ╠═22d66180-2b5d-11eb-0899-23156623ac08
# ╟─22d66180-2b5d-11eb-3dc4-33a3df504ca7
# ╠═22d66180-2b5d-11eb-31da-8b0c39df7978
# ╟─22d66180-2b5d-11eb-3e4f-c3e0bb17306e
# ╠═22d66180-2b5d-11eb-33a6-352555a4aad9
# ╟─22d66180-2b5d-11eb-31f5-83848d79f423
# ╠═22d66180-2b5d-11eb-201f-f17a35a144d7
# ╟─22d66180-2b5d-11eb-3a1a-f3959830cc8e
# ╠═22d66180-2b5d-11eb-25ed-bdf6de2fccd2
# ╟─22d66180-2b5d-11eb-0a15-934c213e0f22
# ╠═22d66180-2b5d-11eb-0bd9-4b1ef9fe15b9
# ╟─22d66180-2b5d-11eb-37cc-b1292c6669cc
# ╠═22d66180-2b5d-11eb-0c01-1bcfe2f6a159
# ╟─22d66180-2b5d-11eb-29cf-dbe72444dfda
# ╠═22d66180-2b5d-11eb-3b38-8978884b05e9
# ╟─22d66180-2b5d-11eb-2c2e-e1919d6036a9
# ╠═22d66180-2b5d-11eb-22c0-4ddd0999aa85
# ╟─22d66180-2b5d-11eb-2821-99663d0c2665
# ╠═22d66180-2b5d-11eb-2148-8d9b03ddd307
# ╟─22d66180-2b5d-11eb-0308-0570fec6a43c
# ╠═22d66180-2b5d-11eb-272a-c1448f148b65
# ╟─22d66180-2b5d-11eb-15db-8b916e041535
# ╠═22d66180-2b5d-11eb-0a8d-05c85b95d392
# ╠═22d6afa0-2b5d-11eb-0272-0962421e9959
# ╟─22d6afa0-2b5d-11eb-260b-0f0de64ed159
# ╠═22d6afa0-2b5d-11eb-2411-57e979080520
# ╟─22d6afa0-2b5d-11eb-29e6-e73353fecc00
# ╠═22d6afa0-2b5d-11eb-32bc-a5f693a49c7e
# ╟─22d6afa0-2b5d-11eb-3c6a-b5d9709205cd
# ╠═22d6afa0-2b5d-11eb-1e3d-45725d492bb0
# ╟─22d6afa0-2b5d-11eb-0be3-15b20a834d15
# ╠═22d6afa0-2b5d-11eb-0808-5bc161cbe348
# ╟─22d6afa0-2b5d-11eb-0a1f-d3610f3f580b
# ╠═22d6afa0-2b5d-11eb-1297-b5c34a2ddc57
# ╟─22d6afa0-2b5d-11eb-2daf-8bea4c059c13
# ╠═22d6afa0-2b5d-11eb-0173-39ce32ca6718
# ╟─22d6afa0-2b5d-11eb-2da4-ad2c5e67b437
# ╠═22d6afa0-2b5d-11eb-22a8-710b480a831a
# ╟─22d6afa0-2b5d-11eb-380e-65b543e5f52d
# ╠═22d6afa0-2b5d-11eb-1663-3509fd716957
# ╟─22d6afa0-2b5d-11eb-1d51-b79f72c2a285
# ╠═22d6afa0-2b5d-11eb-0792-6dac2475b581
# ╟─22d6d6b0-2b5d-11eb-1e82-29c01274408f
# ╠═22d6d6b0-2b5d-11eb-34dd-4132d6d9ad28
# ╟─22d6d6b0-2b5d-11eb-061b-353f778d93d3
# ╠═22d6d6b0-2b5d-11eb-0522-4b51fd545bdd
# ╟─22d6d6b0-2b5d-11eb-0318-7962338df662
# ╠═22d6d6b0-2b5d-11eb-04c4-f7d79194d579
# ╟─22d6d6b0-2b5d-11eb-35eb-b16ddd3fbb95
# ╠═22d6d6b0-2b5d-11eb-28cb-abe50c40952d
# ╟─22d6d6b0-2b5d-11eb-0afe-cb7b61785ec5
# ╠═22d6d6b0-2b5d-11eb-1f19-81201198f701
# ╟─22d6d6b0-2b5d-11eb-28fa-39ea046d3184
# ╠═22d6d6b0-2b5d-11eb-34f7-8f1b02c8455d
# ╟─22d6d6b0-2b5d-11eb-19c4-9bc20280aa09
# ╠═22d6d6b0-2b5d-11eb-1872-0d5c3a61ac32
# ╟─22d6d6b0-2b5d-11eb-1a6c-e9982826eca8
# ╠═22d6d6b0-2b5d-11eb-1dd1-89e3d9af45b5
# ╟─22d6d6b0-2b5d-11eb-1162-ad1958551780
# ╠═22d6d6b0-2b5d-11eb-37b4-ed0f5f8da844
# ╟─22d6d6b0-2b5d-11eb-3c9a-cd964c677a8a
# ╠═22d6d6b0-2b5d-11eb-1534-cf69a58a258b
# ╟─22d6d6b0-2b5d-11eb-031a-ab6d5c72efee
# ╠═22d6d6b0-2b5d-11eb-3446-db53d7c85482
# ╟─22d6d6b0-2b5d-11eb-2fb7-512dd9c6c02d
# ╠═22d6d6b0-2b5d-11eb-3f9a-6d6edae23019
# ╟─22d6d6b0-2b5d-11eb-39e0-4558f23ba553
# ╠═22d6d6b0-2b5d-11eb-19d8-85454cdb8be0
# ╟─22d6d6b0-2b5d-11eb-31ee-fb7d90f35834
# ╠═22d6d6b0-2b5d-11eb-3b8e-979de0ee226b
# ╟─22d6fdc2-2b5d-11eb-073e-394d7042e914
# ╠═22d6fdc2-2b5d-11eb-2c39-657173080699
# ╟─22d6fdc2-2b5d-11eb-1915-5367ccf405b8
# ╠═22d6fdc2-2b5d-11eb-3994-c3745f13a3bf
# ╠═22d74be0-2b5d-11eb-2b08-bbc84c05432a
# ╟─22d74be0-2b5d-11eb-3127-fba5802a7eac
# ╠═22d74be0-2b5d-11eb-1971-3b1f407589a4
# ╟─22d772ee-2b5d-11eb-2fc5-1fcff93afe36
# ╠═22d772ee-2b5d-11eb-3190-ef808230bb83
# ╟─22d772ee-2b5d-11eb-1dc8-bb7caa325b54
# ╠═22d772ee-2b5d-11eb-373e-abae5fd00727
# ╟─22d772ee-2b5d-11eb-044a-a795552eb729
# ╠═22d772ee-2b5d-11eb-2a5c-81ae0cdf493b
# ╟─22d772ee-2b5d-11eb-1c62-49edee1d8b63
# ╠═22d772ee-2b5d-11eb-1fe3-b7cb9ec93970
# ╟─22d772ee-2b5d-11eb-3d0e-13080802ca02
# ╠═22d772ee-2b5d-11eb-1727-2f1cda3aa831
# ╟─22d772ee-2b5d-11eb-25ee-ebeda2e0dd11
# ╠═22d772ee-2b5d-11eb-107f-e10031dcd71f
# ╟─22d772ee-2b5d-11eb-314a-d7abea3a9843
# ╠═22d772ee-2b5d-11eb-0cff-270d6b6fb4f4
# ╟─22d772ee-2b5d-11eb-2b83-2f6fd882fd5c
# ╠═22d772ee-2b5d-11eb-1619-a12325227235
# ╟─22d772ee-2b5d-11eb-0612-83c713223dfe
# ╠═22d772ee-2b5d-11eb-19af-adfc8acc72e9
# ╟─22d772ee-2b5d-11eb-3ec2-f910f528c500
# ╠═22d772ee-2b5d-11eb-277d-c96e72b7d6df
# ╟─22d772ee-2b5d-11eb-023f-11f5dacabddb
# ╠═22d772ee-2b5d-11eb-0ab0-b908af06c318
# ╟─22d79a00-2b5d-11eb-2cf1-991d5951761a
# ╠═22d79a00-2b5d-11eb-0a11-7b7a25922faf
# ╟─22d79a00-2b5d-11eb-0f00-f162c0ae8387
# ╠═22d79a00-2b5d-11eb-2053-e31c419aff9e
# ╟─22d79a00-2b5d-11eb-18bb-2783dd485a6c
# ╠═22d79a00-2b5d-11eb-0b32-33c05881c7dd
# ╟─22d79a00-2b5d-11eb-28e3-636c0a8bf7a6
# ╠═22d79a00-2b5d-11eb-3442-d973c8e57e86
# ╟─22d79a00-2b5d-11eb-39c4-a501c25e4750
# ╠═22d79a00-2b5d-11eb-33e2-536700ebfc1b
# ╟─22d79a00-2b5d-11eb-2ba7-ad0dcd47aa3b
# ╠═22d79a00-2b5d-11eb-0691-5b2f606c8c89
# ╟─22d79a00-2b5d-11eb-06ad-9dc3dfd40d6c
# ╠═22d79a00-2b5d-11eb-36b4-8f798afb9ae2
# ╟─22d79a00-2b5d-11eb-1ae9-632576c75728
# ╠═22d79a00-2b5d-11eb-06bd-c30f043137fa
# ╟─22d79a00-2b5d-11eb-28ad-f9bb288b42ce
# ╠═22d79a00-2b5d-11eb-1b78-5b956e542b91
# ╟─22d79a00-2b5d-11eb-0a96-7d8f4658c2b3
# ╠═22d79a00-2b5d-11eb-0753-bf4c0dfb4e11
# ╟─22d79a00-2b5d-11eb-052e-4f3eb6b439de
# ╠═22d79a00-2b5d-11eb-2170-e30f1c155d51
# ╟─22d79a00-2b5d-11eb-3102-0bdb596e1c64
# ╠═22d79a00-2b5d-11eb-02e6-0507fe3fd1fe
# ╟─22d7c110-2b5d-11eb-2b65-b9d2819c69ea
# ╠═22d7c110-2b5d-11eb-2eab-3d8cce0f645a
# ╠═22d85d50-2b5d-11eb-395f-b378b9562e8f
# ╟─22d85d50-2b5d-11eb-25a6-d7c22c69d216
# ╠═22d85d50-2b5d-11eb-3e38-23ceca7da45f
# ╟─22d85d50-2b5d-11eb-2ac7-a5b03e3bfb20
# ╠═22d85d50-2b5d-11eb-3a11-8503dce849dc
# ╟─22d85d50-2b5d-11eb-05e5-bf77d28faec5
# ╠═22d85d50-2b5d-11eb-216a-5f036b7d9104
# ╟─22d85d50-2b5d-11eb-08c3-45921d818d85
# ╠═22d85d50-2b5d-11eb-1d59-a332133f8255
# ╟─22d85d50-2b5d-11eb-2390-1dbcf0ce2cfa
# ╠═22d85d50-2b5d-11eb-1759-6d05d9cc81c6
# ╟─22d85d50-2b5d-11eb-3f9d-07190b42e303
# ╠═22d85d50-2b5d-11eb-1366-83ddbe9e525b
# ╟─22d85d50-2b5d-11eb-2ab7-b5e950b2d66a
# ╠═22d85d50-2b5d-11eb-135a-775b2e2392a8
# ╟─22d85d50-2b5d-11eb-31dc-4f4cc74db907
# ╠═22d85d50-2b5d-11eb-301b-c1a0e5f3325c
# ╟─22d85d50-2b5d-11eb-0cc0-213a4613c85e
# ╠═22d85d50-2b5d-11eb-107b-df2fcf5ff767
# ╟─22d85d50-2b5d-11eb-32bc-25fd056f32aa
# ╠═22d85d50-2b5d-11eb-31b1-ffeba88afa72
# ╟─22d85d50-2b5d-11eb-2a38-89d467470a71
# ╠═22d85d50-2b5d-11eb-1ad0-0b8c9f259ae5
# ╟─22d85d50-2b5d-11eb-12ec-3d883777fdb6
# ╠═22d85d50-2b5d-11eb-00c3-17383368357b
# ╟─22d85d50-2b5d-11eb-1926-85ca553c7513
# ╠═22d85d50-2b5d-11eb-08d1-7fc531a5800f
# ╟─22d88460-2b5d-11eb-184c-ad49b271fae6
# ╠═22d88460-2b5d-11eb-3acc-87223a7344f9
# ╟─22d88460-2b5d-11eb-3728-77d4d233a288
# ╠═22d88460-2b5d-11eb-3666-9b405756f2b9
# ╟─22d88460-2b5d-11eb-3701-8bc7fe3b3fa2
# ╠═22d88460-2b5d-11eb-145f-858a4cddffa9
# ╟─22d88460-2b5d-11eb-3f2b-9b96907938f7
# ╠═22d88460-2b5d-11eb-2b09-6151444ed754
# ╟─22d88460-2b5d-11eb-36f3-6b6d150dd4a6
# ╠═22d88460-2b5d-11eb-3d23-65c0c12517da
# ╟─22d88460-2b5d-11eb-08de-55336e57dbfb
# ╠═22d88460-2b5d-11eb-3d4b-71b00427ba56
# ╟─22d88460-2b5d-11eb-11ef-c9d6d1de11fa
# ╠═22d88460-2b5d-11eb-27e4-f9687eb41a18
# ╟─22d88460-2b5d-11eb-0904-c585cd0453ec
# ╠═22d88460-2b5d-11eb-07b9-af1440b37cd8
# ╟─22d88460-2b5d-11eb-146d-9f635e20312e
# ╠═22d88460-2b5d-11eb-0715-23a310edd602
# ╟─22d88460-2b5d-11eb-2677-57e806ca3b2f
# ╠═22d88460-2b5d-11eb-081b-ade8aacd1e66
# ╟─22d88460-2b5d-11eb-3a5d-11d684ba8cfe
# ╠═22d88460-2b5d-11eb-0303-07834e6e128b
# ╟─22d8ab70-2b5d-11eb-199f-1f5febe896fc
# ╠═22d8ab70-2b5d-11eb-067b-73ebd9d5f93e
# ╠═22daf55e-2b5d-11eb-30d8-37ebf8b743df
# ╟─22daf55e-2b5d-11eb-1ddc-2712297f83f0
# ╠═22daf55e-2b5d-11eb-30ea-c524f8abe832
# ╟─22db1c70-2b5d-11eb-0ca6-2d861f34bebd
# ╠═22db1c70-2b5d-11eb-169a-ededcc267fff
# ╟─22db1c70-2b5d-11eb-0b2e-1bc9b670a0f0
# ╠═22db1c70-2b5d-11eb-25ea-a3884a88124d
# ╟─22db1c70-2b5d-11eb-3ffc-29ea34e51a14
# ╠═22db1c70-2b5d-11eb-2306-914b31901c93
# ╟─22db1c70-2b5d-11eb-15b7-3d1cc4844a06
# ╠═22db1c70-2b5d-11eb-2e51-9965c2eedd07
# ╟─22db1c70-2b5d-11eb-29c2-81482f2cdd8c
# ╠═22db1c70-2b5d-11eb-0b16-c32615ef3087
# ╟─22db1c70-2b5d-11eb-0af7-45991c379e05
# ╠═22db1c70-2b5d-11eb-3efa-a3eac52f5570
# ╟─22db1c70-2b5d-11eb-0cfd-7d28ea4fe0d9
# ╠═22db1c70-2b5d-11eb-11b7-e5ab73cbfded
# ╟─22db1c70-2b5d-11eb-189b-31d52341a103
# ╠═22db1c70-2b5d-11eb-377a-c32afebb1f8b
# ╟─22db1c70-2b5d-11eb-0cad-5157a11d291a
# ╠═22db4380-2b5d-11eb-19b6-55ab5f4443b0
# ╟─22db4380-2b5d-11eb-0d09-75bb07b6a35a
# ╠═22db4380-2b5d-11eb-2b79-2988049ddfdc
# ╟─22db4380-2b5d-11eb-3309-2d8fe89a8fa9
# ╠═22db4380-2b5d-11eb-3ebe-d75a04759d22
# ╟─22db4380-2b5d-11eb-26dd-11031ee94cf3
# ╠═22db4380-2b5d-11eb-140f-d19cd379626c
# ╟─22db4380-2b5d-11eb-0c4c-d5ef72cc6b99
# ╠═22db4380-2b5d-11eb-2686-f77c767ac761
# ╟─22db4380-2b5d-11eb-3292-2bf727ad2761
# ╠═22db4380-2b5d-11eb-119a-a329f5d4dc7a
# ╟─22db4380-2b5d-11eb-38b0-6b581cd1c2cd
# ╠═22db4380-2b5d-11eb-22bd-3f05d4174609
# ╟─22db4380-2b5d-11eb-275e-cb2456de6021
# ╠═22db4380-2b5d-11eb-3773-b5fd88743144
# ╟─22db4380-2b5d-11eb-35ba-27d49cd3f1ea
# ╠═22db4380-2b5d-11eb-280a-8f18ee2b7693
# ╟─22db4380-2b5d-11eb-1eb4-5ddd9568b660
# ╠═22db4380-2b5d-11eb-00e8-17a108293be3
# ╟─22db4380-2b5d-11eb-0db9-3f918af1afc3
# ╠═22db4380-2b5d-11eb-22aa-63194e44998c
# ╟─22db4380-2b5d-11eb-0af2-57e8d8bea25d
# ╠═22db4380-2b5d-11eb-29e4-6bec319f630a
# ╟─22db6a90-2b5d-11eb-013d-71ba7b9b763e
# ╠═22db6a90-2b5d-11eb-270d-ef47c19d799c
# ╟─22db6a90-2b5d-11eb-2d30-d3d05d122b4a
# ╠═22db6a90-2b5d-11eb-173c-f934437bcc9b
# ╟─22db6a90-2b5d-11eb-0c86-351311f199b1
# ╠═22db6a90-2b5d-11eb-2ee8-09f0d3421069
# ╟─22db6a90-2b5d-11eb-297d-f7e3651d40e4
# ╠═22db6a90-2b5d-11eb-080a-0137037025f4
# ╠═22dc2de0-2b5d-11eb-1727-ad72593c7c94
# ╟─22dc2de0-2b5d-11eb-3e10-8fcb3c79352c
# ╠═22dc2de0-2b5d-11eb-0205-e9baba9b4630
# ╟─22dc2de0-2b5d-11eb-0caf-cd253d36063b
# ╠═22dc2de0-2b5d-11eb-18eb-a97aa92e5632
# ╟─22dc2de0-2b5d-11eb-33aa-c72e0eb9035d
# ╠═22dc2de0-2b5d-11eb-142b-2725beafb9e0
# ╟─22dc54f0-2b5d-11eb-1a48-9734cb528172
# ╠═22dc54f0-2b5d-11eb-0d78-e99ec2b363bd
# ╟─22dc54f0-2b5d-11eb-160c-9f03249f5707
# ╠═22dc54f0-2b5d-11eb-09bb-1bf289d31422
# ╟─22dc54f0-2b5d-11eb-3df9-81ec99781ffd
# ╠═22dc54f0-2b5d-11eb-19e7-1911a414dc6e
# ╟─22dc54f0-2b5d-11eb-1e32-e98647522efb
# ╠═22dc54f0-2b5d-11eb-0a39-f385e03e152a
# ╟─22dc54f0-2b5d-11eb-396b-f55998f544f6
# ╠═22dc54f0-2b5d-11eb-0eb7-23adab35ce08
# ╟─22dc54f0-2b5d-11eb-11c1-df272cccdf13
# ╠═22dc54f0-2b5d-11eb-0edf-450fd114b9f0
# ╟─22dc54f0-2b5d-11eb-2660-13f587c321ba
# ╠═22dc54f0-2b5d-11eb-1c06-ab2f1d85120b
# ╟─22dc54f0-2b5d-11eb-2952-15f5a02b2971
# ╠═22dc54f0-2b5d-11eb-05fa-55401c160df8
# ╟─22dc54f0-2b5d-11eb-2e92-29780c9ff182
# ╠═22dc54f0-2b5d-11eb-2d09-f1f5088b05d4
# ╟─22dc54f0-2b5d-11eb-3b32-83515e42ed1f
# ╠═22dc54f0-2b5d-11eb-05bb-c38562f7ba53
# ╟─22dc54f0-2b5d-11eb-3f79-8ffb74b35249
# ╠═22dc54f0-2b5d-11eb-2e6d-97d75c70c45f
# ╟─22dc54f0-2b5d-11eb-3e8a-a51d131063b7
# ╠═22dc54f0-2b5d-11eb-1d4f-d3cddf936994
# ╟─22dc54f0-2b5d-11eb-02ca-2fd032bb2ba1
# ╠═22dc54f0-2b5d-11eb-07ca-b9632e6a3301
# ╟─22dc7c02-2b5d-11eb-2d14-41d385ede412
# ╠═22dc7c02-2b5d-11eb-3c38-1b8ce8429d7b
# ╟─22dc7c02-2b5d-11eb-09ce-11dbefe66f3e
# ╠═22dc7c02-2b5d-11eb-3de2-23258ebaafc4
# ╟─22dc7c02-2b5d-11eb-2182-93d464bdd10d
# ╠═22dc7c02-2b5d-11eb-2e69-75ef0ecf2eae
# ╟─22dc7c02-2b5d-11eb-0016-0b80fc32c3f7
# ╠═22dc7c02-2b5d-11eb-2d96-31ad56cb46f9
# ╟─22dc7c02-2b5d-11eb-0820-d5ab79f035ba
# ╠═22dc7c02-2b5d-11eb-3d2c-15b77f941362
# ╟─22dc7c02-2b5d-11eb-3918-0b60801deda3
# ╠═22dc7c02-2b5d-11eb-2525-f1b87fdd77a6
# ╟─22dc7c02-2b5d-11eb-028e-65ef8bc3f396
# ╠═22dc7c02-2b5d-11eb-0d3d-577e55fe882a
# ╟─22dc7c02-2b5d-11eb-256a-6378d5cd2388
# ╠═22dc7c02-2b5d-11eb-35d9-17df002ec5cf
# ╟─22dc7c02-2b5d-11eb-14b5-09b1dd43a62a
# ╠═22dc7c02-2b5d-11eb-1815-4de50a53e477
# ╠═22dd8d70-2b5d-11eb-30ce-abe36c910402
# ╟─22dd8d70-2b5d-11eb-0f31-49efe5189204
# ╠═22dd8d70-2b5d-11eb-36e4-019b48eb74dc
# ╟─22dd8d70-2b5d-11eb-15ae-9fda689f028a
# ╠═22dd8d70-2b5d-11eb-0dfb-099111b6e1b3
# ╟─22dd8d70-2b5d-11eb-3030-7d566c1d797e
# ╠═22dd8d70-2b5d-11eb-0ea4-8dca50acb401
# ╟─22dd8d70-2b5d-11eb-0e35-23ca6474cf7d
# ╠═22dd8d70-2b5d-11eb-3280-a73c54387b57
# ╟─22dd8d70-2b5d-11eb-2464-ed9537689590
# ╠═22dd8d70-2b5d-11eb-2943-ffd94cccc575
# ╟─22dd8d70-2b5d-11eb-080f-7dc3133ad27f
# ╠═22dd8d70-2b5d-11eb-1429-31bbbb7d6cc5
# ╟─22dd8d70-2b5d-11eb-098e-c91b8b3d5312
# ╠═22dd8d70-2b5d-11eb-280f-dbc00e4d7de8
# ╟─22dd8d70-2b5d-11eb-1d42-d383f63aa63f
# ╠═22dd8d70-2b5d-11eb-35a7-4f6e8928908c
# ╟─22ddb480-2b5d-11eb-05c5-77cfdef309c4
# ╠═22ddb480-2b5d-11eb-2112-d9bb1d1c1625
# ╟─22ddb480-2b5d-11eb-1d1c-73bf387370a3
# ╠═22ddb480-2b5d-11eb-3947-bb0ca2a1f03d
# ╟─22ddb480-2b5d-11eb-3b87-3d5a1b38560e
# ╠═22ddb480-2b5d-11eb-1262-5bf7ca3414cf
# ╟─22ddb480-2b5d-11eb-3535-7fde9361bab7
# ╠═22ddb480-2b5d-11eb-21ae-d108a7dc578d
# ╟─22ddb480-2b5d-11eb-1fe8-ad308462499c
# ╠═22ddb480-2b5d-11eb-0212-6d80024258f2
# ╟─22dddb90-2b5d-11eb-058f-6f845677e37f
# ╠═22dddb90-2b5d-11eb-3536-496c908adf90
# ╟─22dddb90-2b5d-11eb-3481-0f838562460f
# ╠═22dddb90-2b5d-11eb-3bfe-5d4097e11f99
# ╟─22dddb90-2b5d-11eb-10a5-e3553bd61029
# ╠═22dddb90-2b5d-11eb-2841-05e67cca846f
# ╟─22dddb90-2b5d-11eb-011d-d7df6eefef7e
# ╠═22dddb90-2b5d-11eb-3e7b-e761cb8814f3
# ╟─22dddb90-2b5d-11eb-36ac-81ff7582544e
# ╠═22dddb90-2b5d-11eb-19e7-5d14a377fdd6
# ╟─22dddb90-2b5d-11eb-3fb2-ed04fca6b68a
# ╠═22dddb90-2b5d-11eb-1bcb-f3e1fc9ff082
# ╟─22dddb90-2b5d-11eb-06a4-b58f3b5f9a78
# ╠═22dddb90-2b5d-11eb-2e46-d7297d25806c
# ╟─22dddb90-2b5d-11eb-181d-b176931a71ec
# ╠═22dddb90-2b5d-11eb-0f42-b78a1e2e1cb9
# ╟─22de02a2-2b5d-11eb-1902-6f659fc2252a
# ╠═22de02a2-2b5d-11eb-14a5-73c17eae0db6
# ╟─22de02a2-2b5d-11eb-2aec-25a1323bf505
# ╠═22de02a2-2b5d-11eb-0fef-9dc7906a8dcd
# ╟─22de02a2-2b5d-11eb-1fc3-bd420e708ee5
# ╠═22de02a2-2b5d-11eb-259f-a3bda9a06c17
# ╟─22de02a2-2b5d-11eb-08e2-a3aabeec274f
# ╠═22de02a2-2b5d-11eb-0eed-27b312234036