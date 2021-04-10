#!/usr/bin/env python3
#
# Generates graphs for actor overlay files
#

from graphviz import Digraph
import argparse, os, re

func_names = None
func_definitions = list()
line_numbers_of_functions = list()

# Make actor source file path from actor name
def actor_src_path(name):
    return "src/overlays/actors/ovl_" + (name if name != "player" else name + "_actor") + "/z_" + name.lower() + ".c"

func_call_regexpr = re.compile(r'[a-zA-Z_\d]+\([^\)]*\)(\.[^\)]*\))?')
func_defs_regexpr = re.compile(r'[a-zA-Z_\d]+\([^\)]*\)(\.[^\)]*\))? {[^}]')
macrosRegexpr = re.compile(r'#define\s+([a-zA-Z_\d]+)(\([a-zA-Z_\d]+\))?\s+(.+?)(\n|//|/\*)')

# Capture all function calls in the block, including arguments
def capture_calls(content):
    return [x.group() for x in re.finditer(func_call_regexpr, content)]

# Capture all function calls in the block, name only
def capture_call_names(content):
    return [x.group().split("(")[0] for x in re.finditer(func_call_regexpr, content)]

# Capture all function definitions in the block, including arguments
def capture_definitions(content):
    return [x.group() for x in re.finditer(func_defs_regexpr, content)]

# Capture all function definitions in the block, name only
def capture_definition_names(content):
    return [x.group().split("(")[0] for x in re.finditer(func_defs_regexpr, content)]

setupaction_regexpr = re.compile(r"_SetupAction+\([^\)]*\)(\.[^\)]*\))?;")

# Capture all calls to the setupaction function
def capture_setupaction_calls(content):
    return [x.group() for x in re.finditer(setupaction_regexpr, content)]

# Captures the function name of a setupaction call
def capture_setupaction_call_arg(content):
    return [x.group().split(",")[1].strip().split(");")[0].strip() for x in re.finditer(setupaction_regexpr, content)]

# Search for the function definition by supplied function name
def definition_by_name(content, name):
    for definition in capture_definitions(content):
        if name == definition.split("(")[0]:
            return definition.split("{")[0].strip()

# Obtain the entire code body of the function
def get_code_body(content, funcname):
    line_num = line_numbers_of_functions[index_of_func(funcname)]
    if line_num <= 0:
        return None
    code = ""
    bracket_count = 1

    all_lines = content.splitlines(True)
    for raw_line in all_lines[line_num:len(all_lines)]:
        if raw_line.count("{") > 0:
            bracket_count += raw_line.count("{")
        if raw_line.count("}") > 0:
            bracket_count -= raw_line.count("}")
        if bracket_count == 0:
            return code
        else:
            code += raw_line

def getMacrosDefinitions(contents):
    macrosDefs = dict()
    for x in re.finditer(macrosRegexpr, contents):
        macroName = x.group(1).strip()
        macroParamsAux = x.group(2)
        macroBody = x.group(3).strip()

        macroParams = []
        if macroParamsAux is not None:
            for x in macroParamsAux.strip("(").strip(")").split(","):
                macroParams.append(x.strip())
        macrosDefs[macroName] = (macroParams, macroBody)
    return macrosDefs

def parseMacro(macros, macroExpr):
    macroCall = func_call_regexpr.match(macroExpr)
    if macroCall is not None:
        macroName, macroArgs = macroCall.group().split(")")[0].split("(")
        if macroName not in macros:
            print("Unknown macro: " + macroName)
            return None
        macroParams, macroBody = macros[macroName]
        argsList = [x.strip() for x in macroArgs.split(",")]

        macroBody = str(macroBody)
        for i, x in enumerate(macroParams):
            macroBody = macroBody.replace(x, argsList[i])
        return str(eval(macroBody))
    elif macroExpr in macros:
        macroParams, macroBody = macros[macroExpr]
        return str(eval(macroBody))
    return None

def index_of_func(func_name):
    for index, name in enumerate(func_names):
        if name == func_name:
            return index

def action_var_setups_in_func(content, func_name, action_var):
    code_body = get_code_body(content, func_name)
    if action_var not in code_body:
        return None
    return [x.group() for x in re.finditer(r'(' + action_var + r' = (.)*)', code_body)]

def action_var_values_in_func(code_body, action_var, macros):
    if action_var not in code_body:
        return None

    regex = re.compile(r'(' + action_var + r' = (.)*)')
    transition = []
    for x in re.finditer(regex, code_body):
        index = x.group().split(" = ")[1].split(";")[0].strip()

        macroValue = parseMacro(macros, index)
        if macroValue is not None:
            index = macroValue
        transition.append(index)
    return transition

def setup_line_numbers(content, func_names):
    global line_numbers_of_functions
    for line_no, line in enumerate(content.splitlines(True),1):
        for func_name in func_names:
            # Some functions have definitions on multiple lines, take the last
            if func_definitions[index_of_func(func_name)].split("\n")[-1] in line:
                line_numbers_of_functions.append(line_no)

def setup_func_definitions(content, func_names):
    global func_definitions
    for func_name in func_names:
        func_definitions.append(definition_by_name(content, func_name)+" {")

def main():
    global func_names
    parser = argparse.ArgumentParser(description="Creates a graph of action functions (black and green arrows) and function calls (blue arrows) for a given overlay file")
    parser.add_argument("filename", help="Filename without the z_ or ovl_ prefix, e.x. Door_Ana")
    parser.add_argument("--loners", help="Include functions that are not called or call any other overlay function", action="store_true")
    args = parser.parse_args()

    fname = args.filename
    dot = Digraph(comment = fname, format = 'png')
    contents = ""

    with open(actor_src_path(fname),"r") as infile:
        contents = infile.read()

    func_names = capture_definition_names(contents)
    setup_func_definitions(contents, func_names)
    setup_line_numbers(contents, func_names)
    macros = getMacrosDefinitions(contents)
    func_prefix = ""
    for index, func_name in enumerate(func_names):
        # Init is chosen because all actors are guaranteed to have an Init function.
        # This check is however required as not all functions may have been renamed yet.
        if func_name.endswith("_Init"): 
            func_prefix = func_name.split("_")[0]
            dot.node(str(index), func_name)
        elif (func_name.endswith("_Destroy") or func_name.endswith("_Update") or func_name.endswith("_Draw")):
            dot.node(str(index), func_name)

    if func_prefix+"_SetupAction" in func_names:
        """
        Create all edges for SetupAction-based actors
        """
        for index, func_name in enumerate(func_names):
            if args.loners:
                dot.node(str(index), func_name)
            if "_SetupAction" in func_name:
                continue
            code_body = get_code_body(contents, func_name)
            setupaction_calls = capture_setupaction_call_arg(code_body)
            seen = {}
            overlay_func_calls = [seen.setdefault(x,x) for x in capture_call_names(code_body) if x in func_names and "_SetupAction" not in x and x not in seen]
            if len(setupaction_calls) > 0:
                for action_transition in setupaction_calls:
                    dot.node(str(index), func_name)
                    dot.node(str(index_of_func(action_transition)), action_transition)
                    dot.edge(str(index),str(index_of_func(action_transition)), color=("green" if func_name.endswith("_Init") else "Black"))
            for call in overlay_func_calls:
                dot.node(str(index_of_func(call)), call)
                dot.edge(str(index), str(index_of_func(call)), color="blue")
    else:
        action_func_type = func_prefix + "ActionFunc"
        match_obj = re.search(re.compile(r'(' + action_func_type + r' (.)*\[\] = {)'), contents)
        if match_obj is not None:
            """
            Create all edges for ActorFunc array-based actors
            """
            action_func_array_name = match_obj.group().split(" ")[1].split("[]")[0]
            action_func_array = re.search(r'(' + action_func_type + r' (.)*\[\] = \{[^;]*)', contents).group()
            action_functions = [x.replace("\n","").strip() for x in action_func_array.split("{\n")[1].split(",\n}")[0].split(",")]
            action_var = re.search(r'(' + action_func_array_name + r'\[(.)*\]\()', contents).group().split("[")[1].split("]")[0].strip()
            for index, func_name in enumerate(func_names):
                if args.loners:
                    dot.node(str(index), func_name)
                code_body = get_code_body(contents, func_name)
                seen = {}
                overlay_func_calls = [seen.setdefault(x,x) for x in capture_call_names(code_body) if x in func_names and x not in seen]
                transition_indices = action_var_values_in_func(code_body, action_var, macros)
                if transition_indices is not None:
                    transitions_to = []
                    for i in transition_indices:
                        transitions_to.append(action_functions[int(i, 0)])
                    if transitions_to is not None:
                        for action_transition in transitions_to:
                            dot.node(str(index), func_name)
                            dot.node(str(index_of_func(action_transition)), action_transition)
                            dot.edge(str(index),str(index_of_func(action_transition)), color=("green" if func_name.endswith("_Init") else "Black"))
                for call in overlay_func_calls:
                    dot.node(str(index_of_func(call)), call)
                    dot.edge(str(index), str(index_of_func(call)), color="blue")
        else:
            actionIdentifier = "this->actionFunc"
            if actionIdentifier in contents:
                """
                Create all edges for raw ActorFunc-based actors
                """
                for index, func_name in enumerate(func_names):
                    if args.loners:
                        dot.node(str(index), func_name)
                    print(func_name)
                    code_body = get_code_body(contents, func_name)
                    seen = {}
                    overlay_func_calls = [seen.setdefault(x,x) for x in capture_call_names(code_body) if x in func_names and x not in seen]
                    transition_func_calls = action_var_values_in_func(code_body, actionIdentifier, macros)
                    if transition_func_calls is not None:
                        for action_transition in transition_func_calls:
                            dot.node(str(index), func_name)
                            dot.node(str(index_of_func(action_transition)), action_transition)
                            dot.edge(str(index),str(index_of_func(action_transition)), color=("green" if func_name.endswith("_Init") else "Black"))
                    for call in overlay_func_calls:
                        print("    " + call)
                        dot.node(str(index), func_name)
                        dot.node(str(index_of_func(call)), call)
                        dot.edge(str(index), str(index_of_func(call)), color="blue")
            else:
                print("No actor action-based structure found")
                os._exit(1)

    print(dot.source)
    dot.render("graphs/" + fname + ".gv")

if __name__ == "__main__":
    main()

