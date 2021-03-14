### A Pluto.jl notebook ###
# v0.12.11

using Markdown
using InteractiveUtils

# ╔═╡ 1b09e0e0-84a3-11eb-0f80-cdb82654fdf4
include((@__DIR__)*"/shared.jl");

# ╔═╡ 1b09e0e0-84a3-11eb-2b88-a915e319f2d1
html"""
<h2>Problem 751: Concatenation Coincidence</h2>
<p>A non-decreasing sequence of integers $a_n$ can be generated from any positive real value $\theta$ by the following procedure:
\begin{align}
\begin{split}
b_1 &amp;= \theta \\
b_n &amp;= \left\lfloor b_{n-1} \right\rfloor \left(b_{n-1} - \left\lfloor b_{n-1} \right\rfloor + 1\right)~~~\forall ~ n \geq 2 \\
a_n &amp;= \left\lfloor b_{n} \right\rfloor
\end{split}
\end{align}
Where $\left\lfloor . \right\rfloor$ is the floor function.</p>

<p>For example, $\theta=2.956938891377988...$ generates the Fibonacci sequence: $2, 3, 5, 8, 13, 21, 34, 55, 89, ...$</p>

<p>The <i>concatenation</i> of a sequence of positive integers $a_n$ is a real value denoted $\tau$ constructed by concatenating the elements of the sequence after the decimal point, starting at $a_1$: $a_1.a_2a_3a_4...$</p>

<p>For example, the Fibonacci sequence constructed from $\theta=2.956938891377988...$ yields the concatenation $\tau=2.3581321345589...$ Clearly, $\tau \neq \theta$ for this value of $\theta$.</p>

<p>Find the only value of $\theta$ for which the generated sequence starts at $a_1=2$ and the concatenation of the generated sequence equals the original value: $\tau = \theta$. Give your answer rounded to 24 places after the decimal point.</p>
"""

# ╔═╡ 1b09e0e0-84a3-11eb-01a5-4d1ad1cee583
begin
    submit_answer(nothing; prob_num=751)
end

# ╔═╡ Cell order:
# ╠═1b09e0e0-84a3-11eb-0f80-cdb82654fdf4
# ╟─1b09e0e0-84a3-11eb-2b88-a915e319f2d1
# ╠═1b09e0e0-84a3-11eb-01a5-4d1ad1cee583