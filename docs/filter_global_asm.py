
import re
import sys

global_asm_regex = re.compile(r"#pragma GLOBAL_ASM((.)*)")

def repl_global_asm(cap):
    return "/// " + cap.group(0).replace("#pragma ","") + "\n? " + cap.group(0).split("/")[-1].split(".s")[0] + "(?);"

with open(sys.argv[1], 'r') as infile:
    sys.stdout.write(re.sub(global_asm_regex, repl_global_asm, infile.read()))
