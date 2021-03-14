### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1abb24a0-84a3-11eb-143a-b76f224f867a
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1abb24a0-84a3-11eb-1f3a-3f8fc6c6d34a
html"""
<h2>Problem 76: Counting summations</h2>
<p>It is possible to write five as a sum in exactly six different ways:</p>
<p class="margin_left">4 + 1<br />
3 + 2<br />
3 + 1 + 1<br />
2 + 2 + 1<br />
2 + 1 + 1 + 1<br />
1 + 1 + 1 + 1 + 1</p>
<p>How many different ways can one hundred be written as a sum of at least two positive integers?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-082e-036af6c923a5
begin
    submit_answer(nothing; prob_num=76)
end

# ╔═╡ 1abb24a0-84a3-11eb-1166-bf02cc7bf15f
html"""
<h2>Problem 77: Prime summations</h2>
<p>It is possible to write ten as the sum of primes in exactly five different ways:</p>
<p class="margin_left">7 + 3<br />
5 + 5<br />
5 + 3 + 2<br />
3 + 3 + 2 + 2<br />
2 + 2 + 2 + 2 + 2</p>
<p>What is the first value which can be written as the sum of primes in over five thousand different ways?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-0ccc-d58b80a55b82
begin
    submit_answer(nothing; prob_num=77)
end

# ╔═╡ 1abb24a0-84a3-11eb-3751-e103bc4de66f
html"""
<h2>Problem 78: Coin partitions</h2>
<p>Let p(<i>n</i>) represent the number of different ways in which <i>n</i> coins can be separated into piles. For example, five coins can be separated into piles in exactly seven different ways, so p(5)=7.</p>
<div class="margin_left">
OOOOO<br />
OOOO   O<br />
OOO   OO<br />
OOO   O   O<br />
OO   OO   O<br />
OO   O   O   O<br />
O   O   O   O   O
</div>
<p>Find the least value of <i>n</i> for which p(<i>n</i>) is divisible by one million.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-33ef-75ddf83d7ed7
begin
    submit_answer(nothing; prob_num=78)
end

# ╔═╡ 1abb24a0-84a3-11eb-38d8-1709c5200929
html"""
<h2>Problem 79: Passcode derivation</h2>
<p>A common security method used for online banking is to ask the user for three random characters from a passcode. For example, if the passcode was 531278, they may ask for the 2nd, 3rd, and 5th characters; the expected reply would be: 317.</p>
<p>The text file, <a href="project/resources/p079_keylog.txt">keylog.txt</a>, contains fifty successful login attempts.</p>
<p>Given that the three characters are always asked for in order, analyse the file so as to determine the shortest possible secret passcode of unknown length.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-2caf-c1f75a7528c0
begin
    submit_answer(nothing; prob_num=79)
end

# ╔═╡ 1abb24a0-84a3-11eb-2a9b-e9a3cf0df188
html"""
<h2>Problem 80: Square root digital expansion</h2>
<p>It is well known that if the square root of a natural number is not an integer, then it is irrational. The decimal expansion of such square roots is infinite without any repeating pattern at all.</p>
<p>The square root of two is 1.41421356237309504880..., and the digital sum of the first one hundred decimal digits is 475.</p>
<p>For the first one hundred natural numbers, find the total of the digital sums of the first one hundred decimal digits for all the irrational square roots.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-04bc-65e085a77fde
begin
    submit_answer(nothing; prob_num=80)
end

# ╔═╡ 1abb24a0-84a3-11eb-3cc4-0159c643f9e2
html"""
<h2>Problem 81: Path sum: two ways</h2>
<p>In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by <b>only moving to the right and down</b>, is indicated in bold red and is equal to 2427.</p>
<div class="center">
$$
\begin{pmatrix}
\color{red}{131} &amp; 673 &amp; 234 &amp; 103 &amp; 18\\
\color{red}{201} &amp; \color{red}{96} &amp; \color{red}{342} &amp; 965 &amp; 150\\
630 &amp; 803 &amp; \color{red}{746} &amp; \color{red}{422} &amp; 111\\
537 &amp; 699 &amp; 497 &amp; \color{red}{121} &amp; 956\\
805 &amp; 732 &amp; 524 &amp; \color{red}{37} &amp; \color{red}{331}
\end{pmatrix}
$$
</div>
<p>Find the minimal path sum from the top left to the bottom right by only moving right and down in <a href="project/resources/p081_matrix.txt">matrix.txt</a> (right click and "Save Link/Target As..."), a 31K text file containing an 80 by 80 matrix.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-2485-ad7aead79d62
begin
    submit_answer(nothing; prob_num=81)
end

# ╔═╡ 1abb24a0-84a3-11eb-33b1-676e061fe01b
html"""
<h2>Problem 82: Path sum: three ways</h2>
<p class="small_notice">NOTE: This problem is a more challenging version of <a href="https://projecteuler.net/problem=81">Problem 81</a>.</p>
<p>The minimal path sum in the 5 by 5 matrix below, by starting in any cell in the left column and finishing in any cell in the right column, and only moving up, down, and right, is indicated in red and bold; the sum is equal to 994.</p>
<div class="center">
$$
\begin{pmatrix}
131 &amp; 673 &amp; \color{red}{234} &amp; \color{red}{103} &amp; \color{red}{18}\\
\color{red}{201} &amp; \color{red}{96} &amp; \color{red}{342} &amp; 965 &amp; 150\\
630 &amp; 803 &amp; 746 &amp; 422 &amp; 111\\
537 &amp; 699 &amp; 497 &amp; 121 &amp; 956\\
805 &amp; 732 &amp; 524 &amp; 37 &amp; 331
\end{pmatrix}
$$
</div>
<p>Find the minimal path sum from the left column to the right column in <a href="project/resources/p082_matrix.txt">matrix.txt</a> (right click and "Save Link/Target As..."), a 31K text file containing an 80 by 80 matrix.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3eaf-af26e11fbda5
begin
    submit_answer(nothing; prob_num=82)
end

# ╔═╡ 1abb24a0-84a3-11eb-3bef-cbcc8c698e65
html"""
<h2>Problem 83: Path sum: four ways</h2>
<p class="small_notice">NOTE: This problem is a significantly more challenging version of <a href="https://projecteuler.net/problem=81">Problem 81</a>.</p>
<p>In the 5 by 5 matrix below, the minimal path sum from the top left to the bottom right, by moving left, right, up, and down, is indicated in bold red and is equal to 2297.</p>
<div class="center">
$$
\begin{pmatrix}
\color{red}{131} &amp; 673 &amp; \color{red}{234} &amp; \color{red}{103} &amp; \color{red}{18}\\
\color{red}{201} &amp; \color{red}{96} &amp; \color{red}{342} &amp; 965 &amp; \color{red}{150}\\
630 &amp; 803 &amp; 746 &amp; \color{red}{422} &amp; \color{red}{111}\\
537 &amp; 699 &amp; 497 &amp; \color{red}{121} &amp; 956\\
805 &amp; 732 &amp; 524 &amp; \color{red}{37} &amp; \color{red}{331}
\end{pmatrix}
$$
</div>
<p>Find the minimal path sum from the top left to the bottom right by moving left, right, up, and down in <a href="project/resources/p083_matrix.txt">matrix.txt</a> (right click and "Save Link/Target As..."), a 31K text file containing an 80 by 80 matrix.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-0def-d1976d94a7e1
begin
    submit_answer(nothing; prob_num=83)
end

# ╔═╡ 1abb24a0-84a3-11eb-3324-357eea487889
html"""
<h2>Problem 84: Monopoly odds</h2>
<p>In the game, <i>Monopoly</i>, the standard board is set up in the following way:</p>
<div class="center">
<img src="project/images/p084_monopoly_board.png" alt="p084_monopoly_board.png" />
</div>
<p>A player starts on the GO square and adds the scores on two 6-sided dice to determine the number of squares they advance in a clockwise direction. Without any further rules we would expect to visit each square with equal probability: 2.5%. However, landing on G2J (Go To Jail), CC (community chest), and CH (chance) changes this distribution.</p>
<p>In addition to G2J, and one card from each of CC and CH, that orders the player to go directly to jail, if a player rolls three consecutive doubles, they do not advance the result of their 3rd roll. Instead they proceed directly to jail.</p>
<p>At the beginning of the game, the CC and CH cards are shuffled. When a player lands on CC or CH they take a card from the top of the respective pile and, after following the instructions, it is returned to the bottom of the pile. There are sixteen cards in each pile, but for the purpose of this problem we are only concerned with cards that order a movement; any instruction not concerned with movement will be ignored and the player will remain on the CC/CH square.</p>
<ul><li>Community Chest (2/16 cards):
<ol><li>Advance to GO</li>
<li>Go to JAIL</li>
</ol></li>
<li>Chance (10/16 cards):
<ol><li>Advance to GO</li>
<li>Go to JAIL</li>
<li>Go to C1</li>
<li>Go to E3</li>
<li>Go to H2</li>
<li>Go to R1</li>
<li>Go to next R (railway company)</li>
<li>Go to next R</li>
<li>Go to next U (utility company)</li>
<li>Go back 3 squares.</li>
</ol></li>
</ul><p>The heart of this problem concerns the likelihood of visiting a particular square. That is, the probability of finishing at that square after a roll. For this reason it should be clear that, with the exception of G2J for which the probability of finishing on it is zero, the CH squares will have the lowest probabilities, as 5/8 request a movement to another square, and it is the final square that the player finishes at on each roll that we are interested in. We shall make no distinction between "Just Visiting" and being sent to JAIL, and we shall also ignore the rule about requiring a double to "get out of jail", assuming that they pay to get out on their next turn.</p>
<p>By starting at GO and numbering the squares sequentially from 00 to 39 we can concatenate these two-digit numbers to produce strings that correspond with sets of squares.</p>
<p>Statistically it can be shown that the three most popular squares, in order, are JAIL (6.24%) = Square 10, E3 (3.18%) = Square 24, and GO (3.09%) = Square 00. So these three most popular squares can be listed with the six-digit modal string: 102400.</p>
<p>If, instead of using two 6-sided dice, two 4-sided dice are used, find the six-digit modal string.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-309e-bd8d0eb684a6
begin
    submit_answer(nothing; prob_num=84)
end

# ╔═╡ 1abb24a0-84a3-11eb-120e-5dbcf2fc6a08
html"""
<h2>Problem 85: Counting rectangles</h2>
<p>By counting carefully it can be seen that a rectangular grid measuring 3 by 2 contains eighteen rectangles:</p>
<div class="center">
<img src="project/images/p085.png" class="dark_img" alt="" /></div>
<p>Although there exists no rectangular grid that contains exactly two million rectangles, find the area of the grid with the nearest solution.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3b30-61a973f649cc
begin
    submit_answer(nothing; prob_num=85)
end

# ╔═╡ 1abb24a0-84a3-11eb-1424-cbdbad57de40
html"""
<h2>Problem 86: Cuboid route</h2>
<p>A spider, S, sits in one corner of a cuboid room, measuring 6 by 5 by 3, and a fly, F, sits in the opposite corner. By travelling on the surfaces of the room the shortest "straight line" distance from S to F is 10 and the path is shown on the diagram.</p>
<div class="center">
<img src="project/images/p086.png" class="dark_img" alt="" /><br /></div>
<p>However, there are up to three "shortest" path candidates for any given cuboid and the shortest route doesn't always have integer length.</p>
<p>It can be shown that there are exactly 2060 distinct cuboids, ignoring rotations, with integer dimensions, up to a maximum size of M by M by M, for which the shortest route has integer length when M = 100. This is the least value of M for which the number of solutions first exceeds two thousand; the number of solutions when M = 99 is 1975.</p>
<p>Find the least value of M such that the number of solutions first exceeds one million.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-010b-15437032106b
begin
    submit_answer(nothing; prob_num=86)
end

# ╔═╡ 1abb24a0-84a3-11eb-16bb-39ac6abf8a9d
html"""
<h2>Problem 87: Prime power triples</h2>
<p>The smallest number expressible as the sum of a prime square, prime cube, and prime fourth power is 28. In fact, there are exactly four numbers below fifty that can be expressed in such a way:</p>
<p class="margin_left">28 = 2<sup>2</sup> + 2<sup>3</sup> + 2<sup>4</sup><br />
33 = 3<sup>2</sup> + 2<sup>3</sup> + 2<sup>4</sup><br />
49 = 5<sup>2</sup> + 2<sup>3</sup> + 2<sup>4</sup><br />
47 = 2<sup>2</sup> + 3<sup>3</sup> + 2<sup>4</sup></p>
<p>How many numbers below fifty million can be expressed as the sum of a prime square, prime cube, and prime fourth power?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-2adb-d99f7966c5ae
begin
    submit_answer(nothing; prob_num=87)
end

# ╔═╡ 1abb24a0-84a3-11eb-028f-f7dfc085f154
html"""
<h2>Problem 88: Product-sum numbers</h2>
<p>A natural number, N, that can be written as the sum and product of a given set of at least two natural numbers, {<i>a</i><sub>1</sub>, <i>a</i><sub>2</sub>, ... , <i>a</i><sub><i>k</i></sub>} is called a product-sum number: N = <i>a</i><sub>1</sub> + <i>a</i><sub>2</sub> + ... + <i>a</i><sub><i>k</i></sub> = <i>a</i><sub>1</sub> × <i>a</i><sub>2</sub> × ... × <i>a</i><sub><i>k</i></sub>.</p>
<p>For example, 6 = 1 + 2 + 3 = 1 × 2 × 3.</p>
<p>For a given set of size, <i>k</i>, we shall call the smallest N with this property a minimal product-sum number. The minimal product-sum numbers for sets of size, <i>k</i> = 2, 3, 4, 5, and 6 are as follows.</p>
<p class="margin_left"><i>k</i>=2: 4 = 2 × 2 = 2 + 2<br /><i>k</i>=3: 6 = 1 × 2 × 3 = 1 + 2 + 3<br /><i>k</i>=4: 8 = 1 × 1 × 2 × 4 = 1 + 1 + 2 + 4<br /><i>k</i>=5: 8 = 1 × 1 × 2 × 2 × 2  = 1 + 1 + 2 + 2 + 2<br /><i>k</i>=6: 12 = 1 × 1 × 1 × 1 × 2 × 6 = 1 + 1 + 1 + 1 + 2 + 6</p>
<p>Hence for 2≤<i>k</i>≤6, the sum of all the minimal product-sum numbers is 4+6+8+12 = 30; note that 8 is only counted once in the sum.</p>
<p>In fact, as the complete set of minimal product-sum numbers for 2≤<i>k</i>≤12 is {4, 6, 8, 12, 15, 16}, the sum is 61.</p>
<p>What is the sum of all the minimal product-sum numbers for 2≤<i>k</i>≤12000?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-0ec3-05813a9f0187
begin
    submit_answer(nothing; prob_num=88)
end

# ╔═╡ 1abb24a0-84a3-11eb-0dc7-e3190c3eb48c
html"""
<h2>Problem 89: Roman numerals</h2>
<p>For a number written in Roman numerals to be considered valid there are basic rules which must be followed. Even though the rules allow some numbers to be expressed in more than one way there is always a "best" way of writing a particular number.</p>
<p>For example, it would appear that there are at least six ways of writing the number sixteen:</p>
<p class="margin_left monospace">IIIIIIIIIIIIIIII<br />
VIIIIIIIIIII<br />
VVIIIIII<br />
XIIIIII<br />
VVVI<br />
XVI</p>
<p>However, according to the rules only <span style="font-family:'courier new';font-size:10pt;">XIIIIII</span> and <span style="font-family:'courier new';font-size:10pt;">XVI</span> are valid, and the last example is considered to be the most efficient, as it uses the least number of numerals.</p>
<p>The 11K text file, <a href="project/resources/p089_roman.txt">roman.txt</a> (right click and 'Save Link/Target As...'), contains one thousand numbers written in valid, but not necessarily minimal, Roman numerals; see <a href="about=roman_numerals">About... Roman Numerals</a> for the definitive rules for this problem.</p>
<p>Find the number of characters saved by writing each of these in their minimal form.</p>
<p class="smaller">Note: You can assume that all the Roman numerals in the file contain no more than four consecutive identical units.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-1386-0d0d5728fa3a
begin
    submit_answer(nothing; prob_num=89)
end

# ╔═╡ 1abb24a0-84a3-11eb-0d3e-8d790737beaf
html"""
<h2>Problem 90: Cube digit pairs</h2>
<p>Each of the six faces on a cube has a different digit (0 to 9) written on it; the same is done to a second cube. By placing the two cubes side-by-side in different positions we can form a variety of 2-digit numbers.</p>

<p>For example, the square number 64 could be formed:</p>

<div class="center">
<img src="project/images/p090.png" class="dark_img" alt="" /><br /></div>

<p>In fact, by carefully choosing the digits on both cubes it is possible to display all of the square numbers below one-hundred: 01, 04, 09, 16, 25, 36, 49, 64, and 81.</p>

<p>For example, one way this can be achieved is by placing {0, 5, 6, 7, 8, 9} on one cube and {1, 2, 3, 4, 8, 9} on the other cube.</p>

<p>However, for this problem we shall allow the 6 or 9 to be turned upside-down so that an arrangement like {0, 5, 6, 7, 8, 9} and {1, 2, 3, 4, 6, 7} allows for all nine square numbers to be displayed; otherwise it would be impossible to obtain 09.</p>

<p>In determining a distinct arrangement we are interested in the digits on each cube, not the order.</p>

<p class="margin_left">{1, 2, 3, 4, 5, 6} is equivalent to {3, 6, 4, 1, 2, 5}<br />
{1, 2, 3, 4, 5, 6} is distinct from {1, 2, 3, 4, 5, 9}</p>

<p>But because we are allowing 6 and 9 to be reversed, the two distinct sets in the last example both represent the extended set {1, 2, 3, 4, 5, 6, 9} for the purpose of forming 2-digit numbers.</p>

<p>How many distinct arrangements of the two cubes allow for all of the square numbers to be displayed?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-02c5-1b187e3cf190
begin
    submit_answer(nothing; prob_num=90)
end

# ╔═╡ 1abb24a0-84a3-11eb-1f03-49495ad9048c
html"""
<h2>Problem 91: Right triangles with integer coordinates</h2>
<p>The points P (<i>x</i><sub>1</sub>, <i>y</i><sub>1</sub>) and Q (<i>x</i><sub>2</sub>, <i>y</i><sub>2</sub>) are plotted at integer co-ordinates and are joined to the origin, O(0,0), to form ΔOPQ.</p>

<div class="center">
<img src="project/images/p091_1.png" class="dark_img" alt="" /><br /></div>

<p>There are exactly fourteen triangles containing a right angle that can be formed when each co-ordinate lies between 0 and 2 inclusive; that is,<br />0 ≤ <i>x</i><sub>1</sub>, <i>y</i><sub>1</sub>, <i>x</i><sub>2</sub>, <i>y</i><sub>2</sub> ≤ 2.</p>

<div class="center">
<img src="project/images/p091_2.png" alt="" /><br /></div>

<p>Given that 0 ≤ <i>x</i><sub>1</sub>, <i>y</i><sub>1</sub>, <i>x</i><sub>2</sub>, <i>y</i><sub>2</sub> ≤ 50, how many right triangles can be formed?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3a9e-ff13c33b1231
begin
    submit_answer(nothing; prob_num=91)
end

# ╔═╡ 1abb24a0-84a3-11eb-10d8-dfe139d1f777
html"""
<h2>Problem 92: Square digit chains</h2>
<p>A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.</p>
<p>For example,</p>
<p class="margin_left">44 → 32 → 13 → 10 → <b>1</b> → <b>1</b><br />
85 → <b>89</b> → 145 → 42 → 20 → 4 → 16 → 37 → 58 → <b>89</b></p>
<p>Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.</p>
<p>How many starting numbers below ten million will arrive at 89?</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-0647-9ba66ffdeed6
begin
    submit_answer(nothing; prob_num=92)
end

# ╔═╡ 1abb24a0-84a3-11eb-09eb-c76c98668eab
html"""
<h2>Problem 93: Arithmetic expressions</h2>
<p>By using each of the digits from the set, {1, 2, 3, 4}, exactly once, and making use of the four arithmetic operations (+, −, *, /) and brackets/parentheses, it is possible to form different positive integer targets.</p>
<p>For example,</p>
<p class="monospace margin_left">8 = (4 * (1 + 3)) / 2<br />
14 = 4 * (3 + 1 / 2)<br />
19 = 4 * (2 + 3) − 1<br />
36 = 3 * 4 * (2 + 1)</p>
<p>Note that concatenations of the digits, like 12 + 34, are not allowed.</p>
<p>Using the set, {1, 2, 3, 4}, it is possible to obtain thirty-one different target numbers of which 36 is the maximum, and each of the numbers 1 to 28 can be obtained before encountering the first non-expressible number.</p>
<p>Find the set of four distinct digits, <i>a</i> &lt; <i>b</i> &lt; <i>c</i> &lt; <i>d</i>, for which the longest set of consecutive positive integers, 1 to <i>n</i>, can be obtained, giving your answer as a string: <i>abcd</i>.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-0aa4-9939d38f554d
begin
    submit_answer(nothing; prob_num=93)
end

# ╔═╡ 1abb24a0-84a3-11eb-2bc4-fbb6b6976d16
html"""
<h2>Problem 94: Almost equilateral triangles</h2>
<p>It is easily proved that no equilateral triangle exists with integral length sides and integral area. However, the <i>almost equilateral triangle</i> 5-5-6 has an area of 12 square units.</p>
<p>We shall define an <i>almost equilateral triangle</i> to be a triangle for which two sides are equal and the third differs by no more than one unit.</p>
<p>Find the sum of the perimeters of all <i>almost equilateral triangles</i> with integral side lengths and area and whose perimeters do not exceed one billion (1,000,000,000).</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3ed5-8b4fd5e7e999
begin
    submit_answer(nothing; prob_num=94)
end

# ╔═╡ 1abb24a0-84a3-11eb-2a24-6d4b6e726a0b
html"""
<h2>Problem 95: Amicable chains</h2>
<p>The proper divisors of a number are all the divisors excluding the number itself. For example, the proper divisors of 28 are 1, 2, 4, 7, and 14. As the sum of these divisors is equal to 28, we call it a perfect number.</p>
<p>Interestingly the sum of the proper divisors of 220 is 284 and the sum of the proper divisors of 284 is 220, forming a chain of two numbers. For this reason, 220 and 284 are called an amicable pair.</p>
<p>Perhaps less well known are longer chains. For example, starting with 12496, we form a chain of five numbers:</p>
<p class="center">12496 → 14288 → 15472 → 14536 → 14264 (→ 12496 → ...)</p>
<p>Since this chain returns to its starting point, it is called an amicable chain.</p>
<p>Find the smallest member of the longest amicable chain with no element exceeding one million.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3ccc-930de8cb2214
begin
    submit_answer(nothing; prob_num=95)
end

# ╔═╡ 1abb24a0-84a3-11eb-3de7-012df7344c24
html"""
<h2>Problem 96: Su Doku</h2>
<p>Su Doku (Japanese meaning <i>number place</i>) is the name given to a popular puzzle concept. Its origin is unclear, but credit must be attributed to Leonhard Euler who invented a similar, and much more difficult, puzzle idea called Latin Squares. The objective of Su Doku puzzles, however, is to replace the blanks (or zeros) in a 9 by 9 grid in such that each row, column, and 3 by 3 box contains each of the digits 1 to 9. Below is an example of a typical starting puzzle grid and its solution grid.</p>
<div class="center">
<img src="project/images/p096_1.png" alt="p096_1.png" />     <img src="project/images/p096_2.png" alt="p096_2.png" />
</div>
<p>A well constructed Su Doku puzzle has a unique solution and can be solved by logic, although it may be necessary to employ "guess and test" methods in order to eliminate options (there is much contested opinion over this). The complexity of the search determines the difficulty of the puzzle; the example above is considered <i>easy</i> because it can be solved by straight forward direct deduction.</p>
<p>The 6K text file, <a href="project/resources/p096_sudoku.txt">sudoku.txt</a> (right click and 'Save Link/Target As...'), contains fifty different Su Doku puzzles ranging in difficulty, but all with unique solutions (the first puzzle in the file is the example above).</p>
<p>By solving all fifty puzzles find the sum of the 3-digit numbers found in the top left corner of each solution grid; for example, 483 is the 3-digit number found in the top left corner of the solution grid above.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-1290-712701e6aa43
begin
    submit_answer(nothing; prob_num=96)
end

# ╔═╡ 1abb24a0-84a3-11eb-103e-7508e6efc43e
html"""
<h2>Problem 97: Large non-Mersenne prime</h2>
<p>The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form 2<sup>6972593</sup>−1; it contains exactly 2,098,960 digits. Subsequently other Mersenne primes, of the form 2<sup><i>p</i></sup>−1, have been found which contain more digits.</p>
<p>However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433×2<sup>7830457</sup>+1.</p>
<p>Find the last ten digits of this prime number.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-1b23-8d2d55a4dc2f
begin
    submit_answer(nothing; prob_num=97)
end

# ╔═╡ 1abb24a0-84a3-11eb-3a8a-ad2f9cbab0ab
html"""
<h2>Problem 98: Anagramic squares</h2>
<p>By replacing each of the letters in the word CARE with 1, 2, 9, and 6 respectively, we form a square number: 1296 = 36<sup>2</sup>. What is remarkable is that, by using the same digital substitutions, the anagram, RACE, also forms a square number: 9216 = 96<sup>2</sup>. We shall call CARE (and RACE) a square anagram word pair and specify further that leading zeroes are not permitted, neither may a different letter have the same digital value as another letter.</p>
<p>Using <a href="project/resources/p098_words.txt">words.txt</a> (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, find all the square anagram word pairs (a palindromic word is NOT considered to be an anagram of itself).</p>
<p>What is the largest square number formed by any member of such a pair?</p>
<p class="smaller">NOTE: All anagrams formed must be contained in the given text file.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-3ce7-ab1687054cd2
begin
    submit_answer(nothing; prob_num=98)
end

# ╔═╡ 1abb24a0-84a3-11eb-2564-a5c76c3c9676
html"""
<h2>Problem 99: Largest exponential</h2>
<p>Comparing two numbers written in index form like 2<sup>11</sup> and 3<sup>7</sup> is not difficult, as any calculator would confirm that 2<sup>11</sup> = 2048 &lt; 3<sup>7</sup> = 2187.</p>
<p>However, confirming that 632382<sup>518061</sup> &gt; 519432<sup>525806</sup> would be much more difficult, as both numbers contain over three million digits.</p>
<p>Using <a href="project/resources/p099_base_exp.txt">base_exp.txt</a> (right click and 'Save Link/Target As...'), a 22K text file containing one thousand lines with a base/exponent pair on each line, determine which line number has the greatest numerical value.</p>
<p class="smaller">NOTE: The first two lines in the file represent the numbers in the example given above.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-2cc3-977158beacb4
begin
    submit_answer(nothing; prob_num=99)
end

# ╔═╡ 1abb24a0-84a3-11eb-32f3-43ce071ba491
html"""
<h2>Problem 100: Arranged probability</h2>
<p>If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs, and two discs were taken at random, it can be seen that the probability of taking two blue discs, P(BB) = (15/21)×(14/20) = 1/2.</p>
<p>The next such arrangement, for which there is exactly 50% chance of taking two blue discs at random, is a box containing eighty-five blue discs and thirty-five red discs.</p>
<p>By finding the first arrangement to contain over 10<sup>12</sup> = 1,000,000,000,000 discs in total, determine the number of blue discs that the box would contain.</p>
"""

# ╔═╡ 1abb24a0-84a3-11eb-189d-31b2b0e12032
begin
    submit_answer(nothing; prob_num=100)
end

# ╔═╡ Cell order:
# ╠═1abb24a0-84a3-11eb-143a-b76f224f867a
# ╟─1abb24a0-84a3-11eb-1f3a-3f8fc6c6d34a
# ╠═1abb24a0-84a3-11eb-082e-036af6c923a5
# ╟─1abb24a0-84a3-11eb-1166-bf02cc7bf15f
# ╠═1abb24a0-84a3-11eb-0ccc-d58b80a55b82
# ╟─1abb24a0-84a3-11eb-3751-e103bc4de66f
# ╠═1abb24a0-84a3-11eb-33ef-75ddf83d7ed7
# ╟─1abb24a0-84a3-11eb-38d8-1709c5200929
# ╠═1abb24a0-84a3-11eb-2caf-c1f75a7528c0
# ╟─1abb24a0-84a3-11eb-2a9b-e9a3cf0df188
# ╠═1abb24a0-84a3-11eb-04bc-65e085a77fde
# ╟─1abb24a0-84a3-11eb-3cc4-0159c643f9e2
# ╠═1abb24a0-84a3-11eb-2485-ad7aead79d62
# ╟─1abb24a0-84a3-11eb-33b1-676e061fe01b
# ╠═1abb24a0-84a3-11eb-3eaf-af26e11fbda5
# ╟─1abb24a0-84a3-11eb-3bef-cbcc8c698e65
# ╠═1abb24a0-84a3-11eb-0def-d1976d94a7e1
# ╟─1abb24a0-84a3-11eb-3324-357eea487889
# ╠═1abb24a0-84a3-11eb-309e-bd8d0eb684a6
# ╟─1abb24a0-84a3-11eb-120e-5dbcf2fc6a08
# ╠═1abb24a0-84a3-11eb-3b30-61a973f649cc
# ╟─1abb24a0-84a3-11eb-1424-cbdbad57de40
# ╠═1abb24a0-84a3-11eb-010b-15437032106b
# ╟─1abb24a0-84a3-11eb-16bb-39ac6abf8a9d
# ╠═1abb24a0-84a3-11eb-2adb-d99f7966c5ae
# ╟─1abb24a0-84a3-11eb-028f-f7dfc085f154
# ╠═1abb24a0-84a3-11eb-0ec3-05813a9f0187
# ╟─1abb24a0-84a3-11eb-0dc7-e3190c3eb48c
# ╠═1abb24a0-84a3-11eb-1386-0d0d5728fa3a
# ╟─1abb24a0-84a3-11eb-0d3e-8d790737beaf
# ╠═1abb24a0-84a3-11eb-02c5-1b187e3cf190
# ╟─1abb24a0-84a3-11eb-1f03-49495ad9048c
# ╠═1abb24a0-84a3-11eb-3a9e-ff13c33b1231
# ╟─1abb24a0-84a3-11eb-10d8-dfe139d1f777
# ╠═1abb24a0-84a3-11eb-0647-9ba66ffdeed6
# ╟─1abb24a0-84a3-11eb-09eb-c76c98668eab
# ╠═1abb24a0-84a3-11eb-0aa4-9939d38f554d
# ╟─1abb24a0-84a3-11eb-2bc4-fbb6b6976d16
# ╠═1abb24a0-84a3-11eb-3ed5-8b4fd5e7e999
# ╟─1abb24a0-84a3-11eb-2a24-6d4b6e726a0b
# ╠═1abb24a0-84a3-11eb-3ccc-930de8cb2214
# ╟─1abb24a0-84a3-11eb-3de7-012df7344c24
# ╠═1abb24a0-84a3-11eb-1290-712701e6aa43
# ╟─1abb24a0-84a3-11eb-103e-7508e6efc43e
# ╠═1abb24a0-84a3-11eb-1b23-8d2d55a4dc2f
# ╟─1abb24a0-84a3-11eb-3a8a-ad2f9cbab0ab
# ╠═1abb24a0-84a3-11eb-3ce7-ab1687054cd2
# ╟─1abb24a0-84a3-11eb-2564-a5c76c3c9676
# ╠═1abb24a0-84a3-11eb-2cc3-977158beacb4
# ╟─1abb24a0-84a3-11eb-32f3-43ce071ba491
# ╠═1abb24a0-84a3-11eb-189d-31b2b0e12032