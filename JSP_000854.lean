import Erdos1027

theorem jsp_000854_solved : (∀ c : ℝ, 0 < c →
  ∃ δ : ℝ, 0 < δ ∧ ∃ N : ℕ,
    ∀ (n : ℕ), N ≤ n →
    ∀ (α : Type) [DecidableEq α] (𝓕 : Erdos1027.Hypergraph α),
      Erdos1027.IsUniform 𝓕 n →
        (𝓕.card : ℝ) ≤ c * (2 : ℝ) ^ n →
          δ * (2 : ℝ) ^ (Erdos1027.groundSet 𝓕).card ≤ (Erdos1027.goodSets 𝓕).card) :=
  Erdos1027.erdos_1027

#print axioms jsp_000854_solved
-- 'jsp_000854_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
