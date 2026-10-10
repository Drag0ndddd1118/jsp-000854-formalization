import Erdos1027

namespace JSP000854

/--
Formal statement of JSP-000854 (Erdős Problem #1027):
How many vertex subsets meet every hyperedge while containing none of them in full?

Mathematical resolution:
Koishi Chan resolved this question using an adaptive partial-colouring argument,
combined with the non-uniform Property-B theorem of Beck via the finite
random-greedy framework of Duraj, Gutowski, and Kozik.
-/
def jsp000854Statement : Prop :=
  ∀ c : ℝ, 0 < c →
    ∃ δ : ℝ, 0 < δ ∧ ∃ N : ℕ,
      ∀ (n : ℕ), N ≤ n →
      ∀ (α : Type) [DecidableEq α] (𝓕 : Erdos1027.Hypergraph α),
        Erdos1027.IsUniform 𝓕 n →
          (𝓕.card : ℝ) ≤ c * (2 : ℝ) ^ n →
            δ * (2 : ℝ) ^ (Erdos1027.groundSet 𝓕).card ≤ (Erdos1027.goodSets 𝓕).card

end JSP000854
