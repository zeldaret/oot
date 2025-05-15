# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import struct

from ..extase import (
    RESOURCE_PARSE_SUCCESS,
    File,
    Resource,
)

from tools import csdis


class CutsceneResource(Resource, can_size_be_unknown=True):

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, None, name)

    def try_parse_data(self, memory_context):
        assert self.range_start % 4 == 0
        data = self.file.data[self.range_start :]
        num_bytes = len(data)
        if num_bytes % 4 != 0:
            data = data[: -(num_bytes % 4)]
        data_words = [unpacked[0] for unpacked in struct.iter_unpack(">I", data)]
        size_words, cs_source = csdis.disassemble_cutscene(data_words)
        self.range_end = self.range_start + 4 * size_words
        self.cs_source = cs_source
        return RESOURCE_PARSE_SUCCESS

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError

    extracted_path_suffix = ".inc.c"

    def get_filename_stem(self):
        return f"{self.name}.csdata"

    def write_extracted(self, memory_context):
        with self.extract_to_path.open("w") as f:
            if not self.braces_in_source:
                f.write("{\n")
            f.write(self.cs_source)
            if not self.braces_in_source:
                f.write("}\n")

    def get_c_declaration_base(self):
        return f"CutsceneData {self.symbol_name}[]"

    def get_c_includes(self):
        return (
            "z64cutscene_commands.h",
            # TODO these are not always needed:
            "z64ocarina.h", # for OCARINA_ACTION_*
            "z64player.h", # for PLAYER_CUEID_*
        )

    def get_h_includes(self):
        return ("z64cutscene.h",)
