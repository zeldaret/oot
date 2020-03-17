#!/usr/bin/python3
import os
from shutil import copyfile

def ExtractFile(xmlPath, outputPath):
	execStr = "tools/ZAP2/ZAP2.out e %s baserom/ %s 1" % (xmlPath, outputPath)

	print(execStr)
	os.system(execStr)

	# Copy generated C file to parent folder...
	#fileName = os.path.basename(xmlPath)
	#dirPath = os.path.dirname(xmlPath)
	#copyfile(outputPath + "/" + fileName.replace(".xml", ".c"), outputPath + "/../" + fileName.replace(".xml", ".c"))


# Textures
ExtractFile("assets/textures/xml/icon_item_24_static.xml", "assets/textures/icon_item_24_static")
ExtractFile("assets/textures/xml/icon_item_dungeon_static.xml", "assets/textures/icon_item_dungeon_static")
ExtractFile("assets/textures/xml/icon_item_field_static.xml", "assets/textures/icon_item_field_static")
ExtractFile("assets/textures/xml/icon_item_gameover_static.xml", "assets/textures/icon_item_gameover_static")
ExtractFile("assets/textures/xml/icon_item_nes_static.xml", "assets/textures/icon_item_nes_static")
ExtractFile("assets/textures/xml/icon_item_static.xml", "assets/textures/icon_item_static")

# Scenes and Rooms
ExtractFile("scenes/xml/test_levels/test01.xml", "scenes/test_levels/test01")
ExtractFile("scenes/xml/test_levels/testroom.xml", "scenes/test_levels/testroom")
ExtractFile("scenes/xml/test_levels/sutaru.xml", "scenes/test_levels/sutaru")
ExtractFile("scenes/xml/misc/kinsuta.xml", "scenes/misc/kinsuta")
ExtractFile("scenes/xml/misc/miharigoya.xml", "scenes/misc/miharigoya")