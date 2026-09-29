# Kế hoạch review từ lỗi quan sát được

Từ `findings.csv` và `zone_table.md`, chọn **hai lát cắt của bài ADASIND một camera** cần review trước. Bảng này
giải thích dữ liệu thật bạn vừa làm; nó không thay cho kế hoạch bốn camera giả lập ở `45_sampling_plan.csv`.

- **Lát cắt 1 (Vùng rìa - Edge):** Cần review kỹ vì đây là nơi xảy ra ảo giác của mô hình (`E4_model_domain`) nhiều nhất.
- **Lát cắt 2 (Các phương tiện lớn bị che lấp):** Cần tập trung xem lại các nhãn `Bus` và `Truck` do dễ bị gán sai class (WRONG_CLASS) khi chỉ nhìn thấy một phần đuôi xe.
