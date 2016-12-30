import os
import sys

# locate the project root for repl projects
p = os.getcwd()
while (p != "/" and not os.path.isdir(os.path.join(p, ".git"))):
    p = os.path.normpath(os.path.join(p, ".."))
if (p == "/"):
    p = os.getcwd()
sys.path.append(p)
sys.ps1 = "> "

# set matplotlib interactive
try:
    import matplotlib as mpl
    mpl.rcParams['interactive'] = True
except:
    pass
