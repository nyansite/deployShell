#convert the original tags file (now csv) into a sql file and a js file for search bar
import csv
l = []
tags = []
sqllines = ["\encoding UTF8\n"]
js = "export var entireTags = ["
with open('./tag.csv', 'rt', encoding="UTF8") as f:
    cr = csv.DictReader(f)
    for row in cr:
        l.append(row[None])
for i in range(4, len(l)):
    if l[i][0] != "":
        tags.append(l[i][0])
    if l[i][3] != "":
        tags.append(l[i][3])
    if l[i][6] != "":
        tags.append(l[i][6])
for j in tags:
    sqllines.append("INSERT INTO tag_model (text) VALUES ('" + j + "');\n")
    js = js + "'" + j + "',"
js = js[:-1] + "]"
with open('./tag.sql', 'w', encoding="UTF8") as fsql:
    fsql.writelines(sqllines)
with open('./tag.js','w',encoding="UTF8") as fjs:
    fjs.write(js)
