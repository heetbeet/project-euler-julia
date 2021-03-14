### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1ae6a170-84a3-11eb-3f51-a731a67cb22d
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1ae6a170-84a3-11eb-0987-41925c11ed62
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

# ╔═╡ 1ae6a170-84a3-11eb-2834-fb96c5d27829
begin
    submit_answer(nothing; prob_num=551)
end

# ╔═╡ 1ae6a170-84a3-11eb-10ef-7f9005b7794c
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

# ╔═╡ 1ae6a170-84a3-11eb-099f-fff6dca43d0c
begin
    submit_answer(nothing; prob_num=552)
end

# ╔═╡ 1ae6a170-84a3-11eb-0d61-2907f2a83a72
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

# ╔═╡ 1ae6a170-84a3-11eb-16e1-ffb0de47ea36
begin
    submit_answer(nothing; prob_num=553)
end

# ╔═╡ 1ae6a170-84a3-11eb-0b0c-1156aa5d839b
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

# ╔═╡ 1ae6a170-84a3-11eb-05df-13ac78900202
begin
    submit_answer(nothing; prob_num=554)
end

# ╔═╡ 1ae6a170-84a3-11eb-2f53-f5dd7a67abb0
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

# ╔═╡ 1ae6a170-84a3-11eb-22ed-35c86caa5840
begin
    submit_answer(nothing; prob_num=555)
end

# ╔═╡ 1ae6a170-84a3-11eb-0ed3-95cfdab7b75f
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

# ╔═╡ 1ae6a170-84a3-11eb-3265-1b177fb29f3c
begin
    submit_answer(nothing; prob_num=556)
end

# ╔═╡ 1ae6a170-84a3-11eb-0d7a-8706d8b61ec5
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

# ╔═╡ 1ae6a170-84a3-11eb-2506-aff15955e778
begin
    submit_answer(nothing; prob_num=557)
end

# ╔═╡ 1ae6a170-84a3-11eb-00aa-1d80070fea86
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

# ╔═╡ 1ae6a170-84a3-11eb-2abe-abeeb0a46abf
begin
    submit_answer(nothing; prob_num=558)
end

# ╔═╡ 1ae6a170-84a3-11eb-131b-27ce95e55237
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

# ╔═╡ 1ae6a170-84a3-11eb-04ed-f3bf933f9b20
begin
    submit_answer(nothing; prob_num=559)
end

# ╔═╡ 1ae6a170-84a3-11eb-0975-c31578fe78ef
html"""
<h2>Problem 560: Coprime Nim</h2>
<p>Coprime Nim is just like ordinary normal play Nim, but the players may only remove a number of stones from a pile  that is <b>coprime</b> with the current size of the pile. Two players remove stones in turn. The player who removes the last stone wins.</p>

<p>Let L(<var>n</var>, <var>k</var>) be the number of <b>losing</b> starting positions for the first player, assuming perfect play, when the game is played with <var>k</var> piles, each having between 1 and <var>n</var> - 1 stones inclusively.</p>

<p>For example, L(5, 2) = 6 since the losing initial positions are (1, 1), (2, 2), (2, 4), (3, 3), (4, 2) and (4, 4).<br />
You are also given L(10, 5) = 9964, L(10, 10) = 472400303, L(10<sup>3</sup>, 10<sup>3</sup>) mod 1 000 000 007 = 954021836.</p>

<p>Find L(10<sup>7</sup>, 10<sup>7</sup>) mod 1 000 000 007</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-19a5-cf1601a6070d
begin
    submit_answer(nothing; prob_num=560)
end

# ╔═╡ 1ae6a170-84a3-11eb-3009-a902c675884b
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

# ╔═╡ 1ae6a170-84a3-11eb-183c-8d1d54c84ed6
begin
    submit_answer(nothing; prob_num=561)
end

# ╔═╡ 1ae6a170-84a3-11eb-1613-e1306fbe2cac
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

# ╔═╡ 1ae6a170-84a3-11eb-1aca-ff06a102c384
begin
    submit_answer(nothing; prob_num=562)
end

# ╔═╡ 1ae6a170-84a3-11eb-1de9-b517fdb5f5cf
html"""
<h2>Problem 563: Robot Welders</h2>
<p>A company specialises in producing large rectangular metal sheets, starting from unit square metal plates.  The welding is performed by a range of robots of increasing size.  Unfortunately, the programming options of these robots are rather limited.  Each one can only process up to 25 identical rectangles of metal, which they can weld along either edge to produce a larger rectangle.  The only programmable variables are the number of rectangles to be processed (up to and including 25), and whether to weld the long or short edge.</p>

<p>For example, the first robot could be programmed to weld together 11 raw unit square plates to make a 11×1 strip.  The next could take 10 of these 11×1 strips, and weld them either to make a longer 110×1 strip, or a 11×10 rectangle.  Many, but not all, possible dimensions of  metal sheets can be constructed in this way.</p>

<p>One regular customer has a particularly unusual order: The finished product should have an exact area, and the long side must not be more than 10% larger than the short side. If these requirements can be met in more than one way, in terms of the exact dimensions of the two sides, then the customer will demand that all variants be produced. For example, if the order calls for a metal sheet of area 889200, then there are three final dimensions that can be produced: 900×988, 912×975 and 936×950.  The target area of 889200 is the smallest area which can be manufactured in three different variants, within the limitations of the robot welders.</p>

<p>Let M(n) be the minimal area that can be manufactured in <u>exactly</u> n variants with the longer edge not greater than 10% bigger than the shorter edge.  Hence M(3) = 889200.</p>

<p>Find $ \sum_{n=2}^{100} M(n)$.</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-1b09-4d77d68be1ac
begin
    submit_answer(nothing; prob_num=563)
end

# ╔═╡ 1ae6a170-84a3-11eb-3d8a-d77baf3a1b85
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

# ╔═╡ 1ae6a170-84a3-11eb-1b9c-638b9fb62513
begin
    submit_answer(nothing; prob_num=564)
end

# ╔═╡ 1ae6a170-84a3-11eb-1e4a-e5cfa558ca1b
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

# ╔═╡ 1ae6a170-84a3-11eb-3c43-1788dd31d76b
begin
    submit_answer(nothing; prob_num=565)
end

# ╔═╡ 1ae6a170-84a3-11eb-0e23-ed9324e60791
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

# ╔═╡ 1ae6a170-84a3-11eb-0481-a9f4513e4e3b
begin
    submit_answer(nothing; prob_num=566)
end

# ╔═╡ 1ae6a170-84a3-11eb-1fc2-c510b3a2e810
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

# ╔═╡ 1ae6a170-84a3-11eb-2469-75a1c5086927
begin
    submit_answer(nothing; prob_num=567)
end

# ╔═╡ 1ae6a170-84a3-11eb-3886-99d7131d983e
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

# ╔═╡ 1ae6a170-84a3-11eb-2e2d-551c8ffc3c3e
begin
    submit_answer(nothing; prob_num=568)
end

# ╔═╡ 1ae6a170-84a3-11eb-1431-ab30466c1107
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

# ╔═╡ 1ae6a170-84a3-11eb-32ab-5364b10eb36b
begin
    submit_answer(nothing; prob_num=569)
end

# ╔═╡ 1ae6a170-84a3-11eb-0a77-5305a1e1ddbe
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

# ╔═╡ 1ae6a170-84a3-11eb-2691-518090472263
begin
    submit_answer(nothing; prob_num=570)
end

# ╔═╡ 1ae6a170-84a3-11eb-15ce-37947497b8f5
html"""
<h2>Problem 571: Super Pandigital Numbers</h2>
<p>A positive number is <b>pandigital</b> in base <var>b</var> if it contains all digits from 0 to <var>b</var> - 1 at least once when written in base <var>b</var>.</p>

<p>A <i>n-super-pandigital</i> number is a number that is simultaneously pandigital in all bases from 2 to <var>n</var> inclusively.<br />
For example 978 = 1111010010<sub>2</sub> = 1100020<sub>3</sub> = 33102<sub>4</sub> = 12403<sub>5</sub> is the smallest 5-super-pandigital number.<br />
Similarly, 1093265784 is the smallest 10-super-pandigital number.<br />
The sum of the 10 smallest 10-super-pandigital numbers is 20319792309.</p>

<p>What is the sum of the 10 smallest 12-super-pandigital numbers?</p>
"""

# ╔═╡ 1ae6a170-84a3-11eb-218f-e19a3a46aa4b
begin
    submit_answer(nothing; prob_num=571)
end

# ╔═╡ 1ae6a170-84a3-11eb-264b-fd833dc76516
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

# ╔═╡ 1ae6a170-84a3-11eb-24c7-f3ce8af06781
begin
    submit_answer(nothing; prob_num=572)
end

# ╔═╡ 1ae6a170-84a3-11eb-10a6-532736afab1a
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

# ╔═╡ 1ae6a170-84a3-11eb-0797-930493fef1c2
begin
    submit_answer(nothing; prob_num=573)
end

# ╔═╡ 1ae6a170-84a3-11eb-25c2-0974ff251860
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

# ╔═╡ 1ae6a170-84a3-11eb-1b3e-c19eeba4119c
begin
    submit_answer(nothing; prob_num=574)
end

# ╔═╡ 1ae6a170-84a3-11eb-2e63-d30fd99cc104
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

# ╔═╡ 1ae6a170-84a3-11eb-32e0-e3c9ab1a517a
begin
    submit_answer(nothing; prob_num=575)
end

# ╔═╡ Cell order:
# ╠═1ae6a170-84a3-11eb-3f51-a731a67cb22d
# ╟─1ae6a170-84a3-11eb-0987-41925c11ed62
# ╠═1ae6a170-84a3-11eb-2834-fb96c5d27829
# ╟─1ae6a170-84a3-11eb-10ef-7f9005b7794c
# ╠═1ae6a170-84a3-11eb-099f-fff6dca43d0c
# ╟─1ae6a170-84a3-11eb-0d61-2907f2a83a72
# ╠═1ae6a170-84a3-11eb-16e1-ffb0de47ea36
# ╟─1ae6a170-84a3-11eb-0b0c-1156aa5d839b
# ╠═1ae6a170-84a3-11eb-05df-13ac78900202
# ╟─1ae6a170-84a3-11eb-2f53-f5dd7a67abb0
# ╠═1ae6a170-84a3-11eb-22ed-35c86caa5840
# ╟─1ae6a170-84a3-11eb-0ed3-95cfdab7b75f
# ╠═1ae6a170-84a3-11eb-3265-1b177fb29f3c
# ╟─1ae6a170-84a3-11eb-0d7a-8706d8b61ec5
# ╠═1ae6a170-84a3-11eb-2506-aff15955e778
# ╟─1ae6a170-84a3-11eb-00aa-1d80070fea86
# ╠═1ae6a170-84a3-11eb-2abe-abeeb0a46abf
# ╟─1ae6a170-84a3-11eb-131b-27ce95e55237
# ╠═1ae6a170-84a3-11eb-04ed-f3bf933f9b20
# ╟─1ae6a170-84a3-11eb-0975-c31578fe78ef
# ╠═1ae6a170-84a3-11eb-19a5-cf1601a6070d
# ╟─1ae6a170-84a3-11eb-3009-a902c675884b
# ╠═1ae6a170-84a3-11eb-183c-8d1d54c84ed6
# ╟─1ae6a170-84a3-11eb-1613-e1306fbe2cac
# ╠═1ae6a170-84a3-11eb-1aca-ff06a102c384
# ╟─1ae6a170-84a3-11eb-1de9-b517fdb5f5cf
# ╠═1ae6a170-84a3-11eb-1b09-4d77d68be1ac
# ╟─1ae6a170-84a3-11eb-3d8a-d77baf3a1b85
# ╠═1ae6a170-84a3-11eb-1b9c-638b9fb62513
# ╟─1ae6a170-84a3-11eb-1e4a-e5cfa558ca1b
# ╠═1ae6a170-84a3-11eb-3c43-1788dd31d76b
# ╟─1ae6a170-84a3-11eb-0e23-ed9324e60791
# ╠═1ae6a170-84a3-11eb-0481-a9f4513e4e3b
# ╟─1ae6a170-84a3-11eb-1fc2-c510b3a2e810
# ╠═1ae6a170-84a3-11eb-2469-75a1c5086927
# ╟─1ae6a170-84a3-11eb-3886-99d7131d983e
# ╠═1ae6a170-84a3-11eb-2e2d-551c8ffc3c3e
# ╟─1ae6a170-84a3-11eb-1431-ab30466c1107
# ╠═1ae6a170-84a3-11eb-32ab-5364b10eb36b
# ╟─1ae6a170-84a3-11eb-0a77-5305a1e1ddbe
# ╠═1ae6a170-84a3-11eb-2691-518090472263
# ╟─1ae6a170-84a3-11eb-15ce-37947497b8f5
# ╠═1ae6a170-84a3-11eb-218f-e19a3a46aa4b
# ╟─1ae6a170-84a3-11eb-264b-fd833dc76516
# ╠═1ae6a170-84a3-11eb-24c7-f3ce8af06781
# ╟─1ae6a170-84a3-11eb-10a6-532736afab1a
# ╠═1ae6a170-84a3-11eb-0797-930493fef1c2
# ╟─1ae6a170-84a3-11eb-25c2-0974ff251860
# ╠═1ae6a170-84a3-11eb-1b3e-c19eeba4119c
# ╟─1ae6a170-84a3-11eb-2e63-d30fd99cc104
# ╠═1ae6a170-84a3-11eb-32e0-e3c9ab1a517a