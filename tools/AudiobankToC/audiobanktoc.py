import struct
import json
import sys
import string
import random
import math
import pathlib

# Variable prefix in C file and in header, can change these or set to ''
c_pfx = ''
h_pfx = 'extern '
# Include files in C file and in header
c_includes = ''
h_includes = '#include "audiobank.h"\n'

def audiobanktoc(abdata, bankinfo, cfile, hfile, bankname):
    # Counts
    numInstruments = len(bankinfo['instruments'])
    numDrums = len(bankinfo['drums'])
    numSfx = len(bankinfo['sfx'])
    
    # Const data
    inst_fields = ['loaded', 'normalRangeLo', 'normalRangeHi', 'releaseRate', 
        'envelope', 'low_sample', 'low_tuning', 'normal_sample', 'normal_tuning',
        'high_sample', 'high_tuning']
    inst_sample_fields = ['low_sample', 'normal_sample', 'high_sample']
    split_names = ['Low', 'Norm', 'High']
    split_names_lower = ['low', 'normal', 'high']
    inst_tuning_fields = ['low_tuning', 'normal_tuning', 'high_tuning']
    drum_fields = ['releaseRate', 'pan', 'loaded', 'sample', 'tuning', 'envelope']
    sfx_fields = ['sample', 'tuning']
    sample_fields = ['size', 'sampleAddr', 'loop', 'book']
    loop_fields = ['start', 'end', 'count', 'origSpls']
    book_fields = ['order', 'npredictors']
    
    # Data structures
    inst_list = [] # The instrument list data structure addresses (includes NULLs and duplicates)
    instruments = [] # Actual instrument data
    drum_list = [] # The drum list data structure addresses (includes NULLs and duplicates)
    drums = [] # Actual drum data
    sfxes = []
    samples = [] # Sample addresses referenced, then sample dicts
    envelopes = [] # Envelope addresses referenced, then envelope dicts
    loops = []
    books = []
    all_basenames = []
    
    # Helper functions
    def check_ptr(addr, desc):
        if addr >= len(abdata) or (addr & 3) != 0:
            raise RuntimeError(desc + ' invalid pointer: ' + hex(addr))
    def get_ptr(a):
        if a+4 > len(abdata):
            raise RuntimeError('Invalid parse address ' + hex(a))
        ptr = struct.unpack('>I', abdata[a:a+4])[0]
        check_ptr(ptr, 'At ' + hex(a))
        return ptr
    def validate_name(name):
        if len(name) == 0 or not name.replace('_', '').isalnum():
            raise RuntimeError('Invalid name: ' + name)
        if name in all_basenames:
            raise RuntimeError('Name ' + name + ' previously used')
        all_basenames.append(name)
    def get_rand_name():
        return ''.join(random.choice(string.ascii_lowercase) for i in range(10))
    def validate_tuning(f, name, splpresent):
        if not splpresent:
            if f != 0:
                raise RuntimeError('Tuning must be 0 for NULL sample')
        else:
            if not math.isfinite(f) or f > 1000.0 or f < 0.001:
                raise RuntimeError(name + ' invalid tuning: ' + str(f))
    def validate_and_add(addr, name, coll):
        check_ptr(addr, name)
        if addr != 0 and addr not in coll:
            coll.append(addr)
    def validate_and_add_sample(addr, name, required):
        if addr == 0 and required:
            raise RuntimeError('Sample pointer is required in ' + name + ' but it is NULL')
        validate_and_add(addr, name + ' sample', samples)
    def get_env_uses(addr):
        ret = []
        for inst in instruments:
            if inst['envelope'] == addr:
                ret.append(inst['basename'])
        for drum in drums:
            if drum['envelope'] == addr:
                ret.append(drum['basename'])
        assert len(ret) >= 1
        return ret
    def get_sample_uses(addr):
        ret = []
        for inst in instruments:
            if any(inst[s] == addr for s in inst_sample_fields):
                if inst['low_sample'] == 0 and inst['high_sample'] == 0:
                    ret.append(inst['basename'])
                else:
                    ranges = ''
                    for f, n in zip(inst_sample_fields, split_names):
                        if inst[f] == addr:
                            ranges += n
                    assert ranges != ''
                    ret.append(inst['basename'] + '_' + ranges)
        for drum in drums:
            if drum['sample'] == addr:
                ret.append(drum['basename'])
        for sfx in sfxes:
            if sfx['sample'] == addr:
                ret.append(sfx['basename'])
        if len(ret) == 0:
            raise RuntimeError('No uses for sample at ' + str(addr))
        return ret
    def get_loop_book_uses(addr, t):
        ret = []
        for sample in samples:
            if sample[t] == addr:
                ret.append(sample['basename'])
        assert len(ret) >= 1
        return ret
    def uses_to_name(uses):
        etc = False
        if len(uses) > 3:
            uses = uses[0:3]
            uses.append('Etc')
        return '_'.join(uses)
    def addr2fullname(l, addr, allowNull=False):
        if addr == 0:
            if allowNull:
                return None
            else:
                raise RuntimeError('addr2fullname with addr 0 but NULL not allowed')
        ret = next((x['fullname'] for x in l if x['addr'] == addr), None)
        if ret is None:
            raise RuntimeError('Could not find item with addr ' + str(addr))
        return ret
    
    # Top level parse
    drumlistaddr = get_ptr(0)
    assert (numDrums == 0) == (drumlistaddr == 0)
    sfxlistaddr = get_ptr(4)
    assert (numSfx == 0) == (sfxlistaddr == 0)
    lastaddr = 0
    
    a = 8
    for i in range(numInstruments):
        inst_list.append(get_ptr(a))
        a += 4
    lastaddr = a
    if numDrums > 0:
        a = drumlistaddr
        for i in range(numDrums):
            drum_list.append(get_ptr(a))
            a += 4
        lastaddr = max(lastaddr, a)
    
    # Instruments parse
    for i, inst_addr in enumerate(inst_list):
        inst_name = bankinfo['instruments'][i]
        if inst_addr == 0:
            if inst_name is not None:
                print('Instrument ' + str(i) + ' is NULL in bank but has a name in json (should be None)')
            continue
        if inst_name is None:
            inst_name = get_rand_name()
            print('Instrument ' + str(i) + ' is not NULL in bank but is None in json, making up random name: ' + inst_name)
        existing_inst = next((d for d in instruments if d['addr'] == inst_addr), None)
        if existing_inst is not None:
            if existing_inst['name'] != inst_name:
                print('Instrument ' + str(i) + ' already existed in bank with name ' 
                    + existing_inst['name'] + ', but json says its name is ' + inst_name)
            continue
        validate_name(inst_name)
        values = struct.unpack('>BBBBIIfIfIf', abdata[inst_addr:inst_addr+0x20])
        inst = dict(zip(inst_fields, values))
        # Validate data
        assert inst['loaded'] == 0
        assert 0 <= inst['normalRangeLo'] <= 126
        assert 0 <= inst['normalRangeHi'] <= 127
        assert inst['normalRangeHi'] == 0 or inst['normalRangeLo'] < inst['normalRangeHi']
        validate_and_add(inst['envelope'], 'Inst ' + str(i) + ' env', envelopes)
        for j in range(3):
            sf = inst_sample_fields[j]
            tf = inst_tuning_fields[j]
            splrequired = sf == 'normal_sample'
            splpresent = inst[sf] != 0
            validate_and_add_sample(inst[sf], 'Inst ' + str(i) + ' ' + sf, splrequired)
            validate_tuning(inst[tf], 'Inst ' + str(i) + ' ' + tf, splpresent)
        # Add data
        inst['addr'] = inst_addr
        inst['basename'] = inst_name
        inst['fullname'] = inst_name + '_Inst'
        instruments.append(inst)
        # print('Inst ' + str(i) + ': ' + str(inst))
        lastaddr = max(lastaddr, inst_addr+0x20)
    instruments.sort(key=lambda x: x['addr'])
    
    # Drums parse
    for i, drum_addr in enumerate(drum_list):
        drum_name = bankinfo['drums'][i]
        if drum_addr == 0:
            if drum_name is not None:
                print('Drum ' + str(i) + ' is NULL in bank but has a name in json (should be None)')
            continue
        if drum_name is None:
            drum_name = get_rand_name()
            print('Drum ' + str(i) + ' is not NULL in bank but is None in json, making up random name: ' + drum_name)
        existing_drum = next((d for d in drums if d['addr'] == drum_addr), None)
        if existing_drum is not None:
            if existing_drum['name'] != drum_name:
                print('Drum ' + str(i) + ' already existed in bank with name ' 
                    + existing_drum['name'] + ', but json says its name is ' + drum_name)
            continue
        validate_name(drum_name)
        values = struct.unpack('>BBBxIfI', abdata[drum_addr:drum_addr+0x10])
        drum = dict(zip(drum_fields, values))
        # Validate data
        assert drum['loaded'] == 0
        assert drum['pan'] <= 128
        validate_and_add_sample(drum['sample'], 'Drum ' + str(i), True)
        validate_tuning(drum['tuning'], 'Drum ' + str(i), True)
        validate_and_add(drum['envelope'], 'Drum ' + str(i) + ' envelope', envelopes)
        # Add data
        drum['addr'] = drum_addr
        drum['basename'] = drum_name
        drum['fullname'] = drum_name + '_Drum'
        drums.append(drum)
        # print('Drum ' + str(i) + ': ' + str(drum))
        lastaddr = max(lastaddr, drum_addr+0x20)
    drums.sort(key=lambda x: x['addr'])
    
    # SFX parse
    a = sfxlistaddr
    for i in range(numSfx):
        sfx_name = bankinfo['sfx'][i]
        if sfx_name is None:
            sfx_name = get_rand_name()
            print('Sfx ' + str(i) + ' missing name in json, making up random name: ' + sfx_name)
        validate_name(sfx_name)
        values = struct.unpack('>If', abdata[a:a+8])
        a += 8
        sfx = dict(zip(sfx_fields, values))
        # Validate data
        validate_and_add_sample(sfx['sample'], 'Sfx ' + str(i), False)
        validate_tuning(sfx['tuning'], 'Sfx ' + str(i), sfx['sample'] != 0)
        # Add data
        sfx['basename'] = sfx_name
        sfx['fullname'] = sfx_name + '_Sfx'
        sfxes.append(sfx)
        # print('Sfx ' + str(i) + ': ' + str(sfx))
    lastaddr = max(lastaddr, a)
    
    # Envelopes
    def read_envelope(a, env_name):
        nonlocal lastaddr
        env = {'addr': a,
            'fullname': env_name + '_Env',
            'points': []}
        # Envelope is aligned to 16 bytes (4 points)
        done = False
        while True:
            rate, level = struct.unpack('>hH', abdata[a:a+4])
            a += 4
            env['points'].append({'rate': rate, 'level': level})
            if done:
                assert rate == 0 and level == 0
            if rate < 0:
                done = True
            if done and (len(env['points']) & 3) == 0:
                break
        lastaddr = max(lastaddr, a)
        return env
    envelopes.sort() # Actually in MIDI channel order (perc = 9)
    for i in range(len(envelopes)):
        a = envelopes[i]
        env_name = uses_to_name(get_env_uses(a))
        env = read_envelope(a, env_name)
        envelopes[i] = env
        # print('Env ' + str(i) + ': ' + str(env))
    
    # Samples
    samples.sort() # Actually in MIDI channel order (perc = 9)
    for i in range(len(samples)):
        a = samples[i]
        sample_name = uses_to_name(get_sample_uses(a))
        values = struct.unpack('>IIII', abdata[a:a+0x10])
        sample = dict(zip(sample_fields, values))
        sample2 = {'codec': sample['size'] >> 28,
            'medium': (sample['size'] >> 26) & 3,
            'unk_bit26': (sample['size'] >> 25) & 1,
            'unk_bit25': (sample['size'] >> 24) & 1,
            'size': sample['size'] & 0xFFFFFF,
            'sampleAddr': sample['sampleAddr'],
            'loop': sample['loop'],
            'book': sample['book']
        }
        sample = sample2
        sample['addr'] = a
        sample['basename'] = sample_name
        sample['fullname'] = sample_name + '_Sample'
        validate_and_add(sample['loop'], sample_name + ' loop', loops)
        validate_and_add(sample['book'], sample_name + ' book', books)
        samples[i] = sample
        lastaddr = max(lastaddr, a+0x10)
    
    loops.sort()
    for i in range(len(loops)):
        a = loops[i]
        loop_name = uses_to_name(get_loop_book_uses(a, 'loop'))
        values = struct.unpack('>IIII', abdata[a:a+0x10])
        loop = dict(zip(loop_fields, values))
        loop['addr'] = a
        a += 0x10
        if loop['count'] != 0:
            loop['state'] = list(struct.unpack('>16h', abdata[a:a+0x20]))
            a += 0x20
        loop['fullname'] = loop_name + '_Loop'
        loops[i] = loop
        lastaddr = max(lastaddr, a)
        
    books.sort()
    for i in range(len(books)):
        a = books[i]
        book_name = uses_to_name(get_loop_book_uses(a, 'book'))
        values = struct.unpack('>II', abdata[a:a+8])
        book = dict(zip(book_fields, values))
        book['addr'] = a
        a += 8
        elements = 8 * book['order'] * book['npredictors']
        assert elements < 10000
        if elements != 0:
            book['book'] = list(struct.unpack('>' + str(elements) + 'h', abdata[a:a+(2*elements)]))
            a += 2*elements
        book['fullname'] = book_name + '_Book'
        books[i] = book
        lastaddr = max(lastaddr, a)
    
    # Unused envelopes
    e = 0
    a = envelopes[0]['addr']
    while a < instruments[0]['addr']:
        if a != envelopes[e]['addr']:
            assert a < envelopes[e]['addr']
            print('Unused envelope at ' + hex(a))
            env = read_envelope(a, 'Unused' + str(e))
            envelopes.insert(e, env)
        a += 4 * len(envelopes[e]['points'])
        e += 1
    
    # Padding / unused data at end
    padlen = len(abdata) - lastaddr
    if padlen > 0:
        print(hex(padlen) + ' bytes unused/padding data at end')
        paddata = list(struct.unpack('>' + str(padlen) + 'B', abdata[lastaddr:]))
    
    # Replace addresses with fullnames
    for i in range(len(inst_list)):
        inst_list[i] = addr2fullname(instruments, inst_list[i], True)
    for i in range(len(drum_list)):
        drum_list[i] = addr2fullname(drums, drum_list[i], True)
    for inst in instruments:
        for f in inst_sample_fields:
            inst[f] = addr2fullname(samples, inst[f], f != 'normal_sample')
        inst['envelope'] = addr2fullname(envelopes, inst['envelope'])
    for drum in drums:
        drum['sample'] = addr2fullname(samples, drum['sample'])
        drum['envelope'] = addr2fullname(envelopes, drum['envelope'])
    for sfx in sfxes:
        sfx['sample'] = addr2fullname(samples, sfx['sample'], True)
    for sample in samples:
        sample['loop'] = addr2fullname(loops, sample['loop'])
        sample['book'] = addr2fullname(books, sample['book'])
    
    # Convert sounds to sub-structs
    for inst in instruments:
        for i in range(3):
            split = split_names_lower[i]
            inst[split + 'NotesSound'] = {
                'sample': inst[split + '_sample'],
                'tuning': inst[split + '_tuning']}
            del inst[split + '_sample']
            del inst[split + '_tuning']
    for drum in drums:
        drum['sound'] = {
            'sample': drum['sample'],
            'tuning': drum['tuning']}
        del drum['sample']
        del drum['tuning']
    
    # Top-level struct
    bank = {'drums': bankname + '_DrumList' if numDrums > 0 else None,
        'sfx': bankname + '_SfxList' if numSfx > 0 else None,
        'instruments': inst_list}
    
    # Write
    def write_field(data, tabs):
        if isinstance(data, dict):
            cfile.write('{\n')
            for k in data.keys():
                if k in ['addr', 'basename', 'fullname']:
                    continue
                v = data[k]
                cfile.write('    ' * (tabs+1) + '.{} = '.format(k))
                if k == 'sampleAddr':
                    cfile.write('(u8*)')
                write_field(v, tabs+1)
                cfile.write(',\n')
            cfile.write('    ' * tabs + '}')
        elif isinstance(data, list):
            cfile.write('{\n')
            for i, v in enumerate(data):
                if not isinstance(v, int) or (i & 7) == 0:
                    cfile.write('    ' * (tabs+1))
                write_field(v, tabs+1)
                cfile.write(', ' if isinstance(v, int) and (i & 7) != 7 else ',\n')
            cfile.write('    ' * tabs + '}')
        elif isinstance(data, str):
            if not any(data.endswith(x) for x in {'_Env', '_DrumList', '_SfxList'}):
                cfile.write('&')
            cfile.write(data)
        elif isinstance(data, int):
            cfile.write(hex(data))
        elif isinstance(data, float):
            cfile.write(str(data))
        elif data is None:
            cfile.write('NULL')
        else:
            raise RuntimeError('Unhandled write_field type ' + str(data))
    def write_struct(type, name, data, in_header = False, write_align = False):
        brackets = ''
        if isinstance(data, list):
            brackets = '[' + str(len(data)) + ']'
        elif 'addr' in data:
            cfile.write('/* ' + hex(data['addr']) + ' */\n')
        if in_header:
            hfile.write(h_pfx + '{} {}{};\n'.format(type, name, brackets))
        cfile.write(c_pfx + '{} {}{} '.format(type, name, brackets))
        if write_align:
            cfile.write('__attribute__((aligned(16))) ')
        cfile.write('= \n')
        write_field(data, 0)
        cfile.write(';\n\n')
    
    hfile.write(h_includes + '\n')
    cfile.write(c_includes + '\n#include "{}.h"\n\n/* 0x0 */\n'.format(bankname))
    write_struct('AudioBank', bankname, bank, True)
    written_books = []
    written_loops = []
    for sample in samples:
        write_struct('AudioBankSample', sample['fullname'], sample)
        if sample['book'] not in written_books:
            book = next(b for b in books if b['fullname'] == sample['book'])
            write_struct('AdpcmBook', book['fullname'], book, True)
            written_books.append(sample['book'])
        if sample['loop'] not in written_loops:
            loop = next(l for l in loops if l['fullname'] == sample['loop'])
            write_struct('AdpcmLoop', loop['fullname'], loop, True)
            written_loops.append(sample['loop'])
    for env in envelopes:
        write_struct('AdsrEnvelopePoint', env['fullname'], env['points'])
    for inst in instruments:
        write_struct('Instrument', inst['fullname'], inst, True)
    for drum in drums:
        write_struct('Drum', drum['fullname'], drum)
    if numDrums > 0:
        cfile.write('/* ' + hex(drumlistaddr) + '*/\n')
        write_struct('Drum*', bankname + '_DrumList', drum_list, True, True)
    if numSfx > 0:
        cfile.write('/* ' + hex(sfxlistaddr) + '*/\n')
        write_struct('AudioBankSound', bankname + '_SfxList', sfxes, True, True)
    if padlen > 0:
        cfile.write('/* ' + hex(lastaddr) + '*/\n')
        write_struct('u8', 'unused', paddata)
    

def audiobanktoc_files(abpath, bankinfopath, cpath):
    assert cpath.endswith('.c')
    with open(abpath, 'rb') as abfile, \
        open(bankinfopath, 'r') as bankinfofile, \
        open(cpath, 'w') as cfile, \
        open(cpath[:-2] + '.h', 'w') as hfile:
        abdata = abfile.read()
        bankinfo = json.loads(bankinfofile.read())
        assert all(k in bankinfo for k in ['instruments', 'drums', 'sfx'])
        bankname = pathlib.Path(cpath).stem
        assert bankname.replace('_', '').isalnum()
        audiobanktoc(abdata, bankinfo, cfile, hfile, bankname)

if __name__ == '__main__':
    try:
        abpath = sys.argv[1]
        bankinfopath = sys.argv[2]
        cpath = sys.argv[3]
    except IndexError as e:
        print('Usage: python3 audiobanktoc.py path/to/audiobank.bin path/to/bankinfo.json path/to/output.c')
        print('Use makedummyjson.py to create a dummy json for your bank, then edit the names before running audiobanktoc.py')
        sys.exit(-1)
    audiobanktoc_files(abpath, bankinfopath, cpath)
