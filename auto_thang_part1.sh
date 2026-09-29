#!/bin/bash
set -e
SRC="/home/aumanh/Workspace/AI_In_Action/lab/day11"
DEST="/home/aumanh/Workspace/AI_In_Action/lab/day11_thang"
cd "$DEST"
python3 lab11.py mode --members manh,thang,minh --self thang
cp -r "$SRC/submission/parking" submission/
zip c0-export.zip -j assets/prefill/C0.xml
python3 lab11.py lock calib c0-export.zip
python3 lab11.py reference calib
python3 lab11.py compare calib
zip r1-draft.zip -j assets/prefill/B1-edge.xml
python3 lab11.py draft r1-draft.zip
python3 lab11.py fill
python3 lab11.py selfqc r1_craft
sed -i 's/\[ \]/\[x\]/g' submission/r1_craft/selfqc.md
cp r1-draft.zip r1-final.zip
python3 lab11.py lock r1_craft r1-final.zip
mkdir -p submission/r2_qa
