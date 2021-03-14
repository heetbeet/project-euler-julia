### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1aca66e0-84a3-11eb-1e93-831e8868cd9b
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1aca66e0-84a3-11eb-0e56-05e5dbec5149
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

# ╔═╡ 1aca66e0-84a3-11eb-09c0-bb0f47dcba10
begin
    submit_answer(nothing; prob_num=301)
end

# ╔═╡ 1aca66e0-84a3-11eb-331d-31e10b21fba4
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

# ╔═╡ 1aca66e0-84a3-11eb-18d8-7b6b64dbda1b
begin
    submit_answer(nothing; prob_num=302)
end

# ╔═╡ 1aca66e0-84a3-11eb-1100-096bae39a476
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

# ╔═╡ 1aca66e0-84a3-11eb-31b6-2d787779f96b
begin
    submit_answer(nothing; prob_num=303)
end

# ╔═╡ 1aca66e0-84a3-11eb-2e9f-9dba4fe8cbcb
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

# ╔═╡ 1aca66e0-84a3-11eb-1cdf-27dbf2569e7d
begin
    submit_answer(nothing; prob_num=304)
end

# ╔═╡ 1aca66e0-84a3-11eb-3169-9d830cb49c1f
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

# ╔═╡ 1aca66e0-84a3-11eb-3f29-1d06e4dcb202
begin
    submit_answer(nothing; prob_num=305)
end

# ╔═╡ 1aca66e0-84a3-11eb-38aa-5f51aae3d837
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

# ╔═╡ 1aca66e0-84a3-11eb-3e23-cf5a06ed6dbe
begin
    submit_answer(nothing; prob_num=306)
end

# ╔═╡ 1aca66e0-84a3-11eb-006d-6b4a9d8db2da
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

# ╔═╡ 1aca66e0-84a3-11eb-1b58-f9a317f42e8f
begin
    submit_answer(nothing; prob_num=307)
end

# ╔═╡ 1aca66e0-84a3-11eb-0cd6-535255b492bb
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

# ╔═╡ 1aca66e0-84a3-11eb-1612-775f61746973
begin
    submit_answer(nothing; prob_num=308)
end

# ╔═╡ 1aca66e0-84a3-11eb-20f6-5fc024946f77
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

# ╔═╡ 1aca66e0-84a3-11eb-0163-5d4318beadc4
begin
    submit_answer(nothing; prob_num=309)
end

# ╔═╡ 1aca66e0-84a3-11eb-2921-c9a91fff1d2a
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

# ╔═╡ 1aca66e0-84a3-11eb-08f2-5532708b98f0
begin
    submit_answer(nothing; prob_num=310)
end

# ╔═╡ 1aca66e0-84a3-11eb-0abc-65afdafad7c1
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

# ╔═╡ 1aca66e0-84a3-11eb-1c87-b7f474224c38
begin
    submit_answer(nothing; prob_num=311)
end

# ╔═╡ 1aca66e0-84a3-11eb-0534-5f2085b5afab
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

# ╔═╡ 1aca66e0-84a3-11eb-3cd8-63595c6001d1
begin
    submit_answer(nothing; prob_num=312)
end

# ╔═╡ 1aca66e0-84a3-11eb-219a-397d6ecab27e
html"""
<h2>Problem 313: Sliding game</h2>
<p>In a sliding game a counter may slide horizontally or vertically into an empty space. The objective of the game is to move the red counter from the top left corner of a grid to the bottom right corner; the space always starts in the bottom right corner. For example, the following sequence of pictures show how the game can be completed in five moves on a 2 by 2 grid.</p>

<div align="center"><img src="project/images/p313_sliding_game_1.gif" alt="p313_sliding_game_1.gif" /></div>

<p>Let S(m,n) represent the minimum number of moves to complete the game on an m by n grid. For example, it can be verified that S(5,4) = 25.</p>

<div align="center"><img src="project/images/p313_sliding_game_2.gif" alt="p313_sliding_game_2.gif" /></div>

<p>There are exactly 5482 grids for which S(m,n) = p<sup>2</sup>, where p &lt; 100 is prime.</p>

<p>How many grids does S(m,n) = p<sup>2</sup>, where p &lt; 10<sup>6</sup> is prime?</p>
"""

# ╔═╡ 1aca66e0-84a3-11eb-1816-b7b1c5379398
begin
    submit_answer(nothing; prob_num=313)
end

# ╔═╡ 1aca66e0-84a3-11eb-263c-b9e813f5a501
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

# ╔═╡ 1aca66e0-84a3-11eb-0ed7-adba53f9f0be
begin
    submit_answer(nothing; prob_num=314)
end

# ╔═╡ 1aca66e0-84a3-11eb-12d7-8f662c8273f0
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

# ╔═╡ 1aca66e0-84a3-11eb-2856-37629f975227
begin
    submit_answer(nothing; prob_num=315)
end

# ╔═╡ 1aca66e0-84a3-11eb-01ba-fdc0b15d7a51
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

# ╔═╡ 1aca66e0-84a3-11eb-3399-13f64e2766f5
begin
    submit_answer(nothing; prob_num=316)
end

# ╔═╡ 1aca66e0-84a3-11eb-0a63-fbc5b04e4937
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

# ╔═╡ 1aca66e0-84a3-11eb-01cd-b55a77e0ed1c
begin
    submit_answer(nothing; prob_num=317)
end

# ╔═╡ 1aca66e0-84a3-11eb-3119-7f560faae9b6
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

# ╔═╡ 1aca66e0-84a3-11eb-27f0-55f11692a3e3
begin
    submit_answer(nothing; prob_num=318)
end

# ╔═╡ 1aca66e0-84a3-11eb-2a43-ad64b259f7d2
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

# ╔═╡ 1aca66e0-84a3-11eb-1708-d32c8353c1d1
begin
    submit_answer(nothing; prob_num=319)
end

# ╔═╡ 1aca66e0-84a3-11eb-2f2f-11086b6add37
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

# ╔═╡ 1aca66e0-84a3-11eb-1621-570ed77bee35
begin
    submit_answer(nothing; prob_num=320)
end

# ╔═╡ 1aca66e0-84a3-11eb-0fd5-c7c81f9dff4e
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

# ╔═╡ 1aca66e0-84a3-11eb-2058-3b01eb2b09cb
begin
    submit_answer(nothing; prob_num=321)
end

# ╔═╡ 1aca66e0-84a3-11eb-31af-7bad8193d7f9
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

# ╔═╡ 1aca66e0-84a3-11eb-1288-6134a30e1b1a
begin
    submit_answer(nothing; prob_num=322)
end

# ╔═╡ 1aca66e0-84a3-11eb-07ea-39949551fc05
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

# ╔═╡ 1aca66e0-84a3-11eb-0bdb-898305fef720
begin
    submit_answer(nothing; prob_num=323)
end

# ╔═╡ 1aca66e0-84a3-11eb-3a9a-03c4b28dd1ce
html"""
<h2>Problem 324: Building a tower</h2>
<p>Let <var>f</var>(<var>n</var>) represent the number of ways one can fill a 3×3×<var>n</var> tower with blocks of 2×1×1. <br />You're allowed to rotate the blocks in any way you like; however, rotations, reflections etc of the tower itself are counted as distinct.</p>
<p>For example (with <var>q</var> = 100000007) :<br /><var>f</var>(2) = 229,<br /><var>f</var>(4) = 117805,<br /><var>f</var>(10) mod <var>q</var> = 96149360,<br /><var>f</var>(10<sup>3</sup>) mod <var>q</var> = 24806056,<br /><var>f</var>(10<sup>6</sup>) mod <var>q</var> = 30808124.</p>

<p>Find <var>f</var>(10<sup>10000</sup>) mod 100000007.</p>
"""

# ╔═╡ 1aca66e0-84a3-11eb-1be2-713bb42b67fb
begin
    submit_answer(nothing; prob_num=324)
end

# ╔═╡ 1aca66e0-84a3-11eb-20c5-a9c44a51d115
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

# ╔═╡ 1aca66e0-84a3-11eb-3f0b-0bb505ec5457
begin
    submit_answer(nothing; prob_num=325)
end

# ╔═╡ Cell order:
# ╠═1aca66e0-84a3-11eb-1e93-831e8868cd9b
# ╟─1aca66e0-84a3-11eb-0e56-05e5dbec5149
# ╠═1aca66e0-84a3-11eb-09c0-bb0f47dcba10
# ╟─1aca66e0-84a3-11eb-331d-31e10b21fba4
# ╠═1aca66e0-84a3-11eb-18d8-7b6b64dbda1b
# ╟─1aca66e0-84a3-11eb-1100-096bae39a476
# ╠═1aca66e0-84a3-11eb-31b6-2d787779f96b
# ╟─1aca66e0-84a3-11eb-2e9f-9dba4fe8cbcb
# ╠═1aca66e0-84a3-11eb-1cdf-27dbf2569e7d
# ╟─1aca66e0-84a3-11eb-3169-9d830cb49c1f
# ╠═1aca66e0-84a3-11eb-3f29-1d06e4dcb202
# ╟─1aca66e0-84a3-11eb-38aa-5f51aae3d837
# ╠═1aca66e0-84a3-11eb-3e23-cf5a06ed6dbe
# ╟─1aca66e0-84a3-11eb-006d-6b4a9d8db2da
# ╠═1aca66e0-84a3-11eb-1b58-f9a317f42e8f
# ╟─1aca66e0-84a3-11eb-0cd6-535255b492bb
# ╠═1aca66e0-84a3-11eb-1612-775f61746973
# ╟─1aca66e0-84a3-11eb-20f6-5fc024946f77
# ╠═1aca66e0-84a3-11eb-0163-5d4318beadc4
# ╟─1aca66e0-84a3-11eb-2921-c9a91fff1d2a
# ╠═1aca66e0-84a3-11eb-08f2-5532708b98f0
# ╟─1aca66e0-84a3-11eb-0abc-65afdafad7c1
# ╠═1aca66e0-84a3-11eb-1c87-b7f474224c38
# ╟─1aca66e0-84a3-11eb-0534-5f2085b5afab
# ╠═1aca66e0-84a3-11eb-3cd8-63595c6001d1
# ╟─1aca66e0-84a3-11eb-219a-397d6ecab27e
# ╠═1aca66e0-84a3-11eb-1816-b7b1c5379398
# ╟─1aca66e0-84a3-11eb-263c-b9e813f5a501
# ╠═1aca66e0-84a3-11eb-0ed7-adba53f9f0be
# ╟─1aca66e0-84a3-11eb-12d7-8f662c8273f0
# ╠═1aca66e0-84a3-11eb-2856-37629f975227
# ╟─1aca66e0-84a3-11eb-01ba-fdc0b15d7a51
# ╠═1aca66e0-84a3-11eb-3399-13f64e2766f5
# ╟─1aca66e0-84a3-11eb-0a63-fbc5b04e4937
# ╠═1aca66e0-84a3-11eb-01cd-b55a77e0ed1c
# ╟─1aca66e0-84a3-11eb-3119-7f560faae9b6
# ╠═1aca66e0-84a3-11eb-27f0-55f11692a3e3
# ╟─1aca66e0-84a3-11eb-2a43-ad64b259f7d2
# ╠═1aca66e0-84a3-11eb-1708-d32c8353c1d1
# ╟─1aca66e0-84a3-11eb-2f2f-11086b6add37
# ╠═1aca66e0-84a3-11eb-1621-570ed77bee35
# ╟─1aca66e0-84a3-11eb-0fd5-c7c81f9dff4e
# ╠═1aca66e0-84a3-11eb-2058-3b01eb2b09cb
# ╟─1aca66e0-84a3-11eb-31af-7bad8193d7f9
# ╠═1aca66e0-84a3-11eb-1288-6134a30e1b1a
# ╟─1aca66e0-84a3-11eb-07ea-39949551fc05
# ╠═1aca66e0-84a3-11eb-0bdb-898305fef720
# ╟─1aca66e0-84a3-11eb-3a9a-03c4b28dd1ce
# ╠═1aca66e0-84a3-11eb-1be2-713bb42b67fb
# ╟─1aca66e0-84a3-11eb-20c5-a9c44a51d115
# ╠═1aca66e0-84a3-11eb-3f0b-0bb505ec5457