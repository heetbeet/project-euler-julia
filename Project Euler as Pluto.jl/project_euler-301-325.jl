### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 44430c70-8435-11eb-1c44-97c2a36d745e
include((@__DIR__)*"/shared.jl");

# ╔═╡ 44430c70-8435-11eb-2a13-4fdfb7a36db4
html"""
<h2>Problem 301: Nim</h2>
<p><dfn>Nim</dfn> is a game played with heaps of stones, where two players take it in turn to remove any number of stones from any heap until no stones remain.</p>

<p>We'll consider the three-heap normal-play version of Nim, which works as follows:</p>
<ul>
<li>At the start of the game there are three heaps of stones.</li>
<li>On each player's turn, the player may remove any positive number of stones from any single heap.</li>
<li>The first player unable to move (because no stones remain) loses.</li>
</ul>

<p>If $(n_1,n_2,n_3)$ indicates a Nim position consisting of heaps of size $n_1$, $n_2$, and $n_3$, then there is a simple function, which you may look up or attempt to deduce for yourself, $X(n_1,n_2,n_3)$ that returns:</p>

<ul>
<li>zero if, with perfect strategy, the player about to move will eventually lose; or</li>
<li>non-zero if, with perfect strategy, the player about to move will eventually win.</li>
</ul>

<p>For example $X(1,2,3) = 0$ because, no matter what the current player does, the opponent can respond with a move that leaves two heaps of equal size, at which point every move by the current player can be mirrored by the opponent until no stones remain; so the current player loses. To illustrate:</p>

<ul>
<li>current player moves to $(1,2,1)$</li>
<li>opponent moves to $(1,0,1)$</li>
<li>current player moves to $(0,0,1)$</li>
<li>opponent moves to $(0,0,0)$, and so wins.</li>
</ul>

<p>For how many positive integers $n \le 2^{30}$ does $X(n,2n,3n) = 0$ ?</p>
"""

# ╔═╡ 44430c70-8435-11eb-37f0-dde80aa0ebb6
begin
    submit_answer(nothing; prob_num=301)
end

# ╔═╡ 44430c70-8435-11eb-226c-4bf0e95d33c6
html"""
<h2>Problem 302: Strong Achilles Numbers</h2>
<p>
A positive integer <var>n</var> is <b>powerful</b> if p<sup>2</sup> is a divisor of <var>n</var> for every prime factor p in <var>n</var>.
</p>
<p>
A positive integer <var>n</var> is a <b>perfect power</b> if <var>n</var> can be expressed as a power of another positive integer.
</p>
<p>
A positive integer <var>n</var> is an <b>Achilles number</b> if <var>n</var> is powerful but not a perfect power. For example, 864 and 1800 are Achilles numbers: 864 = 2<sup>5</sup>·3<sup>3</sup> and 1800 = 2<sup>3</sup>·3<sup>2</sup>·5<sup>2</sup>.
</p>
<p>
We shall call a positive integer <var>S</var> a <i>Strong Achilles number</i> if both <var>S</var> and φ(<var>S</var>) are Achilles numbers.<sup>1</sup><br />
For example, 864 is a Strong Achilles number: φ(864) = 288 = 2<sup>5</sup>·3<sup>2</sup>. However, 1800 isn't a Strong Achilles number because: φ(1800) = 480 = 2<sup>5</sup>·3<sup>1</sup>·5<sup>1</sup>.
</p>
<p>There are 7 Strong Achilles numbers below 10<sup>4</sup> and 656 below 10<sup>8</sup>.
</p>
<p>
How many Strong Achilles numbers are there below 10<sup>18</sup>?
</p>
<p>
<sup>1</sup> φ denotes <b>Euler's totient function</b>.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-0751-85d873cc41ed
begin
    submit_answer(nothing; prob_num=302)
end

# ╔═╡ 44430c70-8435-11eb-123b-fb065ae4ec7b
html"""
<h2>Problem 303: Multiples with small digits</h2>
<p>
For a positive integer <var>n</var>, define <var>f</var>(<var>n</var>) as the least positive multiple of <var>n</var> that, written in base 10, uses only digits ≤ 2.</p>
<p>Thus <var>f</var>(2)=2, <var>f</var>(3)=12, <var>f</var>(7)=21, <var>f</var>(42)=210, <var>f</var>(89)=1121222.</p>
<p>Also, $\sum \limits_{n = 1}^{100} {\dfrac{f(n)}{n}} = 11363107$.</p>
<p>
Find $\sum \limits_{n=1}^{10000} {\dfrac{f(n)}{n}}$.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-21ff-537ab6e639f9
begin
    submit_answer(nothing; prob_num=303)
end

# ╔═╡ 44430c70-8435-11eb-2554-a1697629f17f
html"""
<h2>Problem 304: Primonacci</h2>
<p>
For any positive integer <var>n</var> the function next_prime(<var>n</var>) returns the smallest prime p <br /> such that p&gt;<var>n</var>.
</p>
<p>
The sequence a(<var>n</var>) is defined by:<br />
a(1)=next_prime(10<sup>14</sup>) and a(<var>n</var>)=next_prime(a(<var>n</var>-1)) for n&gt;1.
</p><p></p>
<p>
The fibonacci sequence f(<var>n</var>) is defined by:
f(0)=0, f(1)=1 and f(<var>n</var>)=f(<var>n</var>-1)+f(<var>n</var>-2) for <var>n</var>&gt;1.
</p>
<p>
The sequence b(<var>n</var>) is defined as f(a(<var>n</var>)).
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> b(<var>n</var>) for 1≤<var>n</var>≤100 000. 
Give your answer mod 1234567891011. 




</p>
"""

# ╔═╡ 44430c70-8435-11eb-184a-d169db5ef715
begin
    submit_answer(nothing; prob_num=304)
end

# ╔═╡ 44430c70-8435-11eb-31dc-f51dfc14cdf3
html"""
<h2>Problem 305: Reflexive Position</h2>
<p>
Let's call S the (infinite) string that is made by concatenating the consecutive positive integers (starting from 1)  written down in base 10.<br /> 
Thus, S = 1234567891011121314151617181920212223242...
</p>
<p>
It's easy to see that any number will show up an infinite number of times in S.
</p>
<p>
Let's call f(n) the starting position of the n<sup>th</sup> occurrence of n in S.<br /> 
For example, f(1)=1, f(5)=81, f(12)=271 and f(7780)=111111365.
</p>
<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(3<sup>k</sup>) for 1≤k≤13.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-1761-fdd5c079c64f
begin
    submit_answer(nothing; prob_num=305)
end

# ╔═╡ 44430c70-8435-11eb-10b4-2bd3a4675ec4
html"""
<h2>Problem 306: Paper-strip Game</h2>
<p>The following game is a classic example of Combinatorial Game Theory:</p>

<p>Two players start with a strip of $n$ white squares and they take alternate turns.<br />
On each turn, a player picks two contiguous white squares and paints them black.<br />
The first player who cannot make a move loses.</p>

<ul>
<li>$n = 1$: No valid moves, so the first player loses automatically.</li>
<li>$n = 2$: Only one valid move, after which the second player loses.</li>
<li>$n = 3$: Two valid moves, but both leave a situation where the second player loses.</li>
<li>$n = 4$: Three valid moves for the first player, who is able to win the game by painting the two middle squares.</li>
<li>$n = 5$: Four valid moves for the first player (shown below in red), but no matter what the player does, the second player (blue) wins.</li>
</ul>

<div class="center"><img src="project/images/p306_pstrip.gif" class="dark_img" alt="p306_pstrip.gif" /></div>

<p>So, for $1 \le n \le 5$, there are 3 values of $n$ for which the first player can force a win.<br />
Similarly, for $1 \le n \le 50$, there are 40 values of $n$ for which the first player can force a win.</p>

<p>For $1 \le n \le 1 000 000$, how many values of $n$ are there for which the first player can force a win?</p>
"""

# ╔═╡ 44430c70-8435-11eb-211b-c375cba968b3
begin
    submit_answer(nothing; prob_num=306)
end

# ╔═╡ 44430c70-8435-11eb-28a0-9bcccb782c5b
html"""
<h2>Problem 307: Chip Defects</h2>
<p>
<var>k</var> defects are randomly distributed amongst <var>n</var> integrated-circuit chips produced by a factory (any number of defects may be found on a chip and each defect is independent of the other defects).
</p>
<p>
Let p(<var>k,n</var>) represent the probability that there is a chip with at least 3 defects.<br />
For instance p(3,7) ≈ 0.0204081633.
</p>
<p>
Find p(20 000, 1 000 000) and give your answer rounded to 10 decimal places in the form 0.abcdefghij
</p>
"""

# ╔═╡ 44430c70-8435-11eb-2eb7-a7e479a64fe8
begin
    submit_answer(nothing; prob_num=307)
end

# ╔═╡ 44430c70-8435-11eb-2d2c-01d04e8964c6
html"""
<h2>Problem 308: An amazing Prime-generating Automaton</h2>
<p>A program written in the programming language Fractran consists of a list of fractions.</p>

<p>The internal state of the Fractran Virtual Machine is a positive integer, which is initially set to a seed value. Each iteration of a Fractran program multiplies the state integer by the first fraction in the list which will leave it an integer.</p>

<p>For example, one of the Fractran programs that John Horton Conway wrote for prime-generation consists of the following 14 fractions:</p>

<p>$$\dfrac{17}{91}, \dfrac{78}{85}, \dfrac{19}{51}, \dfrac{23}{38}, \dfrac{29}{33}, \dfrac{77}{29}, \dfrac{95}{23}, \dfrac{77}{19}, \dfrac{1}{17}, \dfrac{11}{13}, \dfrac{13}{11}, \dfrac{15}{2}, \dfrac{1}{7}, \dfrac{55}{1}$$</p>

<p>Starting with the seed integer 2, successive iterations of the program produce the sequence:<br />
15, 825, 725, 1925, 2275, 425, ..., 68, <b>4</b>, 30, ..., 136, <b>8</b>, 60, ..., 544, <b>32</b>, 240, ...</p>

<p>The powers of 2 that appear in this sequence are 2<sup>2</sup>, 2<sup>3</sup>, 2<sup>5</sup>, ...<br />
It can be shown that <i>all</i> the powers of 2 in this sequence have prime exponents and that <i>all</i> the primes appear as exponents of powers of 2, in proper order!</p>

<p>If someone uses the above Fractran program to solve Project Euler Problem 7 (find the 10001<sup>st</sup> prime), how many iterations would be needed until the program produces 2<sup>10001st prime</sup> ?</p>
"""

# ╔═╡ 44430c70-8435-11eb-2615-55a48bd407c0
begin
    submit_answer(nothing; prob_num=308)
end

# ╔═╡ 44430c70-8435-11eb-2f1f-f9f658fd5e15
html"""
<h2>Problem 309: Integer Ladders</h2>
<p>In the classic "Crossing Ladders" problem, we are given the lengths <var>x</var> and <var>y</var> of two ladders resting on the opposite walls of a narrow, level street. We are also given the height <var>h</var> above the street where the two ladders cross and we are asked to find the width of the street (<var>w</var>).</p>

<div align="center"><img src="project/images/p309_ladders.gif" class="dark_img" alt="p309_ladders.gif" /></div>

<p>Here, we are only concerned with instances where all four variables are positive integers.<br />
For example, if <var>x</var> = 70, <var>y</var> = 119 and <var>h</var> = 30, we can calculate that <var>w</var> = 56.</p>

<p>In fact, for integer values <var>x</var>, <var>y</var>, <var>h</var> and 0 &lt; <var>x</var> &lt; <var>y</var> &lt; 200, there are only five triplets (<var>x</var>,<var>y</var>,<var>h</var>) producing integer solutions for <var>w</var>:<br />
(70, 119, 30), (74, 182, 21), (87, 105, 35), (100, 116, 35) and (119, 175, 40).</p>

<p>For integer values <var>x</var>, <var>y</var>, <var>h</var> and 0 &lt; <var>x</var> &lt; <var>y</var> &lt; 1 000 000, how many triplets (<var>x</var>,<var>y</var>,<var>h</var>) produce integer solutions for <var>w</var>?</p>
"""

# ╔═╡ 44430c70-8435-11eb-0937-53cc871a9e44
begin
    submit_answer(nothing; prob_num=309)
end

# ╔═╡ 44430c70-8435-11eb-3b1f-edf10c4220f2
html"""
<h2>Problem 310: Nim Square</h2>
<p>
Alice and Bob play the game Nim Square.<br />
Nim Square is just like ordinary three-heap normal play Nim, but the players may only remove a square number of stones from a heap.<br />
The number of stones in the three heaps is represented by the ordered triple (a,b,c).<br />
If 0≤a≤b≤c≤29 then the number of losing positions for the next player is 1160.
</p>
<p>
Find the number of losing positions for the next player if 0≤a≤b≤c≤100 000.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-03bb-f7f3010392a4
begin
    submit_answer(nothing; prob_num=310)
end

# ╔═╡ 44430c70-8435-11eb-0de6-874e103c8d8b
html"""
<h2>Problem 311: Biclinic Integral Quadrilaterals</h2>
<p>ABCD is a convex, integer sided quadrilateral with 1 ≤ AB &lt; BC &lt; CD &lt; AD.<br />
BD has integer length. O is the midpoint of BD. AO has integer length.<br />
We'll call ABCD a <i>biclinic integral quadrilateral</i> if AO = CO ≤ BO = DO.<br /></p>

<p>For example, the following quadrilateral is a biclinic integral quadrilateral:<br />
AB = 19, BC = 29, CD = 37, AD = 43, BD = 48 and AO = CO = 23.
</p>

<div align="center"><img src="project/images/p311_biclinic.gif" class="dark_img" alt="p311_biclinic.gif" /></div>

<p>Let B(<var>N</var>) be the number of distinct biclinic integral quadrilaterals ABCD that satisfy AB<sup>2</sup>+BC<sup>2</sup>+CD<sup>2</sup>+AD<sup>2</sup> ≤ <var>N</var>.<br />
We can verify that B(10 000) = 49 and B(1 000 000) = 38239.
</p>

<p>Find B(10 000 000 000).
</p>
"""

# ╔═╡ 44430c70-8435-11eb-3fe4-f148b0e432df
begin
    submit_answer(nothing; prob_num=311)
end

# ╔═╡ 44430c70-8435-11eb-14e5-212eb28dcdc1
html"""
<h2>Problem 312: Cyclic paths on Sierpiński graphs</h2>
<p>- A <b>Sierpiński graph</b> of order-1 (<var>S</var><sub>1</sub>) is an equilateral triangle.<br />
- <var>S</var><sub><var>n</var>+1</sub> is obtained from <var>S</var><sub><var>n</var></sub> by positioning three copies of <var>S</var><sub><var>n</var></sub> so that every pair of copies has one common corner.
</p>

<div align="center"><img src="project/images/p312_sierpinskyAt.gif" class="dark_img" alt="p312_sierpinskyAt.gif" /></div>

<p>Let C(<var>n</var>) be the number of cycles that pass exactly once through all the vertices of <var>S</var><sub><var>n</var></sub>.<br />
For example, C(3) = 8 because eight such cycles can be drawn on <var>S</var><sub>3</sub>, as shown below:
</p>

<div align="center"><img src="project/images/p312_sierpinsky8t.gif" class="dark_img" alt="p312_sierpinsky8t.gif" /></div>

<p>It can also be verified that :<br />
C(1) = C(2) = 1<br />
C(5) = 71328803586048<br />
C(10 000) mod 10<sup>8</sup> = 37652224<br />
C(10 000) mod 13<sup>8</sup> = 617720485<br /></p>

<p>Find C(C(C(10 000))) mod 13<sup>8</sup>.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-125d-b1d0eb9fe5e5
begin
    submit_answer(nothing; prob_num=312)
end

# ╔═╡ 44430c70-8435-11eb-1647-fd5436ee322a
html"""
<h2>Problem 313: Sliding game</h2>
<p>In a sliding game a counter may slide horizontally or vertically into an empty space. The objective of the game is to move the red counter from the top left corner of a grid to the bottom right corner; the space always starts in the bottom right corner. For example, the following sequence of pictures show how the game can be completed in five moves on a 2 by 2 grid.</p>

<div align="center"><img src="project/images/p313_sliding_game_1.gif" alt="p313_sliding_game_1.gif" /></div>

<p>Let S(m,n) represent the minimum number of moves to complete the game on an m by n grid. For example, it can be verified that S(5,4) = 25.</p>

<div align="center"><img src="project/images/p313_sliding_game_2.gif" alt="p313_sliding_game_2.gif" /></div>

<p>There are exactly 5482 grids for which S(m,n) = p<sup>2</sup>, where p &lt; 100 is prime.</p>

<p>How many grids does S(m,n) = p<sup>2</sup>, where p &lt; 10<sup>6</sup> is prime?</p>
"""

# ╔═╡ 44430c70-8435-11eb-2411-ff115b76b7a4
begin
    submit_answer(nothing; prob_num=313)
end

# ╔═╡ 44430c70-8435-11eb-1ca4-c5ad2a91eca6
html"""
<h2>Problem 314: The Mouse on the Moon</h2>
<p>
The moon has been opened up, and land can be obtained for free, but there is a catch. You have to build a wall around the land that you stake out, and building a wall on the moon is expensive. Every country has been allotted a 500 m by 500 m square area, but they will possess only that area which they wall in. 251001 posts have been placed in a rectangular grid with 1 meter spacing. The wall must be a closed series of straight lines, each line running from post to post.
</p>
<p>
The bigger countries of course have built a 2000 m wall enclosing the entire 250 000 m<sup>2</sup> area. The <a href="http://en.wikipedia.org/wiki/Grand_Fenwick">Duchy of Grand Fenwick</a>, has a tighter budget, and has asked you (their Royal Programmer) to compute what shape would get best maximum enclosed-area/wall-length ratio.
</p>
<p>
You have done some preliminary calculations on a sheet of paper.
For a 2000 meter wall enclosing the 250 000 m<sup>2</sup> area the
enclosed-area/wall-length ratio is 125.<br />
Although not allowed , but to get an idea if this is anything better:  if you place a circle inside the square area touching the four sides the area will be equal to π*250<sup>2</sup> m<sup>2</sup> and the perimeter will be π*500 m, so the enclosed-area/wall-length ratio will also be 125.
</p>
<p>
However, if you cut off from the square four triangles with sides 75 m, 75 m and 75√2 m the total area becomes 238750 m<sup>2</sup> and the perimeter becomes 1400+300√2 m. So this gives an enclosed-area/wall-length ratio of 130.87, which is significantly better.
</p>
<div align="center"><img src="project/images/p314_landgrab.gif" class="dark_img" alt="p314_landgrab.gif" /></div>
<p>
Find the maximum enclosed-area/wall-length ratio.<br />
Give your answer rounded to 8 places behind the decimal point in the form abc.defghijk.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-151e-3bfbf9b635cf
begin
    submit_answer(nothing; prob_num=314)
end

# ╔═╡ 44430c70-8435-11eb-0d7b-6f55aad0375e
html"""
<h2>Problem 315: Digital root clocks</h2>
<p></p><div align="center"><img src="project/images/p315_clocks.gif" alt="p315_clocks.gif" /></div>

<p>Sam and Max are asked to transform two digital clocks into two "digital root" clocks.<br />
A digital root clock is a digital clock that calculates digital roots step by step.</p>

<p>When a clock is fed a number, it will show it and then it will start the calculation, showing all the intermediate values until it gets to the result.<br />
For example, if the clock is fed the number 137, it will show: "<b>137</b>" → "<b>11</b>" → "<b>2</b>" and then it will go black, waiting for the next number.</p>

<p>Every digital number consists of some light segments: three horizontal (top, middle, bottom) and four vertical (top-left, top-right, bottom-left, bottom-right).<br />
Number "<b>1</b>" is made of vertical top-right and bottom-right, number "<b>4</b>" is made by middle horizontal and vertical top-left, top-right and bottom-right. Number "<b>8</b>" lights them all.</p>

<p>The clocks consume energy only when segments are turned on/off.<br />
To turn on a "<b>2</b>" will cost 5 transitions, while a "<b>7</b>" will cost only 4 transitions.</p>

<p>Sam and Max built two different clocks.</p>

<p>Sam's clock is fed e.g. number 137: the clock shows "<b>137</b>", then the panel is turned off, then the next number ("<b>11</b>") is turned on, then the panel is turned off again and finally the last number ("<b>2</b>") is turned on and, after some time, off.<br />
For the example, with number 137, Sam's clock requires:<br /></p><table><tr><td>"<b>137</b>"</td>
<td>:</td>
<td>(2 + 5 + 4) × 2 = 22 transitions ("<b>137</b>" on/off).</td>
</tr><tr><td>"<b>11</b>"</td>
<td>:</td>
<td>(2 + 2) × 2 = 8 transitions ("<b>11</b>" on/off).</td>
</tr><tr><td>"<b>2</b>"</td>
<td>:</td>
<td>(5) × 2 = 10 transitions ("<b>2</b>" on/off).</td>
</tr></table>
For a grand total of 40 transitions.

<p>Max's clock works differently. Instead of turning off the whole panel, it is smart enough to turn off only those segments that won't be needed for the next number.<br />
For number 137, Max's clock requires:<br /></p><table><tr><td>"<b>137</b>"<br /><br /></td>
<td>:<br /><br /></td>
<td>2 + 5 + 4 = 11 transitions ("<b>137</b>" on)<br />
7 transitions (to turn off the segments that are not needed for number "<b>11</b>").</td>
</tr><tr><td>"<b>11</b>"<br /><br /><br /></td>
<td>:<br /><br /><br /></td>
<td>0 transitions (number "<b>11</b>" is already turned on correctly)<br />
3 transitions (to turn off the first "<b>1</b>" and the bottom part of the second "<b>1</b>"; <br />
the top part is common with number "<b>2</b>").</td>
</tr><tr><td>"<b>2</b>"<br /><br /></td>
<td>:<br /><br /></td>
<td>4 transitions (to turn on the remaining segments in order to get a "<b>2</b>")<br />
5 transitions (to turn off number "<b>2</b>").</td>
</tr></table>
For a grand total of 30 transitions.

<p>Of course, Max's clock consumes less power than Sam's one.<br />
The two clocks are fed all the prime numbers between A = 10<sup>7</sup> and B = 2×10<sup>7</sup>. <br />
Find the difference between the total number of transitions needed by Sam's clock and that needed by Max's one.</p>
"""

# ╔═╡ 44430c70-8435-11eb-10cd-1fffa1ef38b6
begin
    submit_answer(nothing; prob_num=315)
end

# ╔═╡ 44430c70-8435-11eb-0300-d521069e2e6a
html"""
<h2>Problem 316: Numbers in decimal expansions</h2>
<p>Let <var>p</var> = <var>p<sub><font size="-2">1</font></sub> p<sub><font size="-2">2</font></sub> p<sub><font size="-2">3</font></sub></var> ... be an infinite sequence of random digits, selected from {0,1,2,3,4,5,6,7,8,9} with equal probability.<br />
It can be seen that <var>p</var> corresponds to the real number 0.<var>p<sub><font size="-2">1</font></sub> p<sub><font size="-2">2</font></sub> p<sub><font size="-2">3</font></sub></var> .... <br />
It can also be seen that choosing a random real number from the interval [0,1) is equivalent to choosing an infinite sequence of random digits selected from {0,1,2,3,4,5,6,7,8,9} with equal probability.</p>

<p>For any positive integer <var>n</var> with <var>d</var> decimal digits, let <var>k</var> be the smallest index such that <br /><var>p<sub><small>k</small>, </sub></var><var>p<sub><small>k+1</small></sub></var>, ...<var>p<sub><small>k+d-1</small></sub></var> are the decimal digits of <var>n</var>, in the same order.<br />
Also, let <var>g</var>(<var>n</var>) be the expected value of <var>k</var>; it can be proven that <var>g</var>(<var>n</var>) is always finite and, interestingly, always an integer number.</p>

<p>For example, if <var>n</var> = 535, then<br />
for <var>p</var> = 31415926<b>535</b>897...., we get <var>k</var> = 9<br />
for <var>p</var> = 35528714365004956000049084876408468<b>535</b>4..., we get <var>k</var> = 36<br />
etc and we find that <var>g</var>(535) = 1008.</p>

<p>Given that $\sum \limits_{n = 2}^{999} {g \left ( \left \lfloor \dfrac{10^6}{n} \right \rfloor \right )} = 27280188$, find $\sum \limits_{n = 2}^{999999} {g \left ( \left \lfloor \dfrac{10^{16}}{n} \right \rfloor \right )}$.</p>

<u><i>Note</i></u>: $\lfloor x \rfloor$ represents the floor function.
"""

# ╔═╡ 44430c70-8435-11eb-1de1-0184e22197bd
begin
    submit_answer(nothing; prob_num=316)
end

# ╔═╡ 44430c70-8435-11eb-24ad-57d327e66df0
html"""
<h2>Problem 317: Firecracker</h2>
<p>
A firecracker explodes at a height of 100 m above level ground. It breaks into a large number of very small fragments, which move in every direction; all of them have the same initial velocity of 20 m/s.
</p>
<p>
We assume that the fragments move without air resistance, in a uniform gravitational field with g=9.81 m/s<sup>2</sup>.
</p>
<p>
Find the volume (in m<sup>3</sup>) of the region through which the fragments move before reaching the ground. 
Give your answer rounded to four decimal places.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-3bca-cd3a6e8d4d27
begin
    submit_answer(nothing; prob_num=317)
end

# ╔═╡ 44430c70-8435-11eb-2ef7-09effc1efbb1
html"""
<h2>Problem 318: 2011 nines</h2>
<p>
Consider the real number $\sqrt 2 + \sqrt 3$.<br />
When we calculate the even powers of $\sqrt 2 + \sqrt 3$
we get:<br />
$(\sqrt 2 + \sqrt 3)^2 = 9.898979485566356 \dots $<br />
$(\sqrt 2 + \sqrt 3)^4 = 97.98979485566356 \dots $<br />
$(\sqrt 2 + \sqrt 3)^6 = 969.998969071069263 \dots $<br />
$(\sqrt 2 + \sqrt 3)^8 = 9601.99989585502907 \dots $<br />
$(\sqrt 2 + \sqrt 3)^{10} = 95049.999989479221 \dots $<br />
$(\sqrt 2 + \sqrt 3)^{12} = 940897.9999989371855 \dots $<br />
$(\sqrt 2 + \sqrt 3)^{14} = 9313929.99999989263 \dots $<br />
$(\sqrt 2 + \sqrt 3)^{16} = 92198401.99999998915 \dots $<br /></p>
<p>
It looks as if the number of consecutive nines at the beginning of the fractional part of these powers is non-decreasing.<br />
In fact it can be proven that the fractional part of $(\sqrt 2 + \sqrt 3)^{2 n}$ approaches $1$ for large $n$.
</p>
<p>
Consider all real numbers of the form $\sqrt p + \sqrt q$ with $p$ and $q$ positive integers and $p &lt; q$, such that the fractional part 
of $(\sqrt p + \sqrt q)^{ 2 n}$ approaches $1$ for large $n$.
</p>
<p>
Let $C(p,q,n)$ be the number of consecutive nines at the beginning of the fractional part of $(\sqrt p + \sqrt q)^{ 2 n}$.
</p>
<p>
Let $N(p,q)$ be the minimal value of $n$ such that $C(p,q,n) \ge 2011$.
</p>
<p>
Find $\displaystyle \sum N(p,q) \,\, \text{ for } p+q \le 2011$.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-08f6-a94bbed2a960
begin
    submit_answer(nothing; prob_num=318)
end

# ╔═╡ 44430c70-8435-11eb-0770-194c4dbbe8e0
html"""
<h2>Problem 319: Bounded Sequences</h2>
<p>
Let <var>x</var><sub>1</sub>, <var>x</var><sub>2</sub>,..., <var>x<sub>n</sub></var> be a sequence of length <var>n</var> such that:
</p><ul><li><var>x</var><sub>1</sub> = 2</li>
<li>for all 1 &lt; <var>i</var> ≤ <var>n</var> : <var>x</var><sub><var>i</var>-<i>1</i></sub> &lt; <var>x<sub>i</sub></var></li>
<li>for all <var>i</var> and <var>j</var> with 1 ≤ <var>i</var>, <var>j</var> ≤ <var>n</var> : (<var>x<sub>i</sub></var>)<var><sup> j</sup></var> &lt; (<var>x<sub>j</sub></var> + 1)<var><sup>i</sup></var></li>
</ul><p>
There are only five such sequences of length 2, namely:
{2,4}, {2,5}, {2,6}, {2,7} and {2,8}.<br />
There are 293 such sequences of length 5; three examples are given below:<br />
{2,5,11,25,55}, {2,6,14,36,88}, {2,8,22,64,181}.
</p>
<p>
Let <var>t</var>(<var>n</var>) denote the number of such sequences of length <var>n</var>.<br />
You are given that <var>t</var>(10) = 86195 and <var>t</var>(20) = 5227991891.
</p>
<p>
Find <var>t</var>(10<sup>10</sup>) and give your answer modulo 10<sup>9</sup>.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-3870-e1e07ddacc97
begin
    submit_answer(nothing; prob_num=319)
end

# ╔═╡ 44430c70-8435-11eb-0377-c140fd6996a4
html"""
<h2>Problem 320: Factorials divisible by a huge integer</h2>
<p>
Let N(<var>i</var>) be the smallest integer <var>n</var> such that <var>n</var>! is divisible by (<var>i</var>!)<sup>1234567890</sup></p>
<p>
Let S(<var>u</var>)=<span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> N(<var>i</var>) for 10 ≤ <var>i</var> ≤ <var>u</var>.
</p>
<p>
S(1000)=614538266565663.
</p>
<p>
Find S(1 000 000) mod 10<sup>18</sup>.
</p>
"""

# ╔═╡ 44430c70-8435-11eb-3348-39fbfcdbac7c
begin
    submit_answer(nothing; prob_num=320)
end

# ╔═╡ 44430c70-8435-11eb-2502-0b3a31836f5b
html"""
<h2>Problem 321: Swapping Counters</h2>
<p>A horizontal row comprising of 2<var>n</var> + 1 squares has <var>n</var> red counters placed at one end and <var>n</var> blue counters at the other end, being separated by a single empty square in the centre. For example, when <var>n</var> = 3.</p>

<p></p><div align="center"><img src="project/images/p321_swapping_counters_1.gif" alt="p321_swapping_counters_1.gif" /></div>

<p>A counter can move from one square to the next (slide) or can jump over another counter (hop) as long as the square next to that counter is unoccupied.</p>

<p></p><div align="center"><img src="project/images/p321_swapping_counters_2.gif" alt="p321_swapping_counters_2.gif" /></div>

<p>Let M(<var>n</var>) represent the minimum number of moves/actions to completely reverse the positions of the coloured counters; that is, move all the red counters to the right and all the blue counters to the left.</p>
<p>It can be verified M(3) = 15, which also happens to be a triangle number.</p>

<p>If we create a sequence based on the values of <var>n</var> for which M(<var>n</var>) is a triangle number then the first five terms would be:
<br />1, 3, 10, 22, and 63, and their sum would be 99.</p>

<p>Find the sum of the first forty terms of this sequence.</p>
"""

# ╔═╡ 44430c70-8435-11eb-2fd3-c98078849685
begin
    submit_answer(nothing; prob_num=321)
end

# ╔═╡ 44430c70-8435-11eb-0e8f-c94b1b09b73e
html"""
<h2>Problem 322: Binomial coefficients divisible by 10</h2>
<p>
Let T(<var>m</var>, <var>n</var>) be the number of the binomial coefficients <sup><var>i</var></sup>C<sub><var>n</var></sub> that are divisible by 10 for <var>n</var> ≤ <var>i</var> &lt; <var>m</var>(<var>i</var>, <var>m</var> and <var>n</var> are positive integers).<br />
You are given that T(10<sup>9</sup>, 10<sup>7</sup>-10) = 989697000.
</p>
<p>
Find T(10<sup>18</sup>, 10<sup>12</sup>-10).
</p>
"""

# ╔═╡ 44430c70-8435-11eb-1e3e-c7eb5ff7bebd
begin
    submit_answer(nothing; prob_num=322)
end

# ╔═╡ 44430c70-8435-11eb-29e2-27eb6fd08afa
html"""
<h2>Problem 323: Bitwise-OR operations on random integers</h2>
<p>Let <var>y</var><sub>0</sub>, <var>y</var><sub>1</sub>, <var>y</var><sub>2</sub>,... be a sequence of random unsigned 32 bit integers<br />
(i.e. 0 ≤ <var>y<sub>i</sub></var> &lt; 2<sup>32</sup>, every value equally likely).</p>
<p>For the sequence <var>x<sub>i</sub></var> the following recursion is given:<br /></p><ul><li><var>x</var><sub>0</sub> = 0 and</li>
<li><var>x<sub>i</sub></var> = <var>x</var><sub><var>i</var>-<i>1</i></sub><b>|</b> <var>y</var><sub><var>i</var>-<i>1</i></sub>, for <var>i</var> &gt; 0. ( <b>|</b> is the bitwise-OR operator)</li>
</ul><p>It can be seen that eventually there will be an index N such that <var>x<sub>i</sub></var> = 2<sup>32</sup> -1 (a bit-pattern of all ones) for all <var>i</var> ≥ N.</p>

<p>Find the expected value of N. <br />
Give your answer rounded to 10 digits after the decimal point.</p>
"""

# ╔═╡ 44430c70-8435-11eb-19fa-67b722e1e3cc
begin
    submit_answer(nothing; prob_num=323)
end

# ╔═╡ 44430c70-8435-11eb-3697-7d4adf6b45bf
html"""
<h2>Problem 324: Building a tower</h2>
<p>Let <var>f</var>(<var>n</var>) represent the number of ways one can fill a 3×3×<var>n</var> tower with blocks of 2×1×1. <br />You're allowed to rotate the blocks in any way you like; however, rotations, reflections etc of the tower itself are counted as distinct.</p>
<p>For example (with <var>q</var> = 100000007) :<br /><var>f</var>(2) = 229,<br /><var>f</var>(4) = 117805,<br /><var>f</var>(10) mod <var>q</var> = 96149360,<br /><var>f</var>(10<sup>3</sup>) mod <var>q</var> = 24806056,<br /><var>f</var>(10<sup>6</sup>) mod <var>q</var> = 30808124.</p>

<p>Find <var>f</var>(10<sup>10000</sup>) mod 100000007.</p>
"""

# ╔═╡ 44430c70-8435-11eb-0ec5-018feb813655
begin
    submit_answer(nothing; prob_num=324)
end

# ╔═╡ 44430c70-8435-11eb-0172-cd6032719da6
html"""
<h2>Problem 325: Stone Game II</h2>
<p>A game is played with two piles of stones and two players.<br />
On each player's turn, the player may remove a number of stones from the larger pile.<br />
The number of stones removed must be a positive multiple of the number of stones in the smaller pile.</p>

<p>E.g. Let the ordered pair $(6,14)$ describe a configuration with 6 stones in the smaller pile and 14 stones in the larger pile, then the first player can remove 6 or 12 stones from the larger pile.</p>

<p>The player taking all the stones from a pile wins the game.</p>

<p>A <dfn>winning configuration</dfn> is one where the first player can force a win. For example, $(1,5)$, $(2,6)$, and $(3,12)$ are winning configurations because the first player can immediately remove all stones in the second pile.</p>

<p>A <dfn>losing configuration</dfn> is one where the second player can force a win, no matter what the first player does. For example, $(2,3)$ and $(3,4)$ are losing configurations: any legal move leaves a winning configuration for the second player.</p>

<p>Define $S(N)$ as the sum of $(x_i + y_i)$ for all losing configurations $(x_i, y_i), 0 \lt x_i \lt y_i \le N$.<br />
We can verify that $S(10) = 211$ and $S(10^4) = 230312207313$.</p>

<p>Find $S(10^{16}) \mod 7^{10}$.</p>
"""

# ╔═╡ 44430c70-8435-11eb-0703-fbed1a58d80a
begin
    submit_answer(nothing; prob_num=325)
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