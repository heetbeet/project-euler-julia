### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4593f3f0-2b34-11eb-228a-7b179121ac41
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4593f3f0-2b34-11eb-1157-f3f35282917f
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

# ╔═╡ 4593f3f0-2b34-11eb-2e40-3561336cddf5
begin
    submit_answer(nothing; prob_num=313)
end

# ╔═╡ 4593f3f0-2b34-11eb-3016-6536b8868940
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

# ╔═╡ 4593f3f0-2b34-11eb-1d76-730462bd3003
begin
    submit_answer(nothing; prob_num=314)
end

# ╔═╡ 4593f3f0-2b34-11eb-2b58-7bc755f50537
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

# ╔═╡ 4593f3f0-2b34-11eb-2a77-43e6d971e901
begin
    submit_answer(nothing; prob_num=315)
end

# ╔═╡ 4593f3f0-2b34-11eb-31de-cd13c480f6a1
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

# ╔═╡ 4593f3f0-2b34-11eb-1d05-516c43e2831f
begin
    submit_answer(nothing; prob_num=316)
end

# ╔═╡ 4593f3f0-2b34-11eb-119b-199ff252dda4
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

# ╔═╡ 4593f3f0-2b34-11eb-0385-7ffc2df5d33a
begin
    submit_answer(nothing; prob_num=317)
end

# ╔═╡ 4593f3f0-2b34-11eb-2ef1-63177b0c9622
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

# ╔═╡ 4593f3f0-2b34-11eb-1c81-1f7a01539567
begin
    submit_answer(nothing; prob_num=318)
end

# ╔═╡ 4593f3f0-2b34-11eb-1729-b73c2362921d
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

# ╔═╡ 4593f3f0-2b34-11eb-0a33-6d3342bff921
begin
    submit_answer(nothing; prob_num=319)
end

# ╔═╡ 4593f3f0-2b34-11eb-32c0-e927f3082744
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

# ╔═╡ 4593f3f0-2b34-11eb-1757-95464c74846d
begin
    submit_answer(nothing; prob_num=320)
end

# ╔═╡ 4593f3f0-2b34-11eb-0a6a-c38bc3504a57
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

# ╔═╡ 4593f3f0-2b34-11eb-24cc-6bfa33d1a828
begin
    submit_answer(nothing; prob_num=321)
end

# ╔═╡ 45941b00-2b34-11eb-114d-b9e0f5956011
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

# ╔═╡ 45941b00-2b34-11eb-1a9c-150c0df9b3a3
begin
    submit_answer(nothing; prob_num=322)
end

# ╔═╡ 45941b00-2b34-11eb-1531-ef3ea83b8f71
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

# ╔═╡ 45941b00-2b34-11eb-0fdb-8fd855c9e2bd
begin
    submit_answer(nothing; prob_num=323)
end

# ╔═╡ 45941b00-2b34-11eb-39b2-434ffa779f31
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

# ╔═╡ 45941b00-2b34-11eb-12d8-d9cefa8591d0
begin
    submit_answer(nothing; prob_num=324)
end

# ╔═╡ 45941b00-2b34-11eb-2732-4fa44514d7ec
html"""
<h2>Problem 313: Sliding game</h2>
<p>In a sliding game a counter may slide horizontally or vertically into an empty space. The objective of the game is to move the red counter from the top left corner of a grid to the bottom right corner; the space always starts in the bottom right corner. For example, the following sequence of pictures show how the game can be completed in five moves on a 2 by 2 grid.</p>

<div align="center"><img src="project/images/p313_sliding_game_1.gif" alt="p313_sliding_game_1.gif" /></div>

<p>Let S(m,n) represent the minimum number of moves to complete the game on an m by n grid. For example, it can be verified that S(5,4) = 25.</p>

<div align="center"><img src="project/images/p313_sliding_game_2.gif" alt="p313_sliding_game_2.gif" /></div>

<p>There are exactly 5482 grids for which S(m,n) = p<sup>2</sup>, where p &lt; 100 is prime.</p>

<p>How many grids does S(m,n) = p<sup>2</sup>, where p &lt; 10<sup>6</sup> is prime?</p>
"""

# ╔═╡ 45941b00-2b34-11eb-3437-03a7ad348e08
begin
    submit_answer(nothing; prob_num=325)
end

# ╔═╡ 45941b00-2b34-11eb-0a81-1b6b081f35e4
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

# ╔═╡ 45941b00-2b34-11eb-2b82-bdb090980074
begin
    submit_answer(nothing; prob_num=326)
end

# ╔═╡ 45941b00-2b34-11eb-3182-15f05ae3e910
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

# ╔═╡ 45941b00-2b34-11eb-276d-abc327313e1c
begin
    submit_answer(nothing; prob_num=327)
end

# ╔═╡ 45941b00-2b34-11eb-3a60-fd3dbbeb6493
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

# ╔═╡ 45941b00-2b34-11eb-2bcd-f98f8a84d438
begin
    submit_answer(nothing; prob_num=328)
end

# ╔═╡ 45941b00-2b34-11eb-3211-e9358e77dec6
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

# ╔═╡ 45941b00-2b34-11eb-0a1a-8ff37fb03b38
begin
    submit_answer(nothing; prob_num=329)
end

# ╔═╡ 45941b00-2b34-11eb-068c-2f015dbd76b1
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

# ╔═╡ 45941b00-2b34-11eb-19d8-e94dc57453b9
begin
    submit_answer(nothing; prob_num=330)
end

# ╔═╡ 45941b00-2b34-11eb-0ea9-67f8c9c2efbc
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

# ╔═╡ 45941b00-2b34-11eb-250b-299447f566a9
begin
    submit_answer(nothing; prob_num=331)
end

# ╔═╡ 45941b00-2b34-11eb-1349-074b654d8d94
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

# ╔═╡ 45941b00-2b34-11eb-165a-f76504f9b90b
begin
    submit_answer(nothing; prob_num=332)
end

# ╔═╡ 45941b00-2b34-11eb-2e1a-83dc4cb58aa3
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

# ╔═╡ 45941b00-2b34-11eb-2f5d-93c20dbbc956
begin
    submit_answer(nothing; prob_num=333)
end

# ╔═╡ 45941b00-2b34-11eb-30df-cda1d0f8001c
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

# ╔═╡ 45941b00-2b34-11eb-0ca1-b3cbc547a522
begin
    submit_answer(nothing; prob_num=334)
end

# ╔═╡ 45941b00-2b34-11eb-2b5c-7983af364962
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

# ╔═╡ 45941b00-2b34-11eb-0e05-3bfa013446e7
begin
    submit_answer(nothing; prob_num=335)
end

# ╔═╡ 45941b00-2b34-11eb-01da-236bed5f6de2
html"""
<h2>Problem 324: Building a tower</h2>
<p>Let <var>f</var>(<var>n</var>) represent the number of ways one can fill a 3×3×<var>n</var> tower with blocks of 2×1×1. <br />You're allowed to rotate the blocks in any way you like; however, rotations, reflections etc of the tower itself are counted as distinct.</p>
<p>For example (with <var>q</var> = 100000007) :<br /><var>f</var>(2) = 229,<br /><var>f</var>(4) = 117805,<br /><var>f</var>(10) mod <var>q</var> = 96149360,<br /><var>f</var>(10<sup>3</sup>) mod <var>q</var> = 24806056,<br /><var>f</var>(10<sup>6</sup>) mod <var>q</var> = 30808124.</p>

<p>Find <var>f</var>(10<sup>10000</sup>) mod 100000007.</p>
"""

# ╔═╡ 45941b00-2b34-11eb-27f2-25e2187d3e55
begin
    submit_answer(nothing; prob_num=336)
end

# ╔═╡ 45941b00-2b34-11eb-2f74-c9040cbc6a9a
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

# ╔═╡ 45941b00-2b34-11eb-268f-7f04e8a6e989
begin
    submit_answer(nothing; prob_num=337)
end

# ╔═╡ 45941b00-2b34-11eb-23bc-11ea72d4f9f7
html"""
<h2>Problem 326: Modulo Summations</h2>
<p>
Let $a_n$ be a sequence recursively defined by:$\quad a_1=1,\quad\displaystyle a_n=\biggl(\sum_{k=1}^{n-1}k\cdot a_k\biggr)\bmod n$.
</p>
<p>
So the first 10 elements of $a_n$ are: 1,1,0,3,0,3,5,4,1,9.
</p>
<p>Let <var>f</var>(<var>N,M</var>) represent the number of pairs (<var>p,q</var>) such that: </p>
<p>
$$
\def\htmltext#1{\style{font-family:inherit;}{\text{#1}}}
1\le p\le q\le N \quad\htmltext{and}\quad\biggl(\sum_{i=p}^qa_i\biggr)\bmod M=0
$$
</p>
<p>
It can be seen that <var>f</var>(10,10)=4 with the pairs (3,3), (5,5), (7,9) and (9,10).
</p>
<p>
You are also given that <var>f</var>(10<sup>4</sup>,10<sup>3</sup>)=97158.</p>
<p>
Find <var>f</var>(10<sup>12</sup>,10<sup>6</sup>).
</p>
"""

# ╔═╡ 45941b00-2b34-11eb-07f5-9b1f6c7481a4
begin
    submit_answer(nothing; prob_num=338)
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