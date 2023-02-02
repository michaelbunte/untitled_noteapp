import os
from datetime import date
 
# Returns the current local date
today = date.today()
 
# assign directory
directory = '/Users/michaelbunte/everything/misc/.lovely'

files = [] 
for filename in os.scandir(directory):
    if filename.is_file():
       files.append(filename.path[ 44 : ])

files = sorted(files)

for file in files:
    file_split = file.split('_')
    if(file_split[0].isdigit()):
        print(file)

today = date.today()
print(today.split('_'))