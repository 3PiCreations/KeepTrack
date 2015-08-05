
import os
import re
import sys
from fnmatch import fnmatch

pattern = '*.sql'

scriptPriorities = ['SEQUENCE', 'TABLE', 'CONSTRAINT', 'FK_CONSTRAINT', 'FUNCTION', 'TRIGGER', 'INDEX', 'VIEW'];

def GetAllSqlFiles():
    fullFileNames = []
    for dirpath, dirnames, filenames in os.walk('./schema'):
        for name in filenames:
            if fnmatch(name, pattern):
                fullFileNames.append(os.path.join(dirpath, name))
    return fullFileNames
             
def GetSortingValue(filename):
    dirparts = re.split(r'[/\\]', os.path.splitext(filename)[0])
    if dirparts[-1] == dirparts[-2]:
        return -1
    for i in range(0, len(scriptPriorities)):
        if dirparts[-2].endswith(scriptPriorities[i]):
            return i
    print 'notmatch'
    return len(scriptPriorities);

def GetFullFileNames(files,basePath):
    return map(lambda f: os.path.normpath(os.path.join(basePath,f)), files)

def WriteToFile(filename, files):
    f = open(filename, 'w')
    for line in files:
        f.write('\i ' + line + '\n')
    f.close()

files = GetAllSqlFiles()
print('\n'.join(files))
sortedFiles = sorted(files,key=GetSortingValue)
print('\n'.join(sortedFiles))
fullFileNames = GetFullFileNames(sortedFiles, os.getcwd())
print('\n'.join(fullFileNames))
WriteToFile('create_keeptrack_database_' + os.name + '.sql',fullFileNames)
