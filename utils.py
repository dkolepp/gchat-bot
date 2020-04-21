import importlib
import pkgutil
import subcommands

MODULES={}

def init():
    prefix = subcommands.__name__ + '.'

    for importer, modname, ispkg in pkgutil.iter_modules(subcommands.__path__, prefix):
         if not ispkg:
             token = modname.split(prefix)[1]
             MODULES[token] = importlib.import_module(modname)

init()

def get_help():
    text='Below are the commands I understand:\n\n'
    for modname in sorted(MODULES.keys()):
        text += "*{}*: {}\n".format(modname, MODULES[modname].SUMMARY)
    return text

