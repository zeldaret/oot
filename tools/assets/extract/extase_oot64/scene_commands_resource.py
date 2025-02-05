from __future__ import annotations
import enum
import struct
import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    File,
    Resource,
    RESOURCE_PARSE_SUCCESS,
    ResourceParseInProgress,
    ResourceParseWaiting,
)
from ..extase.cdata_resources import (
    CDataArrayResource,
    CDataExt_Value,
)

from .. import oot64_data

from . import scene_rooms_resources
from . import collision_resources
from . import room_shape_resources
from . import misc_resources


def _SHIFTR(v: int, s: int, w: int):
    assert isinstance(v, int)
    assert isinstance(s, int)
    assert isinstance(w, int)
    assert v >= 0
    assert s >= 0
    assert w >= 1
    return (v >> s) & ((1 << w) - 1)


VERBOSE_NOT_FULLY_PARSED_SCENECMD = False


class SceneCmdId(enum.Enum):
    # keep the SCENE_CMD_ID_ prefix for grepability
    SCENE_CMD_ID_SPAWN_LIST = 0
    SCENE_CMD_ID_ACTOR_LIST = enum.auto()
    SCENE_CMD_ID_UNUSED_2 = enum.auto()
    SCENE_CMD_ID_COLLISION_HEADER = enum.auto()
    SCENE_CMD_ID_ROOM_LIST = enum.auto()
    SCENE_CMD_ID_WIND_SETTINGS = enum.auto()
    SCENE_CMD_ID_ENTRANCE_LIST = enum.auto()
    SCENE_CMD_ID_SPECIAL_FILES = enum.auto()
    SCENE_CMD_ID_ROOM_BEHAVIOR = enum.auto()
    SCENE_CMD_ID_UNDEFINED_9 = enum.auto()
    SCENE_CMD_ID_ROOM_SHAPE = enum.auto()
    SCENE_CMD_ID_OBJECT_LIST = enum.auto()
    SCENE_CMD_ID_LIGHT_LIST = enum.auto()
    SCENE_CMD_ID_PATH_LIST = enum.auto()
    SCENE_CMD_ID_TRANSITION_ACTOR_LIST = enum.auto()
    SCENE_CMD_ID_LIGHT_SETTINGS_LIST = enum.auto()
    SCENE_CMD_ID_TIME_SETTINGS = enum.auto()
    SCENE_CMD_ID_SKYBOX_SETTINGS = enum.auto()
    SCENE_CMD_ID_SKYBOX_DISABLES = enum.auto()
    SCENE_CMD_ID_EXIT_LIST = enum.auto()
    SCENE_CMD_ID_END = enum.auto()
    SCENE_CMD_ID_SOUND_SETTINGS = enum.auto()
    SCENE_CMD_ID_ECHO_SETTINGS = enum.auto()
    SCENE_CMD_ID_CUTSCENE_DATA = enum.auto()
    SCENE_CMD_ID_ALTERNATE_HEADER_LIST = enum.auto()
    SCENE_CMD_ID_MISC_SETTINGS = enum.auto()


scene_cmd_macro_name_by_cmd_id = {
    SceneCmdId.SCENE_CMD_ID_SPAWN_LIST: "SCENE_CMD_SPAWN_LIST",
    SceneCmdId.SCENE_CMD_ID_ACTOR_LIST: "SCENE_CMD_ACTOR_LIST",
    SceneCmdId.SCENE_CMD_ID_UNUSED_2: "SCENE_CMD_UNUSED_02",
    SceneCmdId.SCENE_CMD_ID_COLLISION_HEADER: "SCENE_CMD_COL_HEADER",
    SceneCmdId.SCENE_CMD_ID_ROOM_LIST: "SCENE_CMD_ROOM_LIST",
    SceneCmdId.SCENE_CMD_ID_WIND_SETTINGS: "SCENE_CMD_WIND_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_ENTRANCE_LIST: "SCENE_CMD_ENTRANCE_LIST",
    SceneCmdId.SCENE_CMD_ID_SPECIAL_FILES: "SCENE_CMD_SPECIAL_FILES",
    SceneCmdId.SCENE_CMD_ID_ROOM_BEHAVIOR: "SCENE_CMD_ROOM_BEHAVIOR",
    SceneCmdId.SCENE_CMD_ID_UNDEFINED_9: "SCENE_CMD_UNK_09",
    SceneCmdId.SCENE_CMD_ID_ROOM_SHAPE: "SCENE_CMD_ROOM_SHAPE",
    SceneCmdId.SCENE_CMD_ID_OBJECT_LIST: "SCENE_CMD_OBJECT_LIST",
    SceneCmdId.SCENE_CMD_ID_LIGHT_LIST: "SCENE_CMD_LIGHT_LIST",
    SceneCmdId.SCENE_CMD_ID_PATH_LIST: "SCENE_CMD_PATH_LIST",
    SceneCmdId.SCENE_CMD_ID_TRANSITION_ACTOR_LIST: "SCENE_CMD_TRANSITION_ACTOR_LIST",
    SceneCmdId.SCENE_CMD_ID_LIGHT_SETTINGS_LIST: "SCENE_CMD_ENV_LIGHT_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_TIME_SETTINGS: "SCENE_CMD_TIME_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_SKYBOX_SETTINGS: "SCENE_CMD_SKYBOX_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_SKYBOX_DISABLES: "SCENE_CMD_SKYBOX_DISABLES",
    SceneCmdId.SCENE_CMD_ID_EXIT_LIST: "SCENE_CMD_EXIT_LIST",
    SceneCmdId.SCENE_CMD_ID_END: "SCENE_CMD_END",
    SceneCmdId.SCENE_CMD_ID_SOUND_SETTINGS: "SCENE_CMD_SOUND_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_ECHO_SETTINGS: "SCENE_CMD_ECHO_SETTINGS",
    SceneCmdId.SCENE_CMD_ID_CUTSCENE_DATA: "SCENE_CMD_CUTSCENE_DATA",
    SceneCmdId.SCENE_CMD_ID_ALTERNATE_HEADER_LIST: "SCENE_CMD_ALTERNATE_HEADER_LIST",
    SceneCmdId.SCENE_CMD_ID_MISC_SETTINGS: "SCENE_CMD_MISC_SETTINGS",
}


class SceneCommandsResource(Resource, can_size_be_unknown=True):
    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, None, name)
        self.parsed_commands: set[SceneCmdId] = set()
        self.player_entry_list_length = None
        self.room_list_length = None
        self.exit_list_length = None

    def try_parse_data(self, memory_context: "MemoryContext"):
        data = self.file.data[self.range_start :]

        new_progress_done = []
        waiting_for = []

        offset = 0
        cmd_id = None
        end_offset = None

        found_commands: set[SceneCmdId] = set()

        while offset + 8 <= len(data):
            (cmd_id_int, data1, pad2, data2_I) = struct.unpack_from(
                ">BBHI", data, offset
            )
            (_, data2_H0, data2_H1) = struct.unpack_from(">IHH", data, offset)
            (_, data2_B0, data2_B1, data2_B2, data2_B3) = struct.unpack_from(
                ">IBBBB", data, offset
            )

            offset += 8
            cmd_id = SceneCmdId(cmd_id_int)
            assert pad2 == 0

            found_commands.add(cmd_id)

            if cmd_id == SceneCmdId.SCENE_CMD_ID_END:
                assert data1 == 0
                assert data2_I == 0
                end_offset = offset
                self.parsed_commands.add(cmd_id)
                break

            if cmd_id in self.parsed_commands:
                continue

            if cmd_id == SceneCmdId.SCENE_CMD_ID_ACTOR_LIST:
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.ActorEntryListResource,
                    lambda file, offset: scene_rooms_resources.ActorEntryListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_ActorEntryList"
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported ActorEntryListResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_OBJECT_LIST:
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.ObjectListResource,
                    lambda file, offset: scene_rooms_resources.ObjectListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_ObjectList"
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported ObjectListResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_ROOM_SHAPE:
                room_shape_resources.report_room_shape_at_segmented(
                    self, memory_context, data2_I, self.name
                )
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported room shape resource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_ROOM_LIST:
                self.room_list_length = data1
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.RoomListResource,
                    lambda file, offset: scene_rooms_resources.RoomListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_RoomList"
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported RoomListResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_COLLISION_HEADER:
                assert data1 == 0
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    collision_resources.CollisionResource,
                    lambda file, offset: collision_resources.CollisionResource(
                        file, offset, f"{self.name}_{data2_I:08X}_Col"
                    ),
                )
                new_progress_done.append(("reported CollisionResource", cmd_id))
                if resource.is_data_parsed:
                    self.exit_list_length = resource.length_exitList
                    self.parsed_commands.add(cmd_id)
                    new_progress_done.append(
                        ("set self.exit_list_length from CollisionResource", cmd_id)
                    )
                else:
                    waiting_for.append(
                        (
                            "CollisionResource to be parsed to set self.exit_list_length",
                            cmd_id,
                            resource,
                        )
                    )

            if cmd_id == SceneCmdId.SCENE_CMD_ID_ENTRANCE_LIST:
                assert data1 == 0
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.SpawnListResource,
                    lambda file, offset: scene_rooms_resources.SpawnListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_SpawnList"
                    ),
                )
                new_progress_done.append(("reported SpawnListResource", cmd_id))
                if (
                    self.player_entry_list_length is not None
                    and self.room_list_length is not None
                ):
                    resource.player_entry_list_length = self.player_entry_list_length
                    resource.room_list_length = self.room_list_length
                    self.parsed_commands.add(cmd_id)
                    new_progress_done.append(
                        ("passed lengths to SpawnListResource", cmd_id)
                    )
                else:
                    waiting_for.append(
                        (
                            "self.player_entry_list_length and self.room_list_length"
                            " to pass to SpawnListResource",
                            cmd_id,
                        )
                    )

            if cmd_id == SceneCmdId.SCENE_CMD_ID_SPAWN_LIST:
                self.player_entry_list_length = data1
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.ActorEntryListResource,
                    lambda file, offset: scene_rooms_resources.ActorEntryListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_PlayerEntryList"
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported ActorEntryListResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_EXIT_LIST:
                # TODO length from collision
                assert data1 == 0
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.ExitListResource,
                    lambda file, offset: scene_rooms_resources.ExitListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_ExitList"
                    ),
                )
                new_progress_done.append(("reported ExitListResource", cmd_id))
                if self.exit_list_length is not None:
                    # TODO this doesnt work very well, eg need to trim to avoid overlaps
                    length = self.exit_list_length
                    # blindly align length to 2 (could/should check for zeros)
                    length = max(2, (length + 1) // 2 * 2)
                    # trim based on overlaps
                    while True:
                        _, other_resource = resource.file.get_resource_at(
                            resource.range_start
                            + length * resource.elem_cdata_ext.size
                            - 1
                        )
                        if other_resource is resource:
                            break
                        length -= 2
                    assert length > 0
                    resource.set_length(length)
                    self.parsed_commands.add(cmd_id)
                    new_progress_done.append(
                        ("passed length to ExitListResource", cmd_id, resource)
                    )
                else:
                    waiting_for.append(
                        (
                            "self.exit_list_length to (guess a length to) pass to ExitListResource",
                            cmd_id,
                        )
                    )

            if cmd_id == SceneCmdId.SCENE_CMD_ID_LIGHT_SETTINGS_LIST:
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.EnvLightSettingsListResource,
                    lambda file, offset: scene_rooms_resources.EnvLightSettingsListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_EnvLightSettingsList"
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(
                    ("reported EnvLightSettingsListResource", cmd_id)
                )

            if cmd_id == SceneCmdId.SCENE_CMD_ID_TRANSITION_ACTOR_LIST:
                resource = memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.TransitionActorEntryListResource,
                    lambda file, offset: scene_rooms_resources.TransitionActorEntryListResource(
                        file,
                        offset,
                        f"{self.name}_{data2_I:08X}_TransitionActorEntryList",
                    ),
                )
                resource.set_length(data1)
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(
                    ("reported TransitionActorEntryListResource", cmd_id)
                )

            if cmd_id == SceneCmdId.SCENE_CMD_ID_PATH_LIST:
                # TODO guess length, no other way I think
                assert data1 == 0
                memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    scene_rooms_resources.PathListResource,
                    lambda file, offset: scene_rooms_resources.PathListResource(
                        file, offset, f"{self.name}_{data2_I:08X}_PathList"
                    ),
                )
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported PathListResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_ALTERNATE_HEADER_LIST:
                # TODO guess length, no other way I think
                assert data1 == 0
                memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    AltHeadersResource,
                    lambda file, offset: AltHeadersResource(
                        file, offset, f"{self.name}_{data2_I:08X}_AltHeaders"
                    ),
                )
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported AltHeadersResource", cmd_id))

            if cmd_id == SceneCmdId.SCENE_CMD_ID_CUTSCENE_DATA:
                assert data1 == 0
                memory_context.report_resource_at_segmented(
                    self,
                    data2_I,
                    misc_resources.CutsceneResource,
                    lambda file, offset: misc_resources.CutsceneResource(
                        file, offset, f"{self.name}_{data2_I:08X}_Cs"
                    ),
                )
                self.parsed_commands.add(cmd_id)
                new_progress_done.append(("reported CutsceneResource", cmd_id))

        if cmd_id != SceneCmdId.SCENE_CMD_ID_END:
            raise Exception("reached end of data without encountering end marker")
        assert end_offset is not None

        # TODO hack until I have a clearer view of stuff once all cmds are loosely implemented
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_SOUND_SETTINGS)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_MISC_SETTINGS)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_SPECIAL_FILES)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_SKYBOX_SETTINGS)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_TIME_SETTINGS)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_ROOM_BEHAVIOR)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_ECHO_SETTINGS)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_SKYBOX_DISABLES)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_UNDEFINED_9)
        found_commands.discard(SceneCmdId.SCENE_CMD_ID_WIND_SETTINGS)

        self.range_end = self.range_start + end_offset
        assert self.parsed_commands.issubset(found_commands)

        if found_commands - self.parsed_commands:
            if VERBOSE_NOT_FULLY_PARSED_SCENECMD:
                print(
                    "NOT FULLY PARSED:",
                    self,
                    "Found commands:",
                    found_commands,
                    "Parsed commands:",
                    self.parsed_commands,
                    "FOUND BUT NOT PARSED:",
                    found_commands - self.parsed_commands,
                )

        if waiting_for:
            if new_progress_done:
                raise ResourceParseInProgress(
                    new_progress_done=new_progress_done, waiting_for=waiting_for
                )
            else:
                raise ResourceParseWaiting(waiting_for=waiting_for)

        assert self.parsed_commands == found_commands
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        return f"SceneCmd {self.symbol_name}[]"

    def write_extracted(self, memory_context):
        data = self.file.data[self.range_start : self.range_end]
        with self.extract_to_path.open("w") as f:
            f.write("{\n")
            for offset in range(0, len(data), 8):
                (cmd_id_int, data1, pad2, data2_I) = struct.unpack_from(
                    ">BBHI", data, offset
                )
                (_, data2_H0, data2_H1) = struct.unpack_from(">IHH", data, offset)
                (_, data2_B0, data2_B1, data2_B2, data2_B3) = struct.unpack_from(
                    ">IBBBB", data, offset
                )
                cmd_id = SceneCmdId(cmd_id_int)
                f.write(" " * 4)
                f.write(scene_cmd_macro_name_by_cmd_id[cmd_id])
                f.write("(")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_SPAWN_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ACTOR_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_UNUSED_2:
                    raise NotImplementedError(cmd_id)
                if cmd_id == SceneCmdId.SCENE_CMD_ID_COLLISION_HEADER:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ROOM_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_WIND_SETTINGS:
                    assert data1 == 0
                    # TODO cast x,y,z to s8
                    xDir = data2_B0
                    yDir = data2_B1
                    zDir = data2_B2
                    strength = data2_B3
                    f.write(f"{xDir}, {yDir}, {zDir}, {strength}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ENTRANCE_LIST:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_SPECIAL_FILES:
                    naviQuestHintFileId = data1
                    keepObjectId = data2_I
                    f.write(f"{naviQuestHintFileId}, {keepObjectId}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ROOM_BEHAVIOR:
                    gpFlags1 = data1
                    gpFlags2 = data2_I
                    behaviorType1 = gpFlags1
                    behaviorType2 = _SHIFTR(gpFlags2, 0, 8)
                    lensMode = _SHIFTR(gpFlags2, 8, 1)
                    disableWarpSongs = _SHIFTR(gpFlags2, 10, 1)
                    behaviorType1_name = oot64_data.get_room_behavior_type1_name(
                        behaviorType1
                    )
                    behaviorType2_name = oot64_data.get_room_behavior_type2_name(
                        behaviorType2
                    )
                    lensMode_name = oot64_data.get_lens_mode_name(lensMode)
                    disableWarpSongs_name = (
                        "true /* no warp songs */"
                        if disableWarpSongs
                        else "false /* warp songs enabled */"
                    )
                    f.write(
                        f"{behaviorType1_name}, {behaviorType2_name}, {lensMode_name}, {disableWarpSongs_name}"
                    )
                if cmd_id == SceneCmdId.SCENE_CMD_ID_UNDEFINED_9:
                    assert data1 == 0
                    assert data2_I == 0
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ROOM_SHAPE:
                    assert data1 == 0  # TODO these asserts should be done on parse?
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_OBJECT_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_LIGHT_LIST:
                    raise NotImplementedError(cmd_id)
                if cmd_id == SceneCmdId.SCENE_CMD_ID_PATH_LIST:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_TRANSITION_ACTOR_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_LIGHT_SETTINGS_LIST:
                    address = data2_I
                    f.write(
                        memory_context.get_c_expression_length_at_segmented(address)
                    )
                    f.write(", ")
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_TIME_SETTINGS:
                    assert data1 == 0
                    hour = data2_B0
                    min_ = data2_B1
                    timeSpeed = data2_B2
                    assert data2_B3 == 0

                    hour_str = "0xFF" if hour == 0xFF else str(hour)
                    min_str = "0xFF" if min_ == 0xFF else str(min_)
                    timeSpeed_str = "0xFF" if timeSpeed == 0xFF else str(timeSpeed)

                    if hour == 0xFF or min_ == 0xFF:
                        f.write("/* don't set time */ ")
                    f.write(f"{hour_str}, {min_str}, {timeSpeed_str}")
                    if timeSpeed == 0xFF or timeSpeed == 0:
                        f.write(" /* time doesn't move */")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_SKYBOX_SETTINGS:
                    assert data1 == 0
                    skyboxId = data2_B0
                    skyboxConfig = data2_B1
                    envLightMode = data2_B2
                    assert data2_B3 == 0
                    f.write(f"{skyboxId}, {skyboxConfig}, {envLightMode}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_SKYBOX_DISABLES:
                    assert data1 == 0
                    skyboxDisabled = data2_B0
                    sunMoonDisabled = data2_B1
                    assert data2_B2 == data2_B3 == 0
                    skyboxDisabled_name = (
                        "true /* no skybox */"
                        if skyboxDisabled
                        else "false /* skybox enabled */"
                    )
                    sunMoonDisabled_name = (
                        "true /* no sun/moon */"
                        if sunMoonDisabled
                        else "false /* sun/moon enabled */"
                    )
                    f.write(f"{skyboxDisabled_name}, {sunMoonDisabled_name}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_EXIT_LIST:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_END:
                    assert data1 == 0
                    assert data2_I == 0
                if cmd_id == SceneCmdId.SCENE_CMD_ID_SOUND_SETTINGS:
                    specId = data1
                    assert data2_B0 == 0
                    assert data2_B1 == 0
                    natureAmbienceId = data2_B2
                    seqId = data2_B3
                    natureAmbienceId_name = oot64_data.get_nature_ambience_id_name(
                        natureAmbienceId
                    )
                    seqId_name = oot64_data.get_sequence_id_name(seqId)
                    f.write(f"{specId}, {natureAmbienceId_name}, {seqId_name}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ECHO_SETTINGS:
                    assert data1 == 0
                    assert data2_B0 == data2_B1 == data2_B2 == 0
                    echo = data2_B3
                    f.write(f"{echo}")
                if cmd_id == SceneCmdId.SCENE_CMD_ID_CUTSCENE_DATA:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_ALTERNATE_HEADER_LIST:
                    assert data1 == 0
                    address = data2_I
                    f.write(memory_context.get_c_reference_at_segmented(address))
                if cmd_id == SceneCmdId.SCENE_CMD_ID_MISC_SETTINGS:
                    sceneCamType = data1
                    worldMapLocation = data2_I
                    sceneCamType_name = oot64_data.get_scene_cam_type_name(sceneCamType)
                    f.write(f"{sceneCamType_name}, {worldMapLocation}")

                f.write("),\n")
            f.write("}\n")

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError


class AltHeadersResource(CDataArrayResource):
    def report_elem(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        if address != 0:
            memory_context.report_resource_at_segmented(
                resource,
                address,
                SceneCommandsResource,
                lambda file, offset: SceneCommandsResource(
                    file, offset, f"{resource.name}_{address:08X}_Cmds"
                ),
            )

    def write_elem(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix: str
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        if address == 0:
            f.write("NULL")
        else:
            f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    elem_cdata_ext = (
        CDataExt_Value("I").set_report(report_elem).set_write(write_elem)
    )  # SceneCmd*

    def try_parse_data(self, memory_context):
        length = 0
        for i, (v,) in enumerate(
            struct.iter_unpack(">I", self.file.data[self.range_start :])
        ):
            if v == 0:
                if i < 3:
                    length = i + 1
                    continue
                else:
                    break

            try:
                resolve_result = memory_context.resolve_segmented(v)
            except:
                break
            data_may_be_scenecmds = False
            for j in range(
                resolve_result.file_offset, len(resolve_result.file.data), 8
            ):
                cmd_id_int = resolve_result.file.data[j]
                try:
                    cmd_id = SceneCmdId(cmd_id_int)
                except ValueError:
                    break
                if cmd_id == SceneCmdId.SCENE_CMD_ID_END:
                    data_may_be_scenecmds = True
                    break
            if not data_may_be_scenecmds:
                break
            length = i + 1
        assert length > 0
        self.set_length(length)
        return super().try_parse_data(memory_context)

    def get_c_declaration_base(self):
        return f"SceneCmd* {self.symbol_name}[]"
