import csv

input_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings.csv'
output_file = '/home/aumanh/Workspace/AI_In_Action/lab/day11/submission/findings_fixed.csv'

with open(input_file, 'r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    fieldnames = reader.fieldnames
    rows = list(reader)

for row in rows:
    if row['round'] == 'r3_diag':
        cell = row['cell']
        
        if cell == 'M_only':
            why = 'E4_model_domain'
            owner = 'ai_team'
            action = 'keep_with_reason'
        elif cell == 'R_only':
            why = 'E1_annotator_error'
            owner = 'annotator'
            action = 'rework'
        elif cell == 'RM_noL':
            why = 'E1_annotator_error'
            owner = 'annotator'
            action = 'rework'
        elif cell == 'LM_noR':
            why = 'E0_reference_defect'
            owner = 'guideline'
            action = 'keep_with_reason'
        elif cell == 'L_only':
            why = 'E1_annotator_error'
            owner = 'annotator'
            action = 'rework'
        elif cell == 'LR_noM':
            why = 'E4_model_domain'
            owner = 'ai_team'
            action = 'keep_with_reason'
        else:
            why = 'E1_annotator_error'
            owner = 'annotator'
            action = 'rework'
            
        row['why'] = why
        row['severity'] = 'P1'
        row['owner'] = owner
        row['action'] = action

with open(output_file, 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(rows)
