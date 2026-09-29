# So sánh L với R

Chỉ số L/R là thứ tự box cao ≥ H=40 trong từng frame, theo thứ tự XML; bắt đầu từ 1.
Box L trong ignore_region được báo IGNORE_SCOPE, không tính SPURIOUS.

## adasind_128310.jpg
- L3+R3 mid WRONG_CLASS
- R4 center MISSING
## adasind_140160.jpg
- L2+R3 center WRONG_CLASS
## adasind_230910.jpg
- L1+R5 mid WRONG_CLASS
- L2+R7 mid WRONG_CLASS
- R1 mid MISSING
- R8 mid MISSING
- R10 center MISSING
- R11 center MISSING

## Theo zone
| zone | n_ref | matched | missing | spurious |
|---|---|---|---|---|
| center | 8 | 4 | 4 | 1 |
| mid | 9 | 4 | 5 | 3 |
| edge | 3 | 3 | 0 | 0 |
