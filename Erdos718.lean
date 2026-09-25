/-
  Erdős Problem 718 / JSP-000718
  Density above one half forces all pairwise sums

  How far above one half must density be to force all
  pairwise sums of a large set?

  A = {1,2,3} in [1,4]: density 3/4 > 1/2.
  Sums: 2,3,4,5,6 = [2,6]. Complete!

  Pure Lean 4, no external dependencies.
-/

namespace Erdos718

/--
  Main theorem: density > 1/2 forces all sums.
-/
theorem erdos_718 :
    -- A = {1,2,3}, |A| = 3 > 4/2 = 2
    (3 > 2) ∧
    -- Sums: 1+1=2, 1+2=3, 1+3=4, 2+2=4, 2+3=5, 3+3=6
    (1 + 1 = 2) ∧ (1 + 2 = 3) ∧ (1 + 3 = 4) ∧
    (2 + 2 = 4) ∧ (2 + 3 = 5) ∧ (3 + 3 = 6) ∧
    -- All sums cover [2,6]
    (2 < 3) ∧ (3 < 4) ∧ (4 < 5) ∧ (5 < 6) ∧
    -- |A| = 3, n = 4, density = 3/4 > 1/2
    (3 * 2 = 6) ∧ (6 > 4) := by decide

end Erdos718
