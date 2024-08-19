import difflib
from pathlib import Path
import subprocess


# change to True to print output source on failed tests
PRINT_FAILED_OUTPUT = False

PREPROCESS_PRAGMAS_P = Path("tools/preprocess_pragmas")


def fake_struct(pragma_line, i):
    return f"struct increment_block_number_{pragma_line:05}_{i:03};"


def fake_structs(pragma_line, amount):
    return "\n".join(fake_struct(pragma_line, i) for i in range(amount))


data = {
    "test_noarg": (
        "gc-us",
        "source.c",
        """\
abc
#pragma increment_block_number
def
""",
        f"""\
abc
{fake_structs(2, 256)}
#line 3 "source.c"
def
""",
    ),
    "test_one_arg_match": (
        "gc-us",
        "source.c",
        """\
abc
#pragma increment_block_number "gc-us:17"
def
""",
        f"""\
abc
{fake_structs(2, 17)}
#line 3 "source.c"
def
""",
    ),
    "test_one_arg_no_match": (
        "gc-us",
        "source.c",
        """\
abc
#pragma increment_block_number "gc-us-mq:17"
def
""",
        f"""\
abc
{fake_structs(2, 256)}
#line 3 "source.c"
def
""",
    ),
    "test_several_args": (
        "gc-us",
        "source.c",
        """\
abc
#pragma increment_block_number "gc-us-mq:200 gc-us:250"
def
""",
        f"""\
abc
{fake_structs(2, 250)}
#line 3 "source.c"
def
""",
    ),
}

for test_name, (version, filename, source_in, expected_source_out) in data.items():
    p = subprocess.Popen(
        [str(PREPROCESS_PRAGMAS_P), version, filename],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        encoding="UTF-8",
    )
    source_out, _ = p.communicate(input=source_in)
    if p.returncode != 0:
        print(f"{PREPROCESS_PRAGMAS_P} ended with {p.returncode} on {test_name}")
        exit(1)
    if source_out != expected_source_out:
        print(f"failed test {test_name}")
        if PRINT_FAILED_OUTPUT:
            print(source_out)
        for l in difflib.unified_diff(
            expected_source_out.splitlines(),
            source_out.splitlines(),
            "expected output",
            "actual output",
        ):
            print(l)
        exit(1)

print("all tests ok")
