import csv

input_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings.csv'
output_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings_fixed.csv'

with open(input_file, 'r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    fieldnames = reader.fieldnames
    rows = list(reader)

# 1. Add an r2_qa row
new_qa = {
    'round': 'r2_qa',
    'slice': 'B3-mid',
    'frame': 'adasind_230910.jpg',
    'object_ref': '3',
    'cell': 'L_only',
    'what': 'MISSING',
    'why': '',
    'severity': '',
    'owner': '',
    'rule_id': 'R05',
    'evidence': '',
    'action': '',
    'rules_version': '',
    'note': 'Lỗi thiếu attribute occluded'
}
rows.insert(3, new_qa) # insert after existing r2_qa rows

# 2. Change one action in r3_diag to 'escalate'
escalated = False
for row in rows:
    if row['round'] == 'r3_diag' and not escalated:
        row['action'] = 'escalate'
        row['why'] = 'E2_guideline_gap'
        row['owner'] = 'guideline'
        escalated = True

with open(output_file, 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(rows)
