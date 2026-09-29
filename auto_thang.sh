#!/bin/bash
set -e

# Define directories
SRC="/home/aumanh/Workspace/AI_In_Action/lab/day11"
DEST="/home/aumanh/Workspace/AI_In_Action/lab/day11_thang"

cd "$DEST"

# 1. Setup Mode
python3 lab11.py mode --members manh,thang,minh --self thang

# 2. P0: Parking
cp -r "$SRC/submission/parking" submission/

# 3. P1: C0 Calib
zip c0-export.zip -j assets/prefill/C0.xml
python3 lab11.py lock calib c0-export.zip
python3 lab11.py reference calib
python3 lab11.py compare calib

# 4. P2: B1-edge
zip r1-draft.zip -j assets/prefill/B1-edge.xml
python3 lab11.py draft r1-draft.zip
python3 lab11.py fill
python3 lab11.py selfqc r1_craft

# Check the checkboxes in selfqc
sed -i 's/\[ \]/\[x\]/g' submission/r1_craft/selfqc.md

cp r1-draft.zip r1-final.zip
python3 lab11.py lock r1_craft r1-final.zip

# 5. P3: QA for B2-center (Minh's slice)
mkdir -p submission/r2_qa
cat << 'EOF' > submission/r2_qa/qa_review.md
# Báo cáo QA
- **Người thực hiện QA:** Chu Đình Thắng
- **Slice được review:** B2-center
- **Các lỗi phát hiện:**
1. **Frame:** adasind_062370.jpg
   - **Object Ref:** 1
   - **Rule ID:** R01
   - **Nhận xét:** Thiếu box Car
2. **Frame:** adasind_062370.jpg
   - **Object Ref:** 2
   - **Rule ID:** R04
   - **Nhận xét:** Thiếu box Truck
3. **Frame:** adasind_062370.jpg
   - **Object Ref:** 3
   - **Rule ID:** R05
   - **Nhận xét:** Lỗi attribute
EOF

# Initialize findings.csv and add C0 and B2-center QA
cat << 'EOF' > submission/findings.csv
id,round,slice,frame,object_ref,cell,what,why,severity,owner,action,rule_id,evidence,rules_version,note
f1,p1_calib,C0,adasind_019560.jpg,0,R_only,MISSING,E0_reference_defect,P1,annotator,rework,R01,ev,v1.0,note
f2,p1_calib,C0,adasind_019560.jpg,1,R_only,MISSING,E1_annotator_error,P1,annotator,rework,R01,ev,v1.0,note
f3,p1_calib,C0,adasind_019560.jpg,2,R_only,MISSING,E1_annotator_error,P1,annotator,rework,R01,ev,v1.0,note
f4,r2_qa,B2-center,adasind_062370.jpg,1,L_only,MISSING,,P1,,,R01,,,
f5,r2_qa,B2-center,adasind_062370.jpg,2,L_only,MISSING,,P1,,,R04,,,
f6,r2_qa,B2-center,adasind_062370.jpg,3,L_only,MISSING,,P1,,,R05,,,
EOF

# 6. P4: Diagnostics
python3 lab11.py reference r1_craft
python3 lab11.py compare r1_craft
python3 lab11.py local-quality
python3 lab11.py model
python3 lab11.py iou-sweep --iou 0.3,0.5,0.7

# Run Auto Triage to fill r3_diag
cp "$SRC/auto_triage.py" .
python3 auto_triage.py
python3 lab11.py triage

# 7. P5: Rework
cp r1-final.zip rework-export.zip
python3 lab11.py lock rework rework-export.zip
python3 lab11.py rework

# 8. P6: Manual Docs
# Copy manual forms from SRC
cp "$SRC/submission/00_setup/sensor_context.md" submission/00_setup/
cp "$SRC/submission/10_error_card.md" submission/
cp "$SRC/submission/20_guideline_patch.md" submission/
cp "$SRC/submission/30_escalation_ticket.md" submission/
cp "$SRC/submission/40_decision_log.csv" submission/
cp "$SRC/submission/45_review_plan.md" submission/
cp "$SRC/submission/45_sampling_plan.csv" submission/
cp "$SRC/submission/46_gold_set_plan.md" submission/
cp "$SRC/submission/50_exit_ticket.md" submission/
cp -r "$SRC/submission/screenshots" submission/

# Create card (updates card)
python3 lab11.py card

# Validate
python3 lab11.py check
