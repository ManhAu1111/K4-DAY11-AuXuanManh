# Guideline patch

- **Rule mới đề xuất:** R12 - Bổ sung cách khoanh vùng (bounding box) cho các phương tiện bị bóp méo hình dạng nghiêm trọng ở vùng rìa.
- **Áp dụng cho:** Nhóm class phương tiện (Car, Bus, Truck) tại vùng `edge`.
- **Vì sao luật hiện tại (`docs/02-rules-vi.md`) không đủ:** Yêu cầu vẽ bao trọn vật thể nhìn thấy khiến box quá rộng ở vùng rìa do bị bóp méo, gây nhiễu cho mô hình học đặc trưng.
