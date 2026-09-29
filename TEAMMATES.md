# TEAMMATES.md — Thông tin nhóm & phân vai Day11 SVM 360 Fisheye

## Tên nhóm: TFT
**Repo nhóm:** [K4-DAY11-TFT](https://github.com/ManhAu1111/K4-DAY11-TFT)  
**Repo cá nhân (Âu Xuân Mạnh):** [K4-DAY11-AuXuanManh](https://github.com/ManhAu1111/K4-DAY11-AuXuanManh)

---

## 1. Danh sách thành viên & Phân công vai trò

| STT | Họ và Tên | Mã Sinh Viên (MSSV) | Vai trò chính | Trách nhiệm chính |
| :---: | :--- | :---: | :---: | :--- |
| 1 | **Âu Xuân Mạnh** | **2202602121** | **C · Chẩn đoán & Điều phối** | Quản lý repo, cấu hình slice, chạy báo cáo chẩn đoán (`r3_diag`), chủ trì phân xử bất đồng, lập hồ sơ & nộp bài. |
| 2 | **Chu Đình Thắng** | **2A202602238** | **A · Gán nhãn** | Trực tiếp thao tác CVAT, gán nhãn parking, C0, slice chính, self-QC, export XML v1 & v2 (rework). |
| 3 | **Vũ Tuấn Minh** | **2A202602240** | **B · QA độc lập** | Review độc lập bản nhãn v1 của A trên CVAT, lập báo cáo `r2_qa/qa_review.md`, ghi nhận xét & lưu ảnh bằng chứng. |

---

## 2. Nhật ký Bàn giao & Commit

| Pha | Người thực hiện | File / Commit | Nội dung bàn giao / Ghi chú |
| :--- | :--- | :--- | :--- |
| **P0** | Chu Đình Thắng (A) | `submission/parking/` | Export XML nhãn parking & ghi chú ô đỗ. |
| **P1** | Chu Đình Thắng (A) / Cả nhóm | `submission/p1_calib/` | Khóa nhãn C0, thảo luận 6 ca clinic & hiệu chuẩn luật. |
| **P2** | Chu Đình Thắng (A) | `submission/r1_craft/` | Gán nhãn slice chính, self-QC, export XML v1 & mã khóa. |
| **P3** | Vũ Tuấn Minh (B) | `submission/r2_qa/` | QA độc lập bản v1, tạo `qa_review.md` & dòng finding QA. |
| **P4** | Âu Xuân Mạnh (C) | `submission/r3_diag/` | Chạy báo cáo chẩn đoán, đối chiếu Human vs Ref vs Model, phân xử bất đồng. |
| **P5** | Chu Đình Thắng (A) / Âu Xuân Mạnh (C) | `submission/rework/` | Sửa ca lỗi trên CVAT, export v2 & đọc chỉ số Delta cải thiện. |
| **P6** | Âu Xuân Mạnh (C) | `submission/` | Kiểm tra checklist `python3 lab11.py check`, hoàn thiện hồ sơ & nộp repo. |
