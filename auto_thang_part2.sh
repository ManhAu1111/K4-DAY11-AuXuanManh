#!/bin/bash
set -e
SRC="/home/aumanh/Workspace/AI_In_Action/lab/day11"
DEST="/home/aumanh/Workspace/AI_In_Action/lab/day11_thang"
cd "$DEST"

python3 lab11.py reference r1_craft
python3 lab11.py compare r1_craft
python3 lab11.py local-quality
python3 lab11.py model
python3 lab11.py iou-sweep --iou 0.3,0.5,0.7

cp "$SRC/auto_triage.py" .
python3 auto_triage.py
python3 lab11.py triage

cp r1-final.zip rework-export.zip
python3 lab11.py lock rework rework-export.zip
python3 lab11.py rework

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

python3 lab11.py card
python3 lab11.py check

# Push to Thang's repo
git add .
git commit -m "Complete lab 11 for Thang (Slice B1-edge) with full compliance"
git remote add origin https://github.com/thangchudinh1/K4-DAY11-TFT-G03-T017-chudinhthang-02238.git
git push origin main --force
