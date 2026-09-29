# Đề xuất gold set theo camera — tình huống giả lập

**Đầu bài:** 50.000 frame từ bốn camera SVM, ngân sách chọn 200 frame để review/gold. Đây là tình huống trên slide,
**không phải** 50.000 frame có trong repo. Phân bổ đúng 200 ở `45_sampling_plan.csv` cho bốn camera, mỗi camera có
normal và hard slice. “Gold set” ở đây là **kế hoạch tạo** reference sau kiểm chứng, không phải teaching reference
dùng để học gán nhãn ở Lab Day11.

- **Tiêu chí chọn pool 200 frame:** Dựa vào bảng `45_sampling_plan.csv`, chúng tôi phân bổ đều 25 frame cho mỗi lát cắt (normal/hard) của 4 camera.
- **Tiêu chí ưu tiên làm gold:** Tập trung vào các ca khó (hard) như xe cắt ngang, lóa sáng, và vùng méo mó rìa để kiểm thử sức chịu đựng của mô hình.
