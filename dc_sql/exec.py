import os
import glob
import csv

os.chdir('/Users/takeuchikazuto/project/schemaspy_docker/dc_sql')

for csv_file in glob.glob("customers.csv"):
  print(csv_file)
  with open(csv_file) as file:
    reader = csv.reader(file)
  # with open(csv_file, encoding="utf_8") as f:
  #   reader = csv.reader(f)
    for row in reader:
      print(row)

  