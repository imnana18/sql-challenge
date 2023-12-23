
import csv
import os

def prepare_table_sqls(table_name):
    csv_path = f"./{table_name}.csv"

    print(csv_path)

    if not os.path.exists("./SQL/"):
        os.mkdir('SQL')

    header = True
    line_num = 0
    open(f"./SQL/{table_name}.sql", 'w').close()
    with open(f'./SQL/{table_name}.sql','a') as ddl:
        ddl.write("INSERT INTO {table_name} \n")
        ddl.write("VALUES \n")
        header = True
        with open (csv_path,'r') as file:
            lines = file.readlines()
            print(len(lines))
            for line in lines:
                line_num += 1
                if header:
                    header = False
                    continue
                cols = line.strip().replace('"','').split(',')
                if len(lines) != line_num:
                    ddl.write(f"{str(tuple(cols))},\n")
                else:
                    ddl.write(f"{str(tuple(cols))};\n")

                    
                          

table_list = ['employees', 'departments', 'dept_emp', 'dept_manager', 'salaries', 'titles']
for table_name in table_list:
    prepare_table_sqls(table_name)