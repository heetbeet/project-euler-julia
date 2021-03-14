### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1acf21d0-84a3-11eb-1f3e-f51a4b4a52a8
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1acf21d0-84a3-11eb-33a2-473454e593bf
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

# ╔═╡ 1acf21d0-84a3-11eb-0106-95b2ee91f506
begin
    submit_answer(nothing; prob_num=326)
end

# ╔═╡ 1acf21d0-84a3-11eb-2890-cde256b19f7b
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

# ╔═╡ 1acf21d0-84a3-11eb-3039-a7e38108e013
begin
    submit_answer(nothing; prob_num=327)
end

# ╔═╡ 1acf21d0-84a3-11eb-3a8c-895068ef8981
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

# ╔═╡ 1acf21d0-84a3-11eb-2a15-8758e1e7ef47
begin
    submit_answer(nothing; prob_num=328)
end

# ╔═╡ 1acf21d0-84a3-11eb-27c2-2bfca7b3cd75
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

# ╔═╡ 1acf21d0-84a3-11eb-24a5-571f77ef8e22
begin
    submit_answer(nothing; prob_num=329)
end

# ╔═╡ 1acf21d0-84a3-11eb-3fd4-2357e11a8ac1
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

# ╔═╡ 1acf21d0-84a3-11eb-0695-875270d64b65
begin
    submit_answer(nothing; prob_num=330)
end

# ╔═╡ 1acf21d0-84a3-11eb-01b1-5f3a22f3590e
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

# ╔═╡ 1acf21d0-84a3-11eb-0f3c-add016076bbb
begin
    submit_answer(nothing; prob_num=331)
end

# ╔═╡ 1acf21d0-84a3-11eb-155c-23918e822e31
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

# ╔═╡ 1acf21d0-84a3-11eb-26ac-af0c95a26ac3
begin
    submit_answer(nothing; prob_num=332)
end

# ╔═╡ 1acf21d0-84a3-11eb-1ddf-63dffc5c15e2
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

# ╔═╡ 1acf21d0-84a3-11eb-17f0-8d05dffb7ad2
begin
    submit_answer(nothing; prob_num=333)
end

# ╔═╡ 1acf21d0-84a3-11eb-134a-5f80021c3555
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

# ╔═╡ 1acf21d0-84a3-11eb-02fc-1b5b63a8ac4e
begin
    submit_answer(nothing; prob_num=334)
end

# ╔═╡ 1acf21d0-84a3-11eb-1077-cd1f2122bc65
html"""
<h2>Problem 335: Gathering the beans</h2>
<p>Whenever Peter feels bored, he places some bowls, containing one bean each, in a circle. After this, he takes all the beans out of a certain bowl and drops them one by one in the bowls going clockwise. He repeats this, starting from the bowl he dropped the last bean in, until the initial situation appears again. For example with 5 bowls he acts as follows:</p>

<div align="center"><img src="project/images/p335_mancala.gif" class="dark_img" alt="p335_mancala.gif" /></div>

<p>So with 5 bowls it takes Peter 15 moves to return to the initial situation.</p>

<p>Let <var>M</var>(<var>x</var>) represent the number of moves required to return to the initial situation, starting with <var>x</var> bowls. Thus, <var>M</var>(5) = 15. It can also be verified that <var>M</var>(100) = 10920.</p>

<p>Find $\displaystyle \sum_{k=0}^{10^{18}} M(2^k + 1)$. Give your answer modulo 7<sup>9</sup>.</p>
"""

# ╔═╡ 1acf21d0-84a3-11eb-2eda-bf4abc432d7b
begin
    submit_answer(nothing; prob_num=335)
end

# ╔═╡ 1acf21d0-84a3-11eb-05e3-d13614b42cc3
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

# ╔═╡ 1acf21d0-84a3-11eb-2d9a-99ac100e9ba6
begin
    submit_answer(nothing; prob_num=336)
end

# ╔═╡ 1acf21d0-84a3-11eb-0052-b182bf68c669
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

# ╔═╡ 1acf21d0-84a3-11eb-2439-f9226f4d3755
begin
    submit_answer(nothing; prob_num=337)
end

# ╔═╡ 1acf21d0-84a3-11eb-0b26-e99facce637c
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

# ╔═╡ 1acf21d0-84a3-11eb-17df-69f870f88f39
begin
    submit_answer(nothing; prob_num=338)
end

# ╔═╡ 1acf21d0-84a3-11eb-199d-69da1f9ae8b9
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

# ╔═╡ 1acf21d0-84a3-11eb-2d80-457ecda6dbcf
begin
    submit_answer(nothing; prob_num=339)
end

# ╔═╡ 1acf21d0-84a3-11eb-0614-33d801fb685f
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

# ╔═╡ 1acf21d0-84a3-11eb-040b-c55fa40fe155
begin
    submit_answer(nothing; prob_num=340)
end

# ╔═╡ 1acf21d0-84a3-11eb-01d9-7fbbe6c9810c
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

# ╔═╡ 1acf21d0-84a3-11eb-3597-41a58f83a52e
begin
    submit_answer(nothing; prob_num=341)
end

# ╔═╡ 1acf21d0-84a3-11eb-0de5-f145eed6f12e
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

# ╔═╡ 1acf21d0-84a3-11eb-179a-6d8dc38956e0
begin
    submit_answer(nothing; prob_num=342)
end

# ╔═╡ 1acf21d0-84a3-11eb-3be5-fdf4a1ffd582
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

# ╔═╡ 1acf21d0-84a3-11eb-12af-3f3b4b6d44e3
begin
    submit_answer(nothing; prob_num=343)
end

# ╔═╡ 1acf21d0-84a3-11eb-317a-dfb5f58dbab8
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

# ╔═╡ 1acf21d0-84a3-11eb-21ea-df0d2f55b615
begin
    submit_answer(nothing; prob_num=344)
end

# ╔═╡ 1acf21d0-84a3-11eb-3217-35b9e6cc524e
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

# ╔═╡ 1acf21d0-84a3-11eb-1228-47d625022fc9
begin
    submit_answer(nothing; prob_num=345)
end

# ╔═╡ 1acf21d0-84a3-11eb-0868-93e118c89126
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

# ╔═╡ 1acf21d0-84a3-11eb-2215-7d228efaeb5f
begin
    submit_answer(nothing; prob_num=346)
end

# ╔═╡ 1acf21d0-84a3-11eb-01e1-2b20697da3f3
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

# ╔═╡ 1acf21d0-84a3-11eb-2097-5f5603845b3f
begin
    submit_answer(nothing; prob_num=347)
end

# ╔═╡ 1acf21d0-84a3-11eb-1acd-1b55617ead6f
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

# ╔═╡ 1acf21d0-84a3-11eb-387c-ed9ea0ed2311
begin
    submit_answer(nothing; prob_num=348)
end

# ╔═╡ 1acf21d0-84a3-11eb-2649-ed073fde4e7a
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

# ╔═╡ 1acf21d0-84a3-11eb-0160-e33b45732ba3
begin
    submit_answer(nothing; prob_num=349)
end

# ╔═╡ 1acf21d0-84a3-11eb-1ddc-216fd69728c0
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

# ╔═╡ 1acf21d0-84a3-11eb-291c-65f872ed797e
begin
    submit_answer(nothing; prob_num=350)
end

# ╔═╡ Cell order:
# ╠═1acf21d0-84a3-11eb-1f3e-f51a4b4a52a8
# ╟─1acf21d0-84a3-11eb-33a2-473454e593bf
# ╠═1acf21d0-84a3-11eb-0106-95b2ee91f506
# ╟─1acf21d0-84a3-11eb-2890-cde256b19f7b
# ╠═1acf21d0-84a3-11eb-3039-a7e38108e013
# ╟─1acf21d0-84a3-11eb-3a8c-895068ef8981
# ╠═1acf21d0-84a3-11eb-2a15-8758e1e7ef47
# ╟─1acf21d0-84a3-11eb-27c2-2bfca7b3cd75
# ╠═1acf21d0-84a3-11eb-24a5-571f77ef8e22
# ╟─1acf21d0-84a3-11eb-3fd4-2357e11a8ac1
# ╠═1acf21d0-84a3-11eb-0695-875270d64b65
# ╟─1acf21d0-84a3-11eb-01b1-5f3a22f3590e
# ╠═1acf21d0-84a3-11eb-0f3c-add016076bbb
# ╟─1acf21d0-84a3-11eb-155c-23918e822e31
# ╠═1acf21d0-84a3-11eb-26ac-af0c95a26ac3
# ╟─1acf21d0-84a3-11eb-1ddf-63dffc5c15e2
# ╠═1acf21d0-84a3-11eb-17f0-8d05dffb7ad2
# ╟─1acf21d0-84a3-11eb-134a-5f80021c3555
# ╠═1acf21d0-84a3-11eb-02fc-1b5b63a8ac4e
# ╟─1acf21d0-84a3-11eb-1077-cd1f2122bc65
# ╠═1acf21d0-84a3-11eb-2eda-bf4abc432d7b
# ╟─1acf21d0-84a3-11eb-05e3-d13614b42cc3
# ╠═1acf21d0-84a3-11eb-2d9a-99ac100e9ba6
# ╟─1acf21d0-84a3-11eb-0052-b182bf68c669
# ╠═1acf21d0-84a3-11eb-2439-f9226f4d3755
# ╟─1acf21d0-84a3-11eb-0b26-e99facce637c
# ╠═1acf21d0-84a3-11eb-17df-69f870f88f39
# ╟─1acf21d0-84a3-11eb-199d-69da1f9ae8b9
# ╠═1acf21d0-84a3-11eb-2d80-457ecda6dbcf
# ╟─1acf21d0-84a3-11eb-0614-33d801fb685f
# ╠═1acf21d0-84a3-11eb-040b-c55fa40fe155
# ╟─1acf21d0-84a3-11eb-01d9-7fbbe6c9810c
# ╠═1acf21d0-84a3-11eb-3597-41a58f83a52e
# ╟─1acf21d0-84a3-11eb-0de5-f145eed6f12e
# ╠═1acf21d0-84a3-11eb-179a-6d8dc38956e0
# ╟─1acf21d0-84a3-11eb-3be5-fdf4a1ffd582
# ╠═1acf21d0-84a3-11eb-12af-3f3b4b6d44e3
# ╟─1acf21d0-84a3-11eb-317a-dfb5f58dbab8
# ╠═1acf21d0-84a3-11eb-21ea-df0d2f55b615
# ╟─1acf21d0-84a3-11eb-3217-35b9e6cc524e
# ╠═1acf21d0-84a3-11eb-1228-47d625022fc9
# ╟─1acf21d0-84a3-11eb-0868-93e118c89126
# ╠═1acf21d0-84a3-11eb-2215-7d228efaeb5f
# ╟─1acf21d0-84a3-11eb-01e1-2b20697da3f3
# ╠═1acf21d0-84a3-11eb-2097-5f5603845b3f
# ╟─1acf21d0-84a3-11eb-1acd-1b55617ead6f
# ╠═1acf21d0-84a3-11eb-387c-ed9ea0ed2311
# ╟─1acf21d0-84a3-11eb-2649-ed073fde4e7a
# ╠═1acf21d0-84a3-11eb-0160-e33b45732ba3
# ╟─1acf21d0-84a3-11eb-1ddc-216fd69728c0
# ╠═1acf21d0-84a3-11eb-291c-65f872ed797e