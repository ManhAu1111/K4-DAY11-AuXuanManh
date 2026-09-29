# Zone table (slice của bạn)

Lệnh `python3 lab11.py model` tự ghi bảng số (cùng cách đếm với `r1_craft/compare.md` và `model_compare.md`); chạy lại lệnh sẽ cập nhật bảng và giữ nguyên phần nhận xét. Bạn chỉ viết mục Nhận xét.

| Zone | n_ref | L missing | L spurious | M missing (`LR_noM` + `R_only`) | M thừa (`LM_noR` + `M_only`) | Lỗi L chính (`what`) |
|---|---:|---:|---:|---:|---:|---|
| center | 8 | 4 | 1 | 3 | 3 | MISSING (3) |
| mid | 9 | 5 | 3 | 4 | 3 | WRONG_CLASS (3) |
| edge | 3 | 0 | 0 | 0 | 1 | — |

## Nhận xét

- Zone nào người (L) và model (M) gãy nhiều nhất, dẫn số ở bảng trên: Zone `mid` gãy nhiều nhất với 5 L missing và 3 M thừa.
- Giả thuyết vì sao (méo fisheye, box lỏng, thiếu `ego_body`, ...) và giới hạn của slice ba frame: Do vùng `mid` là nơi bắt đầu có sự bóp méo fisheye khiến box trở nên lỏng lẻo, và số lượng mẫu 3 frame là quá ít để đưa ra kết luận chắc chắn.
