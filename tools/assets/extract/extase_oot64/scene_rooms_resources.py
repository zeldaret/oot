from __future__ import annotations
import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    RESOURCE_PARSE_SUCCESS,
    ResourceParseWaiting,
    ResourceParseInProgress,
)

from ..extase.cdata_resources import (
    CDataArrayResource,
    CDataArrayNamedLengthResource,
    CDataExt_Struct,
    CDataExt_Array,
    CDataExt_Value,
    cdata_ext_Vec3s,
    INDENT,
    Vec3sArrayResource,
)

from .. import oot64_data


VERBOSE_SPAWN_LIST_LENGTH_GUESSING = False


def fmt_hex_s(v: int, nibbles: int = 0):
    """Format v to 0x-prefixed uppercase hexadecimal, using (at least) the specified amount of nibbles.

    Meant for signed values (_s suffix),
    adds a space in place of where the - sign would be for positive values.

    Note compared to this,
    - f"{v:#X}" would produce an uppercase 0X (1 -> 0X1)
    - f"0x{v:X}" doesn't work with negative values (-1 -> 0x-1)
    """
    v_str = f"{v:0{nibbles}X}"
    if v < 0:
        v_str = v_str.removeprefix("-")
        return f"-0x{v_str}"
    else:
        return f" 0x{v_str}"


def fmt_hex_u(v: int, nibbles: int = 0):
    """Format v to 0x-prefixed uppercase hexadecimal, using (at least) the specified amount of nibbles.

    Meant for unsigned values (_u suffix),
    but won't fail for negative values.

    See: fmt_hex_s
    """
    v_str = f"{v:0{nibbles}X}"
    if v < 0:
        # Also handle v being negative just in case,
        # it will only mean the output isn't aligned as expected
        v_str = v_str.removeprefix("-")
        return f"-0x{v_str}"
    else:
        return f"0x{v_str}"


class ActorEntryListResource(CDataArrayNamedLengthResource):
    def write_elem(resource, memory_context, v, f: io.TextIOBase, line_prefix: str):
        assert isinstance(v, dict)
        f.write(line_prefix)
        f.write("{\n")

        f.write(line_prefix + INDENT)
        f.write(oot64_data.get_actor_id_name(v["id"]))
        f.write(",\n")

        f.write(line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(f"{p:6}" for p in (v["pos"][axis] for axis in "xyz")))
        f.write(" }, // pos\n")

        f.write(line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(fmt_hex_s(r, 4) for r in (v["rot"][axis] for axis in "xyz")))
        f.write(" }, // rot\n")

        f.write(line_prefix + INDENT)
        params = v["params"]
        f.write(fmt_hex_s(params, 4))
        if params < 0:
            params_u16 = params + 0x1_0000
            f.write(f" /* 0x{params_u16:04X} */")
        f.write(", // params\n")

        f.write(line_prefix)
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


class ObjectListResource(CDataArrayNamedLengthResource):
    elem_cdata_ext = CDataExt_Value("h").set_write_str_v(
        lambda v: oot64_data.get_object_id_name(v)
    )

    def get_c_declaration_base(self):
        return f"s16 {self.symbol_name}[{self.length_name}]"


def write_RomFile(resource, memory_context, v, f: io.TextIOBase, line_prefix: str):
    assert isinstance(v, dict)
    vromStart = v["vromStart"]
    vromEnd = v["vromEnd"]
    rom_file_name = oot64_data.get_dmadata_table_rom_file_name_from_vrom(
        vromStart, vromEnd
    )
    f.write(line_prefix)
    f.write(f"ROM_FILE({rom_file_name})")
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


class ExitListResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Value("h").set_write_str_v(
        lambda v: oot64_data.get_entrance_id_name(v)
    )

    # length set by SceneCommandsResource.try_parse_data

    def get_c_declaration_base(self):
        return f"s16 {self.symbol_name}[]"


class EnvLightSettingsListResource(CDataArrayNamedLengthResource):
    # TODO formatting
    elem_cdata_ext = CDataExt_Struct(
        (
            ("ambientColor", CDataExt_Array(CDataExt_Value.u8, 3)),
            ("light1Dir", CDataExt_Array(CDataExt_Value.s8, 3)),
            ("light1Color", CDataExt_Array(CDataExt_Value.u8, 3)),
            ("light2Dir", CDataExt_Array(CDataExt_Value.s8, 3)),
            ("light2Color", CDataExt_Array(CDataExt_Value.u8, 3)),
            ("fogColor", CDataExt_Array(CDataExt_Value.u8, 3)),
            ("blendRateAndFogNear", CDataExt_Value.s16),
            ("zFar", CDataExt_Value.s16),
        )
    )

    def get_c_declaration_base(self):
        return f"EnvLightSettings {self.symbol_name}[{self.length_name}]"


class TransitionActorEntryListResource(CDataArrayNamedLengthResource):
    def write_elem(resource, memory_context, v, f: io.TextIOBase, line_prefix: str):
        assert isinstance(v, dict)
        f.write(line_prefix)
        f.write("{\n")

        f.write(line_prefix + INDENT)
        f.write("{\n")
        f.write(line_prefix + 2 * INDENT)
        f.write("// { room, bgCamIndex }\n")
        for side_i in range(2):
            side = v["sides"][side_i]
            room = side["room"]
            bgCamIndex = side["bgCamIndex"]
            f.write(line_prefix + 2 * INDENT)
            f.write("{ ")
            f.write(f"{room}, {bgCamIndex}")
            f.write(" },\n")
        f.write(line_prefix + INDENT)
        f.write("}, // sides\n")

        f.write(line_prefix + INDENT)
        f.write(oot64_data.get_actor_id_name(v["id"]))
        f.write(",\n")

        f.write(line_prefix + INDENT)
        f.write("{ ")
        f.write(", ".join(f"{p:6}" for p in (v["pos"][axis] for axis in "xyz")))
        f.write(" }, // pos\n")

        f.write(line_prefix + INDENT)
        f.write(fmt_hex_s(v["rotY"], 4))
        f.write(", // rotY\n")

        f.write(line_prefix + INDENT)
        params = v["params"]
        f.write(fmt_hex_s(params, 4))
        if params < 0:
            params_u16 = params + 0x1_0000
            f.write(f" /* 0x{params_u16:04X} */")
        f.write(", // params\n")

        f.write(line_prefix)
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
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix: str
    ):
        assert isinstance(v, dict)
        count = v["count"]
        assert isinstance(count, int)
        points = v["points"]
        assert isinstance(points, int)
        f.write(line_prefix)
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
