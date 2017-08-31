import os
import sys
import importlib

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


def django_init(settings_module):
    from django.core.management import execute_from_command_line

    os.environ.setdefault('DJANGO_SETTINGS_MODULE',
                          '{}.settings'.format(settings_module))
    execute_from_command_line(['.', 'shell'])


try:
    from IPython import get_ipython
    from IPython.terminal.prompts import Prompts, Token

    class MyPrompt(Prompts):
        def in_prompt_tokens(self, cli=None):
            return [(Token.Prompt, '> ')]

    get_ipython().prompts = MyPrompt(get_ipython())
except:
    pass
