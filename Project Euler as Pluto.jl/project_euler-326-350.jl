### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 4595537e-2b34-11eb-2689-c37ed97febc1
include((@__DIR__)*"/shared.jl");

# ╔═╡ 4595537e-2b34-11eb-15f3-9b44237abe89
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

# ╔═╡ 4595537e-2b34-11eb-2c63-2b0b3166b1f1
begin
    submit_answer(nothing; prob_num=339)
end

# ╔═╡ 4595537e-2b34-11eb-2ffe-0f80d47a375d
html"""
<h2>Problem 327: Rooms of Doom</h2>
<p>A series of three rooms are connected to each other by automatic doors.</p>

<div align="center"><img src="project/images/p327_rooms_of_doom.gif" alt="p327_rooms_of_doom.gif" /></div>

<p>Each door is operated by a security card. Once you enter a room the door automatically closes and that security card cannot be used again. A machine at the start will dispense an unlimited number of cards, but each room (including the starting room) contains scanners and if they detect that you are holding more than three security cards or if they detect an unattended security card on the floor, then all the doors will become permanently locked. However, each room contains a box where you may safely store any number of security cards for use at a later stage.</p>

<p>If you simply tried to travel through the rooms one at a time then as you entered room 3 you would have used all three cards and would be trapped in that room forever!</p>

<p>However, if you make use of the storage boxes, then escape is possible. For example, you could enter room 1 using your first card, place one card in the storage box, and use your third card to exit the room back to the start. Then after collecting three more cards from the dispensing machine you could use one to enter room 1 and collect the card you placed in the box a moment ago. You now have three cards again and will be able to travel through the remaining three doors. This method allows you to travel through all three rooms using six security cards in total.</p>

<p>It is possible to travel through six rooms using a total of 123 security cards while carrying a maximum of 3 cards.</p>

<p>Let <var>C</var> be the maximum number of cards which can be carried at any time.</p>
<p>Let <var>R</var> be the number of rooms to travel through.</p>
<p>Let M(<var>C</var>,<var>R</var>) be the minimum number of cards required from the dispensing machine to travel through <var>R</var> rooms carrying up to a maximum of <var>C</var> cards at any time.</p>

<p>For example, M(3,6)=123 and M(4,6)=23.<br />And, <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(<var>C</var>,6)=146 for 3 ≤ <var>C</var> ≤ 4.</p>


<p>You are given that <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(<var>C</var>,10)=10382 for 3 ≤ <var>C</var> ≤ 10.</p>

<p>Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> M(<var>C</var>,30) for 3 ≤ <var>C</var> ≤ 40.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-21de-490762fee463
begin
    submit_answer(nothing; prob_num=340)
end

# ╔═╡ 4595537e-2b34-11eb-0438-378be0ca1a9b
html"""
<h2>Problem 328: Lowest-cost Search</h2>
<p>We are trying to find a hidden number selected from the set of integers {1, 2, ..., <var>n</var>} by asking questions. 
Each number (question) we ask, has a <u>cost equal to the number asked</u> and we get one of three possible answers:<br /></p><ul><li> "Your guess is lower than the hidden number", or</li>
<li> "Yes, that's it!", or</li>
<li> "Your guess is higher than the hidden number".</li>
</ul><p>Given the value of <var>n</var>, an <i>optimal strategy</i> minimizes the total cost (i.e. the sum of all the questions asked) <u>for the worst possible case</u>. E.g.</p>

<p>If <var>n</var>=3, the best we can do is obviously to ask the number "<b>2</b>". The answer will immediately lead us to find the hidden number (at a total cost = 2).</p>

<p>If <var>n</var>=8, we might decide to use a "binary search" type of strategy: Our first question would be "<b>4</b>" and if the hidden number is higher than 4 we will need one or two additional questions.<br />
Let our second question be "<b>6</b>". If the hidden number is still higher than 6, we will need a third question in order to discriminate between 7 and 8.<br />
Thus, our third question will be "<b>7</b>" and the total cost for this worst-case scenario will be 4+6+7=<span style="color:#FF0000;"><b>17</b></span>.</p>

<p>We can improve considerably the worst-case cost for <var>n</var>=8, by asking "<b>5</b>" as our first question.<br />
If we are told that the hidden number is higher than 5, our second question will be "<b>7</b>", then we'll know for certain what the hidden number is (for a total cost of 5+7=<span style="color:#3333FF;"><b>12</b></span>).<br />
If we are told that the hidden number is lower than 5, our second question will be "<b>3</b>" and if the hidden number is lower than 3 our third question will be "<b>1</b>", giving a total cost of 5+3+1=<span style="color:#3333FF;"><b>9</b></span>.<br />
Since <span style="color:#3333FF;"><b>12</b></span>&gt;<span style="color:#3333FF;"><b>9</b></span>, the worst-case cost for this strategy is <span style="color:#FF0000;"><b>12</b></span>. That's better than what we achieved previously with the "binary search" strategy; it is also better than or equal to any other strategy.<br />
So, in fact, we have just described an optimal strategy for <var>n</var>=8.</p>

<p>Let C(<var>n</var>) be the worst-case cost achieved by an optimal strategy for <var>n</var>, as described above.<br />
Thus C(1) = 0, C(2) = 1, C(3) = 2 and C(8) = 12.<br />
Similarly, C(100) = 400 and $\sum \limits_{n = 1}^{100} {C(n)} = 17575$.</p>

<p>Find $\sum \limits_{n = 1}^{200000} {C(n)}$ .</p>
"""

# ╔═╡ 4595537e-2b34-11eb-1248-77415a335134
begin
    submit_answer(nothing; prob_num=341)
end

# ╔═╡ 4595537e-2b34-11eb-2b18-6d43036dd40d
html"""
<h2>Problem 329: Prime Frog</h2>
<p>Susan has a prime frog.<br />
Her frog is jumping around over 500 squares numbered 1 to 500.
He can only jump one square to the left or to the right, with equal probability, and he cannot jump outside the range [1;500].<br />(if it lands at either end, it automatically jumps to the only available square on the next move.)
</p>
<p>
When he is on a square with a prime number on it, he croaks 'P' (PRIME) with probability 2/3 or 'N' (NOT PRIME) with probability 1/3 just before jumping to the next square.<br />
When he is on a square with a number on it that is not a prime he croaks 'P' with probability 1/3 or 'N' with probability 2/3 just before jumping to the next square.
</p>
<p>
Given that the frog's starting position is random with the same probability for every square, and given that she listens to his first 15 croaks, what is the probability that she hears the sequence PPPPNNPPPNPPNPN?
</p>
Give your answer as a fraction p/q in reduced form.
"""

# ╔═╡ 4595537e-2b34-11eb-2392-e3f9cd32009e
begin
    submit_answer(nothing; prob_num=342)
end

# ╔═╡ 4595537e-2b34-11eb-2a8d-434076f0ddb7
html"""
<h2>Problem 330: Euler's Number</h2>
An infinite sequence of real numbers <var>a</var>(<var>n</var>) is defined for all integers <var>n</var> as follows:
$$a(n) = \begin{cases}
1 &amp; n \lt 0\\
\sum \limits_{i = 1}^{\infty}{\dfrac{a(n - i)}{i!}} &amp; n \ge 0
\end{cases}$$

<p>For example,<br /></p>

<p>$a(0) = \dfrac{1}{1!} + \dfrac{1}{2!} + \dfrac{1}{3!} + \cdots = e - 1$<br />
$a(1) = \dfrac{e - 1}{1!} + \dfrac{1}{2!} + \dfrac{1}{3!} + \cdots = 2e - 3$<br />
$a(2) = \dfrac{2e - 3}{1!} + \dfrac{e - 1}{2!} + \dfrac{1}{3!} + \cdots = \dfrac{7}{2}e - 6$</p>

<p>with $e = 2.7182818...$ being Euler's constant.</p>

<p>It can be shown that $a(n)$ is of the form $\dfrac{A(n)e + B(n)}{n!}$ for integers $A(n)$ and $B(n)$.</p>

<p>For example, $a(10) = \dfrac{328161643e - 652694486}{10!}$.</p>

<p>Find $A(10^9) + B(10^9)$ and give your answer mod 77 777 777.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-1c77-c3e68aba1967
begin
    submit_answer(nothing; prob_num=343)
end

# ╔═╡ 4595537e-2b34-11eb-0b1d-8574601df713
html"""
<h2>Problem 331: Cross flips</h2>
<p><var>N</var>×<var>N</var> disks are placed on a square game board. Each disk has a black side and white side.</p>

<p>At each turn, you may choose a disk and flip all the disks in the same row and the same column as this disk: thus 2×<var>N</var>-1 disks are flipped. The game ends when all disks show their white side. The following example shows a game on a 5×5 board.</p>

<div align="center"><img src="project/images/p331_crossflips3.gif" alt="p331_crossflips3.gif" /></div>

<p>It can be proven that 3 is the minimal number of turns to finish this game.</p>

<p>The bottom left disk on the <var>N</var>×<var>N</var> board has coordinates (0,0);<br />
the bottom right disk has coordinates (<var>N</var>-1,0) and the top left disk has coordinates (0,<var>N</var>-1). </p>

<p>Let C<sub><var>N</var></sub> be the following configuration of a board with <var>N</var>×<var>N</var> disks:<br />
A disk at (<var>x</var>,<var>y</var>) satisfying $N - 1 \le \sqrt{x^2 + y^2} \lt N$, shows its black side; otherwise, it shows its white side. C<sub>5</sub> is shown above.</p>

<p>Let T(<var>N</var>) be the minimal number of turns to finish a game starting from configuration C<sub><var>N</var></sub> or 0 if configuration C<sub><var>N</var></sub> is unsolvable.<br />
We have shown that T(5)=3. You are also given that T(10)=29 and T(1 000)=395253.</p>

<p>Find $\sum \limits_{i = 3}^{31} {T(2^i - i)}$.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-0f66-dfd46adfa3d7
begin
    submit_answer(nothing; prob_num=344)
end

# ╔═╡ 4595537e-2b34-11eb-1c3c-ddace3eebc79
html"""
<h2>Problem 332: Spherical triangles</h2>
<p>A <b>spherical triangle</b> is a figure formed on the surface of a sphere by three <b>great circular arcs</b> intersecting pairwise in three vertices.</p>

<div align="center"><img src="project/images/p332_spherical.jpg" class="dark_img" alt="p332_spherical.jpg" /></div>


<p>Let C(<var>r</var>) be the sphere with the centre (0,0,0) and radius <var>r</var>.<br />
Let Z(<var>r</var>) be the set of points on the surface of C(<var>r</var>) with integer coordinates.<br />
Let T(<var>r</var>) be the set of spherical triangles with vertices in Z(<var>r</var>).
Degenerate spherical triangles, formed by three points on the same great arc, are <u>not</u> included in T(<var>r</var>).<br />
Let A(<var>r</var>) be the area of the smallest spherical triangle in T(<var>r</var>).</p>

<p>For example A(14) is 3.294040 rounded to six decimal places.</p>

<p>Find $\sum \limits_{r = 1}^{50} {A(r)}$. Give your answer rounded to six decimal places.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-07d7-0b7792aee5fa
begin
    submit_answer(nothing; prob_num=345)
end

# ╔═╡ 4595537e-2b34-11eb-28c1-611fe7ff4a08
html"""
<h2>Problem 333: Special partitions</h2>
<p>All positive integers can be partitioned in such a way that each and every term of the partition can be expressed as 2<sup>i</sup>x3<sup>j</sup>, where i,j ≥ 0.</p>

<p>Let's consider only those such partitions where none of the terms can divide any of the other terms.
<br />For example, the partition of 17 = 2 + 6 + 9 = (2<sup>1</sup>x3<sup>0</sup> + 2<sup>1</sup>x3<sup>1</sup> + 2<sup>0</sup>x3<sup>2</sup>) would not be valid since 2 can divide 6. Neither would the partition 17 = 16 + 1 = (2<sup>4</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>0</sup>) since 1 can divide 16. The only valid partition of 17 would be 8 + 9 = (2<sup>3</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>2</sup>).</p>

<p>Many integers have more than one valid partition, the first being 11 having the following two partitions.
<br />11 = 2 + 9 = (2<sup>1</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>2</sup>)
<br />11 = 8 + 3 = (2<sup>3</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>1</sup>)</p>

<p>Let's define P(<var>n</var>) as the number of valid partitions of <var>n</var>. For example, P(11) = 2.</p>

<p>Let's consider only the prime integers <var>q</var> which would have a single valid partition such as P(17).</p>

<p>The sum of the primes <var>q</var> &lt;100 such that P(<var>q</var>)=1 equals 233.</p>

<p>Find the sum of the primes <var>q</var> &lt;1000000 such that P(<var>q</var>)=1.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-3825-4b03253e4402
begin
    submit_answer(nothing; prob_num=346)
end

# ╔═╡ 4595537e-2b34-11eb-25f7-3db270216783
html"""
<h2>Problem 334: Spilling the beans</h2>
<p>In Plato's heaven, there exist an infinite number of bowls in a straight line.<br />
Each bowl either contains some or none of a finite number of beans.<br />
A child plays a game, which allows only one kind of move: removing two beans from any bowl, and putting one in each of the two adjacent bowls.<br /> The game ends when each bowl contains either one or no beans.</p>

<p>For example, consider two adjacent bowls containing 2 and 3 beans respectively, all other bowls being empty. The following eight moves will finish the game:</p>

<div align="center"><img src="project/images/p334_beans.gif" class="dark_img" alt="p334_beans.gif" /></div>

<p>You are given the following sequences:<br /></p>

<p>
$\def\htmltext#1{\style{font-family:inherit;}{\text{#1}}}$
$
\begin{align}
\qquad t_0 &amp;= 123456,\cr
\qquad t_i &amp;= \cases{
\;\;\frac{t_{i-1}}{2},&amp;$\htmltext{if }t_{i-1}\htmltext{ is even}$\cr
\left\lfloor\frac{t_{i-1}}{2}\right\rfloor\oplus 926252,&amp;$\htmltext{if }t_{i-1}\htmltext{ is odd}$\cr}\cr
&amp;\qquad\htmltext{where }\lfloor x\rfloor\htmltext{ is the floor function }\cr
&amp;\qquad\!\htmltext{and }\oplus\htmltext{is the bitwise XOR operator.}\cr
\qquad b_i &amp;= (t_i\bmod2^{11}) + 1.\cr
\end{align}
$
</p>

<p>The first two terms of the last sequence are $b_1 = 289$ and $b_2 = 145$.<br />
If we start with $b_1$ and $b_2$ beans in two adjacent bowls, $3419100$ moves would be required to finish the game.</p>

<p>Consider now $1500$ adjacent bowls containing $b_1, b_2, \ldots, b_{1500}$ beans respectively, all other bowls being empty. Find how many moves it takes before the game ends.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-1014-1761a99fda59
begin
    submit_answer(nothing; prob_num=347)
end

# ╔═╡ 4595537e-2b34-11eb-0fe2-23dcccc23273
html"""
<h2>Problem 335: Gathering the beans</h2>
<p>Whenever Peter feels bored, he places some bowls, containing one bean each, in a circle. After this, he takes all the beans out of a certain bowl and drops them one by one in the bowls going clockwise. He repeats this, starting from the bowl he dropped the last bean in, until the initial situation appears again. For example with 5 bowls he acts as follows:</p>

<div align="center"><img src="project/images/p335_mancala.gif" class="dark_img" alt="p335_mancala.gif" /></div>

<p>So with 5 bowls it takes Peter 15 moves to return to the initial situation.</p>

<p>Let <var>M</var>(<var>x</var>) represent the number of moves required to return to the initial situation, starting with <var>x</var> bowls. Thus, <var>M</var>(5) = 15. It can also be verified that <var>M</var>(100) = 10920.</p>

<p>Find $\displaystyle \sum_{k=0}^{10^{18}} M(2^k + 1)$. Give your answer modulo 7<sup>9</sup>.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-103a-e5eee2f0bf4d
begin
    submit_answer(nothing; prob_num=348)
end

# ╔═╡ 4595537e-2b34-11eb-2e78-6bcaeb745d4e
html"""
<h2>Problem 336: Maximix Arrangements</h2>
<p>A train is used to transport four carriages in the order: ABCD. However, sometimes when the train arrives to collect the carriages they are not in the correct order. <br />
To rearrange the carriages they are all shunted on to a large rotating turntable. After the carriages are uncoupled at a specific point the train moves off the turntable pulling the carriages still attached with it. The remaining carriages are rotated 180 degrees. All of the carriages are then rejoined and this process is repeated as often as necessary in order to obtain the least number of uses of the turntable.<br />
Some arrangements, such as ADCB, can be solved easily: the carriages are separated between A and D, and after DCB are rotated the correct order has been achieved.</p>

<p>However, Simple Simon, the train driver, is not known for his efficiency, so he always solves the problem by initially getting carriage A in the correct place, then carriage B, and so on.</p>

<p>Using four carriages, the worst possible arrangements for Simon, which we shall call <i>maximix arrangements</i>, are DACB and DBAC; each requiring him five rotations (although, using the most efficient approach, they could be solved using just three rotations). The process he uses for DACB is shown below.</p>

<div align="center"><img src="project/images/p336_maximix.gif" class="dark_img" alt="p336_maximix.gif" /></div>


<p>It can be verified that there are 24 maximix arrangements for six carriages, of which the tenth lexicographic maximix arrangement is DFAECB.</p>

<p>Find the 2011<sup>th</sup> lexicographic maximix arrangement for eleven carriages.</p>
"""

# ╔═╡ 4595537e-2b34-11eb-013b-fd7ed8c1b6ac
begin
    submit_answer(nothing; prob_num=349)
end

# ╔═╡ 45957a90-2b34-11eb-38f2-af96536da433
html"""
<h2>Problem 337: Totient Stairstep Sequences</h2>
<p>Let {a<sub>1</sub>, a<sub>2</sub>,..., a<sub><var>n</var></sub>} be an integer sequence of length <var>n</var> such that:</p>
<ul><li>a<sub>1</sub> = 6</li>
<li>for all 1 ≤ <var>i</var> &lt; <var>n</var> : φ(a<sub><var>i</var></sub>) &lt; φ(a<sub><var>i</var>+1</sub>) &lt; a<sub><var>i</var></sub> &lt; a<sub><var>i</var>+1</sub><sup>1</sup></li>
</ul><p>Let S(<var>N</var>) be the number of such sequences with a<sub><var>n</var></sub> ≤ <var>N</var>.<br />
For example, S(10) = 4: {6}, {6, 8}, {6, 8, 9} and {6, 10}.<br />
We can verify that S(100) = 482073668 and S(10 000) mod 10<sup>8</sup> = 73808307.</p>

<p>Find S(20 000 000) mod 10<sup>8</sup>.</p>

<p><sup>1</sup> φ denotes <b>Euler's totient function</b>.</p>
"""

# ╔═╡ 45957a90-2b34-11eb-03b9-71d767e6b9bd
begin
    submit_answer(nothing; prob_num=350)
end

# ╔═╡ 45957a90-2b34-11eb-2851-013592b34e02
html"""
<h2>Problem 338: Cutting Rectangular Grid Paper</h2>
<p>A rectangular sheet of grid paper with integer dimensions <var>w</var> × <var>h</var> is given. Its grid spacing is 1.<br />
When we cut the sheet along the grid lines into two pieces and rearrange those pieces without overlap, we can make new rectangles with different dimensions.</p>
<p>For example, from a sheet with dimensions 9 × 4 , we can make rectangles with dimensions 18 × 2, 12 × 3 and 6 × 6 by cutting and rearranging as below:</p>

<div align="center">
<img src="project/images/p338_gridpaper.gif" alt="p338_gridpaper.gif" /><br /></div>

<p>Similarly, from a sheet with dimensions 9 × 8 , we can make rectangles with dimensions 18 × 4 and 12 × 6 .</p>

<p>For a pair <var>w</var> and <var>h</var>, let F(<var>w</var>,<var>h</var>) be the number of distinct rectangles that can be made from a sheet with dimensions <var>w</var> × <var>h</var> .<br />
For example, F(2,1) = 0, F(2,2) = 1, F(9,4) = 3 and F(9,8) = 2. <br />
Note that rectangles congruent to the initial one are not counted in F(<var>w</var>,<var>h</var>).<br />
Note also that rectangles with dimensions <var>w</var> × <var>h</var> and dimensions <var>h</var> × <var>w</var> are not considered distinct.</p>

<p>For an integer <var>N</var>, let G(<var>N</var>) be the sum of F(<var>w</var>,<var>h</var>) for all pairs <var>w</var> and <var>h</var> which satisfy 0 &lt; <var>h</var> ≤ <var>w</var> ≤ <var>N</var>.<br />
We can verify that G(10) = 55, G(10<sup>3</sup>) = 971745 and G(10<sup>5</sup>) = 9992617687.</p>

<p>Find G(10<sup>12</sup>). Give your answer modulo 10<sup>8</sup>.</p>
"""

# ╔═╡ 45957a90-2b34-11eb-326c-27969b7aca9c
begin
    submit_answer(nothing; prob_num=351)
end

# ╔═╡ 45957a90-2b34-11eb-0175-81b8c73448ff
html"""
<h2>Problem 339: Peredur fab Efrawg</h2>
<p>
<i>"And he came towards a valley, through which ran a river; and the borders of the valley were wooded, and on each side of the river were level meadows. And on one side of the river he saw a flock of white sheep, and on the other a flock of black sheep. And whenever one of the white sheep bleated, one of the black sheep would cross over and become white; and when one of the black sheep bleated, one of the white sheep would cross over and become black."</i><br /><a href="http://en.wikisource.org/wiki/The_Mabinogion/Peredur_the_Son_of_Evrawc">en.wikisource.org</a>
</p>
<p>

Initially each flock consists of <var>n</var> sheep. Each sheep (regardless of colour) is equally likely to be the next sheep to bleat. After a sheep has bleated and a sheep from the other flock has crossed over, Peredur may remove a number of white sheep in order to maximize the expected final number of black sheep. Let E(<var>n</var>) be the expected final number of black sheep if Peredur uses an optimal strategy.
</p>
<p>

You are given that E(5) = 6.871346 rounded to 6 places behind the decimal point.<br />
Find E(10 000) and give your answer rounded to 6 places behind the decimal point.
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-254b-65e0cb453c06
begin
    submit_answer(nothing; prob_num=352)
end

# ╔═╡ 45957a90-2b34-11eb-2c3c-7b0fc1f5cc63
html"""
<h2>Problem 340: Crazy Function</h2>
<p>
For fixed integers a, b, c, define the <i>crazy function</i> F(<var>n</var>) as follows:<br />
F(<var>n</var>) = <var>n</var> - c for all <var>n</var> &gt; b <br />
F(<var>n</var>) = F(a + F(a + F(a + F(a + <var>n</var>)))) for all <var>n</var> ≤ b.
</p>
<p>Also, define $S(a, b, c) = \sum \limits_{n = 0}^{b} {F(n)}$.</p>
<p>
For example, if a = 50, b = 2000 and c = 40, then F(0) = 3240 and F(2000) = 2040.<br />
Also, S(50, 2000, 40) = 5204240.
</p>
<p>
Find the last 9 digits of S(21<sup>7</sup>, 7<sup>21</sup>, 12<sup>7</sup>).
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-075a-47243795e090
begin
    submit_answer(nothing; prob_num=353)
end

# ╔═╡ 45957a90-2b34-11eb-0a8e-33bf7541b3b6
html"""
<h2>Problem 341: Golomb's self-describing sequence</h2>
<p>The <b>Golomb's self-describing sequence</b> $(G(n))$ is the only nondecreasing sequence of natural numbers such that $n$ appears exactly $G(n)$ times in the sequence. The values of $G(n)$ for the first few $n$ are</p>

<p></p><div align="center">
\[
\begin{matrix}
n &amp; 1 &amp; 2 &amp; 3 &amp; 4 &amp; 5 &amp; 6 &amp; 7 &amp; 8 &amp; 9 &amp; 10 &amp; 11 &amp; 12 &amp; 13 &amp; 14 &amp; 15 &amp; \ldots \\
G(n) &amp; 1 &amp; 2 &amp; 2 &amp; 3 &amp; 3 &amp; 4 &amp; 4 &amp; 4 &amp; 5 &amp; 5 &amp; 5 &amp; 6 &amp; 6 &amp; 6 &amp; 6 &amp; \ldots
\end{matrix}
\]
</div>

<p>You are given that $G(10^3) = 86$, $G(10^6) = 6137$.<br />
You are also given that $\sum G(n^3) = 153506976$ for $1 \le n \lt 10^3$.</p>

<p>Find $\sum G(n^3)$ for $1 \le n \lt 10^6$.</p>
"""

# ╔═╡ 45957a90-2b34-11eb-10a0-27ac4852ed63
begin
    submit_answer(nothing; prob_num=354)
end

# ╔═╡ 45957a90-2b34-11eb-2e32-b9533badbbb6
html"""
<h2>Problem 342: The totient of a square is a cube</h2>
<p>
Consider the number 50.<br />
50<sup>2</sup> = 2500 = 2<sup>2</sup> × 5<sup>4</sup>, so φ(2500) = 2 × 4 × 5<sup>3</sup> = 8 × 5<sup>3</sup> = 2<sup>3</sup> × 5<sup>3</sup>. <sup>1</sup><br />
So 2500 is a square and  φ(2500) is a cube.
</p>
<p>
Find the sum of all numbers n, 1 &lt; n &lt; 10<sup>10</sup> such that φ(n<sup>2</sup>) is a cube.
</p>
<p>
<sup>1</sup> φ denotes <b>Euler's totient function</b>.
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-3406-6d65953f5872
begin
    submit_answer(nothing; prob_num=355)
end

# ╔═╡ 45957a90-2b34-11eb-2dda-d10b8308ad7c
html"""
<h2>Problem 343: Fractional Sequences</h2>
<p>For any positive integer <var>k</var>, a finite sequence a<sub><var>i</var></sub> of fractions x<sub><var>i</var></sub>/y<sub><var>i</var></sub> is defined by:<br />
a<sub>1</sub> = 1/<var>k</var> and<br />
a<sub><var>i</var></sub> = (x<sub><var>i</var>-1</sub>+1)/(y<sub><var>i</var>-1</sub>-1) reduced to lowest terms for <var>i</var>&gt;1.<br />
When a<sub><var>i</var></sub> reaches some integer <var>n</var>, the sequence stops. (That is, when y<sub><var>i</var></sub>=1.)<br />
Define f(<var>k</var>) = <var>n</var>. <br />
For example, for <var>k</var> = 20:
</p>

<p>
1/20 → 2/19 → 3/18 = 1/6 → 2/5 → 3/4 → 4/3 → 5/2 → 6/1 = 6
</p>

<p>
So f(20) = 6.
</p>

<p>
Also f(1) = 1, f(2) = 2, f(3) = 1 and <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>k</var><sup>3</sup>) = 118937 for 1 ≤ <var>k</var> ≤ 100.
</p>

<p>
Find <span style="font-size:larger;"><span style="font-size:larger;">∑</span></span> f(<var>k</var><sup>3</sup>) for 1 ≤ <var>k</var> ≤ 2×10<sup>6</sup>.
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-1c2a-17af73ba742e
begin
    submit_answer(nothing; prob_num=356)
end

# ╔═╡ 45957a90-2b34-11eb-1f9e-0dec15a788f0
html"""
<h2>Problem 344: Silver dollar game</h2>
<p>One variant of N.G. de Bruijn's <b>silver dollar</b> game can be described as follows:</p>

<p>On a strip of squares a number of coins are placed, at most one coin per square. Only one coin, called the <b>silver dollar</b>, has any value. Two players take turns making moves. At each turn a player must make either a <i>regular</i> or a <i>special</i> move.</p>

<p>A <i>regular</i> move consists of selecting one coin and moving it one or more squares to the left. The coin cannot move out of the strip or jump on or over another coin.</p>

<p>Alternatively, the player can choose to make the <i>special</i> move of pocketing the leftmost coin rather than making a regular move. If no regular moves are possible, the player is forced to pocket the leftmost coin.</p>

<p>The winner is the player who pockets the silver dollar.</p>


<div align="center">
<img src="project/images/p344_silverdollar.gif" alt="p344_silverdollar.gif" /><br /></div>

<p>A <i>winning configuration</i> is an arrangement of coins on the strip where the first player can force a win no matter what the second player does.</p>

<p>Let W(<var>n</var>,<var>c</var>) be the number of winning configurations for a strip of <var>n</var> squares, <var>c</var> worthless coins and one silver dollar.</p>

<p>You are given that W(10,2) = 324 and W(100,10) = 1514704946113500.</p>

<p>Find W(1 000 000, 100) modulo the semiprime 1000 036 000 099 (= 1 000 003 · 1 000 033).
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-209e-699de44bb5b8
begin
    submit_answer(nothing; prob_num=357)
end

# ╔═╡ 45957a90-2b34-11eb-1a80-6beb2eaf7c03
html"""
<h2>Problem 345: Matrix Sum</h2>
<p>We define the <dfn>Matrix Sum</dfn> of a matrix as the maximum possible sum of matrix elements such that none of the selected elements share the same row or column.</p>

<p>For example, the Matrix Sum of the matrix below equals 3315 ( = 863 + 383 + 343 + 959 + 767):</p>

<p style="text-align:center;font-family:'courier new';">
  7  53 183 439 <span style="color:#00ff00;font-family:'courier new';"><b>863</b></span><br />
497 <span style="color:#00ff00;font-family:'courier new';"><b>383</b></span> 563  79 973<br />
287  63 <span style="color:#00ff00;font-family:'courier new';"><b>343</b></span> 169 583<br />
627 343 773 <span style="color:#00ff00;font-family:'courier new';"><b>959</b></span> 943<br /><span style="color:#00ff00;font-family:'courier new';"><b>767</b></span> 473 103 699 303<br /></p>

<p>
Find the Matrix Sum of:<br /></p>
<p style="text-align:center;font-family:'courier new';">
  7  53 183 439 863 497 383 563  79 973 287  63 343 169 583<br />
627 343 773 959 943 767 473 103 699 303 957 703 583 639 913<br />
447 283 463  29  23 487 463 993 119 883 327 493 423 159 743<br />
217 623   3 399 853 407 103 983  89 463 290 516 212 462 350<br />
960 376 682 962 300 780 486 502 912 800 250 346 172 812 350<br />
870 456 192 162 593 473 915  45 989 873 823 965 425 329 803<br />
973 965 905 919 133 673 665 235 509 613 673 815 165 992 326<br />
322 148 972 962 286 255 941 541 265 323 925 281 601  95 973<br />
445 721  11 525 473  65 511 164 138 672  18 428 154 448 848<br />
414 456 310 312 798 104 566 520 302 248 694 976 430 392 198<br />
184 829 373 181 631 101 969 613 840 740 778 458 284 760 390<br />
821 461 843 513  17 901 711 993 293 157 274  94 192 156 574<br />
 34 124   4 878 450 476 712 914 838 669 875 299 823 329 699<br />
815 559 813 459 522 788 168 586 966 232 308 833 251 631 107<br />
813 883 451 509 615  77 281 613 459 205 380 274 302  35 805<br /></p>
"""

# ╔═╡ 45957a90-2b34-11eb-1933-07541d0ab0db
begin
    submit_answer(nothing; prob_num=358)
end

# ╔═╡ 45957a90-2b34-11eb-230e-45cb3698fcfb
html"""
<h2>Problem 346: Strong Repunits</h2>
<p>
The number 7 is special, because 7 is 111 written in base 2, and 11 written in base 6 <br />(i.e. 7<sub>10</sub> = 11<sub>6</sub> = 111<sub>2</sub>). In other words, 7 is a repunit in at least two bases b &gt; 1. 
</p>
<p>
We shall call a positive integer with this property a strong repunit. It can be verified that there are 8 strong repunits below 50:  {1,7,13,15,21,31,40,43}. <br />Furthermore, the sum of all strong repunits below 1000 equals 15864.
</p>
Find the sum of all strong repunits below 10<sup>12</sup>.
"""

# ╔═╡ 45957a90-2b34-11eb-3c05-7f2057f52e57
begin
    submit_answer(nothing; prob_num=359)
end

# ╔═╡ 45957a90-2b34-11eb-1899-6b8e04b8c0a6
html"""
<h2>Problem 347: Largest integer divisible by two primes</h2>
<p>
The largest integer ≤ 100 that is only divisible by both the primes 2 and 3 is 96, as 96=32*3=2<sup>5</sup>*3.
For two <i>distinct</i> primes p and q let M(p,q,N) be the largest positive integer ≤N only divisible
by both p and q and M(p,q,N)=0 if such a positive integer does not exist.
</p>
<p>
E.g. M(2,3,100)=96.<br /> 
M(3,5,100)=75 and not 90 because 90 is divisible by 2 ,3 and 5.<br />
Also M(2,73,100)=0 because there does not exist a positive integer ≤ 100 that is divisible by both 2 and 73.
</p>
<p>
Let S(N) be the sum of all distinct M(p,q,N).
S(100)=2262.
</p>
<p>
Find S(10 000 000).
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-257c-c3388da7087d
begin
    submit_answer(nothing; prob_num=360)
end

# ╔═╡ 45957a90-2b34-11eb-1273-2dd1ba89fed1
html"""
<h2>Problem 348: Sum of a square and a cube</h2>
<p>Many numbers can be expressed as the sum of a square and a cube. Some of them in more than one way.</p>

<p>Consider the palindromic numbers that can be expressed as the sum of a square and a cube, both greater than 1, in <b>exactly</b> 4 different ways.<br />
For example, 5229225 is a palindromic number and it can be expressed in exactly 4 different ways:</p>
<p>2285<sup>2</sup> + 20<sup>3</sup><br />
2223<sup>2</sup> + 66<sup>3</sup><br />
1810<sup>2</sup> + 125<sup>3</sup><br />
1197<sup>2</sup> + 156<sup>3</sup></p>
 
<p>Find the sum of the five smallest such palindromic numbers.</p>
"""

# ╔═╡ 45957a90-2b34-11eb-3067-3d0a2bcf2570
begin
    submit_answer(nothing; prob_num=361)
end

# ╔═╡ 45957a90-2b34-11eb-1232-0b75dfaecb16
html"""
<h2>Problem 349: Langton's ant</h2>
<p>
An ant moves on a regular grid of squares that are coloured either black or white.<br /> 
The ant is always oriented in one of the cardinal directions (left, right, up or down) and moves from square to adjacent square according to the following rules:<br />
- if it is on a black square, it flips the colour of the square to white, rotates 90 degrees counterclockwise and moves forward one square.<br />
- if it is on a white square, it flips the colour of the square to black, rotates 90 degrees clockwise and moves forward one square.<br /></p>
<p>
Starting with a grid that is entirely white, how many squares are black after 10<sup>18</sup> moves of the ant?
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-0db6-1f0c9f1ac3e2
begin
    submit_answer(nothing; prob_num=362)
end

# ╔═╡ 45957a90-2b34-11eb-27f6-dd662bde5a1f
html"""
<h2>Problem 350: Constraining the least greatest and the greatest least</h2>
<p>A <i>list of size n</i> is a sequence of <var>n</var> natural numbers.<br /> Examples are (2,4,6), (2,6,4), (10,6,15,6), and (11).
</p><p>
The <b>greatest common divisor</b>, or gcd, of a list is the largest natural number that divides all entries of the list. <br />Examples: gcd(2,6,4) = 2, gcd(10,6,15,6) = 1 and gcd(11) = 11.
</p><p>
The <b>least common multiple</b>, or lcm, of a list is the smallest natural number divisible by each entry of the list. <br />Examples: lcm(2,6,4) = 12, lcm(10,6,15,6) = 30 and lcm(11) = 11.
</p><p>
Let f(<var>G</var>, <var>L</var>, <var>N</var>) be the number of lists of size <var>N</var> with gcd ≥ <var>G</var> and lcm ≤ <var>L</var>. For example:
</p><p>
f(10, 100, 1) = 91.<br />
f(10, 100, 2) = 327.<br />
f(10, 100, 3) = 1135.<br />
f(10, 100, 1000) mod 101<sup>4</sup> = 3286053.
</p><p>
Find f(10<sup>6</sup>, 10<sup>12</sup>, 10<sup>18</sup>) mod 101<sup>4</sup>.
</p>
"""

# ╔═╡ 45957a90-2b34-11eb-0016-d52cb9566e79
begin
    submit_answer(nothing; prob_num=363)
end

# ╔═╡ 45957a90-2b34-11eb-2d21-df19d7879d59
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

# ╔═╡ 45957a90-2b34-11eb-19c2-3da1b5d59048
begin
    submit_answer(nothing; prob_num=364)
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