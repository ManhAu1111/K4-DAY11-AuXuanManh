# Exit ticket

Đọc `docs/10-svm360-reading-vi.md` trước khi trả lời câu 1–2. Các câu về zone, `why`, rework, parking và sampling
đã nằm trong file tương ứng nên không hỏi lại ở đây.

1. **Ba khác biệt lớn nhất giữa nhãn 360/SVM và nhãn pinhole phẳng:** (1) Hình dạng vật thể bị bóp méo nghiêm trọng ở vùng rìa, (2) Sự xuất hiện của vành đen lens border và ego body chiếm diện tích, (3) Ranh giới cắt nét (seam) giữa các camera làm vật thể bị chia đôi.
2. **Nếu thay đổi camera mounting (ví dụ lắp camera thấp hơn):** Hình dạng méo mó của vật thể sẽ thay đổi (góc nhìn), vành đen lens_border và phần thân xe ego_body nhìn thấy sẽ khác biệt hoàn toàn, cần phải cập nhật lại ignore_region và calibration.
3. **Phân bổ thời gian thực tế của nhóm (tổng khoảng 240p):** 
   - Hướng dẫn/setup: 30p
   - Phase 0-2 (Vẽ): 90p
   - Phase 3 (QA): 45p
   - Phase 4-5 (Diagnosis & Rework): 45p
   - Phase 6 (Form): 30p
4. **Đóng góp của từng thành viên (A, B, C):** Nhóm đã hoàn thành xuất sắc vai trò xoay vòng. Role A vẽ nhiệt tình, Role B bắt lỗi gắt gao, Role C chẩn đoán công tâm.
