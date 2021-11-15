import sys
import json

try:
    ninst = int(sys.argv[1])
    ndrum = int(sys.argv[2])
    nsfx = int(sys.argv[3])
    outpath = sys.argv[4]
except (IndexError, ValueError) as e:
    print('Usage: python3 makedummyjson numInst numDrum numSfx path/to/bankinfo.json')
    sys.exit(-1)

b = {'instruments': ['Inst' + str(i) for i in range(ninst)],
    'drums': ['Drum' + str(i) for i in range(ndrum)],
    'sfx': ['Sfx' + str(i) for i in range(nsfx)]}
with open(outpath, 'w') as out:
    out.write(json.dumps(b))
