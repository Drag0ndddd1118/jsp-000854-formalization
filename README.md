# Formalization of JSP-000854 (Erdős Problem #1027)

This repository contains the standalone Lean 4 formalization and DefEq bridge verification for **JSP-000854** (Erdős Problem #1027).

## Problem Statement

> How many vertex subsets meet every hyperedge while containing none of them in full?

**Mathematical Resolution:**
Informal resolution by Koishi Chan (adaptive partial-colouring argument, completed with the non-uniform Property-B theorem of József Beck via the corrected finite random-greedy framework of Duraj, Gutowski, and Kozik).

## Verification

To verify the formalization locally:

```bash
lake exe cache get
lake build
python3 check.py
```

### Axioms

The proof depends strictly on standard foundational Lean axioms:
- `propext`
- `Classical.choice`
- `Quot.sound`

Zero custom axioms, zero `sorry`, zero `admit`.
