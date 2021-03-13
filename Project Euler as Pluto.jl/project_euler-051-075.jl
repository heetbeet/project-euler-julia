### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 441c4a90-8435-11eb-2cce-4d480d45000f
include((@__DIR__)*"/shared.jl");

# ╔═╡ 441c4a90-8435-11eb-2438-5fe85a035bc8
html"""
<h2>Problem 51: Prime digit replacements</h2>
<p>By replacing the 1<sup>st</sup> digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.</p>
<p>By replacing the 3<sup>rd</sup> and 4<sup>th</sup> digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.</p>
<p>Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1e60-f71ba9b7fa8a
begin
    submit_answer(nothing; prob_num=51)
end

# ╔═╡ 441c4a90-8435-11eb-21cc-03113ee545a7
html"""
<h2>Problem 52: Permuted multiples</h2>
<p>It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.</p>
<p>Find the smallest positive integer, <i>x</i>, such that 2<i>x</i>, 3<i>x</i>, 4<i>x</i>, 5<i>x</i>, and 6<i>x</i>, contain the same digits.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1754-bb71c39f9067
begin
    submit_answer(nothing; prob_num=52)
end

# ╔═╡ 441c4a90-8435-11eb-1db1-91fd5e9f447f
html"""
<h2>Problem 53: Combinatoric selections</h2>
<p>There are exactly ten ways of selecting three from five, 12345:</p>
<p class="center">123, 124, 125, 134, 135, 145, 234, 235, 245, and 345</p>
<p>In combinatorics, we use the notation, $\displaystyle \binom 5 3 = 10$.</p>
<p>In general, $\displaystyle \binom n r = \dfrac{n!}{r!(n-r)!}$, where $r \le n$, $n! = n \times (n-1) \times ... \times 3 \times 2 \times 1$, and $0! = 1$.
</p>
<p>It is not until $n = 23$, that a value exceeds one-million: $\displaystyle \binom {23} {10} = 1144066$.</p>
<p>How many, not necessarily distinct, values of $\displaystyle \binom n r$ for $1 \le n \le 100$, are greater than one-million?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-27e1-7d9c3d98cfff
begin
    submit_answer(nothing; prob_num=53)
end

# ╔═╡ 441c4a90-8435-11eb-226f-d16f03c4479c
html"""
<h2>Problem 54: Poker hands</h2>
<p>In the card game poker, a hand consists of five cards and are ranked, from lowest to highest, in the following way:</p>
<ul><li><b>High Card</b>: Highest value card.</li>
<li><b>One Pair</b>: Two cards of the same value.</li>
<li><b>Two Pairs</b>: Two different pairs.</li>
<li><b>Three of a Kind</b>: Three cards of the same value.</li>
<li><b>Straight</b>: All cards are consecutive values.</li>
<li><b>Flush</b>: All cards of the same suit.</li>
<li><b>Full House</b>: Three of a kind and a pair.</li>
<li><b>Four of a Kind</b>: Four cards of the same value.</li>
<li><b>Straight Flush</b>: All cards are consecutive values of same suit.</li>
<li><b>Royal Flush</b>: Ten, Jack, Queen, King, Ace, in same suit.</li>
</ul><p>The cards are valued in the order:<br />2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.</p>
<p>If two players have the same ranked hands then the rank made up of the highest value wins; for example, a pair of eights beats a pair of fives (see example 1 below). But if two ranks tie, for example, both players have a pair of queens, then highest cards in each hand are compared (see example 4 below); if the highest cards tie then the next highest cards are compared, and so on.</p>
<p>Consider the following five hands dealt to two players:</p>
<div class="center">
<table><tr><td><b>Hand</b></td><td> </td><td><b>Player 1</b></td><td> </td><td><b>Player 2</b></td><td> </td><td><b>Winner</b></td>
</tr><tr><td><b>1</b></td><td> </td><td>5H 5C 6S 7S KD<br /><div class="smaller">Pair of Fives</div></td><td> </td><td>2C 3S 8S 8D TD<br /><div class="smaller">Pair of Eights</div></td><td> </td><td>Player 2</td>
</tr><tr><td><b>2</b></td><td> </td><td>5D 8C 9S JS AC<br /><div class="smaller">Highest card Ace</div></td><td> </td><td>2C 5C 7D 8S QH<br /><div class="smaller">Highest card Queen</div></td><td> </td><td>Player 1</td>
</tr><tr><td><b>3</b></td><td> </td><td>2D 9C AS AH AC<br /><div class="smaller">Three Aces</div></td><td> </td><td>3D 6D 7D TD QD<br /><div class="smaller">Flush  with Diamonds</div></td><td> </td><td>Player 2</td>
</tr><tr><td><b>4</b></td><td> </td><td>4D 6S 9H QH QC<br /><div class="smaller">Pair of Queens<br />Highest card Nine</div></td><td> </td><td>3D 6D 7H QD QS<br /><div class="smaller">Pair of Queens<br />Highest card Seven</div></td><td> </td><td>Player 1</td>
</tr><tr><td><b>5</b></td><td> </td><td>2H 2D 4C 4D 4S<br /><div class="smaller">Full House<br />With Three Fours</div></td><td> </td><td>3C 3D 3S 9S 9D<br /><div class="smaller">Full House<br />with Three Threes</div></td><td> </td><td>Player 1</td>
</tr></table></div>
<p>The file, <a href="project/resources/p054_poker.txt">poker.txt</a>, contains one-thousand random hands dealt to two players. Each line of the file contains ten cards (separated by a single space): the first five are Player 1's cards and the last five are Player 2's cards. You can assume that all hands are valid (no invalid characters or repeated cards), each player's hand is in no specific order, and in each hand there is a clear winner.</p>
<p>How many hands does Player 1 win?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-0828-03f1b96deaf3
begin
    submit_answer(nothing; prob_num=54)
end

# ╔═╡ 441c4a90-8435-11eb-177d-c92a52717007
html"""
<h2>Problem 55: Lychrel numbers</h2>
<p>If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.</p>
<p>Not all numbers produce palindromes so quickly. For example,</p>
<p class="margin_left">349 + 943 = 1292,<br />
1292 + 2921 = 4213<br />
4213 + 3124 = 7337</p>
<p>That is, 349 took three iterations to arrive at a palindrome.</p>
<p>Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).</p>
<p>Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.</p>
<p>How many Lychrel numbers are there below ten-thousand?</p>
<p class="smaller">NOTE: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-3ce8-ab7df646f33e
begin
    submit_answer(nothing; prob_num=55)
end

# ╔═╡ 441c4a90-8435-11eb-225d-f5217a0f14aa
html"""
<h2>Problem 56: Powerful digit sum</h2>
<p>A googol (10<sup>100</sup>) is a massive number: one followed by one-hundred zeros; 100<sup>100</sup> is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.</p>
<p>Considering natural numbers of the form, <i>a<sup>b</sup></i>, where <i>a, b</i> &lt; 100, what is the maximum digital sum?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-344f-d3d39b053538
begin
    submit_answer(nothing; prob_num=56)
end

# ╔═╡ 441c4a90-8435-11eb-08c3-9b399bd28619
html"""
<h2>Problem 57: Square root convergents</h2>
<p>It is possible to show that the square root of two can be expressed as an infinite continued fraction.</p>
<p class="center">$\sqrt 2 =1+ \frac 1 {2+ \frac 1 {2 +\frac 1 {2+ \dots}}}$</p>
<p>By expanding this for the first four iterations, we get:</p>
<p>$1 + \frac 1 2 = \frac  32 = 1.5$<br />
$1 + \frac 1 {2 + \frac 1 2} = \frac 7 5 = 1.4$<br />
$1 + \frac 1 {2 + \frac 1 {2+\frac 1 2}} = \frac {17}{12} = 1.41666 \dots$<br />
$1 + \frac 1 {2 + \frac 1 {2+\frac 1 {2+\frac 1 2}}} = \frac {41}{29} = 1.41379 \dots$<br /></p>
<p>The next three expansions are $\frac {99}{70}$, $\frac {239}{169}$, and $\frac {577}{408}$, but the eighth expansion, $\frac {1393}{985}$, is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.</p>
<p>In the first one-thousand expansions, how many fractions contain a numerator with more digits than the denominator?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-322d-0df62e5f9928
begin
    submit_answer(nothing; prob_num=57)
end

# ╔═╡ 441c4a90-8435-11eb-0e2f-299cb81824bd
html"""
<h2>Problem 58: Spiral primes</h2>
<p>Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.</p>
<p style="font-family:'courier new';text-align:center;font-size:10pt;"><span style="color:#ff0000;"><b>37</b></span> 36 35 34 33 32 <span style="color:#ff0000;"><b>31</b></span><br />
38 <span style="color:#ff0000;"><b>17</b></span> 16 15 14 <span style="color:#ff0000;"><b>13</b></span> 30<br />
39 18 <span style="color:#ff0000;"> <b>5</b></span>  4 <span style="color:#ff0000;"> <b>3</b></span> 12 29<br />
40 19  6  1  2 11 28<br />
41 20 <span style="color:#ff0000;"> <b>7</b></span>  8  9 10 27<br />
42 21 22 23 24 25 26<br /><span style="color:#ff0000;"><b>43</b></span> 44 45 46 47 48 49</p>
<p>It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 ≈ 62%.</p>
<p>If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1c1d-17172f57b0ff
begin
    submit_answer(nothing; prob_num=58)
end

# ╔═╡ 441c4a90-8435-11eb-1bb5-17b8545f449b
html"""
<h2>Problem 59: XOR decryption</h2>
<p>Each character on a computer is assigned a unique code and the preferred standard is ASCII (American Standard Code for Information Interchange). For example, uppercase A = 65, asterisk (*) = 42, and lowercase k = 107.</p>
<p>A modern encryption method is to take a text file, convert the bytes to ASCII, then XOR each byte with a given value, taken from a secret key. The advantage with the XOR function is that using the same encryption key on the cipher text, restores the plain text; for example, 65 XOR 42 = 107, then 107 XOR 42 = 65.</p>
<p>For unbreakable encryption, the key is the same length as the plain text message, and the key is made up of random bytes. The user would keep the encrypted message and the encryption key in different locations, and without both "halves", it is impossible to decrypt the message.</p>
<p>Unfortunately, this method is impractical for most users, so the modified method is to use a password as a key. If the password is shorter than the message, which is likely, the key is repeated cyclically throughout the message. The balance for this method is using a sufficiently long password key for security, but short enough to be memorable.</p>
<p>Your task has been made easy, as the encryption key consists of three lower case characters. Using <a href="project/resources/p059_cipher.txt">p059_cipher.txt</a> (right click and 'Save Link/Target As...'), a file containing the encrypted ASCII codes, and the knowledge that the plain text must contain common English words, decrypt the message and find the sum of the ASCII values in the original text.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-29f3-4b460ee0314b
begin
    submit_answer(nothing; prob_num=59)
end

# ╔═╡ 441c4a90-8435-11eb-38de-87bb5d05add4
html"""
<h2>Problem 60: Prime pair sets</h2>
<p>The primes 3, 7, 109, and 673, are quite remarkable. By taking any two primes and concatenating them in any order the result will always be prime. For example, taking 7 and 109, both 7109 and 1097 are prime. The sum of these four primes, 792, represents the lowest sum for a set of four primes with this property.</p>
<p>Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-2457-a171c722d640
begin
    submit_answer(nothing; prob_num=60)
end

# ╔═╡ 441c4a90-8435-11eb-1fc9-9b0d8ffe7f43
html"""
<h2>Problem 61: Cyclical figurate numbers</h2>
<p>Triangle, square, pentagonal, hexagonal, heptagonal, and octagonal numbers are all figurate (polygonal) numbers and are generated by the following formulae:</p>
<table><tr><td>Triangle</td>
<td> </td>
<td>P<sub>3,<i>n</i></sub>=<i>n</i>(<i>n</i>+1)/2</td>
<td> </td>
<td>1, 3, 6, 10, 15, ...</td>
</tr><tr><td>Square</td>
<td> </td>
<td>P<sub>4,<i>n</i></sub>=<i>n</i><sup>2</sup></td>
<td> </td>
<td>1, 4, 9, 16, 25, ...</td>
</tr><tr><td>Pentagonal</td>
<td> </td>
<td>P<sub>5,<i>n</i></sub>=<i>n</i>(3<i>n</i>−1)/2</td>
<td> </td>
<td>1, 5, 12, 22, 35, ...</td>
</tr><tr><td>Hexagonal</td>
<td> </td>
<td>P<sub>6,<i>n</i></sub>=<i>n</i>(2<i>n</i>−1)</td>
<td> </td>
<td>1, 6, 15, 28, 45, ...</td>
</tr><tr><td>Heptagonal</td>
<td> </td>
<td>P<sub>7,<i>n</i></sub>=<i>n</i>(5<i>n</i>−3)/2</td>
<td> </td>
<td>1, 7, 18, 34, 55, ...</td>
</tr><tr><td>Octagonal</td>
<td> </td>
<td>P<sub>8,<i>n</i></sub>=<i>n</i>(3<i>n</i>−2)</td>
<td> </td>
<td>1, 8, 21, 40, 65, ...</td>
</tr></table><p>The ordered set of three 4-digit numbers: 8128, 2882, 8281, has three interesting properties.</p>
<ol><li>The set is cyclic, in that the last two digits of each number is the first two digits of the next number (including the last number with the first).</li>
<li>Each polygonal type: triangle (P<sub>3,127</sub>=8128), square (P<sub>4,91</sub>=8281), and pentagonal (P<sub>5,44</sub>=2882), is represented by a different number in the set.</li>
<li>This is the only set of 4-digit numbers with this property.</li>
</ol><p>Find the sum of the only ordered set of six cyclic 4-digit numbers for which each polygonal type: triangle, square, pentagonal, hexagonal, heptagonal, and octagonal, is represented by a different number in the set.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1eef-df1cc5f61d32
begin
    submit_answer(nothing; prob_num=61)
end

# ╔═╡ 441c4a90-8435-11eb-00e9-3b8c171c234d
html"""
<h2>Problem 62: Cubic permutations</h2>
<p>The cube, 41063625 (345<sup>3</sup>), can be permuted to produce two other cubes: 56623104 (384<sup>3</sup>) and 66430125 (405<sup>3</sup>). In fact, 41063625 is the smallest cube which has exactly three permutations of its digits which are also cube.</p>
<p>Find the smallest cube for which exactly five permutations of its digits are cube.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-03bb-33117739ec95
begin
    submit_answer(nothing; prob_num=62)
end

# ╔═╡ 441c4a90-8435-11eb-3194-395347a99fd3
html"""
<h2>Problem 63: Powerful digit counts</h2>
<p>The 5-digit number, 16807=7<sup>5</sup>, is also a fifth power. Similarly, the 9-digit number, 134217728=8<sup>9</sup>, is a ninth power.</p>
<p>How many <i>n</i>-digit positive integers exist which are also an <i>n</i>th power?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-2f65-8b822361000a
begin
    submit_answer(nothing; prob_num=63)
end

# ╔═╡ 441c4a90-8435-11eb-1fa6-f104db79d760
html"""
<h2>Problem 64: Odd period square roots</h2>
<p>All square roots are periodic when written as continued fractions and can be written in the form:</p>

$\displaystyle \quad \quad \sqrt{N}=a_0+\frac 1 {a_1+\frac 1 {a_2+ \frac 1 {a3+ \dots}}}$

<p>For example, let us consider $\sqrt{23}:$</p>
$\quad \quad \sqrt{23}=4+\sqrt{23}-4=4+\frac 1 {\frac 1 {\sqrt{23}-4}}=4+\frac 1  {1+\frac{\sqrt{23}-3}7}$

<p>If we continue we would get the following expansion:</p>

$\displaystyle \quad \quad \sqrt{23}=4+\frac 1 {1+\frac 1 {3+ \frac 1 {1+\frac 1 {8+ \dots}}}}$

<p>The process can be summarised as follows:</p>
<p>
$\quad \quad a_0=4, \frac 1 {\sqrt{23}-4}=\frac {\sqrt{23}+4} 7=1+\frac {\sqrt{23}-3} 7$<br />
$\quad \quad a_1=1, \frac 7 {\sqrt{23}-3}=\frac {7(\sqrt{23}+3)} {14}=3+\frac {\sqrt{23}-3} 2$<br />
$\quad \quad a_2=3, \frac 2 {\sqrt{23}-3}=\frac {2(\sqrt{23}+3)} {14}=1+\frac {\sqrt{23}-4} 7$<br />
$\quad \quad a_3=1, \frac 7 {\sqrt{23}-4}=\frac {7(\sqrt{23}+4)} 7=8+\sqrt{23}-4$<br />
$\quad \quad a_4=8, \frac 1 {\sqrt{23}-4}=\frac {\sqrt{23}+4} 7=1+\frac {\sqrt{23}-3} 7$<br />
$\quad \quad a_5=1, \frac 7 {\sqrt{23}-3}=\frac {7 (\sqrt{23}+3)} {14}=3+\frac {\sqrt{23}-3} 2$<br />

$\quad \quad a_6=3, \frac 2 {\sqrt{23}-3}=\frac {2(\sqrt{23}+3)} {14}=1+\frac {\sqrt{23}-4} 7$<br />
$\quad \quad a_7=1, \frac 7 {\sqrt{23}-4}=\frac {7(\sqrt{23}+4)} {7}=8+\sqrt{23}-4$<br />
</p>

<p>It can be seen that the sequence is repeating. For conciseness, we use the notation $\sqrt{23}=[4;(1,3,1,8)]$, to indicate that the block (1,3,1,8) repeats indefinitely.</p>

<p>The first ten continued fraction representations of (irrational) square roots are:</p>
<p>
$\quad \quad \sqrt{2}=[1;(2)]$, period=$1$<br />
$\quad \quad \sqrt{3}=[1;(1,2)]$, period=$2$<br />
$\quad \quad \sqrt{5}=[2;(4)]$, period=$1$<br />
$\quad \quad \sqrt{6}=[2;(2,4)]$, period=$2$<br />
$\quad \quad \sqrt{7}=[2;(1,1,1,4)]$, period=$4$<br />
$\quad \quad \sqrt{8}=[2;(1,4)]$, period=$2$<br />
$\quad \quad \sqrt{10}=[3;(6)]$, period=$1$<br />
$\quad \quad \sqrt{11}=[3;(3,6)]$, period=$2$<br />
$\quad \quad \sqrt{12}=[3;(2,6)]$, period=$2$<br />
$\quad \quad \sqrt{13}=[3;(1,1,1,1,6)]$, period=$5$
</p>
<p>Exactly four continued fractions, for $N \le 13$, have an odd period.</p>
<p>How many continued fractions for $N \le 10\,000$ have an odd period?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1b52-85eb8444ae77
begin
    submit_answer(nothing; prob_num=64)
end

# ╔═╡ 441c4a90-8435-11eb-3e30-5311d257a5af
html"""
<h2>Problem 65: Convergents of e</h2>
<p>The square root of 2 can be written as an infinite continued fraction.</p>
<p>$\sqrt{2} = 1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + ...}}}}$</p>
<p>The infinite continued fraction can be written, $\sqrt{2} = [1; (2)]$, $(2)$ indicates that 2 repeats <i>ad infinitum</i>. In a similar way, $\sqrt{23} = [4; (1, 3, 1, 8)]$.</p>
<p>It turns out that the sequence of partial values of continued fractions for square roots provide the best rational approximations. Let us consider the convergents for $\sqrt{2}$.</p>
<p>$
1 + \dfrac{1}{2} = \dfrac{3}{2}\\
1 + \dfrac{1}{2 + \dfrac{1}{2}} = \dfrac{7}{5}\\
1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2}}} = \dfrac{17}{12}\\
1 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2 + \dfrac{1}{2}}}} = \dfrac{41}{29}
$</p>
<p>Hence the sequence of the first ten convergents for $\sqrt{2}$ are:</p>
<p>$1, \dfrac{3}{2}, \dfrac{7}{5}, \dfrac{17}{12}, \dfrac{41}{29}, \dfrac{99}{70}, \dfrac{239}{169}, \dfrac{577}{408}, \dfrac{1393}{985}, \dfrac{3363}{2378}, ...$</p>
<p>What is most surprising is that the important mathematical constant,<br />$e = [2; 1, 2, 1, 1, 4, 1, 1, 6, 1, ... , 1, 2k, 1, ...]$.</p>
<p>The first ten terms in the sequence of convergents for <i>e</i> are:</p>
<p>$2, 3, \dfrac{8}{3}, \dfrac{11}{4}, \dfrac{19}{7}, \dfrac{87}{32}, \dfrac{106}{39}, \dfrac{193}{71}, \dfrac{1264}{465}, \dfrac{1457}{536}, ...$</p>
<p>The sum of digits in the numerator of the 10<sup>th</sup> convergent is $1 + 4 + 5 + 7 = 17$.</p>
<p>Find the sum of digits in the numerator of the 100<sup>th</sup> convergent of the continued fraction for $e$.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-2cc0-05f7e9da5bd9
begin
    submit_answer(nothing; prob_num=65)
end

# ╔═╡ 441c4a90-8435-11eb-280d-214a2205d258
html"""
<h2>Problem 66: Diophantine equation</h2>
<p>Consider quadratic Diophantine equations of the form:</p>
<p class="margin_left"><i>x</i><sup>2</sup> – D<i>y</i><sup>2</sup> = 1</p>
<p>For example, when D=13, the minimal solution in <i>x</i> is 649<sup>2</sup> – 13×180<sup>2</sup> = 1.</p>
<p>It can be assumed that there are no solutions in positive integers when D is square.</p>
<p>By finding minimal solutions in <i>x</i> for D = {2, 3, 5, 6, 7}, we obtain the following:</p>
<p class="margin_left">3<sup>2</sup> – 2×2<sup>2</sup> = 1<br />
2<sup>2</sup> – 3×1<sup>2</sup> = 1<br /><span style="color:#ff0000;">9</span><sup>2</sup> – 5×4<sup>2</sup> = 1<br />
5<sup>2</sup> – 6×2<sup>2</sup> = 1<br />
8<sup>2</sup> – 7×3<sup>2</sup> = 1</p>
<p>Hence, by considering minimal solutions in <i>x</i> for D ≤ 7, the largest <i>x</i> is obtained when D=5.</p>
<p>Find the value of D ≤ 1000 in minimal solutions of <i>x</i> for which the largest value of <i>x</i> is obtained.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1591-65d56586db31
begin
    submit_answer(nothing; prob_num=66)
end

# ╔═╡ 441c4a90-8435-11eb-1b96-bfa0b0b4ff6e
html"""
<h2>Problem 67: Maximum path sum II</h2>
<p>By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.</p>
<p style="font-family:'courier new';text-align:center;font-size:10pt;"><span style="color:#ff0000;"><b>3</b></span><br /><span style="color:#ff0000;"><b>7</b></span> 4<br />
2 <span style="color:#ff0000;"><b>4</b></span> 6<br />
8 5 <span style="color:#ff0000;"><b>9</b></span> 3</p>
<p>That is, 3 + 7 + 4 + 9 = 23.</p>
<p>Find the maximum total from top to bottom in <a href="project/resources/p067_triangle.txt">triangle.txt</a> (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.</p>
<p class="smaller"><b>NOTE:</b> This is a much more difficult version of <a href="https://projecteuler.net/problem=18">Problem 18</a>. It is not possible to try every route to solve this problem, as there are 2<sup>99</sup> altogether! If you could check one trillion (10<sup>12</sup>) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)</p>
"""

# ╔═╡ 441c4a90-8435-11eb-01ab-bbe66a02aef1
begin
    submit_answer(nothing; prob_num=67)
end

# ╔═╡ 441c4a90-8435-11eb-00a7-e158ca52bae5
html"""
<h2>Problem 68: Magic 5-gon ring</h2>
<p>Consider the following "magic" 3-gon ring, filled with the numbers 1 to 6, and each line adding to nine.</p>
<div class="center">
<img src="project/images/p068_1.png" class="dark_img" alt="" /><br /></div>
<p>Working <b>clockwise</b>, and starting from the group of three with the numerically lowest external node (4,3,2 in this example), each solution can be described uniquely. For example, the above solution can be described by the set: 4,3,2; 6,2,1; 5,1,3.</p>
<p>It is possible to complete the ring with four different totals: 9, 10, 11, and 12. There are eight solutions in total.</p>
<div class="center">
<table width="400" cellspacing="0" cellpadding="0"><tr><td width="100"><b>Total</b></td><td width="300"><b>Solution Set</b></td>
</tr><tr><td>9</td><td>4,2,3; 5,3,1; 6,1,2</td>
</tr><tr><td>9</td><td>4,3,2; 6,2,1; 5,1,3</td>
</tr><tr><td>10</td><td>2,3,5; 4,5,1; 6,1,3</td>
</tr><tr><td>10</td><td>2,5,3; 6,3,1; 4,1,5</td>
</tr><tr><td>11</td><td>1,4,6; 3,6,2; 5,2,4</td>
</tr><tr><td>11</td><td>1,6,4; 5,4,2; 3,2,6</td>
</tr><tr><td>12</td><td>1,5,6; 2,6,4; 3,4,5</td>
</tr><tr><td>12</td><td>1,6,5; 3,5,4; 2,4,6</td>
</tr></table></div>
<p>By concatenating each group it is possible to form 9-digit strings; the maximum string for a 3-gon ring is 432621513.</p>
<p>Using the numbers 1 to 10, and depending on arrangements, it is possible to form 16- and 17-digit strings. What is the maximum <b>16-digit</b> string for a "magic" 5-gon ring?</p>
<div class="center">
<img src="project/images/p068_2.png" class="dark_img" alt="" /><br /></div>
"""

# ╔═╡ 441c4a90-8435-11eb-2768-fd26dc93dd5e
begin
    submit_answer(nothing; prob_num=68)
end

# ╔═╡ 441c4a90-8435-11eb-05b9-f5ae513be9a2
html"""
<h2>Problem 69: Totient maximum</h2>
<p>Euler's Totient function, φ(<i>n</i>) [sometimes called the phi function], is used to determine the number of numbers less than <i>n</i> which are relatively prime to <i>n</i>. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, φ(9)=6.</p>
<div class="center">
<table class="grid center"><tr><td><b><i>n</i></b></td>
<td><b>Relatively Prime</b></td>
<td><b>φ(<i>n</i>)</b></td>
<td><b><i>n</i>/φ(<i>n</i>)</b></td>
</tr><tr><td>2</td>
<td>1</td>
<td>1</td>
<td>2</td>
</tr><tr><td>3</td>
<td>1,2</td>
<td>2</td>
<td>1.5</td>
</tr><tr><td>4</td>
<td>1,3</td>
<td>2</td>
<td>2</td>
</tr><tr><td>5</td>
<td>1,2,3,4</td>
<td>4</td>
<td>1.25</td>
</tr><tr><td>6</td>
<td>1,5</td>
<td>2</td>
<td>3</td>
</tr><tr><td>7</td>
<td>1,2,3,4,5,6</td>
<td>6</td>
<td>1.1666...</td>
</tr><tr><td>8</td>
<td>1,3,5,7</td>
<td>4</td>
<td>2</td>
</tr><tr><td>9</td>
<td>1,2,4,5,7,8</td>
<td>6</td>
<td>1.5</td>
</tr><tr><td>10</td>
<td>1,3,7,9</td>
<td>4</td>
<td>2.5</td>
</tr></table></div>
<p>It can be seen that <i>n</i>=6 produces a maximum <i>n</i>/φ(<i>n</i>) for <i>n</i> ≤ 10.</p>
<p>Find the value of <i>n</i> ≤ 1,000,000 for which <i>n</i>/φ(<i>n</i>) is a maximum.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-3806-29ff7370c60e
begin
    submit_answer(nothing; prob_num=69)
end

# ╔═╡ 441c4a90-8435-11eb-3f8b-21dcd9ff94ee
html"""
<h2>Problem 70: Totient permutation</h2>
<p>Euler's Totient function, φ(<var>n</var>) [sometimes called the phi function], is used to determine the number of positive numbers less than or equal to <var>n</var> which are relatively prime to <var>n</var>. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, φ(9)=6.<br />The number 1 is considered to be relatively prime to every positive number, so φ(1)=1. </p>
<p>Interestingly, φ(87109)=79180, and it can be seen that 87109 is a permutation of 79180.</p>
<p>Find the value of <var>n</var>, 1 &lt; <var>n</var> &lt; 10<sup>7</sup>, for which φ(<var>n</var>) is a permutation of <var>n</var> and the ratio <var>n</var>/φ(<var>n</var>) produces a minimum.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1b48-1b99e3f2d1c6
begin
    submit_answer(nothing; prob_num=70)
end

# ╔═╡ 441c4a90-8435-11eb-14fe-271f7e8e5719
html"""
<h2>Problem 71: Ordered fractions</h2>
<p>Consider the fraction, <i>n/d</i>, where <i>n</i> and <i>d</i> are positive integers. If <i>n</i>&lt;<i>d</i> and HCF(<i>n,d</i>)=1, it is called a reduced proper fraction.</p>
<p>If we list the set of reduced proper fractions for <i>d</i> ≤ 8 in ascending order of size, we get:</p>
<p style="text-align:center;">1/8, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, 3/8, <b>2/5</b>, 3/7, 1/2, 4/7, 3/5, 5/8, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 7/8</p>
<p>It can be seen that 2/5 is the fraction immediately to the left of 3/7.</p>
<p>By listing the set of reduced proper fractions for <i>d</i> ≤ 1,000,000 in ascending order of size, find the numerator of the fraction immediately to the left of 3/7.</p>
"""

# ╔═╡ 441c4a90-8435-11eb-1f24-ed2a22ebde60
begin
    submit_answer(nothing; prob_num=71)
end

# ╔═╡ 441c4a90-8435-11eb-1c18-8122de898166
html"""
<h2>Problem 72: Counting fractions</h2>
<p>Consider the fraction, <i>n/d</i>, where <i>n</i> and <i>d</i> are positive integers. If <i>n</i>&lt;<i>d</i> and HCF(<i>n,d</i>)=1, it is called a reduced proper fraction.</p>
<p>If we list the set of reduced proper fractions for <i>d</i> ≤ 8 in ascending order of size, we get:</p>
<p style="text-align:center;">1/8, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, 3/8, 2/5, 3/7, 1/2, 4/7, 3/5, 5/8, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 7/8</p>
<p>It can be seen that there are 21 elements in this set.</p>
<p>How many elements would be contained in the set of reduced proper fractions for <i>d</i> ≤ 1,000,000?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-24cf-2721638d27da
begin
    submit_answer(nothing; prob_num=72)
end

# ╔═╡ 441c4a90-8435-11eb-13b0-4fd8e453c71f
html"""
<h2>Problem 73: Counting fractions in a range</h2>
<p>Consider the fraction, <i>n/d</i>, where <i>n</i> and <i>d</i> are positive integers. If <i>n</i>&lt;<i>d</i> and HCF(<i>n,d</i>)=1, it is called a reduced proper fraction.</p>
<p>If we list the set of reduced proper fractions for <i>d</i> ≤ 8 in ascending order of size, we get:</p>
<p style="text-align:center;">1/8, 1/7, 1/6, 1/5, 1/4, 2/7, 1/3, <b>3/8, 2/5, 3/7</b>, 1/2, 4/7, 3/5, 5/8, 2/3, 5/7, 3/4, 4/5, 5/6, 6/7, 7/8</p>
<p>It can be seen that there are 3 fractions between 1/3 and 1/2.</p>
<p>How many fractions lie between 1/3 and 1/2 in the sorted set of reduced proper fractions for <i>d</i> ≤ 12,000?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-0b5e-f109910b9b9c
begin
    submit_answer(nothing; prob_num=73)
end

# ╔═╡ 441c4a90-8435-11eb-2095-6f09df6c7e7e
html"""
<h2>Problem 74: Digit factorial chains</h2>
<p>The number 145 is well known for the property that the sum of the factorial of its digits is equal to 145:</p>
<p class="margin_left">1! + 4! + 5! = 1 + 24 + 120 = 145</p>
<p>Perhaps less well known is 169, in that it produces the longest chain of numbers that link back to 169; it turns out that there are only three such loops that exist:</p>
<p class="margin_left">169 → 363601 → 1454 → 169<br />
871 → 45361 → 871<br />
872 → 45362 → 872</p>
<p>It is not difficult to prove that EVERY starting number will eventually get stuck in a loop. For example,</p>
<p class="margin_left">69 → 363600 → 1454 → 169 → 363601 (→ 1454)<br />
78 → 45360 → 871 → 45361 (→ 871)<br />
540 → 145 (→ 145)</p>
<p>Starting with 69 produces a chain of five non-repeating terms, but the longest non-repeating chain with a starting number below one million is sixty terms.</p>
<p>How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-334b-7f86e9ff583c
begin
    submit_answer(nothing; prob_num=74)
end

# ╔═╡ 441c4a90-8435-11eb-3487-810a873a2315
html"""
<h2>Problem 75: Singular integer right triangles</h2>
<p>It turns out that 12 cm is the smallest length of wire that can be bent to form an integer sided right angle triangle in exactly one way, but there are many more examples.</p>
<p class="margin_left"><b>12 cm</b>: (3,4,5)<br /><b>24 cm</b>: (6,8,10)<br /><b>30 cm</b>: (5,12,13)<br /><b>36 cm</b>: (9,12,15)<br /><b>40 cm</b>: (8,15,17)<br /><b>48 cm</b>: (12,16,20)</p>
<p>In contrast, some lengths of wire, like 20 cm, cannot be bent to form an integer sided right angle triangle, and other lengths allow more than one solution to be found; for example, using 120 cm it is possible to form exactly three different integer sided right angle triangles.</p>
<p class="margin_left"><b>120 cm</b>: (30,40,50), (20,48,52), (24,45,51)</p>
<p>Given that L is the length of the wire, for how many values of L ≤ 1,500,000 can exactly one integer sided right angle triangle be formed?</p>
"""

# ╔═╡ 441c4a90-8435-11eb-0e34-9fffbbf2938b
begin
    submit_answer(nothing; prob_num=75)
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