# Escalation ticket

## Ticket 1

- **Frame:** adasind_128310.jpg
- **Mô tả tình huống:** Có một chiếc xe bị khuất quá nửa đằng sau biển báo và một phương tiện khác, phần lộ ra lại ở rìa bị cong vênh nặng.
- **Tại sao rule hiện tại và zone không đủ phân xử:** Không chắc chắn liệu nên gán nhãn là `Car` hay `Truck` do phần đầu xe bị che lấp, và có thuộc diện `unreadable` để dùng `ignore_region` hay không.
- **Đề xuất của bạn (A/B/C) để mở khóa:** Cho vào vùng `unreadable` để mô hình không phải học đặc trưng sai lệch do đoán mò.
