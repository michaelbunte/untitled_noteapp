import os
from os import system
import glob
import re

def make_int(word):
    words = word.split('_')
    if(words[0].isdigit()):
        return int(words[0])
    return -1

width = os.get_terminal_size().columns

path = os.getcwd()
filelist = glob.glob(os.path.join(path, '*.txt'))


file_names = []
for infile in sorted(filelist): 
    file_name = re.sub('.*\/','',infile)
    file_names.append(file_name)

sorted_names = sorted(file_names, key=make_int)

last_date = ""

for name in sorted_names:
    if(make_int(name) == -1):
        continue
    name_split = name.split('_')
    print("")
    print("")
    print("")
    print("-" * width)
    print("=" * width)
    if(name_split[1] != last_date):
        print(" " * int(width / 2 - len(name) / 2) + name)
        print("=" * width)
        print("-" * width)
    print("")
    # system("cat " + name)
    system("cat " + name + ">most_recent.txt")
    system("fold -sw " + str(width) + " <most_recent.txt")
    last_date = name_split[1]

print("")
print("")


