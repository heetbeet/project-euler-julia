### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 22eb2200-2b5d-11eb-1adb-05e409b40989
include((@__DIR__)*"/shared.jl");

# ╔═╡ 22eb2200-2b5d-11eb-3483-2938c630027b
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

# ╔═╡ 22eb2200-2b5d-11eb-0314-2b633f4113a0
begin
    submit_answer(nothing; prob_num=301)
end

# ╔═╡ 22eb4910-2b5d-11eb-3436-7dd1bd60610c
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

# ╔═╡ 22eb4910-2b5d-11eb-3e17-a52d480325f6
begin
    submit_answer(nothing; prob_num=302)
end

# ╔═╡ 22eb4910-2b5d-11eb-2448-d3cd3658ae21
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

# ╔═╡ 22eb4910-2b5d-11eb-3417-99b9c682f170
begin
    submit_answer(nothing; prob_num=303)
end

# ╔═╡ 22eb4910-2b5d-11eb-07ec-ab008be7cf1b
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

# ╔═╡ 22eb4910-2b5d-11eb-1925-5ffd06ac082e
begin
    submit_answer(nothing; prob_num=304)
end

# ╔═╡ 22eb4910-2b5d-11eb-2611-81ea3aabf42d
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

# ╔═╡ 22eb4910-2b5d-11eb-03b9-ed52f9c91383
begin
    submit_answer(nothing; prob_num=305)
end

# ╔═╡ 22eb4910-2b5d-11eb-0c55-41c0197b5916
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

# ╔═╡ 22eb4910-2b5d-11eb-3610-55456bb96762
begin
    submit_answer(nothing; prob_num=306)
end

# ╔═╡ 22eb4910-2b5d-11eb-353d-c3f4bd0257c4
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

# ╔═╡ 22eb4910-2b5d-11eb-26cf-5bcd0e157899
begin
    submit_answer(nothing; prob_num=307)
end

# ╔═╡ 22eb4910-2b5d-11eb-1db5-655b92e63494
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

# ╔═╡ 22eb4910-2b5d-11eb-1abe-df9fc2754586
begin
    submit_answer(nothing; prob_num=308)
end

# ╔═╡ 22eb4910-2b5d-11eb-0625-0b3c7a9bea39
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

# ╔═╡ 22eb4910-2b5d-11eb-0c23-e39d4513fb13
begin
    submit_answer(nothing; prob_num=309)
end

# ╔═╡ 22eb4910-2b5d-11eb-14f9-abcb018134d2
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

# ╔═╡ 22eb4910-2b5d-11eb-3eff-cdbba2d52e16
begin
    submit_answer(nothing; prob_num=310)
end

# ╔═╡ 22eb4910-2b5d-11eb-10b3-f16b7b002aab
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

# ╔═╡ 22eb4910-2b5d-11eb-3760-b79ca7e349ba
begin
    submit_answer(nothing; prob_num=311)
end

# ╔═╡ 22eb4910-2b5d-11eb-2446-279dbe0d4da7
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

# ╔═╡ 22eb4910-2b5d-11eb-3d2e-b5135915d144
begin
    submit_answer(nothing; prob_num=312)
end

# ╔═╡ 22eb7020-2b5d-11eb-0918-639bd1992287
html"""
<h2>Problem 313: Sliding game</h2>
<p>In a sliding game a counter may slide horizontally or vertically into an empty space. The objective of the game is to move the red counter from the top left corner of a grid to the bottom right corner; the space always starts in the bottom right corner. For example, the following sequence of pictures show how the game can be completed in five moves on a 2 by 2 grid.</p>

<div align="center"><img src="project/images/p313_sliding_game_1.gif" alt="p313_sliding_game_1.gif" /></div>

<p>Let S(m,n) represent the minimum number of moves to complete the game on an m by n grid. For example, it can be verified that S(5,4) = 25.</p>

<div align="center"><img src="project/images/p313_sliding_game_2.gif" alt="p313_sliding_game_2.gif" /></div>

<p>There are exactly 5482 grids for which S(m,n) = p<sup>2</sup>, where p &lt; 100 is prime.</p>

<p>How many grids does S(m,n) = p<sup>2</sup>, where p &lt; 10<sup>6</sup> is prime?</p>
"""

# ╔═╡ 22eb7020-2b5d-11eb-1b24-83e9770ac0d4
begin
    submit_answer(nothing; prob_num=313)
end

# ╔═╡ 22eb7020-2b5d-11eb-0312-2d963507dd55
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

# ╔═╡ 22eb7020-2b5d-11eb-1c0d-8540a69fa332
begin
    submit_answer(nothing; prob_num=314)
end

# ╔═╡ 22eb7020-2b5d-11eb-23b9-1518f75296a4
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

# ╔═╡ 22eb7020-2b5d-11eb-0667-6da4c695032f
begin
    submit_answer(nothing; prob_num=315)
end

# ╔═╡ 22eb7020-2b5d-11eb-21c9-8ddd8db9aa58
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

# ╔═╡ 22eb7020-2b5d-11eb-3076-0120dcaa719d
begin
    submit_answer(nothing; prob_num=316)
end

# ╔═╡ 22eb7020-2b5d-11eb-32fa-13505c8783bf
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

# ╔═╡ 22eb7020-2b5d-11eb-15ed-a3fec62ef9aa
begin
    submit_answer(nothing; prob_num=317)
end

# ╔═╡ 22eb7020-2b5d-11eb-1e0f-61f2ab599841
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

# ╔═╡ 22eb7020-2b5d-11eb-31f7-09b009e2e2fa
begin
    submit_answer(nothing; prob_num=318)
end

# ╔═╡ 22eb7020-2b5d-11eb-25e9-770da986c3a6
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

# ╔═╡ 22eb7020-2b5d-11eb-39d1-6dd8bf3dfcd9
begin
    submit_answer(nothing; prob_num=319)
end

# ╔═╡ 22eb7020-2b5d-11eb-2cd8-3dfcefb9437d
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

# ╔═╡ 22eb7020-2b5d-11eb-038c-1f494eb47df8
begin
    submit_answer(nothing; prob_num=320)
end

# ╔═╡ 22eb7020-2b5d-11eb-017f-8dde0814c191
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

# ╔═╡ 22eb7020-2b5d-11eb-0b6f-91d6d5eb191d
begin
    submit_answer(nothing; prob_num=321)
end

# ╔═╡ 22eb7020-2b5d-11eb-3980-b902db24a49c
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

# ╔═╡ 22eb7020-2b5d-11eb-383e-7d432a5f492d
begin
    submit_answer(nothing; prob_num=322)
end

# ╔═╡ 22eb9730-2b5d-11eb-0aa6-877b1218e536
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

# ╔═╡ 22eb9730-2b5d-11eb-2392-037f526e04b7
begin
    submit_answer(nothing; prob_num=323)
end

# ╔═╡ 22eb9730-2b5d-11eb-0d28-45628c07a799
html"""
<h2>Problem 324: Building a tower</h2>
<p>Let <var>f</var>(<var>n</var>) represent the number of ways one can fill a 3×3×<var>n</var> tower with blocks of 2×1×1. <br />You're allowed to rotate the blocks in any way you like; however, rotations, reflections etc of the tower itself are counted as distinct.</p>
<p>For example (with <var>q</var> = 100000007) :<br /><var>f</var>(2) = 229,<br /><var>f</var>(4) = 117805,<br /><var>f</var>(10) mod <var>q</var> = 96149360,<br /><var>f</var>(10<sup>3</sup>) mod <var>q</var> = 24806056,<br /><var>f</var>(10<sup>6</sup>) mod <var>q</var> = 30808124.</p>

<p>Find <var>f</var>(10<sup>10000</sup>) mod 100000007.</p>
"""

# ╔═╡ 22eb9730-2b5d-11eb-0e1a-ed8eca50294d
begin
    submit_answer(nothing; prob_num=324)
end

# ╔═╡ 22eb9730-2b5d-11eb-17f4-ab17c21a4958
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

# ╔═╡ 22eb9730-2b5d-11eb-18ea-15e6d71aad91
begin
    submit_answer(nothing; prob_num=325)
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
# ╠═22df1410-2b5d-11eb-2197-4566fc4e60e9
# ╟─22df1410-2b5d-11eb-230d-b1e602807296
# ╠═22df1410-2b5d-11eb-0a03-459fbb3d03bf
# ╟─22df1410-2b5d-11eb-18f5-852e00dd1b68
# ╠═22df1410-2b5d-11eb-15bb-9bec78dcfc9a
# ╟─22df1410-2b5d-11eb-0a75-1df6ccc35627
# ╠═22df1410-2b5d-11eb-1d3b-d56e96735c11
# ╟─22df1410-2b5d-11eb-3e9d-6f98c9743b6a
# ╠═22df1410-2b5d-11eb-34e0-fb612f6f7b91
# ╟─22df1410-2b5d-11eb-3b5c-bfc6ab314256
# ╠═22df1410-2b5d-11eb-0c03-0b51d97e4d1b
# ╟─22df1410-2b5d-11eb-01cb-617bb2d0cd19
# ╠═22df1410-2b5d-11eb-35e3-4b6240756705
# ╟─22df1410-2b5d-11eb-3114-9343e3b33b13
# ╠═22df1410-2b5d-11eb-0833-35df467f1021
# ╟─22df1410-2b5d-11eb-34b2-5925ad970bda
# ╠═22df1410-2b5d-11eb-1628-2f788feea8a2
# ╟─22df3b20-2b5d-11eb-27ca-d9cefbc36036
# ╠═22df3b20-2b5d-11eb-25c7-f505101c397a
# ╟─22df3b20-2b5d-11eb-0868-7db30340d584
# ╠═22df3b20-2b5d-11eb-338c-a92fe2a930f0
# ╟─22df3b20-2b5d-11eb-2632-cb7c01dddf1f
# ╠═22df3b20-2b5d-11eb-1f5f-7fb83ce02077
# ╟─22df3b20-2b5d-11eb-1b77-01bac1c17e77
# ╠═22df3b20-2b5d-11eb-1f2b-d5e81a874851
# ╟─22df3b20-2b5d-11eb-3cbe-67d24ec44e4d
# ╠═22df3b20-2b5d-11eb-2f75-d3d063748735
# ╟─22df3b20-2b5d-11eb-30b9-772856e4674b
# ╠═22df3b20-2b5d-11eb-385a-09bbe20f2cbf
# ╟─22df3b20-2b5d-11eb-05e9-256beb06445e
# ╠═22df3b20-2b5d-11eb-1e15-971da0e2453f
# ╟─22df3b20-2b5d-11eb-2513-2bdcc33c3723
# ╠═22df3b20-2b5d-11eb-3bda-dd875c5938a2
# ╟─22df3b20-2b5d-11eb-2f3f-af88b73e0c3a
# ╠═22df3b20-2b5d-11eb-1002-5de37df0c625
# ╟─22df6230-2b5d-11eb-1a15-4d30ab3a6c50
# ╠═22df6230-2b5d-11eb-05d6-390c2b87c115
# ╟─22df6230-2b5d-11eb-2365-432479aef901
# ╠═22df6230-2b5d-11eb-25d0-9de9bdbf72c1
# ╟─22df6230-2b5d-11eb-1a23-d5d0355ccae7
# ╠═22df6230-2b5d-11eb-3486-ff6571c252f3
# ╟─22df6230-2b5d-11eb-3b5d-dba3adc0424d
# ╠═22df6230-2b5d-11eb-361f-012fa621a848
# ╟─22df6230-2b5d-11eb-06ed-f75d73af1e20
# ╠═22df6230-2b5d-11eb-2fa8-e71fddd87269
# ╟─22df6230-2b5d-11eb-184c-05b841cf650a
# ╠═22df6230-2b5d-11eb-3f73-83d97a98271e
# ╟─22df8940-2b5d-11eb-2542-df8ba5107b34
# ╠═22df8940-2b5d-11eb-300e-c59153af2e7b
# ╟─22df8940-2b5d-11eb-2433-25dee9c66d45
# ╠═22df8940-2b5d-11eb-0c6e-57c847695159
# ╠═22e26f70-2b5d-11eb-1e2b-190de2fee4cf
# ╟─22e26f70-2b5d-11eb-2022-9780eae916d3
# ╠═22e26f70-2b5d-11eb-0a6a-cb8b8348c07d
# ╟─22e29680-2b5d-11eb-2d39-b7b2230f8fa2
# ╠═22e29680-2b5d-11eb-3ea0-a761248a90f4
# ╟─22e29680-2b5d-11eb-116e-81405e1fb749
# ╠═22e29680-2b5d-11eb-192d-1525a6fb74bf
# ╟─22e29680-2b5d-11eb-1079-69eacaf4860c
# ╠═22e29680-2b5d-11eb-3fd7-d53b79113799
# ╟─22e29680-2b5d-11eb-04ee-25f8dfe9e367
# ╠═22e29680-2b5d-11eb-3cbf-97a643d05628
# ╟─22e29680-2b5d-11eb-04b4-5b44696ed582
# ╠═22e29680-2b5d-11eb-388a-a18caaf7f19d
# ╟─22e29680-2b5d-11eb-0d0a-1fedb4597ac2
# ╠═22e29680-2b5d-11eb-2da9-19f4e0cbfb44
# ╟─22e29680-2b5d-11eb-19bd-c9c6b474ed3b
# ╠═22e29680-2b5d-11eb-2860-bb47fa205692
# ╟─22e29680-2b5d-11eb-3605-a5e78f9ab1ee
# ╠═22e29680-2b5d-11eb-2762-174bbd15c3e4
# ╟─22e29680-2b5d-11eb-3dc0-f72bc76bc61a
# ╠═22e29680-2b5d-11eb-1506-d1e2f1a013e6
# ╟─22e29680-2b5d-11eb-1db1-0d7540012e0c
# ╠═22e29680-2b5d-11eb-044b-e3194ecff776
# ╟─22e29680-2b5d-11eb-2a4a-abb5a170e148
# ╠═22e29680-2b5d-11eb-181a-9539922cde66
# ╟─22e2bd90-2b5d-11eb-0ea1-8f56ac409673
# ╠═22e2bd90-2b5d-11eb-28e0-e5cb3ad1ce33
# ╟─22e2bd90-2b5d-11eb-1289-b94465758128
# ╠═22e2bd90-2b5d-11eb-1fa6-bd1ae5a44dc5
# ╟─22e2bd90-2b5d-11eb-38db-29be13293161
# ╠═22e2bd90-2b5d-11eb-3a66-dfbba8a2a934
# ╟─22e2bd90-2b5d-11eb-0098-f5f5e50fb778
# ╠═22e2bd90-2b5d-11eb-29c9-67d07af6a073
# ╟─22e2bd90-2b5d-11eb-1d88-8f0f05f69212
# ╠═22e2bd90-2b5d-11eb-38db-69cb14696107
# ╟─22e2bd90-2b5d-11eb-2053-a75a97762fd8
# ╠═22e2bd90-2b5d-11eb-0a5c-43eca718ef56
# ╟─22e2bd90-2b5d-11eb-3262-4fc715a4a1c6
# ╠═22e2bd90-2b5d-11eb-1db1-b1e56386ebb8
# ╟─22e2bd90-2b5d-11eb-1361-41bd4e7940e6
# ╠═22e2bd90-2b5d-11eb-38ba-b7c81dc61a85
# ╟─22e2bd90-2b5d-11eb-068f-d36f4e600684
# ╠═22e2bd90-2b5d-11eb-0f35-13b546782f04
# ╟─22e2bd90-2b5d-11eb-1810-3d5a39cb8004
# ╠═22e2bd90-2b5d-11eb-3378-3da1fffbf133
# ╟─22e2bd90-2b5d-11eb-12a9-afeb7aae9e36
# ╠═22e2bd90-2b5d-11eb-1bcb-616eb36ff032
# ╟─22e2bd90-2b5d-11eb-0257-17468ecc6e71
# ╠═22e2bd90-2b5d-11eb-35e9-31593fdebb15
# ╟─22e2bd90-2b5d-11eb-2dd8-053709c20895
# ╠═22e2bd90-2b5d-11eb-12c1-6fde18c56bb0
# ╠═22e3f610-2b5d-11eb-136f-6732c6179af1
# ╟─22e3f610-2b5d-11eb-028c-8b6b87282d2a
# ╠═22e3f610-2b5d-11eb-3db3-2ff8bfdf5585
# ╟─22e3f610-2b5d-11eb-381d-7f1950b0bb00
# ╠═22e3f610-2b5d-11eb-0bfc-11b0ba263537
# ╟─22e41d20-2b5d-11eb-2494-c380c3b3a50a
# ╠═22e41d20-2b5d-11eb-1215-3f8b6facc1b8
# ╟─22e41d20-2b5d-11eb-3707-e1ab6a4841fc
# ╠═22e41d20-2b5d-11eb-0d7a-017f5afb8dd9
# ╟─22e41d20-2b5d-11eb-2abf-93d72fad9d6b
# ╠═22e41d20-2b5d-11eb-3c97-d7e687894145
# ╟─22e41d20-2b5d-11eb-37aa-cbe7efb1bd9a
# ╠═22e41d20-2b5d-11eb-0939-c1831698c8cc
# ╟─22e41d20-2b5d-11eb-3d17-59ecb1ff2bc9
# ╠═22e41d20-2b5d-11eb-3a62-1be450e46139
# ╟─22e41d20-2b5d-11eb-20d5-5944cf9ebe00
# ╠═22e41d20-2b5d-11eb-2a21-b7298072410e
# ╟─22e41d20-2b5d-11eb-00e4-99e8b28a94ee
# ╠═22e41d20-2b5d-11eb-1503-cb0cd5d30f5b
# ╟─22e41d20-2b5d-11eb-060f-f50eaf916224
# ╠═22e41d20-2b5d-11eb-362d-0de577794da6
# ╟─22e41d20-2b5d-11eb-39d4-15b044c678d8
# ╠═22e41d20-2b5d-11eb-2164-97643a75b7e9
# ╟─22e44430-2b5d-11eb-1332-43472461f067
# ╠═22e44430-2b5d-11eb-2bb5-9f08a172d151
# ╟─22e44430-2b5d-11eb-00e6-89af964a74a2
# ╠═22e44430-2b5d-11eb-3e8d-7923f8210c51
# ╟─22e44430-2b5d-11eb-1e23-6faab01bdf96
# ╠═22e44430-2b5d-11eb-3de6-99ff5d9b6f39
# ╟─22e44430-2b5d-11eb-2421-776704f35067
# ╠═22e44430-2b5d-11eb-0170-1f9933bed32f
# ╟─22e44430-2b5d-11eb-214a-0f8b06563f47
# ╠═22e44430-2b5d-11eb-0234-1340e58fbd64
# ╟─22e44430-2b5d-11eb-0b3f-4dca3eb68993
# ╠═22e44430-2b5d-11eb-3fcd-51c229d0ed5f
# ╟─22e44430-2b5d-11eb-1785-1f82aba72e07
# ╠═22e44430-2b5d-11eb-0328-15f7dbf8650e
# ╟─22e44430-2b5d-11eb-075e-0fbc3e60a1cd
# ╠═22e44430-2b5d-11eb-17a2-3f8c8c3a379f
# ╟─22e44430-2b5d-11eb-2123-e9e5f935206d
# ╠═22e44430-2b5d-11eb-15ea-b1d38c67f073
# ╟─22e44430-2b5d-11eb-1a6c-634b890267f2
# ╠═22e44430-2b5d-11eb-3a4d-b5e873db1dba
# ╟─22e44430-2b5d-11eb-1505-3f7dbd756ceb
# ╠═22e44430-2b5d-11eb-2274-573c546d4e32
# ╟─22e46b40-2b5d-11eb-29ca-37e9f3decfd5
# ╠═22e46b40-2b5d-11eb-3b0e-b771da38f5ab
# ╟─22e46b40-2b5d-11eb-12ac-3f6b604b7457
# ╠═22e46b40-2b5d-11eb-1fbd-97a64312d694
# ╟─22e46b40-2b5d-11eb-344e-993f3ea7480e
# ╠═22e46b40-2b5d-11eb-0079-07c8a2dfcb08
# ╠═22e6b530-2b5d-11eb-13b9-03a8d61528cd
# ╟─22e6b530-2b5d-11eb-24e9-bf62980df24c
# ╠═22e6b530-2b5d-11eb-3bc2-dd70c8aa3806
# ╟─22e6b530-2b5d-11eb-30aa-275a98f40c9f
# ╠═22e6b530-2b5d-11eb-2407-93c5840886a9
# ╟─22e6b530-2b5d-11eb-35a8-73d0fdd2cdcc
# ╠═22e6b530-2b5d-11eb-3638-e3e5a18eb93f
# ╟─22e6b530-2b5d-11eb-17c8-51033798208b
# ╠═22e6b530-2b5d-11eb-1451-c1feeab421d3
# ╟─22e6b530-2b5d-11eb-3309-83802c034dab
# ╠═22e6b530-2b5d-11eb-158b-89ebbf6e37a0
# ╟─22e6b530-2b5d-11eb-0087-032e0d3d2655
# ╠═22e6b530-2b5d-11eb-1157-210876d7f98c
# ╟─22e6b530-2b5d-11eb-1325-099d912d6a4a
# ╠═22e6b530-2b5d-11eb-0df0-c338c55360ff
# ╟─22e6b530-2b5d-11eb-34ce-a77db849940f
# ╠═22e6b530-2b5d-11eb-3aa5-db78fbc6e530
# ╟─22e6dc40-2b5d-11eb-2d02-87d333656509
# ╠═22e6dc40-2b5d-11eb-146e-9195b0082115
# ╟─22e6dc40-2b5d-11eb-01e2-6b09f727d2e0
# ╠═22e6dc40-2b5d-11eb-2243-7d3db8578030
# ╟─22e6dc40-2b5d-11eb-079b-e30b376b2181
# ╠═22e6dc40-2b5d-11eb-2dbb-97350278452f
# ╟─22e6dc40-2b5d-11eb-086a-6fe0915d32a4
# ╠═22e6dc40-2b5d-11eb-0f01-2f614bf9366d
# ╟─22e6dc40-2b5d-11eb-2669-231fe76b0228
# ╠═22e6dc40-2b5d-11eb-0eb1-79cc0f48a853
# ╟─22e6dc40-2b5d-11eb-19eb-9510ae92d6a9
# ╠═22e6dc40-2b5d-11eb-29fd-73ba751ce445
# ╟─22e6dc40-2b5d-11eb-02ae-670a4645c990
# ╠═22e6dc40-2b5d-11eb-3114-37b06dd38068
# ╟─22e6dc40-2b5d-11eb-07a8-bd7d4475eec7
# ╠═22e6dc40-2b5d-11eb-298c-2ba31aa7feda
# ╟─22e6dc40-2b5d-11eb-3951-ff0e3847a617
# ╠═22e6dc40-2b5d-11eb-294c-89993e5b7fc1
# ╟─22e6dc40-2b5d-11eb-3407-23310a3ca41d
# ╠═22e6dc40-2b5d-11eb-26af-5b3b1028569d
# ╟─22e6dc40-2b5d-11eb-2594-930eacb79df1
# ╠═22e6dc40-2b5d-11eb-1791-7508fc2602a7
# ╟─22e6dc40-2b5d-11eb-0a17-79b42b7fefcd
# ╠═22e6dc40-2b5d-11eb-058d-195d24e9d562
# ╟─22e6dc40-2b5d-11eb-0225-af9983eebc81
# ╠═22e6dc40-2b5d-11eb-1143-53ce5d5bff24
# ╟─22e7034e-2b5d-11eb-3f89-fba77f961adb
# ╠═22e7034e-2b5d-11eb-0493-415e09b7ffb8
# ╟─22e7034e-2b5d-11eb-3889-dbcce468a48c
# ╠═22e7034e-2b5d-11eb-3e07-d302f885b917
# ╟─22e7034e-2b5d-11eb-399e-616c8f3f3a7e
# ╠═22e7034e-2b5d-11eb-2134-df64ceb3db14
# ╟─22e7034e-2b5d-11eb-1a4d-c7c528c9926a
# ╠═22e7034e-2b5d-11eb-2bd6-bdb40a785cde
# ╠═22e7edb0-2b5d-11eb-2e2b-6b2295156a33
# ╟─22e7edb0-2b5d-11eb-04e1-03d5e012e590
# ╠═22e7edb0-2b5d-11eb-0277-9304b1f2f44e
# ╟─22e7edb0-2b5d-11eb-0db9-9536bf795892
# ╠═22e7edb0-2b5d-11eb-0f3b-b3909391103b
# ╟─22e7edb0-2b5d-11eb-2c65-b5d03d0bdeb8
# ╠═22e7edb0-2b5d-11eb-1152-a1b9b6c7cb31
# ╟─22e7edb0-2b5d-11eb-1eac-4989362cd6d4
# ╠═22e7edb0-2b5d-11eb-39d6-1b3bca046ecc
# ╟─22e7edb0-2b5d-11eb-2e11-edf2fc01e07b
# ╠═22e7edb0-2b5d-11eb-2bb9-1bcf4b75f473
# ╟─22e814c0-2b5d-11eb-1602-53af70befcdd
# ╠═22e814c0-2b5d-11eb-34db-831baf8770cb
# ╟─22e814c0-2b5d-11eb-06bf-3da39d6ff73c
# ╠═22e814c0-2b5d-11eb-16da-b39400161cbd
# ╟─22e814c0-2b5d-11eb-1769-41edcb0b9c4c
# ╠═22e814c0-2b5d-11eb-3169-ad9d78efaa7a
# ╟─22e814c0-2b5d-11eb-0487-4b6514e9a2a0
# ╠═22e814c0-2b5d-11eb-17de-9da7c8ffe6fd
# ╟─22e814c0-2b5d-11eb-19bf-2b3fdf5f3929
# ╠═22e814c0-2b5d-11eb-23c2-cf1ca9d64209
# ╟─22e814c0-2b5d-11eb-19af-f5da9439e40a
# ╠═22e814c0-2b5d-11eb-1866-d5cb5bde6a61
# ╟─22e814c0-2b5d-11eb-332b-b97d4d02f9cb
# ╠═22e814c0-2b5d-11eb-3c31-b3e6e5b14ac5
# ╟─22e814c0-2b5d-11eb-2562-1f5e46f27936
# ╠═22e814c0-2b5d-11eb-0394-eb819328e726
# ╟─22e814c0-2b5d-11eb-0537-7bb418b9d000
# ╠═22e814c0-2b5d-11eb-2d60-7f2f608be981
# ╟─22e814c0-2b5d-11eb-2a46-356d43185378
# ╠═22e814c0-2b5d-11eb-186b-b7262b7ea932
# ╟─22e814c0-2b5d-11eb-0721-d396341215cf
# ╠═22e814c0-2b5d-11eb-0274-99854e0cd0e6
# ╟─22e814c0-2b5d-11eb-0077-3dbf7080694c
# ╠═22e814c0-2b5d-11eb-003e-4bfaa6418496
# ╟─22e814c0-2b5d-11eb-29f6-e1171775db09
# ╠═22e814c0-2b5d-11eb-39f2-7be324ccc639
# ╟─22e814c0-2b5d-11eb-3e4d-a76ae866ff06
# ╠═22e814c0-2b5d-11eb-38d4-f79cd5a1c929
# ╟─22e814c0-2b5d-11eb-359b-e5e749bae0ee
# ╠═22e814c0-2b5d-11eb-1563-e9936ce902dd
# ╟─22e83bd0-2b5d-11eb-1547-f3085e978db8
# ╠═22e83bd0-2b5d-11eb-34e7-8bfb2687ee99
# ╟─22e83bd0-2b5d-11eb-3f6a-6d208ef5a2aa
# ╠═22e83bd0-2b5d-11eb-2648-d59730e65c66
# ╟─22e83bd0-2b5d-11eb-1e75-7bd1ef12fc5a
# ╠═22e83bd0-2b5d-11eb-1457-cd5c365e0841
# ╟─22e83bd0-2b5d-11eb-0fe2-29517a1e99a4
# ╠═22e83bd0-2b5d-11eb-1c5b-f13f563c874a
# ╟─22e83bd0-2b5d-11eb-0fa7-6de991f509c5
# ╠═22e83bd0-2b5d-11eb-246d-a734cd86bf07
# ╠═22eb2200-2b5d-11eb-1adb-05e409b40989
# ╟─22eb2200-2b5d-11eb-3483-2938c630027b
# ╠═22eb2200-2b5d-11eb-0314-2b633f4113a0
# ╟─22eb4910-2b5d-11eb-3436-7dd1bd60610c
# ╠═22eb4910-2b5d-11eb-3e17-a52d480325f6
# ╟─22eb4910-2b5d-11eb-2448-d3cd3658ae21
# ╠═22eb4910-2b5d-11eb-3417-99b9c682f170
# ╟─22eb4910-2b5d-11eb-07ec-ab008be7cf1b
# ╠═22eb4910-2b5d-11eb-1925-5ffd06ac082e
# ╟─22eb4910-2b5d-11eb-2611-81ea3aabf42d
# ╠═22eb4910-2b5d-11eb-03b9-ed52f9c91383
# ╟─22eb4910-2b5d-11eb-0c55-41c0197b5916
# ╠═22eb4910-2b5d-11eb-3610-55456bb96762
# ╟─22eb4910-2b5d-11eb-353d-c3f4bd0257c4
# ╠═22eb4910-2b5d-11eb-26cf-5bcd0e157899
# ╟─22eb4910-2b5d-11eb-1db5-655b92e63494
# ╠═22eb4910-2b5d-11eb-1abe-df9fc2754586
# ╟─22eb4910-2b5d-11eb-0625-0b3c7a9bea39
# ╠═22eb4910-2b5d-11eb-0c23-e39d4513fb13
# ╟─22eb4910-2b5d-11eb-14f9-abcb018134d2
# ╠═22eb4910-2b5d-11eb-3eff-cdbba2d52e16
# ╟─22eb4910-2b5d-11eb-10b3-f16b7b002aab
# ╠═22eb4910-2b5d-11eb-3760-b79ca7e349ba
# ╟─22eb4910-2b5d-11eb-2446-279dbe0d4da7
# ╠═22eb4910-2b5d-11eb-3d2e-b5135915d144
# ╟─22eb7020-2b5d-11eb-0918-639bd1992287
# ╠═22eb7020-2b5d-11eb-1b24-83e9770ac0d4
# ╟─22eb7020-2b5d-11eb-0312-2d963507dd55
# ╠═22eb7020-2b5d-11eb-1c0d-8540a69fa332
# ╟─22eb7020-2b5d-11eb-23b9-1518f75296a4
# ╠═22eb7020-2b5d-11eb-0667-6da4c695032f
# ╟─22eb7020-2b5d-11eb-21c9-8ddd8db9aa58
# ╠═22eb7020-2b5d-11eb-3076-0120dcaa719d
# ╟─22eb7020-2b5d-11eb-32fa-13505c8783bf
# ╠═22eb7020-2b5d-11eb-15ed-a3fec62ef9aa
# ╟─22eb7020-2b5d-11eb-1e0f-61f2ab599841
# ╠═22eb7020-2b5d-11eb-31f7-09b009e2e2fa
# ╟─22eb7020-2b5d-11eb-25e9-770da986c3a6
# ╠═22eb7020-2b5d-11eb-39d1-6dd8bf3dfcd9
# ╟─22eb7020-2b5d-11eb-2cd8-3dfcefb9437d
# ╠═22eb7020-2b5d-11eb-038c-1f494eb47df8
# ╟─22eb7020-2b5d-11eb-017f-8dde0814c191
# ╠═22eb7020-2b5d-11eb-0b6f-91d6d5eb191d
# ╟─22eb7020-2b5d-11eb-3980-b902db24a49c
# ╠═22eb7020-2b5d-11eb-383e-7d432a5f492d
# ╟─22eb9730-2b5d-11eb-0aa6-877b1218e536
# ╠═22eb9730-2b5d-11eb-2392-037f526e04b7
# ╟─22eb9730-2b5d-11eb-0d28-45628c07a799
# ╠═22eb9730-2b5d-11eb-0e1a-ed8eca50294d
# ╟─22eb9730-2b5d-11eb-17f4-ab17c21a4958
# ╠═22eb9730-2b5d-11eb-18ea-15e6d71aad91