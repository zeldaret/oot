#!/usr/bin/python3
import sys
import os
from os import path

if (path.exists(sys.argv[1])):
    f = open(sys.argv[1], "r")
    text = f.read()
    f.close()

    execStr = "touch " + text
    print(execStr)
    os.system(execStr)