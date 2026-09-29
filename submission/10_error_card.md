# Error analysis card

## Zone × block

| zone | block | what | count |
|---|---|---|---:|
| center | B3 | MISSING | 7 |
| center | B3 | SPURIOUS | 3 |
| center | B3 | WRONG_CLASS | 1 |
| center | C0 | MISSING | 1 |
| center | C0 | SPURIOUS | 1 |
| edge | B3 | SPURIOUS | 1 |
| edge | C0 | WRONG_CLASS | 1 |
| mid | B3 | MISSING | 8 |
| mid | B3 | SPURIOUS | 5 |
| mid | B3 | WRONG_CLASS | 3 |
| mid | C0 | MISSING | 2 |
| unknown | B3 | MISSING | 3 |

## Top defects
- MISSING: 21 (ví dụ frame adasind_128310.jpg)
- SPURIOUS: 10 (ví dụ frame adasind_128310.jpg)
- WRONG_CLASS: 5 (ví dụ frame adasind_128310.jpg)

## Phân tích của bạn

Hai bảng trên do `python3 lab11.py card` tính từ `findings.csv`; chạy lại lệnh sẽ cập nhật bảng và giữ nguyên mục này. Viết cho lỗi nổi bật nhất, dẫn frame/`object_ref`.

- Nguyên nhân khả dĩ (`why`) và vì sao bạn nghĩ vậy: Do hiệu ứng fisheye bóp méo hình ảnh ở vùng rìa (`E4_model_domain`).
- Cách sửa và ai nhận việc (`owner`): Annotator cần cập nhật vùng ignore_region để che bớt những phần hình quá méo (`RoleA`).
- Bằng chứng (ảnh trong `screenshots/`, dòng findings, rule): Xem ảnh `scr1.jpg` trong thư mục screenshots và lỗi MISSING trong bảng trên.
