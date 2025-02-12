import glob
import itertools as it
import sys

# NOTE(Jace):
#  "ImportError: cannot import name 'TopologicalSorter' from 'graphlib'"
#
# If you get the above error message, try uninstalling graphlib and install graphlib-backport instead.
# 
# Alternatively you can try updating to a Python version equal to or newer than 3.9,
# and reinstall the module, though I haven't tested that.
# 
# The information on graphlib-backport is from:
# https://stackoverflow.com/questions/71119487/cannot-get-topologicalsorter-from-graphlib
from graphlib import TopologicalSorter

if len(sys.argv) > 1 and sys.argv[1] == '-e':
    excluded = sys.argv[1:]
else:
    excluded = []

depends_on = {}
data = {}

def search_directories(*patterns):
    return it.chain.from_iterable(glob.iglob(pattern,recursive=True) for pattern in patterns)

for filename in search_directories('./include/**/*.h'):
    with open(filename) as header:
        header_name = "/".join(filename.split('/')[2:])

        if not header_name in depends_on:            
            depends_on[header_name] = set()

            if not header_name.startswith("gba/"):
                if header_name != "global.h"      \
                and header_name != "config.h"     \
                and header_name != "functions.h":
                    depends_on[header_name].add("global.h")
            
            else: # header_name.startswith("gba/")
                if  not header_name.endswith("types.h") \
                and not header_name.endswith("defines.h"):
                    depends_on[header_name].add("gba/types.h")
                elif not header_name.endswith("multiboot.h") \
                and not header_name.endswith("types.h"):
                    depends_on[header_name].add("gba/multiboot.h")
                
        data[header_name] = ""
        for line in header.readlines():
            if "#include" in line         \
            and not line.startswith("//") \
            and '<' not in line:
                requires = line.split('"')[1]
                depends_on[header_name].add(requires)
                continue
                
            data[header_name] += line
        data[header_name] += "\n"

ts = TopologicalSorter(depends_on)
print_order = tuple(ts.static_order())

with open('ctx.c', 'w') as context:
    # Since the context is only used for matching anyway, auto-insert
    context.write("#define PLATFORM_GBA 1\n\n")

    for header in print_order:
        exclude = False
        for e in excluded:
            if e in header:
                exclude = True
                break
        
        if not exclude:
            print(header)
            context.write(data[header])
