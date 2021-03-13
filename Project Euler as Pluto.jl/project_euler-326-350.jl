### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 444ef350-8435-11eb-2335-3ff3ac194344
include((@__DIR__)*"/shared.jl");

# ╔═╡ 444ef350-8435-11eb-0fb8-4ba2067d8a03
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

# ╔═╡ 444ef350-8435-11eb-36b7-31425fdd2d9a
begin
    submit_answer(nothing; prob_num=326)
end

# ╔═╡ 444ef350-8435-11eb-0995-f9b1b7b11d1f
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

# ╔═╡ 444ef350-8435-11eb-1647-05338c2e4184
begin
    submit_answer(nothing; prob_num=327)
end

# ╔═╡ 444ef350-8435-11eb-10b3-3748bb2f2055
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

# ╔═╡ 444ef350-8435-11eb-13bc-fde149da462d
begin
    submit_answer(nothing; prob_num=328)
end

# ╔═╡ 444ef350-8435-11eb-002e-c797b8a3fd33
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

# ╔═╡ 444ef350-8435-11eb-27b6-2f59a4f50a00
begin
    submit_answer(nothing; prob_num=329)
end

# ╔═╡ 444ef350-8435-11eb-34cd-a3b51fc6fab9
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

# ╔═╡ 444ef350-8435-11eb-121b-27beb4b3f794
begin
    submit_answer(nothing; prob_num=330)
end

# ╔═╡ 444ef350-8435-11eb-097d-c1fbf0a7634d
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

# ╔═╡ 444ef350-8435-11eb-100a-ad107a86c0ba
begin
    submit_answer(nothing; prob_num=331)
end

# ╔═╡ 444ef350-8435-11eb-1a5f-e3f4076d41dc
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

# ╔═╡ 444ef350-8435-11eb-0f8c-cf968389dc46
begin
    submit_answer(nothing; prob_num=332)
end

# ╔═╡ 444ef350-8435-11eb-3f7f-7338a9af0139
html"""
<h2>Problem 333: Special partitions</h2>
<p>All positive integers can be partitioned in such a way that each and every term of the partition can be expressed as 2<sup>i</sup>x3<sup>j</sup>, where i,j ≥ 0.</p>

<p>Let's consider only such partitions where none of the terms can divide any of the other terms.
<br />For example, the partition of 17 = 2 + 6 + 9 = (2<sup>1</sup>x3<sup>0</sup> + 2<sup>1</sup>x3<sup>1</sup> + 2<sup>0</sup>x3<sup>2</sup>) would not be valid since 2 can divide 6. Neither would the partition 17 = 16 + 1 = (2<sup>4</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>0</sup>) since 1 can divide 16. The only valid partition of 17 would be 8 + 9 = (2<sup>3</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>2</sup>).</p>

<p>Many integers have more than one valid partition, the first being 11 having the following two partitions.
<br />11 = 2 + 9 = (2<sup>1</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>2</sup>)
<br />11 = 8 + 3 = (2<sup>3</sup>x3<sup>0</sup> + 2<sup>0</sup>x3<sup>1</sup>)</p>

<p>Let's define P(<var>n</var>) as the number of valid partitions of <var>n</var>. For example, P(11) = 2.</p>

<p>Let's consider only the prime integers <var>q</var> which would have a single valid partition such as P(17).</p>

<p>The sum of the primes <var>q</var> &lt;100 such that P(<var>q</var>)=1 equals 233.</p>

<p>Find the sum of the primes <var>q</var> &lt;1000000 such that P(<var>q</var>)=1.</p>
"""

# ╔═╡ 444ef350-8435-11eb-0a40-9d5e5e21b7ac
begin
    submit_answer(nothing; prob_num=333)
end

# ╔═╡ 444ef350-8435-11eb-22ba-cbd14ae5db0c
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

# ╔═╡ 444ef350-8435-11eb-0b12-e37036015005
begin
    submit_answer(nothing; prob_num=334)
end

# ╔═╡ 444ef350-8435-11eb-1328-0be0e486bf46
html"""
<h2>Problem 335: Gathering the beans</h2>
<p>Whenever Peter feels bored, he places some bowls, containing one bean each, in a circle. After this, he takes all the beans out of a certain bowl and drops them one by one in the bowls going clockwise. He repeats this, starting from the bowl he dropped the last bean in, until the initial situation appears again. For example with 5 bowls he acts as follows:</p>

<div align="center"><img src="project/images/p335_mancala.gif" class="dark_img" alt="p335_mancala.gif" /></div>

<p>So with 5 bowls it takes Peter 15 moves to return to the initial situation.</p>

<p>Let <var>M</var>(<var>x</var>) represent the number of moves required to return to the initial situation, starting with <var>x</var> bowls. Thus, <var>M</var>(5) = 15. It can also be verified that <var>M</var>(100) = 10920.</p>

<p>Find $\displaystyle \sum_{k=0}^{10^{18}} M(2^k + 1)$. Give your answer modulo 7<sup>9</sup>.</p>
"""

# ╔═╡ 444ef350-8435-11eb-3377-75acbbe584ea
begin
    submit_answer(nothing; prob_num=335)
end

# ╔═╡ 444ef350-8435-11eb-1163-8d6b34f5fa33
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

# ╔═╡ 444ef350-8435-11eb-0bd3-adccc4a655cc
begin
    submit_answer(nothing; prob_num=336)
end

# ╔═╡ 444ef350-8435-11eb-1218-5df6246514ba
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

# ╔═╡ 444ef350-8435-11eb-397f-6dc7e13038e5
begin
    submit_answer(nothing; prob_num=337)
end

# ╔═╡ 444ef350-8435-11eb-2122-a5fb7dd924d9
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

# ╔═╡ 444ef350-8435-11eb-0711-458f21942855
begin
    submit_answer(nothing; prob_num=338)
end

# ╔═╡ 444ef350-8435-11eb-2351-479f90866122
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

# ╔═╡ 444ef350-8435-11eb-0dd8-855b8bbbed06
begin
    submit_answer(nothing; prob_num=339)
end

# ╔═╡ 444ef350-8435-11eb-154a-af0299b7b4c9
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

# ╔═╡ 444ef350-8435-11eb-0cf3-314ea02850f4
begin
    submit_answer(nothing; prob_num=340)
end

# ╔═╡ 444ef350-8435-11eb-1594-f9db81c63aea
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

# ╔═╡ 444ef350-8435-11eb-08e8-61fde6e59140
begin
    submit_answer(nothing; prob_num=341)
end

# ╔═╡ 444ef350-8435-11eb-3466-51886a74e20c
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

# ╔═╡ 444ef350-8435-11eb-02d6-1111278a217b
begin
    submit_answer(nothing; prob_num=342)
end

# ╔═╡ 444ef350-8435-11eb-3358-b7a28199d6d9
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

# ╔═╡ 444ef350-8435-11eb-07e9-9ffe605b3e7f
begin
    submit_answer(nothing; prob_num=343)
end

# ╔═╡ 444ef350-8435-11eb-1c51-1d6049d046e9
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

# ╔═╡ 444ef350-8435-11eb-1f7f-79d755947181
begin
    submit_answer(nothing; prob_num=344)
end

# ╔═╡ 444ef350-8435-11eb-28e9-497ace0a4ec0
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

# ╔═╡ 444ef350-8435-11eb-38f8-294de576b094
begin
    submit_answer(nothing; prob_num=345)
end

# ╔═╡ 444ef350-8435-11eb-29f1-75c92272ba01
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

# ╔═╡ 444ef350-8435-11eb-1585-2788c3004389
begin
    submit_answer(nothing; prob_num=346)
end

# ╔═╡ 444ef350-8435-11eb-3063-8b3cdb570982
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

# ╔═╡ 444ef350-8435-11eb-23ee-45bd3a030763
begin
    submit_answer(nothing; prob_num=347)
end

# ╔═╡ 444ef350-8435-11eb-08d5-c396dfaf7752
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

# ╔═╡ 444ef350-8435-11eb-2d1e-13bee8f62166
begin
    submit_answer(nothing; prob_num=348)
end

# ╔═╡ 444ef350-8435-11eb-2dbb-79a00b4ebc20
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

# ╔═╡ 444ef350-8435-11eb-1c1b-c525a4bfe267
begin
    submit_answer(nothing; prob_num=349)
end

# ╔═╡ 444ef350-8435-11eb-231b-1d121ee34f25
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

# ╔═╡ 444ef350-8435-11eb-2e4c-99b4d58917e9
begin
    submit_answer(nothing; prob_num=350)
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
# ╠═444ef350-8435-11eb-2335-3ff3ac194344
# ╟─444ef350-8435-11eb-0fb8-4ba2067d8a03
# ╠═444ef350-8435-11eb-36b7-31425fdd2d9a
# ╟─444ef350-8435-11eb-0995-f9b1b7b11d1f
# ╠═444ef350-8435-11eb-1647-05338c2e4184
# ╟─444ef350-8435-11eb-10b3-3748bb2f2055
# ╠═444ef350-8435-11eb-13bc-fde149da462d
# ╟─444ef350-8435-11eb-002e-c797b8a3fd33
# ╠═444ef350-8435-11eb-27b6-2f59a4f50a00
# ╟─444ef350-8435-11eb-34cd-a3b51fc6fab9
# ╠═444ef350-8435-11eb-121b-27beb4b3f794
# ╟─444ef350-8435-11eb-097d-c1fbf0a7634d
# ╠═444ef350-8435-11eb-100a-ad107a86c0ba
# ╟─444ef350-8435-11eb-1a5f-e3f4076d41dc
# ╠═444ef350-8435-11eb-0f8c-cf968389dc46
# ╟─444ef350-8435-11eb-3f7f-7338a9af0139
# ╠═444ef350-8435-11eb-0a40-9d5e5e21b7ac
# ╟─444ef350-8435-11eb-22ba-cbd14ae5db0c
# ╠═444ef350-8435-11eb-0b12-e37036015005
# ╟─444ef350-8435-11eb-1328-0be0e486bf46
# ╠═444ef350-8435-11eb-3377-75acbbe584ea
# ╟─444ef350-8435-11eb-1163-8d6b34f5fa33
# ╠═444ef350-8435-11eb-0bd3-adccc4a655cc
# ╟─444ef350-8435-11eb-1218-5df6246514ba
# ╠═444ef350-8435-11eb-397f-6dc7e13038e5
# ╟─444ef350-8435-11eb-2122-a5fb7dd924d9
# ╠═444ef350-8435-11eb-0711-458f21942855
# ╟─444ef350-8435-11eb-2351-479f90866122
# ╠═444ef350-8435-11eb-0dd8-855b8bbbed06
# ╟─444ef350-8435-11eb-154a-af0299b7b4c9
# ╠═444ef350-8435-11eb-0cf3-314ea02850f4
# ╟─444ef350-8435-11eb-1594-f9db81c63aea
# ╠═444ef350-8435-11eb-08e8-61fde6e59140
# ╟─444ef350-8435-11eb-3466-51886a74e20c
# ╠═444ef350-8435-11eb-02d6-1111278a217b
# ╟─444ef350-8435-11eb-3358-b7a28199d6d9
# ╠═444ef350-8435-11eb-07e9-9ffe605b3e7f
# ╟─444ef350-8435-11eb-1c51-1d6049d046e9
# ╠═444ef350-8435-11eb-1f7f-79d755947181
# ╟─444ef350-8435-11eb-28e9-497ace0a4ec0
# ╠═444ef350-8435-11eb-38f8-294de576b094
# ╟─444ef350-8435-11eb-29f1-75c92272ba01
# ╠═444ef350-8435-11eb-1585-2788c3004389
# ╟─444ef350-8435-11eb-3063-8b3cdb570982
# ╠═444ef350-8435-11eb-23ee-45bd3a030763
# ╟─444ef350-8435-11eb-08d5-c396dfaf7752
# ╠═444ef350-8435-11eb-2d1e-13bee8f62166
# ╟─444ef350-8435-11eb-2dbb-79a00b4ebc20
# ╠═444ef350-8435-11eb-1c1b-c525a4bfe267
# ╟─444ef350-8435-11eb-231b-1d121ee34f25
# ╠═444ef350-8435-11eb-2e4c-99b4d58917e9