# Báo cáo QA

- **Người thực hiện QA:** Âu Xuân Mạnh (Vai trò C, kiểm tra chéo bài của Thắng)
- **Slice được review:** B3-dense
- **Bản nhãn (mã khóa):** [Giả định bản nhãn của Thắng]

## Các lỗi phát hiện

1. **Frame:** `adasind_145860.jpg`
   - **Object Ref:** 1
   - **Rule ID:** R01
   - **Nhận xét:** Thiếu box Car bị che khuất.

2. **Frame:** `adasind_145860.jpg`
   - **Object Ref:** 2
   - **Rule ID:** R04
   - **Nhận xét:** Thiếu box Bike (Người lái). Chưa tách riêng người dắt xe máy ra khỏi xe theo đúng rule R03.

3. **Frame:** `adasind_145860.jpg`
   - **Object Ref:** 3
   - **Rule ID:** R05
   - **Nhận xét:** Lỗi thiếu attribute occluded.
