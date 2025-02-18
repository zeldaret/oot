# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from . import extract_xml_z64

if __name__ == "__main__":
    profile = False
    if profile:
        import cProfile

        cProfile.run("extract_xml_z64.main()", "cprofile_extract_assets.txt")
    else:
        extract_xml_z64.main()
