# Quan sát vạch ô đỗ

- Hai vạch `parking_line` đã vẽ (mô tả vị trí trong ảnh): Các vạch sơn màu trắng chia ô đỗ xe ở khu vực tiền cảnh (gần camera).
- Một vạch/dấu sơn hoặc biên **không** vẽ, và vì sao: Không vẽ vạch mũi tên chỉ hướng hoặc lề đường chính, vì chúng hướng dẫn luồng giao thông chứ không chia ô.
- Polygon `free_space` dừng ở đâu; có phần bị che nào không: Dừng lại ngay trước mũi xe đỗ, không đi xuyên qua bóng râm hoặc vỉa hè (curb).
- Ca chưa chắc cần hỏi người soát (nếu không có, ghi “không có”): Không có.
