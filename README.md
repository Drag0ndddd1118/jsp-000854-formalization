# Formalization of JSP-000854 (Erdős Problem #1027)

## Problem Overview

**Catalog ID:** [JSP-000854](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000854)  
**Erdős Problem:** [#1027](https://www.erdosproblems.com/1027)  
**Mathematical Area:** Combinatorics / Hypergraphs / Property B  

### Problem Statement
Let $\mathcal{F}$ be an $n$-uniform hypergraph with at most $c \cdot 2^n$ edges. Do there exist at least $\delta \cdot 2^{|V(\mathcal{F})|}$ subsets of the vertex set (for some $\delta = \delta(c) > 0$ independent of $n$ for sufficiently large $n$) that meet every edge in $\mathcal{F}$ while containing no edge of $\mathcal{F}$ in full?

### Resolution
This problem was solved affirmatively by Koishi Chan using an adaptive partial-colouring argument, combined with the non-uniform Property-B theorem of Beck via the corrected finite random-greedy proof of Duraj–Gutowski–Kozik.

## Formalization Details

- **Entry Point:** `JSP_000854.lean`
- **Main Modules:** `Erdos1027.lean`, `ErdosProblems/Erdos1027/`
- **Main Theorem:**
  ```lean
  theorem jsp_000854_solved : (∀ c : ℝ, 0 < c →
    ∃ δ : ℝ, 0 < δ ∧ ∃ N : ℕ,
      ∀ (n : ℕ), N ≤ n →
      ∀ (α : Type) [DecidableEq α] (𝓕 : Erdos1027.Hypergraph α),
        Erdos1027.IsUniform 𝓕 n →
          (𝓕.card : ℝ) ≤ c * (2 : ℝ) ^ n →
            δ * (2 : ℝ) ^ (Erdos1027.groundSet 𝓕).card ≤ (Erdos1027.goodSets 𝓕).card) :=
    Erdos1027.erdos_1027
  ```
- **Axioms Check:**
  `#print axioms jsp_000854_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Koishi Chan ([Erdős Problems discussion](https://www.erdosproblems.com/forum/thread/1027)).
- **Formal Authors:** Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos1027.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
