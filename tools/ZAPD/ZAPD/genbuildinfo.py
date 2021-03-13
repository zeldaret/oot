#!/usr/bin/python3

from datetime import datetime
import getpass
import subprocess

with open("ZAPD/BuildInfo.h", "w+") as buildFile:
    label = subprocess.check_output(["git", "describe", "--always"]).strip().decode("utf-8")
    now = datetime.now()
    buildFile.write("const char gBuildHash[] = \"" + label + "\";\n")
    #buildFile.write("const char gBuildDate[] = \"" + now.strftime("%Y-%m-%d %H:%M:%S") + "\";\n")
    