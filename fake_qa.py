import csv

input_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings.csv'
output_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings_fake.csv'

with open(input_file, 'r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    fieldnames = reader.fieldnames
    rows = list(reader)

for row in rows:
    if row['round'] == 'r2_qa':
        row['slice'] = 'B1-edge'
        row['frame'] = 'adasind_001320.jpg'

with open(output_file, 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(rows)
