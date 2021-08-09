# typical objects/ xml
"""
<Root>
    <File Name="object_ane" Segment="6">
        <Texture Name="gCuccoLadyTLUT" OutName="tlut" Format="rgb5a1" Width="16" Height="16" Offset="0x0108"/>
        <Texture Name="gCuccoLadyHairTex" OutName="hair" Format="ci8" Width="8" Height="16" Offset="0x0308" TlutOffset="0x0108"/>
        <Texture Name="gCuccoLadyTex_0388" OutName="tex_0388" Format="ci8" Width="8" Height="8" Offset="0x0388"/>
        <Texture Name="gCuccoLadyEyeClosedTex" OutName="cucco_lady_eye_closed" Format="rgb5a1" Width="32" Height="32" Offset="0x18C8"/>
    </File>
</Root>
"""

# typical overlays/ xml
"""
<Root>
    <File Name="ovl_Boss_Dodongo" BaseAddress="0x808C1190" RangeStart="0x6238" RangeEnd="0x9238" Segment="128">
        <Texture Name="sLavaFloorLavaTex" OutName="lava_floor_lava" Format="rgb5a1" Width="64" Height="64" Offset="0x6238"/>
        <Texture Name="sLavaFloorRockTex" OutName="lava_floor_rock" Format="rgb5a1" Width="32" Height="64" Offset="0x8238"/>
    </File>
</Root>
"""

# typical scenes/ xml
"""
<Root>
    <File Name="kokiri_shop_scene" Segment="2">
        <Scene Name="kokiri_shop_scene" Offset="0x0"/>
    </File>
    <File Name="kokiri_shop_room_0" Segment="3">
        <Room Name="kokiri_shop_room_0" Offset="0x0"/>
    </File>
</Root>
"""

# typical textures/ xml
"""
<Root>
     <File Name="do_action_static" Segment="7">
        <Texture Name="gAttackDoActionENGTex" OutName="attack_eng" Format="ia4" Width="48" Height="16" Offset="0x0"/>
     </File>
</Root>
"""

import sys
import os
import re

def fail(*msg):
    print(*msg)
    sys.exit(1)

def getTlutUsedNear(file_path, contents, texture_name, texture_format, idx_texture_name):
    idx_before_gsDPLoadTLUT = contents.rfind('gsDPLoadTLUT_pal' + ('16' if texture_format.lower() == 'ci4' else '256'), 0, idx_texture_name)
    idx_after_gsDPLoadTLUT = contents.find('gsDPLoadTLUT_pal' + ('16' if texture_format.lower() == 'ci4' else '256'), idx_texture_name)
    if idx_before_gsDPLoadTLUT < 0 and idx_after_gsDPLoadTLUT < 0:
        fail('Cannot find gsDPLoadTLUT_pal* before nor after', texture_name, 'in', file_path, 'context:', contents[idx_texture_name-50:idx_texture_name+50])
    # ignore a gsDPLoadTLUT_pal*() command that is after a triangle draw command since texture load
    if not idx_after_gsDPLoadTLUT < 0 and any(
        tri_draw_cmd in contents[idx_texture_name:idx_after_gsDPLoadTLUT] for tri_draw_cmd in ('gsSP1Triangle','gsSP2Triangles')
    ):
        idx_after_gsDPLoadTLUT = -1
    # ignore a gsDPLoadTLUT_pal*() command that comes before a triangle draw command before texture load,
    # if there is a gsDPLoadTLUT_pal*() after texture load that isn't separated from texture load by triangle drawing
    if not idx_after_gsDPLoadTLUT < 0 and not idx_before_gsDPLoadTLUT < 0 and any(
        tri_draw_cmd in contents[idx_before_gsDPLoadTLUT:idx_texture_name] for tri_draw_cmd in ('gsSP1Triangle','gsSP2Triangles')
    ):
        idx_before_gsDPLoadTLUT = -1
    if idx_before_gsDPLoadTLUT < 0 and idx_after_gsDPLoadTLUT < 0:
        fail('Cannot find gsDPLoadTLUT_pal* without triangle draw command in-between before nor after', texture_name, 'in', file_path, 'context:', contents[idx_texture_name-200:idx_texture_name+200])
    if idx_before_gsDPLoadTLUT >= 0 and idx_after_gsDPLoadTLUT >= 0:
        if abs(idx_texture_name - idx_before_gsDPLoadTLUT) < abs(idx_after_gsDPLoadTLUT - idx_texture_name):
            idx_gsDPLoadTLUT = idx_before_gsDPLoadTLUT
        else:
            idx_gsDPLoadTLUT = idx_after_gsDPLoadTLUT
    elif idx_before_gsDPLoadTLUT >= 0:
        idx_gsDPLoadTLUT = idx_before_gsDPLoadTLUT
    else:
        idx_gsDPLoadTLUT = idx_after_gsDPLoadTLUT
    m = re.compile(r'gsDPLoadTLUT_pal(?:16\(\d+,\s*|256\()([^)]+)\)').match(contents, idx_gsDPLoadTLUT)
    if m.start() != idx_gsDPLoadTLUT:
        fail('While searching for the palette used by', texture_name, ', initially found gsDPLoadTLUT_pal* at', idx_gsDPLoadTLUT, 'but regex matched at', m.start(), 'in', file_path)
    return m.group(1)

def getTlutSymbol(file_type_folder, file_folder, file_name, file_segment, texture_name, texture_format):
    file_path = os.path.join('assets', file_type_folder, file_folder, file_name + '.c')
    with open(file_path) as f:
        contents = f.read()
    idx_texture_name = contents.find('(' + texture_name)
    if idx_texture_name < 0:
        print('Cannot find', '(' + texture_name, 'in', file_path)
        return None
    indices_texture_name = []
    tlut_symbols = set()
    while not idx_texture_name < 0:
        tlut_symbol = getTlutUsedNear(file_path, contents, texture_name, texture_format, idx_texture_name)
        if tlut_symbol is None:
            fail('getTlutUsedNear() is None')
        tlut_symbols.add(tlut_symbol)
        idx_texture_name = contents.find('(' + texture_name, idx_texture_name+1)
    if len(tlut_symbols) > 1:
        fail('Found several tluts in search', '(' + texture_name, 'in', file_path, tlut_symbols)
    return list(tlut_symbols)[0]

for root, dirs, files in os.walk('assets/xml'):
    for name in files:
        if name in (
            # todo check if these are totally or just partially commented out
            # do we want to "fix" these at all?
            'object_ahg.xml', 'object_bji.xml', 'object_oF1s.xml', 'object_cne.xml', 'object_kw1.xml', # contents commented out
            'object_boj.xml', # partially commented out
            'map_48x85_static.xml', # probably not CI? I4 or IA4? code doesn't make sense to me
        ):
            print('FILE SKIP!', name)
            continue
        file = os.path.join(root, name)
        with open(file) as f:
            xmlContents = f.read()
        desc_files = []
        # gameplay_field_keep feels like being special and has a random space after "Segment=":
        # <File Name="gameplay_field_keep" Segment= "5">
        for m in re.finditer(r'<File\s+Name="([^"]*)".+?Segment=\s*"(\d+)"\s*>', xmlContents):
            desc_files.append((m.start(), m.group(1), int(m.group(2))))
        if len(desc_files) != xmlContents.count('<File'):
            print(xmlContents[:100])
            fail('May have missed a <File> in', file, ', found', xmlContents.count('<File'), 'occurences of "<File" but regex found', len(desc_files))
        tlutTextures = {}
        for m in re.finditer(r'<Texture\s+Name="([^"]*)".+?Format="(?:rgb5a1|rgba16)".*?Offset="((?:0x)?[0-9a-fA-F]+)".*?/>', xmlContents):
            for desc_file_start_idx, desc_file_name, desc_file_segment in desc_files:
                if m.start() < desc_file_start_idx:
                    break
                tlut_desc_file_name = desc_file_name
                tlut_desc_file_segment = desc_file_segment
            tlutTextures[m.group(1)] = (desc_file_segment, m.group(2))
        def repl(m):
            texture_symbol = m.group(1)
            search_texture_symbol = texture_symbol
            tex_format = m.group(2)
            for desc_file_start_idx, desc_file_name, desc_file_segment in desc_files:
                if m.start() < desc_file_start_idx:
                    break
                tex_desc_file_name = desc_file_name
                tex_desc_file_segment = desc_file_segment
            s = m.group(0)
            skip = False
            if any(srch in texture_symbol for srch in (
                'gZelda2Eye','gShiekEye','gNabooruEye','gObjOwlEye','gGerudoPurpleEye','gChildZelda1Eye',
                'gRutoChildEye','gChildEponaEye','gGerudoRedEye','gSariaEye','gMalonChildEye','gMidoEye',
                'gEponaEye','gDaruniaEye','gWindmillManEye',
            )):
                search_texture_symbol = '0x08000000'
                #print('EYE 8!', texture_symbol, 'will search for', search_texture_symbol)
            elif any(srch in texture_symbol for srch in ('EyeOpen','EyeHalf','EyeClosed','EyeWide','EyeShut','EyeSad','EyeSurprised','EyeClosing',)):
                print('SKIP!', texture_symbol, '(eye tex detected)')
                skip = True
            if any(srch in texture_symbol for srch in ('gZelda2Mouth','gChildZelda1Mouth','gSariaMouth',)):
                search_texture_symbol = '0x0A000000'
                #print('MOUTH A!', texture_symbol, 'will search for', search_texture_symbol)
            if any(srch in texture_symbol for srch in ('gWindMillManMouth','gRutoChildMouth','gMalonChildNeutralMouthTex','gMalonChildSmilingMouthTex','gMalonChildTalkingMouthTex','gDaruniaMouth',)):
                search_texture_symbol = '0x09000000'
                #print('MOUTH 9!', texture_symbol, 'will search for', search_texture_symbol)
            if texture_symbol.startswith('gMeagmiRightCrumble'):
                search_texture_symbol = '0x08000000'
            if texture_symbol.startswith('gMeagmiLeftCrumble'):
                search_texture_symbol = '0x09000000'
            if texture_symbol.startswith('gDaruniaNose'):
                search_texture_symbol = '0x0A000000'
            if texture_symbol.startswith('gRunningManMouth'):
                search_texture_symbol = '0x08000000'
            if texture_symbol in (
                'gDampeUnkTex', # ?
                'gObjOwlEyeOpenTex', 'gObjOwlEyeHalfTex', 'gObjOwlEyeClosedTex', # object_owl.c uses segment 8 two times with different palettes
                'gWorldMapImageTex', # tlut set in code
                'gRoofMan2TLUT', # this tlut is set to ci8 format for some reason, probably a mistake
            ):
                print('SKIP!', texture_symbol, '(hardcoded skip)')
                skip = True
            if 'TlutOffset' in s or skip:
                return s
            else:
                tlut_symbol = getTlutSymbol(root[len('assets/xml/'):], name[:-len('.xml')], tex_desc_file_name, tex_desc_file_segment, search_texture_symbol, tex_format)
                if tlut_symbol is None:
                    print('SKIP! tlut_symbol is None for tex', texture_symbol, '(search =', search_texture_symbol, ') in', tex_desc_file_name)
                    return s
                if tlut_symbol not in tlutTextures:
                    # TLUT not in xml
                    if tlut_symbol in ('gRoofMan2TLUT',):
                        print('LATE SKIP!', texture_symbol, 'because using', tlut_symbol, '(hardcoded skip)')
                        return s
                    if not tlut_symbol.startswith(tex_desc_file_name + 'TLUT_'):
                        fail('Unknown tlut symbol', tlut_symbol, 'for tex', texture_symbol, 'in', tex_desc_file_name, '(not in', name,'?) and not named like an autogenerated symbol (eg', tex_desc_file_name + 'TLUT_XXXXXX', ' XXXXXX = offset)')
                    tlut_segment = tex_desc_file_segment # the symbol is named with tex_desc_file_name so it must be in the same file/same segment
                    tlut_offset = hex(int(tlut_symbol[len(tex_desc_file_name + 'TLUT_'):], 16))
                else:
                    tlut_segment, tlut_offset = tlutTextures[tlut_symbol]
                if tlut_segment != tex_desc_file_segment:
                    fail('tex', texture_symbol, 'and tlut', tlut_symbol, 'are from different segments')
                if texture_symbol == 'gNabooruEyeOpenTex':
                    print('gNabooruEyeOpenTex tlut:', tlut_offset)
                return s[:-2] + ' TlutOffset="' + tlut_offset + '"/>'
        # object_cs.xml decided to use single quotes ''
        # <Texture Name='gGraveyardKidPantsTex' OutName="pants" Format="ci8" Width="16" Height="16" Offset="0x3C70"/>
        xmlContents = re.sub(r'<Texture\s+Name=[\'"]([^\'"]*)[\'"].+?Format="(ci[48])".*?/>', repl, xmlContents)
        with open(file, 'w') as f:
            f.write(xmlContents)
