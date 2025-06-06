# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    ResourceParseWaiting,
)

from ..extase.cdata_resources import (
    CDataArrayResource,
    CDataArrayNamedLengthResource,
    CDataExt_Struct,
    CDataExt_Array,
    CDataExt_Value,
    CDataExtWriteContext,
    cdata_ext_Vec3s,
    INDENT,
    Vec3sArrayResource,
    fmt_hex_s,
)

from .. import oot64_data


VERBOSE_SPAWN_LIST_LENGTH_GUESSING = False


class ActorEntryListResource(CDataArrayNamedLengthResource):
    def write_elem(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert isinstance(v, dict)
        f = wctx.f
        f.write(wctx.line_prefix)
        f.write("{\n")

        f.write(wctx.line_prefix + INDENT)
        f.write(oot64_data.get_actor_id_name(v["id"]))
        f.write(",\n")

        f.write(wctx.line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(f"{p:6}" for p in (v["pos"][axis] for axis in "xyz")))
        f.write(" }, // pos\n")

        f.write(wctx.line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(fmt_hex_s(r, 4) for r in (v["rot"][axis] for axis in "xyz")))
        f.write(" }, // rot\n")

        f.write(wctx.line_prefix + INDENT)
        params = v["params"]
        f.write(fmt_hex_s(params, 4))
        if params < 0:
            params_u16 = params + 0x1_0000
            f.write(f" /* 0x{params_u16:04X} */")
        f.write(", // params\n")

        f.write(wctx.line_prefix)
        f.write("}")

        return True

    elem_cdata_ext = CDataExt_Struct(
        (
            ("id", CDataExt_Value.s16),
            ("pos", cdata_ext_Vec3s),
            ("rot", cdata_ext_Vec3s),
            ("params", CDataExt_Value.s16),
        )
    ).set_write(write_elem)

    def get_c_declaration_base(self):
        return f"ActorEntry {self.symbol_name}[{self.length_name}]"

    def get_c_includes(self):
        return ("actor.h",)

    def get_h_includes(self):
        return ("scene.h",)


class ObjectListResource(CDataArrayNamedLengthResource):
    elem_cdata_ext = CDataExt_Value("h").set_write_str_v(
        lambda v: oot64_data.get_object_id_name(v)
    )

    def get_c_declaration_base(self):
        return f"s16 {self.symbol_name}[{self.length_name}]"

    def get_c_includes(self):
        return ("object.h",)

    def get_h_includes(self):
        return ("ultra64.h",)


def write_RomFile(
    resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
):
    assert isinstance(v, dict)
    vromStart = v["vromStart"]
    vromEnd = v["vromEnd"]
    rom_file_name = memory_context.get_dmadata_table_rom_file_name_from_vrom(
        vromStart, vromEnd
    )
    wctx.f.write(wctx.line_prefix)
    wctx.f.write(f"ROM_FILE({rom_file_name})")
    return True


cdata_ext_RomFile = CDataExt_Struct(
    (
        ("vromStart", CDataExt_Value.u32),
        ("vromEnd", CDataExt_Value.u32),
    )
).set_write(write_RomFile)


class RoomListResource(CDataArrayNamedLengthResource):
    elem_cdata_ext = cdata_ext_RomFile

    def get_c_declaration_base(self):
        return f"RomFile {self.symbol_name}[{self.length_name}]"

    def get_c_includes(self):
        # TODO use DECLARE_ROM_SEGMENT to declare rooms rom files
        return ("segment_symbols.h",)

    def get_h_includes(self):
        return ("romfile.h",)


class SpawnListResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("playerEntryIndex", CDataExt_Value.u8),
            ("room", CDataExt_Value.u8),
        )
    )

    # (eventually) set by SceneCommandsResource
    player_entry_list_length = None
    room_list_length = None

    def try_parse_data(self, memory_context):
        if self.player_entry_list_length is None or self.room_list_length is None:
            raise ResourceParseWaiting(
                waiting_for=[
                    msg
                    for is_waiting, msg in (
                        (
                            self.player_entry_list_length is None,
                            "self.player_entry_list_length",
                        ),
                        (
                            self.room_list_length is None,
                            "self.room_list_length",
                        ),
                    )
                    if is_waiting
                ]
            )

        # File.name comes from the Name attribute on a <File> element,
        # which is also used to make the path to the baserom file to read from.
        # So File.name is the name of the baserom file.
        # This may change in the future though ¯\_(ツ)_/¯
        rom_file_name = self.file.name
        # This way we can get the scene ID of the file
        scene_id = oot64_data.get_scene_id_from_rom_file_name(rom_file_name)
        scene_id_name = oot64_data.get_scene_id_name(scene_id)
        # Get all the spawns used by all entrances using the scene
        entrance_ids = oot64_data.get_entrance_ids_from_scene_id_name(scene_id_name)
        all_used_spawns = set()
        for entrance_id in entrance_ids:
            entrance_spawn = oot64_data.get_entrance_spawn(entrance_id)
            all_used_spawns.add(entrance_spawn)
        num_spawns = max(all_used_spawns) + 1

        # Handle the cases where the entrance table references spawn outside the spawn list,
        # by checking if the indices in the last spawn in the list make sense.
        # This is required for a few scenes in practice, otherwise the spawn list and exit list overlap.
        while True:
            last_spawn_unpacked = self.elem_cdata_ext.unpack_from(
                self.file.data,
                self.range_start + (num_spawns - 1) * self.elem_cdata_ext.size,
            )
            if (
                last_spawn_unpacked["playerEntryIndex"] < self.player_entry_list_length
                and last_spawn_unpacked["room"] < self.room_list_length
            ):
                break
            if VERBOSE_SPAWN_LIST_LENGTH_GUESSING:
                print(
                    self,
                    "Removing one spawn because the last spawn of the list has bad indices",
                    last_spawn_unpacked,
                    num_spawns,
                    "->",
                    num_spawns - 1,
                )
            num_spawns -= 1
            assert num_spawns > 0

        # Handle the case where there may be an unused spawn, in the place of
        # what would otherwise be padding.
        if oot64_data.I_D_OMEGALUL:
            assert self.elem_cdata_ext.size == 2
            if num_spawns % 2 == 1:
                data_to_next_4align = self.file.data[
                    self.range_start + num_spawns * 2 :
                ][:2]
                if data_to_next_4align != b"\x00\x00":
                    if VERBOSE_SPAWN_LIST_LENGTH_GUESSING:
                        print(
                            self,
                            "Adding one spawn because the next supposedly-padding"
                            " two bytes are not padding (not zero)",
                            bytes(data_to_next_4align),
                            num_spawns,
                            "->",
                            num_spawns + 1,
                        )
                    num_spawns += 1

        # Trim the list to avoid overlaps
        # TODO this may be linked to headers for cutscene layers not having the spawns the entrance table expects
        # for example spot00 hyrule field seems to always have a single 0,0 spawn for cutscene layers?
        # (so the above approach using the entrance table does not generalize to cutscene layers)
        # so it may be relevant to have the layer type when parsing the spawn list
        # Alternatively, somehow trim the variable-length resources when overlapping
        while True:
            range_end = self.range_start + num_spawns * self.elem_cdata_ext.size
            result, resource = self.file.get_resource_at(range_end - 1)
            if resource is self:
                break
            if VERBOSE_SPAWN_LIST_LENGTH_GUESSING:
                print(
                    self,
                    "Removing one spawn because the last spawn of the list overlaps with another resource",
                    resource,
                    num_spawns,
                    "->",
                    num_spawns - 1,
                )
            num_spawns -= 1
            assert num_spawns > 0

        self.set_length(num_spawns)
        return super().try_parse_data(memory_context)

    def get_c_declaration_base(self):
        return f"Spawn {self.symbol_name}[]"

    def get_h_includes(self):
        return ("scene.h",)


class ExitListResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Value("h").set_write_str_v(
        lambda v: oot64_data.get_entrance_id_name(v)
    )

    # length set by SceneCommandsResource.try_parse_data

    def get_c_declaration_base(self):
        return f"s16 {self.symbol_name}[]"

    def get_h_includes(self):
        return ("ultra64.h",)


class EnvLightSettingsListResource(CDataArrayNamedLengthResource):

    def write_color(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert not wctx.inhibit_top_braces
        wctx.f.write(wctx.line_prefix)
        wctx.f.write("{ " + f"{v[0]:3}, {v[1]:3}, {v[2]:3}" + " }")
        return True

    color_cdata_ext = CDataExt_Array(CDataExt_Value.u8, 3).set_write(write_color)

    def write_dir(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert not wctx.inhibit_top_braces
        wctx.f.write(wctx.line_prefix)
        wctx.f.write("{ " + f"{v[0]:4}, {v[1]:4}, {v[2]:4}" + " }")
        return True

    dir_cdata_ext = CDataExt_Array(CDataExt_Value.s8, 3).set_write(write_dir)

    def write_blendRateAndFogNear(v):
        blendRate = (v >> 10) * 4
        fogNear = v & 0x3FF
        return f"(({blendRate} / 4) << 10) | {fogNear}"

    elem_cdata_ext = CDataExt_Struct(
        (
            ("ambientColor", color_cdata_ext),
            ("light1Dir", dir_cdata_ext),
            ("light1Color", color_cdata_ext),
            ("light2Dir", dir_cdata_ext),
            ("light2Color", color_cdata_ext),
            ("fogColor", color_cdata_ext),
            (
                "blendRateAndFogNear",
                CDataExt_Value("h").set_write_str_v(write_blendRateAndFogNear),
            ),
            ("zFar", CDataExt_Value.s16),
        )
    )

    def get_c_declaration_base(self):
        return f"EnvLightSettings {self.symbol_name}[{self.length_name}]"

    def get_h_includes(self):
        return ("environment.h",)


class TransitionActorEntryListResource(CDataArrayNamedLengthResource):
    def write_elem(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert isinstance(v, dict)
        f = wctx.f
        f.write(wctx.line_prefix)
        f.write("{\n")

        f.write(wctx.line_prefix + INDENT)
        f.write("{\n")
        f.write(wctx.line_prefix + 2 * INDENT)
        f.write("// { room, bgCamIndex }\n")
        for side_i in range(2):
            side = v["sides"][side_i]
            room = side["room"]
            bgCamIndex = side["bgCamIndex"]
            f.write(wctx.line_prefix + 2 * INDENT)
            f.write("{ ")
            f.write(f"{room}, {bgCamIndex}")
            f.write(" },\n")
        f.write(wctx.line_prefix + INDENT)
        f.write("}, // sides\n")

        f.write(wctx.line_prefix + INDENT)
        f.write(oot64_data.get_actor_id_name(v["id"]))
        f.write(",\n")

        f.write(wctx.line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(f"{p:6}" for p in (v["pos"][axis] for axis in "xyz")))
        f.write(" }, // pos\n")

        f.write(wctx.line_prefix + INDENT)
        f.write(fmt_hex_s(v["rotY"], 4))
        f.write(", // rotY\n")

        f.write(wctx.line_prefix + INDENT)
        params = v["params"]
        f.write(fmt_hex_s(params, 4))
        if params < 0:
            params_u16 = params + 0x1_0000
            f.write(f" /* 0x{params_u16:04X} */")
        f.write(", // params\n")

        f.write(wctx.line_prefix)
        f.write("}")

        return True

    elem_cdata_ext = CDataExt_Struct(
        (
            (
                "sides",
                CDataExt_Array(
                    CDataExt_Struct(
                        (
                            ("room", CDataExt_Value.s8),
                            ("bgCamIndex", CDataExt_Value.s8),
                        )
                    ),
                    2,
                ),
            ),
            ("id", CDataExt_Value.s16),
            ("pos", cdata_ext_Vec3s),
            ("rotY", CDataExt_Value.s16),
            ("params", CDataExt_Value.s16),
        )
    ).set_write(write_elem)

    def get_c_declaration_base(self):
        return f"TransitionActorEntry {self.symbol_name}[{self.length_name}]"

    def get_c_includes(self):
        return ("actor.h",)

    def get_h_includes(self):
        return ("scene.h",)


class PathListResource(CDataArrayResource):
    def report_elem(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, dict)
        count = v["count"]
        assert isinstance(count, int)
        points = v["points"]
        assert isinstance(points, int)
        memory_context.report_resource_at_segmented(
            resource,
            points,
            Vec3sArrayResource,
            lambda file, offset: Vec3sArrayResource(
                file, offset, f"{resource.name}_{points:08X}_Points", count
            ),
        )

    def write_elem(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, dict)
        count = v["count"]
        assert isinstance(count, int)
        points = v["points"]
        assert isinstance(points, int)
        f = wctx.f
        f.write(wctx.line_prefix)
        f.write("{ ")
        f.write(memory_context.get_c_expression_length_at_segmented(points))
        f.write(", ")
        f.write(memory_context.get_c_reference_at_segmented(points))
        f.write(" }")
        return True

    elem_cdata_ext = (
        CDataExt_Struct(
            (
                ("count", CDataExt_Value.u8),
                ("pad1", CDataExt_Value.pad8),
                ("pad2", CDataExt_Value.pad16),
                ("points", CDataExt_Value("I")),  # Vec3s*
            )
        )
        .set_report(report_elem)
        .set_write(write_elem)
    )

    def try_parse_data(self, memory_context):
        if self._length is None:
            # TODO guess
            self.set_length(1)
        return super().try_parse_data(memory_context)

    def get_c_declaration_base(self):
        return f"Path {self.symbol_name}[]"

    def get_h_includes(self):
        return ("path.h",)
