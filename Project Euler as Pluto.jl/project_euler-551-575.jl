### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 447a9730-8435-11eb-328c-8fc29d9eab17
include((@__DIR__)*"/shared.jl");

# ╔═╡ 447a9730-8435-11eb-3344-95f0dcf2777b
html"""
<h2>Problem 551: Sum of digits sequence</h2>
<p>Let <var>a</var><sub>0</sub>, <var>a</var><sub>1</sub>, <var>a</var><sub>2</sub>, ... be an integer sequence defined by:</p>
<ul>
<li><var>a</var><sub>0</sub> = 1;</li>
<li>for <var>n</var> ≥ 1, <var>a<sub>n</sub></var> is the sum of the digits of all preceding terms.</li>
</ul>
<p>The sequence starts with 1, 1, 2, 4, 8, 16, 23, 28, 38, 49, ...<br />
You are given <var>a</var><sub>10<sup>6</sup></sub> = 31054319.</p>
<p>Find <var>a</var><sub>10<sup>15</sup></sub>.</p>
"""

# ╔═╡ 447a9730-8435-11eb-14db-610532849b22
begin
    submit_answer(nothing; prob_num=551)
end

# ╔═╡ 447a9730-8435-11eb-37cb-7d11e1780b33
html"""
<h2>Problem 552: Chinese leftovers II</h2>
<p>
Let <var>A<sub>n</sub></var> be the smallest positive integer satisfying  <var>A<sub>n</sub></var> mod <var>p<sub>i</sub></var> = <var>i</var>  for all 1 ≤ <var>i</var> ≤ <var>n</var>, where <var>p<sub>i</sub></var> is the
<var>i</var>-th prime.
<br />For example <var>A</var><sub>2</sub> = 5, since this is the smallest positive solution of the system of equations </p>
<ul style="list-style-type:none;margin-left:2cm;"><li> <var>A</var><sub>2</sub> mod 2 = 1 </li>
<li> <var>A</var><sub>2</sub> mod 3 = 2</li></ul>
<p>
The system of equations for <var>A</var><sub>3</sub> adds another constraint. That is, <var>A</var><sub>3</sub> is the smallest positive solution of</p>
<ul style="list-style-type:none;margin-left:2cm;"><li> <var>A</var><sub>3</sub> mod 2 = 1 </li>
<li> <var>A</var><sub>3</sub> mod 3 = 2</li>
<li> <var>A</var><sub>3</sub> mod 5 = 3</li></ul>
<p>
and hence <var>A</var><sub>3</sub> = 23. Similarly, one gets <var>A</var><sub>4</sub> = 53 and <var>A</var><sub>5</sub> = 1523.
</p>
<p>
Let S(<var>n</var>) be the sum of all primes up to <var>n</var> that divide at least one element in the sequence <var>A</var>.
<br />For example, S(50) = 69 = 5 + 23 + 41, since 5 divides <var>A</var><sub>2</sub>, 23 divides <var>A</var><sub>3</sub> and 41 divides <var>A</var><sub>10</sub> = 5765999453. No other prime number up to 50 divides an element in <var>A</var>.
</p>
<p>
Find S(300000).</p>
"""

# ╔═╡ 447a9730-8435-11eb-0021-235f852f7053
begin
    submit_answer(nothing; prob_num=552)
end

# ╔═╡ 447a9730-8435-11eb-22a6-b9a04bf47188
html"""
<h2>Problem 553: Power sets of power sets</h2>
<p>Let <var>P</var>(<var>n</var>) be the set of the first <var>n</var> positive integers {1, 2, ..., <var>n</var>}.<br />
Let Q(<var>n</var>) be the set of all the non-empty subsets of <var>P</var>(<var>n</var>).<br />
Let R(<var>n</var>) be the set of all the non-empty subsets of <var>Q</var>(<var>n</var>).</p>

<p>An element <var>X</var> ∈ <var>R</var>(<var>n</var>) is a non-empty subset of <var>Q</var>(<var>n</var>), so it is itself a set.<br />
From <var>X</var> we can construct a graph as follows:</p>

<ul>
<li>Each element <var>Y</var> ∈ <var>X</var> corresponds to a vertex and labeled with <var>Y</var>;</li>
<li>Two vertices <var>Y</var><sub>1</sub> and <var>Y</var><sub>2</sub> are connected if <var>Y</var><sub>1</sub> ∩ <var>Y</var><sub>2</sub> ≠ ∅.</li>
</ul>

<p>For example, <var>X</var> = {{1}, {1,2,3}, {3}, {5,6}, {6,7}} results in the following graph:</p>

<div align="center"><img src="project/images/p553-power-sets.gif" alt="p553-power-sets.gif" /></div>

<p>This graph has two <b>connected components</b>.</p>

<p>Let <var>C</var>(<var>n</var>,<var>k</var>) be the number of elements of <var>R</var>(<var>n</var>) that have exactly <var>k</var> connected components in their graph.<br />
You are given <var>C</var>(2,1) = 6, <var>C</var>(3,1) = 111, <var>C</var>(4,2) = 486, <var>C</var>(100,10) mod 1 000 000 007 = 728209718.</p>

<p>Find <var>C</var>(10<sup>4</sup>,10) mod 1 000 000 007.</p>
"""

# ╔═╡ 447a9730-8435-11eb-3797-5f0fbbb18d2b
begin
    submit_answer(nothing; prob_num=553)
end

# ╔═╡ 447a9730-8435-11eb-1cc0-cfddb04b8fef
html"""
<h2>Problem 554: Centaurs on a chess board</h2>
<p>On a chess board, a centaur moves like a king or a knight. The diagram below shows the valid moves of a centaur (represented by an inverted king) on an 8x8 board.</p>

<div align="center"><img src="project/images/p554-centaurs.png" alt="p554-centaurs.png" /></div>

<p>It can be shown that at most <var>n</var><sup>2</sup> non-attacking centaurs can be placed on a board of size 2<var>n</var>×2<var>n</var>.<br />
Let <var>C</var>(<var>n</var>) be the number of ways to place <var>n</var><sup>2</sup> centaurs on a 2<var>n</var>×2<var>n</var> board so that no centaur attacks another directly.<br />
For example <var>C</var>(1) = 4, <var>C</var>(2) = 25, <var>C</var>(10) = 1477721.</p>

<p>Let <var>F<sub>i</sub></var> be the <var>i</var><sup>th</sup> Fibonacci number defined as <var>F</var><sub>1</sub> = <var>F</var><sub>2</sub> = 1 and <var>F</var><sub>i</sub> = <var>F</var><sub><var>i</var>-1</sub> + <var>F</var><sub><var>i</var>-2</sub> for <var>i</var> &gt; 2.</p>

<p>Find $\displaystyle \left( \sum_{i=2}^{90} C(F_i) \right) \text{mod } (10^8+7)$.</p>
"""

# ╔═╡ 447a9730-8435-11eb-2028-931b99bb7d5d
begin
    submit_answer(nothing; prob_num=554)
end

# ╔═╡ 447a9730-8435-11eb-269d-8bfa970314b5
html"""
<h2>Problem 555: McCarthy 91 function</h2>
<p>
The McCarthy 91 function is defined as follows:
$$
M_{91}(n) = 
    \begin{cases}
        n - 10 &amp; \text{if } n &gt; 100 \\
        M_{91}(M_{91}(n+11)) &amp; \text{if } 0 \leq n \leq 100
    \end{cases}
$$
</p>
<p>
We can generalize this definition by abstracting away the constants into new variables:

$$
M_{m,k,s}(n) = 
    \begin{cases}
        n - s &amp; \text{if } n &gt; m \\
        M_{m,k,s}(M_{m,k,s}(n+k)) &amp; \text{if } 0 \leq n \leq m
    \end{cases}
$$
</p>
<p>
This way, we have $M_{91} = M_{100,11,10}$.
</p>
<p>
Let $F_{m,k,s}$ be the set of fixed points of $M_{m,k,s}$. That is, 

$$F_{m,k,s}= \left\{ n \in \mathbb{N} \, | \, M_{m,k,s}(n) = n \right\}$$
</p>
<p>
For example, the only fixed point of $M_{91}$ is $n = 91$. In other words, $F_{100,11,10}= \{91\}$.
</p> 
<p>
Now, define $SF(m,k,s)$ as the sum of the elements in $F_{m,k,s}$ and let $S(p,m) = \displaystyle \sum_{1 \leq s &lt; k \leq p}{SF(m,k,s)}$.
</p>
<p>
For example, $S(10, 10) = 225$ and $S(1000, 1000)=208724467$.
</p>
<p>
Find $S(10^6, 10^6)$.
</p>
"""

# ╔═╡ 447a9730-8435-11eb-09ae-95382070c4e6
begin
    submit_answer(nothing; prob_num=555)
end

# ╔═╡ 447a9730-8435-11eb-2852-150c40e25371
html"""
<h2>Problem 556: Squarefree Gaussian Integers</h2>
<p>A <b>Gaussian integer</b> is a number <var>z</var> = <var>a</var> + <var>b</var>i where <var>a</var>, <var>b</var> are integers and i<sup>2</sup> = -1.<br />
Gaussian integers are a subset of the complex numbers, and the integers are the subset of Gaussian integers for which <var>b</var> = 0.</p>

<p>A Gaussian integer <b>unit</b> is one for which <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = 1, i.e. one of 1, i, -1, -i.<br />
Let's define a <i>proper</i> Gaussian integer as one for which <var>a</var> &gt; 0 and <var>b</var> ≥ 0.</p>

<p>A Gaussian integer z<sub>1</sub> = a<sub>1</sub> + <var>b</var><sub>1</sub>i is said to be divisible by <var>z</var><sub>2</sub> = a<sub>2</sub> + <var>b</var><sub>2</sub>i if <var>z</var><sub>3</sub> = <var>a</var><sub>3</sub> + <var>b</var><sub>3</sub>i = <var>z</var><sub>1</sub>/<var>z</var><sub>2</sub> is a Gaussian integer.<br />
$\frac {z_1} {z_2} = \frac {a_1 + b_1 i} {a_2 + b_2 i} = \frac {(a_1 + b_1 i)(a_2 - b_2 i)} {(a_2 + b_2 i)(a_2 - b_2 i)} = \frac {a_1 a_2 + b_1 b_2} {a_2^2 + b_2^2} + \frac  {a_2 b_1 - a_1 b_2}  {a_2^2 + b_2^2}i = a_3 + b_3 i$<br />
So, <var>z</var><sub>1</sub> is divisible by <var>z</var><sub>2</sub> if $\frac {a_1 a_2 + b_1 b_2} {a_2^2 + b_2^2}$ and $\frac  {a_2 b_1 - a_1 b_2}  {a_2^2 + b_2^2}$ are integers.<br />
For example, 2 is divisible by 1 + i because 2/(1 + i) = 1 - i is a Gaussian integer.</p>

<p>A <b>Gaussian prime</b> is a Gaussian integer that is divisible only by a unit, itself or itself times a unit.<br />
For example, 1 + 2i is a Gaussian prime, because it is only divisible by 1, i, -1, -i, 1 + 2i, i(1 + 2i) = i - 2, -(1 + 2i) = -1 - 2i and -i(1 + 2i) = 2 - i.<br />
2 is not a Gaussian prime as it is divisible by 1 + i.</p>

<p>A Gaussian integer can be uniquely factored as the product of a unit and proper Gaussian primes.<br />
For example 2 = -i(1 + i)<sup>2</sup> and 1 + 3i = (1 + i)(2 + i).<br />
A Gaussian integer is said to be squarefree if its prime factorization does not contain repeated proper Gaussian primes.<br />
So 2 is not squarefree over the Gaussian integers, but 1 + 3i is.<br />
Units and Gaussian primes are squarefree by definition.</p>

<p>Let <var>f</var>(<var>n</var>) be the count of proper squarefree Gaussian integers with <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> ≤ n.<br />
For example <var>f</var>(10) = 7 because 1, 1 + i, 1 + 2i, 1 + 3i = (1 + i)(2 + i), 2 + i, 3 and 3 + i = -i(1 + i)(1 + 2i) are squarefree, while 2 = -i(1 + i)<sup>2</sup> and 2 + 2i = -i(1 + i)<sup>3</sup> are not.<br />
You are given <var>f</var>(10<sup>2</sup>) = 54, <var>f</var>(10<sup>4</sup>) = 5218 and <var>f</var>(10<sup>8</sup>) = 52126906.</p>

<p>Find <var>f</var>(10<sup>14</sup>).</p>
"""

# ╔═╡ 447a9730-8435-11eb-2c87-9f17a8921339
begin
    submit_answer(nothing; prob_num=556)
end

# ╔═╡ 447a9730-8435-11eb-3f0e-335ef61375ca
html"""
<h2>Problem 557: Cutting triangles</h2>
<p>
A triangle is cut into four pieces by two straight lines, each starting at one vertex and ending on the opposite edge. This results in forming three smaller triangular pieces, and one quadrilateral.  If the original triangle has an integral area, it is often possible to choose cuts such that all of the four pieces also have integral area.  For example, the diagram below shows a triangle of area 55 that has been cut in this way.
</p>
<div align="center"><img src="project/images/p557-triangle.gif" alt="p557-triangle.gif" /></div>
<p>
Representing the areas as <var>a, b, c</var> and <var>d</var>, in the example above, the individual areas are <var>a</var> = 22, <var>b</var> = 8, <var>c</var> = 11 and <var>d</var> = 14.  It is also possible to cut a triangle of area 55 such that <var>a</var> = 20, <var>b</var> = 2, <var>c</var> = 24, <var>d</var> = 9.</p>
<p>
Define a triangle cutting quadruple (<var>a, b, c, d</var>) as a valid integral division of a triangle, where <var>a</var> is the area of the triangle between the two cut vertices, <var>d</var> is the area of the quadrilateral and <var>b</var> and <var>c</var> are the areas of the two other triangles, with the restriction that <var>b ≤ c</var>.  The two solutions described above are (22,8,11,14) and (20,2,24,9).  These are the only two possible quadruples that have a total area of 55.
</p>
<p>
Define S(<var>n</var>) as the sum of the area of the uncut triangles represented by all valid quadruples with <var>a+b+c+d</var> ≤ <var>n</var>.<br /> For example, S(20) = 259.  
</p>
<p>
Find S(10000).
</p>
"""

# ╔═╡ 447a9730-8435-11eb-397a-ad0af4952af7
begin
    submit_answer(nothing; prob_num=557)
end

# ╔═╡ 447a9730-8435-11eb-39b4-915a3f95d3c4
html"""
<h2>Problem 558: Irrational base</h2>
<p>Let <var>r</var> be the real root of the equation <var>x</var><sup>3</sup> = <var>x</var><sup>2</sup> + 1.<br />
Every positive integer can be written as the sum of distinct increasing powers of <var>r</var>.<br />
If we require the number of terms to be finite and the difference between any two exponents to be three or more, then the representation is unique.<br />
For example, 3 = <var>r</var><sup> -10</sup> + <var>r</var><sup> -5</sup> + <var>r</var><sup> -1</sup> + <var>r</var><sup> 2</sup> and 10 = <var>r</var><sup> -10</sup> + <var>r</var><sup> -7</sup> + <var>r</var><sup> 6</sup>.<br />
Interestingly, the relation holds for the complex roots of the equation.</p>

<p>Let <var>w</var>(<var>n</var>) be the number of terms in this unique representation of <var>n</var>. Thus <var>w</var>(3) = 4 and <var>w</var>(10) = 3.</p>

<p>More formally, for all positive integers <var>n</var>, we have:<br />
<var>n</var> = $\displaystyle \sum_{k=-\infty}^{\infty}$ <var>b<sub>k</sub> r<sup>k</sup></var><br />
under the conditions that:<br />
<var>b<sub>k</sub></var> is 0 or 1 for all <var>k</var>;<br />
<var>b<sub>k</sub></var> + <var>b</var><sub><var>k</var>+1</sub> + <var>b</var><sub><var>k</var>+2</sub> ≤ 1 for all <var>k</var>;<br />
<var>w</var>(<var>n</var>) = $\displaystyle \sum_{k=-\infty}^{\infty}$ <var>b<sub>k</sub></var> is finite.</p>

<p>Let S(<var>m</var>) = $\displaystyle \sum_{j=1}^{m}$ <var>w</var>(<var>j</var><sup>2</sup>).<br />
You are given S(10) = 61 and S(1000) = 19403.</p>

<p>Find S(5 000 000).</p>
"""

# ╔═╡ 447a9730-8435-11eb-328d-73237f3dd915
begin
    submit_answer(nothing; prob_num=558)
end

# ╔═╡ 447a9730-8435-11eb-05dc-7ba6b5235dc0
html"""
<h2>Problem 559: Permuted Matrices</h2>
<p>An <b>ascent</b> of a column <var>j</var> in a matrix occurs if the value of column <var>j</var> is smaller than the value of column <var>j</var>+1 in all rows.
</p><p>
Let P(<var>k</var>, <var>r</var>, <var>n</var>) be the number of <var>r</var> x <var>n</var> matrices with the following properties:</p>

<ul><li>The rows are permutations of {1, 2, 3, ... , <var>n</var>}.</li>
<li> Numbering the first column as 1, a column ascent occurs at column <var>j</var>&lt;<var>n</var> <b>if and only if</b> <var>j</var> is not a multiple of <var>k</var>.</li>

</ul><p>For example, P(1, 2, 3) = 19, P(2, 4, 6) = 65508751 and  P(7, 5, 30) mod 1000000123 = 161858102.</p>

Let Q(<var>n</var>) =$\,  \displaystyle \sum_{k=1}^n\,$ P(<var>k</var>, <var>n</var>, <var>n</var>).<br />
For example, Q(5) = 21879393751 and Q(50) mod 1000000123 = 819573537.

<p>Find Q(50000) mod 1000000123.</p>
"""

# ╔═╡ 447a9730-8435-11eb-2be5-fd31d3c1ee07
begin
    submit_answer(nothing; prob_num=559)
end

# ╔═╡ 447a9730-8435-11eb-05e3-bffae74b2222
html"""
<h2>Problem 560: Coprime Nim</h2>
<p>Coprime Nim is just like ordinary normal play Nim, but the players may only remove a number of stones from a pile  that is <b>coprime</b> with the current size of the pile. Two players remove stones in turn. The player who removes the last stone wins.</p>

<p>Let L(<var>n</var>, <var>k</var>) be the number of <b>losing</b> starting positions for the first player, assuming perfect play, when the game is played with <var>k</var> piles, each having between 1 and <var>n</var> - 1 stones inclusively.</p>

<p>For example, L(5, 2) = 6 since the losing initial positions are (1, 1), (2, 2), (2, 4), (3, 3), (4, 2) and (4, 4).<br />
You are also given L(10, 5) = 9964, L(10, 10) = 472400303, L(10<sup>3</sup>, 10<sup>3</sup>) mod 1 000 000 007 = 954021836.</p>

<p>Find L(10<sup>7</sup>, 10<sup>7</sup>) mod 1 000 000 007</p>
"""

# ╔═╡ 447a9730-8435-11eb-3e36-ebe6aa440d07
begin
    submit_answer(nothing; prob_num=560)
end

# ╔═╡ 447a9730-8435-11eb-3a6a-e96dc1f75de1
html"""
<h2>Problem 561: Divisor Pairs</h2>
<p>
Let $S(n)$ be the number of pairs $(a,b)$ of distinct divisors of $n$ such that $a$ divides $b$.<br />
For $n=6$ we get the following pairs: $(1,2), (1,3), (1,6),( 2,6)$ and $(3,6)$. So $S(6)=5$.<br />
Let $p_m\#$ be the product of the first $m$ prime numbers,  so $p_2\# = 2*3 = 6$.<br />
Let $E(m, n)$ be the highest integer $k$ such that $2^k$ divides $S((p_m\#)^n)$.<br />
$E(2,1) = 0$ since $2^0$ is the highest power of 2 that divides S(6)=5.<br />
Let $Q(n)=\sum_{i=1}^{n} E(904961, i)$<br />
$Q(8)=2714886$.
</p>
<p>
Evaluate $Q(10^{12})$. 
</p>
"""

# ╔═╡ 447a9730-8435-11eb-12cc-3f357d79b85b
begin
    submit_answer(nothing; prob_num=561)
end

# ╔═╡ 447a9730-8435-11eb-2a6f-35b5c587c197
html"""
<h2>Problem 562: Maximal perimeter</h2>
<p>Construct triangle ABC such that:</p>
<ul><li>Vertices A, B and C are lattice points inside or on the circle of radius <var>r</var> centered at the origin;</li>
<li>the triangle contains no other lattice point inside or on its edges;</li>
<li>the perimeter is maximum.</li></ul>
<p>Let <var>R</var> be the circumradius of triangle ABC and T(<var>r</var>) = <var>R</var>/<var>r</var>.<br />
For <var>r</var> = 5, one possible triangle has vertices (-4,-3), (4,2)  and (1,0) with perimeter $\sqrt{13}+\sqrt{34}+\sqrt{89}$ and circumradius <var>R</var> = $\sqrt {\frac {19669} 2 }$, so T(5) =$\sqrt {\frac {19669} {50} }$.<br />
You are given T(10) ~ 97.26729 and T(100) ~ 9157.64707.</p>

<p>Find T(10<sup>7</sup>). Give your answer rounded to the nearest integer.</p>
"""

# ╔═╡ 447a9730-8435-11eb-0c03-57e8285012ce
begin
    submit_answer(nothing; prob_num=562)
end

# ╔═╡ 447a9730-8435-11eb-0a39-e79a307939c1
html"""
<h2>Problem 563: Robot Welders</h2>
<p>A company specialises in producing large rectangular metal sheets, starting from unit square metal plates.  The welding is performed by a range of robots of increasing size.  Unfortunately, the programming options of these robots are rather limited.  Each one can only process up to 25 identical rectangles of metal, which they can weld along either edge to produce a larger rectangle.  The only programmable variables are the number of rectangles to be processed (up to and including 25), and whether to weld the long or short edge.</p>

<p>For example, the first robot could be programmed to weld together 11 raw unit square plates to make a 11×1 strip.  The next could take 10 of these 11×1 strips, and weld them either to make a longer 110×1 strip, or a 11×10 rectangle.  Many, but not all, possible dimensions of  metal sheets can be constructed in this way.</p>

<p>One regular customer has a particularly unusual order: The finished product should have an exact area, and the long side must not be more than 10% larger than the short side. If these requirements can be met in more than one way, in terms of the exact dimensions of the two sides, then the customer will demand that all variants be produced. For example, if the order calls for a metal sheet of area 889200, then there are three final dimensions that can be produced: 900×988, 912×975 and 936×950.  The target area of 889200 is the smallest area which can be manufactured in three different variants, within the limitations of the robot welders.</p>

<p>Let M(n) be the minimal area that can be manufactured in <u>exactly</u> n variants with the longer edge not greater than 10% bigger than the shorter edge.  Hence M(3) = 889200.</p>

<p>Find $ \sum_{n=2}^{100} M(n)$.</p>
"""

# ╔═╡ 447a9730-8435-11eb-0d04-1ffdd19bf179
begin
    submit_answer(nothing; prob_num=563)
end

# ╔═╡ 447a9730-8435-11eb-1484-833012a13913
html"""
<h2>Problem 564: Maximal polygons</h2>
<p>A line segment of length $2n-3$ is randomly split into $n$ segments of integer length ($n \ge 3$). In the sequence given by this split, the segments are then used as consecutive sides of a convex $n$-polygon, formed in such a way that its area is maximal.  All of the $\binom{2n-4} {n-1}$ possibilities for splitting up the initial line segment occur with the same probability. </p>

<p>Let $E(n)$ be the expected value of the area that is obtained by this procedure.<br />
For example, for $n=3$ the only possible split of the line segment of length $3$ results in three line segments with length $1$, that form an equilateral triangle with an area of $\frac 1 4 \sqrt{3}$. Therefore $E(3)=0.433013$, rounded to $6$ decimal places.<br />
For $n=4$ you can find $4$ different possible splits, each of which is composed of three line segments with length $1$ and one line segment with length $2$. All of these splits lead to the same maximal quadrilateral with an area of $\frac 3 4 \sqrt{3}$, thus $E(4)=1.299038$, rounded to $6$ decimal places.</p>

<p>Let $S(k)=\displaystyle \sum_{n=3}^k E(n)$.<br />
For example, $S(3)=0.433013$, $S(4)=1.732051$, $S(5)=4.604767$ and $S(10)=66.955511$, rounded to $6$ decimal places each.</p>

<p>Find $S(50)$, rounded to $6$ decimal places.</p>
"""

# ╔═╡ 447a9730-8435-11eb-3a8c-01de27a7ea7f
begin
    submit_answer(nothing; prob_num=564)
end

# ╔═╡ 447a9730-8435-11eb-23cb-6fd68c4e4752
html"""
<h2>Problem 565: Divisibility of sum of divisors</h2>
<p>Let $\sigma(n)$ be the sum of the divisors of $n$.<br />
E.g. the divisors of 4 are 1, 2 and 4, so $\sigma(4)=7$.
</p>
<p>
The numbers $n$ not exceeding 20 such that 7 divides  $\sigma(n)$ are:  4,12,13 and 20, the sum of these numbers being 49.
</p>
<p>
Let $S(n , d)$ be the sum of the numbers $i$ not exceeding $n$ such that $d$ divides $\sigma(i)$.<br />
So $S(20 , 7)=49$.

</p>
<p>
You are given: $S(10^6,2017)=150850429$ and $S(10^9 , 2017)=249652238344557$.
</p>
<p>
Find $S(10^{11} , 2017)$
</p>
"""

# ╔═╡ 447a9730-8435-11eb-16d0-ef20ff1d5439
begin
    submit_answer(nothing; prob_num=565)
end

# ╔═╡ 447a9730-8435-11eb-07fe-1777511c8012
html"""
<h2>Problem 566: Cake Icing Puzzle</h2>
<p>Adam plays the following game with his birthday cake.</p>

<p>He cuts a piece forming a circular sector of 60 degrees and flips the piece upside down, with the icing on the bottom.<br />
He then rotates the cake by 60 degrees counterclockwise, cuts an adjacent 60 degree piece and flips it upside down.<br />
He keeps repeating this, until after a total of twelve steps, all the icing is back on top.</p>

<p>Amazingly, this works for any piece size, even if the cutting angle is an irrational number: all the icing will be back on top after a finite number of steps.</p>

<p>Now, Adam tries something different: he alternates cutting pieces of size $x=\frac{360}{9}$ degrees, $y=\frac{360}{10}$ degrees and $z=\frac{360 }{\sqrt{11}}$ degrees. The first piece he cuts has size <var>x</var> and he flips it. The second has size <var>y</var> and he flips it. The third has size <var>z</var> and he flips it. He repeats this with pieces of size <var>x</var>, <var>y</var> and <var>z</var> in that order until all the icing is back on top, and discovers he needs 60 flips altogether.</p>

<div align="center"><img src="project/images/p566-cakeicingpuzzle.gif" alt="p566-cakeicingpuzzle.gif" /></div>

<p>Let <var>F</var>(<var>a</var>, <var>b</var>, <var>c</var>) be the minimum number of piece flips needed to get all the icing back on top for pieces of size $x=\frac{360}{a}$ degrees, $y=\frac{360}{b}$ degrees and $z=\frac{360}{\sqrt{c}}$ degrees.<br />
Let $G(n) = \sum_{9 \le a &lt; b &lt; c \le n} F(a,b,c)$, for integers <var>a</var>, <var>b</var> and <var>c</var>.</p>

<p>You are given that <var>F</var>(9, 10, 11) = 60, <var>F</var>(10, 14, 16) = 506, <var>F</var>(15, 16, 17) = 785232.<br />
You are also given <var>G</var>(11) = 60, <var>G</var>(14) = 58020 and <var>G</var>(17) = 1269260.</p>

<p>Find <var>G</var>(53).</p>
"""

# ╔═╡ 447a9730-8435-11eb-37a0-63e603cb16f6
begin
    submit_answer(nothing; prob_num=566)
end

# ╔═╡ 447a9730-8435-11eb-0858-4fbae24732a0
html"""
<h2>Problem 567: Reciprocal games I</h2>
<p>Tom has built a random generator that is connected to a row of $n$ light bulbs. Whenever the random generator is activated each of the $n$ lights is turned on with the probability of $\frac 1 2$, independently of its former state or the state of the other light bulbs.</p>

<p>While discussing with his friend Jerry how to use his generator, they invent two different games, they call the <i>reciprocal games</i>:<br />
Both games consist of $n$ turns. Each turn is started by choosing a number $k$ randomly between (and including) $1$ and $n$, with equal probability of $\frac 1 n$ for each number, while the possible win for that turn is the reciprocal of $k$, that is $\frac 1 k$.</p>

<p>In game A, Tom activates his random generator once in each turn. If the number of lights turned on is the same as the previously chosen number $k$, Jerry wins and gets $\frac 1 k$, otherwise he will receive nothing for that turn. Jerry's expected win after playing the total game A consisting of $n$ turns is called $J_A(n)$. For example $J_A(6)=0.39505208$, rounded to 8 decimal places.</p>

<p>For each turn in game B, after $k$ has been randomly selected, Tom keeps reactivating his random generator until exactly $k$ lights are turned on. After that Jerry takes over and reactivates the random generator until he, too, has generated a pattern with exactly $k$ lights turned on. If this pattern is identical to Tom's last pattern, Jerry wins and gets $\frac 1 k$, otherwise he will receive nothing. Jerry's expected win after the total game B consisting of $n$ turns is called $J_B(n)$. For example $J_B(6)=0.43333333$, rounded to 8 decimal places.</p>

<p>Let $\displaystyle S(m)=\sum_{n=1}^m (J_A(n)+J_B(n))$. For example $S(6)=7.58932292$, rounded to 8 decimal places.</p>

<p>Find S(123456789), rounded to 8 decimal places.</p>
"""

# ╔═╡ 447a9730-8435-11eb-10e9-5367f518bd87
begin
    submit_answer(nothing; prob_num=567)
end

# ╔═╡ 447a9730-8435-11eb-3972-0958e94263e5
html"""
<h2>Problem 568: Reciprocal games II</h2>
<p>Tom has built a random generator that is connected to a row of $n$ light bulbs. Whenever the random generator is activated each of the $n$ lights is turned on with the probability of $\frac 1 2$, independently of its former state or the state of the other light bulbs.</p>

<p>While discussing with his friend Jerry how to use his generator, they invent two different games, they call the <i>reciprocal games</i>:<br />
Both games consist of $n$ turns. Each turn is started by choosing a number $k$ randomly between (and including) $1$ and $n$, with equal probability of $\frac 1 n$ for each number, while the possible win for that turn is the reciprocal of $k$, that is $\frac 1 k$.</p>

<p>In game A, Tom activates his random generator once in each turn. If the number of lights turned on is the same as the previously chosen number $k$, Jerry wins and gets $\frac 1 k$, otherwise he will receive nothing for that turn. Jerry's expected win after playing the total game A consisting of $n$ turns is called $J_A(n)$. For example $J_A(6)=0.39505208$, rounded to 8 decimal places.</p>

<p>For each turn in game B, after $k$ has been randomly selected, Tom keeps reactivating his random generator until exactly $k$ lights are turned on. After that Jerry takes over and reactivates the random generator until he, too, has generated a pattern with exactly $k$ lights turned on. If this pattern is identical to Tom's last pattern, Jerry wins and gets $\frac 1 k$, otherwise he will receive nothing. Jerry's expected win after the total game B consisting of $n$ turns is called $J_B(n)$. For example $J_B(6)=0.43333333$, rounded to 8 decimal places.</p>

<p>Let $D(n)=J_B(n)−J_A(n)$. For example, $D(6) = 0.03828125$.</p>

<p>Find the 7 most significant digits of $D(123456789)$ after removing all leading zeros.<br />
(If, for example, we had asked for the 7 most significant digits of $D(6)$, the answer would have been 3828125.)</p>
"""

# ╔═╡ 447a9730-8435-11eb-1d57-9921cabfdfe2
begin
    submit_answer(nothing; prob_num=568)
end

# ╔═╡ 447a9730-8435-11eb-1f9f-ef219dbfd37b
html"""
<h2>Problem 569: Prime Mountain Range</h2>
<p>A <i>mountain range</i> consists of a line of mountains with slopes of exactly 45°, and heights governed by the prime numbers, <var>p<sub>n</sub></var>. The up-slope of the <var>k</var><sup>th</sup> mountain is of height <var>p</var><sub>2<var>k</var>−1</sub>, and the downslope is <var>p</var><sub>2<var>k</var></sub>. The first few foot-hills of this range are illustrated below.</p>

<div class="center">
<img src="project/images/p569-prime-mountain-range.gif" alt="p569-prime-mountain-range.gif" />
</div>

<p>Tenzing sets out to climb each one in turn, starting from the lowest. At the top of each peak, he looks back and counts how many of the previous peaks he can see. In the example above, the eye-line from the third mountain is drawn in red, showing that he can only see the peak of the second mountain from this viewpoint. Similarly, from the 9<sup>th</sup> mountain, he can see three peaks, those of the 5<sup>th</sup>, 7<sup>th</sup> and 8<sup>th</sup> mountain.</p>

<p>Let P(<var>k</var>) be the number of peaks that are visible looking back from the <var>k</var><sup>th</sup> mountain.  Hence P(3)=1 and P(9)=3.<br />
Also $\displaystyle \sum_{k=1}^{100} P(k) = 227$.</p>

<p>Find $\displaystyle \sum_{k=1}^{2500000} P(k)$.</p>
"""

# ╔═╡ 447a9730-8435-11eb-0825-f14bdb2bdf67
begin
    submit_answer(nothing; prob_num=569)
end

# ╔═╡ 447a9730-8435-11eb-285d-e1daf47a774c
html"""
<h2>Problem 570: Snowflakes</h2>
<p>A snowflake of order n is formed by overlaying an equilateral triangle (rotated by 180 degrees) onto each equilateral triangle of the same size in a snowflake of order n-1. A snowflake of order 1 is a single equilateral triangle.</p>



<div> <img src="project/images/p570-snowflakes.png" alt="p570-snowflakes.png" /> </div>


<p>Some areas of the snowflake are overlaid repeatedly. In the above picture, blue represents the areas that are one layer thick, red two layers thick, yellow three layers thick, and so on. </p>

<p>For an order n snowflake, let A(n) be the number of triangles that are one layer thick, and let B(n) be the number of triangles that are three layers thick. Define G(n) = gcd(A(n), B(n)).</p>

<p>E.g. A(3) = 30, B(3) = 6, G(3)=6<br />
A(11) = 3027630, B(11) = 19862070, G(11) = 30</p>

<p>Further, G(500) = 186 and  $\sum_{n=3}^{500}G(n)=5124$</p>

<p>Find $\displaystyle \sum_{n=3}^{10^7}G(n)$.</p>
"""

# ╔═╡ 447a9730-8435-11eb-355d-4954ef5fbb8d
begin
    submit_answer(nothing; prob_num=570)
end

# ╔═╡ 447a9730-8435-11eb-2499-9f15a82cc794
html"""
<h2>Problem 571: Super Pandigital Numbers</h2>
<p>A positive number is <b>pandigital</b> in base <var>b</var> if it contains all digits from 0 to <var>b</var> - 1 at least once when written in base <var>b</var>.</p>

<p>A <i>n-super-pandigital</i> number is a number that is simultaneously pandigital in all bases from 2 to <var>n</var> inclusively.<br />
For example 978 = 1111010010<sub>2</sub> = 1100020<sub>3</sub> = 33102<sub>4</sub> = 12403<sub>5</sub> is the smallest 5-super-pandigital number.<br />
Similarly, 1093265784 is the smallest 10-super-pandigital number.<br />
The sum of the 10 smallest 10-super-pandigital numbers is 20319792309.</p>

<p>What is the sum of the 10 smallest 12-super-pandigital numbers?</p>
"""

# ╔═╡ 447a9730-8435-11eb-36e7-7b73f450ed22
begin
    submit_answer(nothing; prob_num=571)
end

# ╔═╡ 447a9730-8435-11eb-38ac-1d497d459bbd
html"""
<h2>Problem 572: Idempotent matrices</h2>
<p>
A matrix $M$ is called idempotent if $M^2 = M$.<br />
Let $M$ be a three by three matrix : 
$M=\begin{pmatrix} 
  a &amp; b &amp; c\\ 
  d &amp; e &amp; f\\
  g &amp;h &amp;i\\
\end{pmatrix}$.<br />
Let C(<var>n</var>) be the number of  idempotent three by three matrices $M$ with integer elements such that<br />
$ -n \le a,b,c,d,e,f,g,h,i \le n$.</p>
<p>
C(1)=164 and C(2)=848.
</p>
<p>
Find C(200).
</p>
"""

# ╔═╡ 447a9730-8435-11eb-0d6e-d5509eca045f
begin
    submit_answer(nothing; prob_num=572)
end

# ╔═╡ 447a9730-8435-11eb-3fc7-21b8c064f16b
html"""
<h2>Problem 573: Unfair race</h2>
<p>$n$ runners in very different training states want to compete in a race. Each one of them is given a different starting number $k$ $(1\leq k \leq n)$ according to the runner's (constant) individual racing speed being $v_k=\frac{k}{n}$.<br />
In order to give the slower runners a chance to win the race, $n$ different starting positions are chosen randomly (with uniform distribution) and independently from each other within the racing track of length $1$. After this, the starting position nearest to the goal is assigned to runner $1$, the next nearest starting position to runner $2$ and so on, until finally the starting position furthest away from the goal is assigned to runner $n$. The winner of the race is the runner who reaches the goal first.</p>

<p>Interestingly, the expected running time for the winner is $\frac{1}{2}$, independently of the number of runners. Moreover, while it can be shown that all runners will have the same expected running time of $\frac{n}{n+1}$, the race is still unfair, since the winning chances may differ significantly for different starting numbers:</p>

<p>Let $P_{n,k}$ be the probability for runner $k$ to win a race with $n$ runners and $E_n = \sum_{k=1}^n k P_{n,k}$ be the expected starting number of the winner in that race. It can be shown that, for example,
$P_{3,1}=\frac{4}{9}$, $P_{3,2}=\frac{2}{9}$, $P_{3,3}=\frac{1}{3}$ and $E_3=\frac{17}{9}$ for a race with $3$ runners. <br />
You are given that $E_4=2.21875$, $E_5=2.5104$ and $E_{10}=3.66021568$.</p>

<p>Find $E_{1000000}$ rounded to 4 digits after the decimal point.</p>
"""

# ╔═╡ 447a9730-8435-11eb-0763-81b7fee535ab
begin
    submit_answer(nothing; prob_num=573)
end

# ╔═╡ 447a9730-8435-11eb-0840-fdb9d2cdcfe8
html"""
<h2>Problem 574: Verifying Primes</h2>
<p>Let $q$ be a prime and $A \ge B &gt;0$ be two integers with the following properties:
</p><ul><li> $A$ and $B$ have no prime factor in common, that is $\text{gcd}(A,B)=1$.</li>
<li> The product $AB$ is divisible by every prime less than q.</li>

</ul><p>It can be shown that, given these conditions, any sum $A+B&lt;q^2$ and any difference $1&lt;A-B&lt;q^2$ has to be a prime number. Thus you can verify that a number $p$ is prime by showing that either $p=A+B&lt;q^2$ or $p=A-B&lt;q^2$ for some $A,B,q$ fulfilling the conditions listed above.</p>

<p>Let $V(p)$ be the smallest possible value of $A$ in any sum $p=A+B$ and any difference $p=A-B$, that verifies $p$ being prime. Examples:<br />
$V(2)=1$, since $2=1+1&lt; 2^2$. <br />
$V(37)=22$, since $37=22+15=2 \cdot 11+3 \cdot 5&lt; 7^2$ is the associated sum with the smallest possible $A$.<br />
$V(151)=165$ since $151=165-14=3 \cdot 5 \cdot 11 - 2 \cdot 7&lt;13^2$ is the associated difference with the smallest possible $A$. </p>
<p>
Let $S(n)$ be the sum of $V(p)$ for all primes $p&lt;n$. For example, $S(10)=10$ and $S(200)=7177$.</p>
<p>
Find $S(3800)$.
</p>
"""

# ╔═╡ 447a9730-8435-11eb-1610-3161ce81a051
begin
    submit_answer(nothing; prob_num=574)
end

# ╔═╡ 447a9730-8435-11eb-3854-adf7dc65b139
html"""
<h2>Problem 575: Wandering Robots</h2>
<p>It was quite an ordinary day when a mysterious alien vessel appeared as if from nowhere. After waiting several hours and receiving no response it is decided to send a team to investigate, of which you are included. Upon entering the vessel you are met by a friendly holographic figure, Katharina, who explains the purpose of the vessel, Eulertopia.</p>

<p>She claims that Eulertopia is almost older than time itself. Its mission was to take advantage of a combination of incredible computational power and vast periods of time to discover the answer to life, the universe, and everything. Hence the resident cleaning robot, Leonhard, along with his housekeeping responsibilities, was built with a powerful computational matrix to ponder the meaning of life as he wanders through a massive 1000 by 1000 square grid of rooms. She goes on to explain that the rooms are numbered sequentially from left to right, row by row. So, for example, if Leonhard was wandering around a 5 by 5 grid then the rooms would be numbered in the following way.</p>

<div class="center">
<img src="project/images/p575_wandering_robot_1_5x5.png" alt="p575_wandering_robot_1_5x5.png" />
</div>

<p>Many millenia ago Leonhard reported to Katharina to have found the answer and he is willing to share it with any life form who proves to be worthy of such knowledge.</p>

<p>Katharina further explains that the designers of Leonhard were given instructions to program him with equal probability of remaining in the same room or travelling to an adjacent room. However, it was not clear to them if this meant (i) an equal probability being split equally between remaining in the room and the number of available routes, or, (ii) an equal probability (50%) of remaining in the same room and then the other 50% was to be split equally between the number of available routes.</p>

<div class="center">
<img src="project/images/p575_wandering_robot_2_fixed.png" alt="p575_wandering_robot_2_fixed.png" /><br />
<div style="font-style:italic;">(i) Probability of remaining related to number of exits</div>
<br />
<img src="project/images/p575_wandering_robot_3_dynamic.png" alt="p575_wandering_robot_3_dynamic.png" /><br />
<div style="font-style:italic;">(ii) Fixed 50% probability of remaining</div>
</div>

<p>The records indicate that they decided to flip a coin. Heads would mean that the probability of remaining was dynamically related to the number of exits whereas tails would mean that they program Leonhard with a fixed 50% probability of remaining in a particular room. Unfortunately there is no record of the outcome of the coin, so without further information we would need to assume that there is equal probability of either of the choices being implemented.</p>

<p>Katharina suggests it should not be too challenging to determine that the probability of finding him in a square numbered room in a 5 by 5 grid after unfathomable periods of time would be approximately 0.177976190476 [12 d.p.].</p>

<p>In order to prove yourself worthy of visiting the great oracle you must calculate the probability of finding him in a square numbered room in the 1000 by 1000 lair in which he has been wandering.<br />
(Give your answer rounded to 12 decimal places)</p>
"""

# ╔═╡ 447a9730-8435-11eb-2f84-35a68abfe2c1
begin
    submit_answer(nothing; prob_num=575)
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
# ╠═44524eb0-8435-11eb-0f64-db1ab8934c4b
# ╟─44524eb0-8435-11eb-16d8-f7085d51a5a9
# ╠═44524eb0-8435-11eb-0998-c96e44d85103
# ╟─44524eb0-8435-11eb-21eb-63a197190d88
# ╠═44524eb0-8435-11eb-2a77-e17ecc81776c
# ╟─44524eb0-8435-11eb-0c9d-e94c645689d1
# ╠═44524eb0-8435-11eb-0382-c70b1ef33706
# ╟─44524eb0-8435-11eb-126c-cd97884361ac
# ╠═44524eb0-8435-11eb-3688-039eff225aab
# ╟─44524eb0-8435-11eb-0866-55408aa1dad0
# ╠═44524eb0-8435-11eb-0dae-334e873a2012
# ╟─44524eb0-8435-11eb-2451-f18b096b490c
# ╠═44524eb0-8435-11eb-1174-bbc1e841adda
# ╟─44524eb0-8435-11eb-3a2d-a11a88b1d698
# ╠═44524eb0-8435-11eb-092f-4f05497cb428
# ╟─44524eb0-8435-11eb-1fc3-a3eae72656d4
# ╠═44524eb0-8435-11eb-0999-bdace9dc656a
# ╟─44524eb0-8435-11eb-289c-93b9cc052f2b
# ╠═44524eb0-8435-11eb-0c9b-0f8976783252
# ╟─44524eb0-8435-11eb-1042-67f5e7adb29e
# ╠═44524eb0-8435-11eb-3b13-b9b283621632
# ╟─44524eb0-8435-11eb-1e67-a3a305133d95
# ╠═44524eb0-8435-11eb-08c4-333fee8d9924
# ╟─44524eb0-8435-11eb-0f7e-25513dfce0f7
# ╠═44524eb0-8435-11eb-1454-399e1d300d98
# ╟─44524eb0-8435-11eb-378f-e15364e0e466
# ╠═44524eb0-8435-11eb-3b23-df4945d72e26
# ╟─44524eb0-8435-11eb-0c57-9fc88e67dbff
# ╠═44524eb0-8435-11eb-2484-db383eff1459
# ╟─44524eb0-8435-11eb-1459-9fd22255ffaf
# ╠═44524eb0-8435-11eb-2784-23b639d63979
# ╟─44524eb0-8435-11eb-392b-1bbb60578c20
# ╠═44524eb0-8435-11eb-016f-31b8205739f4
# ╟─44524eb0-8435-11eb-3aa0-3dfe530f9c5c
# ╠═44524eb0-8435-11eb-2505-37e23d25b428
# ╟─44524eb0-8435-11eb-0c5c-6369245ef0e9
# ╠═44524eb0-8435-11eb-0a2c-49f31fa28e1f
# ╟─44524eb0-8435-11eb-1ec0-bd8ca996a622
# ╠═44524eb0-8435-11eb-22f0-3fce1222ce95
# ╟─44524eb0-8435-11eb-2295-9f52b4fb70b9
# ╠═44524eb0-8435-11eb-10d9-174cf4a3a9fe
# ╟─44524eb0-8435-11eb-0643-47b8f2c16ddf
# ╠═44524eb0-8435-11eb-0326-4f0cca0e272e
# ╟─44524eb0-8435-11eb-0065-65c2b1f75800
# ╠═44524eb0-8435-11eb-1cde-c594645d31b4
# ╟─44524eb0-8435-11eb-0245-69935f2f6342
# ╠═44524eb0-8435-11eb-1916-49d2abb281d6
# ╟─44524eb0-8435-11eb-3529-5b29826ae442
# ╠═44524eb0-8435-11eb-1b7d-0d2211ba3e5f
# ╟─44524eb0-8435-11eb-39ea-5b3b9a7af5db
# ╠═44524eb0-8435-11eb-1ae6-b5cdedbfbd0c
# ╠═4454bfb0-8435-11eb-3d08-4f2456abcff9
# ╟─4454bfb0-8435-11eb-2402-af246e8f7ddf
# ╠═4454bfb0-8435-11eb-1c75-9dd65f095984
# ╟─4457099e-8435-11eb-171d-b90b7599fedc
# ╠═4457099e-8435-11eb-161e-4f01521953e4
# ╟─4457099e-8435-11eb-2c87-4376b2c9a232
# ╠═4457099e-8435-11eb-3b8b-07d83cf18bda
# ╟─4457099e-8435-11eb-37e9-f17532d74b63
# ╠═4457099e-8435-11eb-25f1-2d75f5463436
# ╟─4457099e-8435-11eb-3fe7-816608dbffa5
# ╠═4457099e-8435-11eb-3de1-9d615abadd96
# ╟─4457099e-8435-11eb-171f-4d26fd72937d
# ╠═4457099e-8435-11eb-2c04-075564ce7af3
# ╟─4457099e-8435-11eb-2944-5b40b3cb25b8
# ╠═4457099e-8435-11eb-3cd4-4f467cdadf6b
# ╟─4457099e-8435-11eb-1fee-7305b5be6c3c
# ╠═4457099e-8435-11eb-1cd3-4ff076bcdcf8
# ╟─4457099e-8435-11eb-1790-4f06c54ab3bb
# ╠═4457099e-8435-11eb-120c-91d7f6913255
# ╟─4457099e-8435-11eb-3aa4-1bfc60100aca
# ╠═4457099e-8435-11eb-041a-43043e9cc221
# ╟─4457099e-8435-11eb-10d4-2fc84c3d3049
# ╠═4457099e-8435-11eb-3849-45e426357a89
# ╟─4457099e-8435-11eb-0175-b7da127efdd8
# ╠═4457099e-8435-11eb-0e77-135a0eb2a55f
# ╟─4457099e-8435-11eb-3aaf-8b50ffb820b1
# ╠═4457099e-8435-11eb-29ad-c3e195762999
# ╟─4457099e-8435-11eb-18c5-477e733e4847
# ╠═4457099e-8435-11eb-14bb-fb4374b4813a
# ╟─4457099e-8435-11eb-32ab-0de0f244ad62
# ╠═4457099e-8435-11eb-2df3-9111891846b4
# ╟─4457099e-8435-11eb-1bd9-c7b42eeae1ee
# ╠═4457099e-8435-11eb-1b62-912a905ac79f
# ╟─4457099e-8435-11eb-219d-51afb7ba4254
# ╠═4457099e-8435-11eb-2605-af15adab131c
# ╟─4457099e-8435-11eb-1d3a-bb60adeb145e
# ╠═4457099e-8435-11eb-30c6-a52d656414fe
# ╟─4457099e-8435-11eb-35f8-9f7e9ddbd957
# ╠═4457099e-8435-11eb-2a23-539d9150a076
# ╟─4457099e-8435-11eb-1032-4feb79c05990
# ╠═4457099e-8435-11eb-3834-3753189cf0fc
# ╟─4457099e-8435-11eb-35e1-ffa8cc259c64
# ╠═4457099e-8435-11eb-1a28-cdf1bceb1fc7
# ╟─4457099e-8435-11eb-316c-bfa6c1b96f9d
# ╠═4457099e-8435-11eb-2695-731ef7d33240
# ╟─4457099e-8435-11eb-1f12-2581a528bac2
# ╠═4457099e-8435-11eb-3ca8-67d55487f2c9
# ╟─4457099e-8435-11eb-22db-43c4311e04b5
# ╠═4457099e-8435-11eb-35be-5501ebef0710
# ╟─4457099e-8435-11eb-0704-3133d4b4cb3d
# ╠═4457099e-8435-11eb-06e1-714557089ded
# ╠═445a6500-8435-11eb-1905-a7f2f006b980
# ╟─445a6500-8435-11eb-39e8-b5dbdd23f598
# ╠═445a6500-8435-11eb-242d-cd7f68940369
# ╟─445a6500-8435-11eb-1636-57fa223a57be
# ╠═445a6500-8435-11eb-330a-152831a7d993
# ╟─445a6500-8435-11eb-25fc-691fbad2a782
# ╠═445a6500-8435-11eb-1763-ef840e053898
# ╟─445a6500-8435-11eb-0ff3-81d53774d086
# ╠═445a6500-8435-11eb-1537-213691432426
# ╟─445a6500-8435-11eb-1f5e-d58f1e2117b4
# ╠═445a6500-8435-11eb-2e91-276e17a83022
# ╟─445a6500-8435-11eb-2bc7-33ce27b97940
# ╠═445a6500-8435-11eb-07c2-69217e629df1
# ╟─445a6500-8435-11eb-1c74-a1008ed01a4c
# ╠═445a6500-8435-11eb-2b8e-db9fe4a5b5c1
# ╟─445a6500-8435-11eb-0ed6-c9d0ffeebb5b
# ╠═445a6500-8435-11eb-182d-5bf11c772290
# ╟─445a6500-8435-11eb-1e2d-5d71941230ed
# ╠═445a6500-8435-11eb-15c1-c959a82806b3
# ╟─445a6500-8435-11eb-3293-f143de7299d1
# ╠═445a6500-8435-11eb-0f45-3d2f233f976b
# ╟─445a6500-8435-11eb-08a2-ff2352df28e8
# ╠═445a6500-8435-11eb-3f54-7d0724558476
# ╟─445a6500-8435-11eb-3a56-8bcbd70be77b
# ╠═445a6500-8435-11eb-233c-a3b07619d809
# ╟─445a6500-8435-11eb-33e6-7d831e5e259d
# ╠═445a6500-8435-11eb-35cb-6951aad49954
# ╟─445a6500-8435-11eb-108d-d1ddac0e6f64
# ╠═445a6500-8435-11eb-1928-7394837d1696
# ╟─445a6500-8435-11eb-25e3-19767ff4d329
# ╠═445a6500-8435-11eb-1149-032a765b18be
# ╟─445a6500-8435-11eb-29ca-6f563bbd2be9
# ╠═445a6500-8435-11eb-2008-e32523c14e64
# ╟─445caef0-8435-11eb-22b9-3f48c51694c8
# ╠═445caef0-8435-11eb-3f55-59510c483218
# ╟─445caef0-8435-11eb-22b4-61d453bd8182
# ╠═445caef0-8435-11eb-0dcf-2de1f1339314
# ╟─445caef0-8435-11eb-1e6c-ebf18e3959df
# ╠═445caef0-8435-11eb-3c72-67ba1b90763c
# ╟─445caef0-8435-11eb-164d-071070944288
# ╠═445caef0-8435-11eb-0875-5bcabf3d086d
# ╟─445caef0-8435-11eb-1954-25c4a07fbe8f
# ╠═445caef0-8435-11eb-2112-cd25a50a590e
# ╟─445caef0-8435-11eb-3a0f-698aa1ce7aa7
# ╠═445caef0-8435-11eb-14f3-0fde9c363c25
# ╟─445caef0-8435-11eb-0625-176f86b91977
# ╠═445caef0-8435-11eb-2b10-657af93f2ee9
# ╟─445caef0-8435-11eb-3d66-5be3086f2e9a
# ╠═445caef0-8435-11eb-08c0-432758d767c2
# ╟─445caef0-8435-11eb-06fa-6fa3c64f881e
# ╠═445caef0-8435-11eb-146a-e1211732c441
# ╠═445f1ff2-8435-11eb-0d38-7118e89c3a8e
# ╟─445f1ff2-8435-11eb-0cdf-a309b3e7465b
# ╠═445f1ff2-8435-11eb-09de-456da9fc8750
# ╟─445f1ff2-8435-11eb-3a84-d92dec4064f5
# ╠═445f1ff2-8435-11eb-1050-e1d60e886eb4
# ╟─445f1ff2-8435-11eb-189f-cb7aba46318e
# ╠═445f1ff2-8435-11eb-2d42-f3a3a84d116a
# ╟─445f1ff2-8435-11eb-1835-0d846dcc2755
# ╠═445f1ff2-8435-11eb-0b68-2b47d1c73bdc
# ╟─445f1ff2-8435-11eb-20f7-6f12af72d590
# ╠═445f1ff2-8435-11eb-3e43-63f9ceb48572
# ╟─445f1ff2-8435-11eb-15f0-3d8ad3850655
# ╠═445f1ff2-8435-11eb-0572-538a990f333a
# ╟─445f1ff2-8435-11eb-361f-bb4cf2bdd301
# ╠═445f1ff2-8435-11eb-3e6b-ad6b58ba9ec8
# ╟─445f1ff2-8435-11eb-3043-5768ea889de4
# ╠═445f1ff2-8435-11eb-3179-45b19f3dc43b
# ╟─445f1ff2-8435-11eb-3c10-75ed602276e4
# ╠═445f1ff2-8435-11eb-1eae-6f71b9610b8f
# ╟─445f1ff2-8435-11eb-030e-adf4d3e06c20
# ╠═445f1ff2-8435-11eb-141b-7bac88363838
# ╟─445f1ff2-8435-11eb-3241-fbafb66b3b96
# ╠═445f1ff2-8435-11eb-1970-6fd51d72470e
# ╟─445f1ff2-8435-11eb-0279-83691afafd11
# ╠═445f1ff2-8435-11eb-2e93-e331c0a8efaa
# ╟─445f1ff2-8435-11eb-371f-873ad4232208
# ╠═445f1ff2-8435-11eb-297d-534989583d48
# ╟─445f1ff2-8435-11eb-2833-b943290d6438
# ╠═445f1ff2-8435-11eb-3ffa-c7d6c7fe3b58
# ╟─445f1ff2-8435-11eb-0af2-6101b701f09f
# ╠═445f1ff2-8435-11eb-12c7-e98047c6d8ad
# ╟─445f1ff2-8435-11eb-0763-fb74add15af1
# ╠═445f1ff2-8435-11eb-1b8f-bbe811834b1a
# ╟─445f1ff2-8435-11eb-1460-dd0c2ca6e384
# ╠═445f1ff2-8435-11eb-2573-f5912ee0c095
# ╟─445f1ff2-8435-11eb-1c73-2fc3a4133da5
# ╠═445f1ff2-8435-11eb-2c88-3b1614817972
# ╟─445f1ff2-8435-11eb-28ac-e71dd306fdc3
# ╠═445f1ff2-8435-11eb-114b-1fdaf89d1943
# ╟─445f1ff2-8435-11eb-0f78-eb058a0036b9
# ╠═445f1ff2-8435-11eb-2611-0bf257052e06
# ╟─445f1ff2-8435-11eb-2588-5b3582089e50
# ╠═445f1ff2-8435-11eb-30d0-7be960db7b7a
# ╟─445f1ff2-8435-11eb-2723-63648b39ffdf
# ╠═445f1ff2-8435-11eb-07e1-bb6b4520b89b
# ╟─445f1ff2-8435-11eb-0f0d-6dde2f772f81
# ╠═445f1ff2-8435-11eb-2a85-13de56466572
# ╟─445f1ff2-8435-11eb-23a1-b50ff79ff902
# ╠═445f1ff2-8435-11eb-2e19-b9a027f6e014
# ╟─445f1ff2-8435-11eb-11c2-ef9bf3e099f2
# ╠═445f1ff2-8435-11eb-1073-cd808a05edc9
# ╠═446401f0-8435-11eb-2db5-bd2d14fcb95d
# ╟─446401f0-8435-11eb-2cbb-91646a209539
# ╠═446401f0-8435-11eb-159f-634c35cc4286
# ╟─446401f0-8435-11eb-398e-95d91b8bd50d
# ╠═446401f0-8435-11eb-3881-d538b11ab176
# ╟─446401f0-8435-11eb-1b85-0d5ab2007dce
# ╠═446401f0-8435-11eb-2ae5-9be6785fb00a
# ╟─446401f0-8435-11eb-168b-dd70aab0e092
# ╠═446401f0-8435-11eb-001e-7321bad060fd
# ╟─446401f0-8435-11eb-1547-477d4d4a8d59
# ╠═446401f0-8435-11eb-060e-01af4656a357
# ╟─446401f0-8435-11eb-1313-09408ad05ef2
# ╠═446401f0-8435-11eb-2077-0348e34d6589
# ╟─446401f0-8435-11eb-3fc2-9913b6c534a6
# ╠═446401f0-8435-11eb-2ee8-13c0df9c62e4
# ╟─446401f0-8435-11eb-1e03-63355da55379
# ╠═446401f0-8435-11eb-0129-4707e5f2aa15
# ╟─446401f0-8435-11eb-2acf-31ee73f188a3
# ╠═446401f0-8435-11eb-3a17-a587147b10fc
# ╟─446401f0-8435-11eb-089b-c9129bbb274a
# ╠═446401f0-8435-11eb-3e3c-f909e7315b6a
# ╟─446401f0-8435-11eb-04b5-d5191cde8376
# ╠═446401f0-8435-11eb-3509-7d70a670959b
# ╟─446401f0-8435-11eb-1846-4724e997c4b8
# ╠═446401f0-8435-11eb-034f-47a37fae85c3
# ╟─446401f0-8435-11eb-2fac-555326ac5040
# ╠═446401f0-8435-11eb-3396-630e0a1c21d3
# ╟─446401f0-8435-11eb-0d12-d12e0bfad792
# ╠═446401f0-8435-11eb-0242-4dd8062979f7
# ╟─446401f0-8435-11eb-085d-79172f919722
# ╠═446401f0-8435-11eb-2a3d-516c9782a8ac
# ╟─446401f0-8435-11eb-3d10-b3fe1e74b0c3
# ╠═446401f0-8435-11eb-2397-abffbaac1088
# ╟─446401f0-8435-11eb-215b-838331b10c2e
# ╠═446401f0-8435-11eb-1b3b-bd6f3e31ed61
# ╟─446401f0-8435-11eb-06c2-0d850c8305b4
# ╠═446401f0-8435-11eb-3a52-f329341c679e
# ╟─446401f0-8435-11eb-2769-c94e8223926b
# ╠═446401f0-8435-11eb-06be-b33584701a31
# ╟─446401f0-8435-11eb-0fe1-8535c63f9bcf
# ╠═446401f0-8435-11eb-2414-339363bca319
# ╟─446401f0-8435-11eb-25fd-dfdd570f0251
# ╠═446401f0-8435-11eb-3c0d-a1106522503b
# ╟─446401f0-8435-11eb-0dcb-55b7204f1c82
# ╠═446401f0-8435-11eb-2826-879eee30abd2
# ╟─446401f0-8435-11eb-177d-a9c341d1cdcb
# ╠═446401f0-8435-11eb-2d18-c9fb3dd6525d
# ╟─446401f0-8435-11eb-041d-594558845217
# ╠═446401f0-8435-11eb-04a4-27fc325fa58f
# ╟─446401f0-8435-11eb-1635-a178ac5b46b4
# ╠═446401f0-8435-11eb-1894-df9531359233
# ╠═4468bce0-8435-11eb-2916-ef8ed60e3b19
# ╟─4468bce0-8435-11eb-065e-0fa2fc57dd86
# ╠═4468bce0-8435-11eb-17fb-9d322092556d
# ╟─4468bce0-8435-11eb-2b07-45f4a7669ae6
# ╠═4468bce0-8435-11eb-233e-c52f54d544a8
# ╟─4468bce0-8435-11eb-1a87-7799c7bf374b
# ╠═4468bce0-8435-11eb-0af4-4bc2cdcd2145
# ╟─4468bce0-8435-11eb-2104-cd76c517cc5c
# ╠═4468bce0-8435-11eb-2339-2ba482eef8ec
# ╟─4468bce0-8435-11eb-2602-7ff4447f5300
# ╠═4468bce0-8435-11eb-3049-1ff5a4f3cf15
# ╟─4468bce0-8435-11eb-18d4-078809525560
# ╠═4468bce0-8435-11eb-3811-0501c22e0916
# ╟─4468bce0-8435-11eb-115d-01660adcd70e
# ╠═4468bce0-8435-11eb-12fd-f9f9728f28c6
# ╟─4468bce0-8435-11eb-3da7-49cc2098454b
# ╠═4468bce0-8435-11eb-3fc8-5578fd508aa8
# ╟─4468bce0-8435-11eb-26cd-87a437987460
# ╠═4468bce0-8435-11eb-127d-d532f80fe53a
# ╟─4468bce0-8435-11eb-2454-e3b92e34c535
# ╠═4468bce0-8435-11eb-047d-a3cd240ad3e5
# ╟─4468bce0-8435-11eb-2ee0-6f70e0972f0c
# ╠═4468bce0-8435-11eb-17a5-ef1cb819e659
# ╟─4468bce0-8435-11eb-3d84-0b17e7edf78c
# ╠═4468bce0-8435-11eb-33ad-33dc5b45b43e
# ╟─4468bce0-8435-11eb-2174-3d48e480b28c
# ╠═4468bce0-8435-11eb-113c-e3bf88ae37ea
# ╟─4468bce0-8435-11eb-2095-db18ca8e36f1
# ╠═4468bce0-8435-11eb-016e-5b020d38396d
# ╟─4468bce0-8435-11eb-0d76-6fe63738e1d2
# ╠═4468bce0-8435-11eb-2fbc-1559316d229d
# ╟─4468bce0-8435-11eb-09ef-2b2539da9f70
# ╠═4468bce0-8435-11eb-05d7-d9ff38b934d1
# ╟─4468bce0-8435-11eb-0b7e-0f7c947a5442
# ╠═4468bce0-8435-11eb-3711-41e6cc7fb1ac
# ╟─4468bce0-8435-11eb-1704-cf3410a830a7
# ╠═4468bce0-8435-11eb-370b-059cb75cc8b3
# ╟─4468bce0-8435-11eb-1333-d77a2bb006fd
# ╠═4468bce0-8435-11eb-1a01-97aa308bc8bd
# ╟─4468bce0-8435-11eb-3813-09f9accd82b3
# ╠═4468bce0-8435-11eb-014b-61a58d67a328
# ╟─4468bce0-8435-11eb-1bef-5f976955b5d5
# ╠═4468bce0-8435-11eb-3c12-1165a862d6f2
# ╟─4468bce0-8435-11eb-0520-e98b172a6c60
# ╠═4468bce0-8435-11eb-16f7-278dd30501a7
# ╟─4468bce0-8435-11eb-268f-0d106929469d
# ╠═4468bce0-8435-11eb-2cab-e10bb07bacba
# ╟─4468bce0-8435-11eb-3821-87baee225df5
# ╠═4468bce0-8435-11eb-1ff6-83b37d8b2c1d
# ╟─4468bce0-8435-11eb-3408-e1046801c7b0
# ╠═4468bce0-8435-11eb-07ea-374bb4fa0814
# ╠═446d77d0-8435-11eb-012d-f91d2e22a0b5
# ╟─446d77d0-8435-11eb-39a1-2164438e5a12
# ╠═446d77d0-8435-11eb-3b3f-ebfa9113c646
# ╟─446d77d0-8435-11eb-0450-2542e8676451
# ╠═446d77d0-8435-11eb-1f79-05bf3be70f3b
# ╟─446d77d0-8435-11eb-1191-0558800a53a3
# ╠═446d77d0-8435-11eb-373a-1b73a739f0f8
# ╟─446d77d0-8435-11eb-2191-61c4f5db1825
# ╠═446d77d0-8435-11eb-23a0-fb7c4c883702
# ╟─446d77d0-8435-11eb-12fc-255baece293c
# ╠═446d77d0-8435-11eb-104d-6f4a4cd18611
# ╟─446d77d0-8435-11eb-375d-bde62c6c4ead
# ╠═446d77d0-8435-11eb-1779-efe88b01d307
# ╟─446d77d0-8435-11eb-3bb3-0bcc69f7e735
# ╠═446d77d0-8435-11eb-128c-5591ab2dbb73
# ╟─446d77d0-8435-11eb-3a35-13482840a0e0
# ╠═446d77d0-8435-11eb-21e1-5196bb2c2f32
# ╟─446d77d0-8435-11eb-09ae-275833fb9ec4
# ╠═446d77d0-8435-11eb-123e-6b1ab36eb6c7
# ╟─446d77d0-8435-11eb-3ecd-673c1d1211a4
# ╠═446d77d0-8435-11eb-388d-d34984ececf4
# ╟─446d77d0-8435-11eb-2267-8ffd79527804
# ╠═446d77d0-8435-11eb-06b9-fb16de8eec5d
# ╟─446d77d0-8435-11eb-09e4-074c5bc4c4ef
# ╠═446d77d0-8435-11eb-199d-9f5128c8f72d
# ╟─446d77d0-8435-11eb-2200-53fdb90ccb09
# ╠═446d77d0-8435-11eb-38eb-4dde92f62eeb
# ╟─446d77d0-8435-11eb-065e-777bd69dfdde
# ╠═446d77d0-8435-11eb-05da-2ddd8135a6b0
# ╟─446d77d0-8435-11eb-0798-a572bcb99189
# ╠═446d77d0-8435-11eb-2bcd-1f0e3ee2c297
# ╟─446d77d0-8435-11eb-128d-d3c9f3720bad
# ╠═446d77d0-8435-11eb-35fa-698ea9178fb3
# ╟─446d77d0-8435-11eb-08bb-df6f1f495c58
# ╠═446d77d0-8435-11eb-35b0-43e9e7692af5
# ╟─446d77d0-8435-11eb-0ede-2d0d6e517e0e
# ╠═446d77d0-8435-11eb-0cc1-6575f652f3bd
# ╟─446d77d0-8435-11eb-216c-cde0bd194ee6
# ╠═446d77d0-8435-11eb-1d94-2b037c54110e
# ╟─446d77d0-8435-11eb-352b-11ac512e8e72
# ╠═446d77d0-8435-11eb-2823-6ffab02e583e
# ╟─446d77d0-8435-11eb-2b86-d1c4e7757807
# ╠═446d77d0-8435-11eb-25af-35a7711a7c53
# ╟─446d77d0-8435-11eb-3a5f-812ae773b789
# ╠═446d77d0-8435-11eb-318d-ebb7827b60a3
# ╟─446d77d0-8435-11eb-0d5c-57ce90afe78a
# ╠═446d77d0-8435-11eb-32af-95b9e84ce30b
# ╟─446d77d0-8435-11eb-0631-c7fba7522f5f
# ╠═446d77d0-8435-11eb-0da5-534b1a454d70
# ╟─446d77d0-8435-11eb-397a-634063a8726b
# ╠═446d77d0-8435-11eb-12fb-5f62334adb9e
# ╠═4475b532-8435-11eb-1164-39b2eac79de3
# ╟─4475b532-8435-11eb-2b6f-8ba5272b7ebf
# ╠═4475b532-8435-11eb-00ca-b149e5396526
# ╟─4475b532-8435-11eb-1ba5-cbff4caf78d2
# ╠═4475b532-8435-11eb-392b-b304206fe4b6
# ╟─4475b532-8435-11eb-17b9-af199546570a
# ╠═4475b532-8435-11eb-206f-57bb488d4b44
# ╟─4475b532-8435-11eb-0ba9-9f43c35aadbe
# ╠═4475b532-8435-11eb-3fd2-6bcdae5ad3c7
# ╟─4475b532-8435-11eb-2756-5769d6b4c906
# ╠═4475b532-8435-11eb-05c5-7333ea7aac22
# ╟─4475b532-8435-11eb-2c43-4da25c0eadaf
# ╠═4475b532-8435-11eb-1e2b-8dfc183e9608
# ╟─4475b532-8435-11eb-0d3e-9d6b968ce194
# ╠═4475b532-8435-11eb-3b66-3f77904718ab
# ╟─4475b532-8435-11eb-2af1-475190982fa6
# ╠═4475b532-8435-11eb-21af-e769a608c267
# ╟─4475b532-8435-11eb-34e9-0d1a1f2468a1
# ╠═4475b532-8435-11eb-0df9-e3c5bd043388
# ╟─4475b532-8435-11eb-3ed0-d73b972ba1b7
# ╠═4475b532-8435-11eb-219a-399ee2d38006
# ╟─4475b532-8435-11eb-20b4-7bcf9957507c
# ╠═4475b532-8435-11eb-2bfe-336e2fed2dd7
# ╟─4475b532-8435-11eb-1ecc-a3f0404670cd
# ╠═4475b532-8435-11eb-1b9f-ab429446c96b
# ╟─4475b532-8435-11eb-3d98-231a1ce83082
# ╠═4475b532-8435-11eb-3fb5-475f8c9eb6f5
# ╟─4475b532-8435-11eb-2f1f-635b81eb29b9
# ╠═4475b532-8435-11eb-3146-e3dca1cb7bc3
# ╟─4475b532-8435-11eb-079a-6398e3b66539
# ╠═4475b532-8435-11eb-3edf-e9885d216abb
# ╟─4475b532-8435-11eb-28f2-b75cc8376f8a
# ╠═4475b532-8435-11eb-328b-95721ef6aec4
# ╟─4475b532-8435-11eb-2cb5-335bb91008f5
# ╠═4475b532-8435-11eb-1d83-53eabe26deca
# ╟─4475b532-8435-11eb-2366-5784b6eca9bf
# ╠═4475b532-8435-11eb-1599-57a57df16753
# ╟─4475b532-8435-11eb-320e-a9edb674e914
# ╠═4475b532-8435-11eb-3619-15d969e69503
# ╟─4475b532-8435-11eb-2fe0-6f550ed2ac29
# ╠═4475b532-8435-11eb-1a1e-31de75a59b8a
# ╟─4475b532-8435-11eb-2a16-150716559a7c
# ╠═4475b532-8435-11eb-0e0e-d1b67f9d8e57
# ╟─4475b532-8435-11eb-2e29-495c59ea6066
# ╠═4475b532-8435-11eb-0e39-01690c987e0b
# ╟─4475b532-8435-11eb-1755-d346995fb048
# ╠═4475b532-8435-11eb-0ca3-97e2b09b053c
# ╟─4475b532-8435-11eb-0cdc-c7f6d7c337b2
# ╠═4475b532-8435-11eb-13aa-6f9186b19b66
# ╟─4475b532-8435-11eb-00d8-ff55273a6376
# ╠═4475b532-8435-11eb-1434-e98b0de0f740
# ╠═447a9730-8435-11eb-328c-8fc29d9eab17
# ╟─447a9730-8435-11eb-3344-95f0dcf2777b
# ╠═447a9730-8435-11eb-14db-610532849b22
# ╟─447a9730-8435-11eb-37cb-7d11e1780b33
# ╠═447a9730-8435-11eb-0021-235f852f7053
# ╟─447a9730-8435-11eb-22a6-b9a04bf47188
# ╠═447a9730-8435-11eb-3797-5f0fbbb18d2b
# ╟─447a9730-8435-11eb-1cc0-cfddb04b8fef
# ╠═447a9730-8435-11eb-2028-931b99bb7d5d
# ╟─447a9730-8435-11eb-269d-8bfa970314b5
# ╠═447a9730-8435-11eb-09ae-95382070c4e6
# ╟─447a9730-8435-11eb-2852-150c40e25371
# ╠═447a9730-8435-11eb-2c87-9f17a8921339
# ╟─447a9730-8435-11eb-3f0e-335ef61375ca
# ╠═447a9730-8435-11eb-397a-ad0af4952af7
# ╟─447a9730-8435-11eb-39b4-915a3f95d3c4
# ╠═447a9730-8435-11eb-328d-73237f3dd915
# ╟─447a9730-8435-11eb-05dc-7ba6b5235dc0
# ╠═447a9730-8435-11eb-2be5-fd31d3c1ee07
# ╟─447a9730-8435-11eb-05e3-bffae74b2222
# ╠═447a9730-8435-11eb-3e36-ebe6aa440d07
# ╟─447a9730-8435-11eb-3a6a-e96dc1f75de1
# ╠═447a9730-8435-11eb-12cc-3f357d79b85b
# ╟─447a9730-8435-11eb-2a6f-35b5c587c197
# ╠═447a9730-8435-11eb-0c03-57e8285012ce
# ╟─447a9730-8435-11eb-0a39-e79a307939c1
# ╠═447a9730-8435-11eb-0d04-1ffdd19bf179
# ╟─447a9730-8435-11eb-1484-833012a13913
# ╠═447a9730-8435-11eb-3a8c-01de27a7ea7f
# ╟─447a9730-8435-11eb-23cb-6fd68c4e4752
# ╠═447a9730-8435-11eb-16d0-ef20ff1d5439
# ╟─447a9730-8435-11eb-07fe-1777511c8012
# ╠═447a9730-8435-11eb-37a0-63e603cb16f6
# ╟─447a9730-8435-11eb-0858-4fbae24732a0
# ╠═447a9730-8435-11eb-10e9-5367f518bd87
# ╟─447a9730-8435-11eb-3972-0958e94263e5
# ╠═447a9730-8435-11eb-1d57-9921cabfdfe2
# ╟─447a9730-8435-11eb-1f9f-ef219dbfd37b
# ╠═447a9730-8435-11eb-0825-f14bdb2bdf67
# ╟─447a9730-8435-11eb-285d-e1daf47a774c
# ╠═447a9730-8435-11eb-355d-4954ef5fbb8d
# ╟─447a9730-8435-11eb-2499-9f15a82cc794
# ╠═447a9730-8435-11eb-36e7-7b73f450ed22
# ╟─447a9730-8435-11eb-38ac-1d497d459bbd
# ╠═447a9730-8435-11eb-0d6e-d5509eca045f
# ╟─447a9730-8435-11eb-3fc7-21b8c064f16b
# ╠═447a9730-8435-11eb-0763-81b7fee535ab
# ╟─447a9730-8435-11eb-0840-fdb9d2cdcfe8
# ╠═447a9730-8435-11eb-1610-3161ce81a051
# ╟─447a9730-8435-11eb-3854-adf7dc65b139
# ╠═447a9730-8435-11eb-2f84-35a68abfe2c1