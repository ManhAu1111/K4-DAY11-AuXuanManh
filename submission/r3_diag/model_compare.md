# L / R / M

L/R/M là thứ tự box in-scope theo XML của từng frame.

## adasind_128310.jpg
- L1+R5: LR_noM (mid)
- L2+R1+M2: LRM (center)
- L4+R2+M1: LRM (edge)
- L3: L_only (mid)
- R3+M3: RM_noL (mid)
- R4+M6: RM_noL (center)
- M4: M_only (center)
## adasind_140160.jpg
- L3+R2+M4: LRM (mid)
- L1+R1+M2: LRM (edge)
- L2+M3: LM_noR (center)
- R3: R_only (center)
- M1: M_only (edge)
- M5: M_only (center)
- M6: M_only (mid)
## adasind_230910.jpg
- L8+R6+M6: LRM (edge)
- L4+R9+M5: LRM (center)
- L3+R4+M7: LRM (center)
- L6+R2+M4: LRM (mid)
- L5+R3+M3: LRM (center)
- L7+R12+M10: LRM (mid)
- L1: L_only (mid)
- L2+M9: LM_noR (mid)
- R1+M1: RM_noL (mid)
- R5: R_only (mid)
- R7: R_only (mid)
- R8: R_only (mid)
- R10: R_only (center)
- R11: R_only (center)
- M8: M_only (mid)

## Zone × cell
| zone | LRM | LR_noM | LM_noR | L_only | RM_noL | R_only | M_only |
|---|---|---|---|---|---|---|---|
| center | 4 | 0 | 1 | 0 | 1 | 3 | 2 |
| mid | 3 | 1 | 1 | 2 | 2 | 3 | 2 |
| edge | 3 | 0 | 0 | 0 | 0 | 0 | 1 |
