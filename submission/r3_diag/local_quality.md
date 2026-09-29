# Đối chiếu chất lượng cục bộ — rectangle

Teaching reference, không phải gold set đã phê duyệt; không có điểm đạt tự động.
Nguồn: export r1_craft đã khóa SHA256 `21335f9d4f4da9bec03ed362116f4fb6e74014674ddd3d43a4f73636513a65ca`; slice `B3-mid`.
Ghép hình học greedy một-một theo IoU ≥ 0.50, rồi so class; H ≥ 40 px.
Box trái nằm chủ yếu trong ignore_region reference không tính. Polygon, polyline, track không được chấm.
Đây là phép tính offline của lab, không phải báo cáo hay kết quả tương đương CVAT Premium.

Frame được tính: adasind_128310.jpg, adasind_140160.jpg, adasind_230910.jpg. Frame thiếu trong export: không.
TP=11; FP=4; FN=9; số lần đối chiếu=20; mean IoU của TP=0.874.

| Chỉ số | Micro | Macro | Nhãn thấp nhất |
|---|---:|---:|---:|
| accuracy | 0.550 | 0.892 | 0.800 |
| precision | 0.733 | 0.542 | 0.000 |
| recall | 0.550 | 0.396 | 0.000 |
| jaccard | 0.458 | 0.343 | 0.000 |
| dice | 0.629 | 0.448 | 0.000 |

| Nhãn | TP | FP | FN | Accuracy | Precision | Recall | Jaccard | Dice |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Bike | 1 | 0 | 1 | 0.950 | 1.000 | 0.500 | 0.500 | 0.667 |
| Bus | 0 | 1 | 0 | 0.950 | 0.000 | 0.000 | 0.000 | 0.000 |
| Car | 2 | 2 | 2 | 0.800 | 0.500 | 0.500 | 0.333 | 0.500 |
| Pedestrian | 5 | 0 | 3 | 0.850 | 1.000 | 0.625 | 0.625 | 0.769 |
| ThreeWheeler | 0 | 0 | 2 | 0.900 | 0.000 | 0.000 | 0.000 | 0.000 |
| Truck | 3 | 1 | 1 | 0.900 | 0.750 | 0.750 | 0.600 | 0.750 |

| Frame | TP | FP | FN | Accuracy | Precision | Recall |
|---|---:|---:|---:|---:|---:|---:|
| adasind_128310.jpg | 3 | 1 | 2 | 0.600 | 0.750 | 0.600 |
| adasind_140160.jpg | 2 | 1 | 1 | 0.667 | 0.667 | 0.667 |
| adasind_230910.jpg | 6 | 2 | 6 | 0.500 | 0.750 | 0.500 |

Confusion matrix: hàng = teaching reference; cột = export đã khóa.
`<missing>` là thiếu box; `<extra>` là box thừa. Xem `local_quality_confusion.csv`.

| Reference \ Export | Bike | Bus | Car | Pedestrian | ThreeWheeler | Truck | <missing> |
|---|---:|---:|---:|---:|---:|---:|---:|
| Bike | 1 | 0 | 0 | 0 | 0 | 0 | 1 |
| Bus | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| Car | 0 | 0 | 2 | 0 | 0 | 1 | 1 |
| Pedestrian | 0 | 0 | 0 | 5 | 0 | 0 | 3 |
| ThreeWheeler | 0 | 0 | 2 | 0 | 0 | 0 | 0 |
| Truck | 0 | 1 | 0 | 0 | 0 | 3 | 0 |
| <extra> | 0 | 0 | 0 | 0 | 0 | 0 | 0 |

Chi tiết xung đột trong `local_quality_conflicts.csv`; dữ liệu máy đọc trong `local_quality.json`.
Mismatching label đóng góp một FP cho class vẽ và một FN cho class reference; attribute khác được báo riêng.
Micro accuracy đếm mỗi cặp ghép sai class là một lần đối chiếu; Jaccard đếm cả FP và FN.
Macro/worst bỏ nhãn không xuất hiện ở cả hai phía; chỉ số không có mẫu là N/A.
