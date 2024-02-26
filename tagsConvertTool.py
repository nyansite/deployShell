#convert the original tags file (now csv) into a sql file and a js file for search bar
import csv
l = []
sqllines = []
js = "export var entireTags = ["
with open('./tag.csv', 'rt', encoding="UTF8") as f:
    cr = csv.DictReader(f)
    for row in cr:
        l.append(row[None])
for i in range(4, len(l)):
    if l[i][0] != "":
        sqllines.append("INSERT INTO tag_model (text) VALUES ('" + l[i][0] + "')\n")
        js = js + "'" + l[i][0] + "',"
    if l[i][3] != "":
        sqllines.append("INSERT INTO tag_model (text) VALUES ('" + l[i][3] + "')\n")
        js = js + "'" + l[i][3] + "',"
js = js[:-1] + "]"
with open('./tag.sql', 'w', encoding="UTF8") as fsql:
    fsql.writelines(sqllines)
with open('./tag.js','w',encoding="UTF8") as fjs:
    fjs.write(js)
