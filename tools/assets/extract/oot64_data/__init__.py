from __future__ import annotations
from typing import Sequence


I_D_OMEGALUL = True


from . import actor_ids


def get_actor_id_name(actor_id: int) -> str:
    return actor_ids.DATA[actor_id]


from . import object_ids


def get_object_id_name(object_id: int) -> str:
    return object_ids.DATA[object_id]


from . import entrance_table_mini
from . import entrance_ids_special


def get_entrance_id_name(entrance_id: int) -> str:
    if entrance_id in entrance_ids_special.DATA:
        return entrance_ids_special.DATA[entrance_id]
    return entrance_table_mini.DATA[entrance_id][0]


def get_entrance_scene_id_name(entrance_id: int) -> str:
    return entrance_table_mini.DATA[entrance_id][1]


def get_entrance_spawn(entrance_id: int) -> int:
    return entrance_table_mini.DATA[entrance_id][2]


entrance_ids_by_scene_id_name: dict[str, list[int]] = dict()
for (
    entrance_id,
    (
        entrance_id_name,
        entrance_scene_id_name,
        entrance_spawn,
    ),
) in enumerate(entrance_table_mini.DATA):
    entrance_ids_by_scene_id_name.setdefault(entrance_scene_id_name, []).append(
        entrance_id
    )


def get_entrance_ids_from_scene_id_name(scene_id_name: str) -> Sequence[int]:
    return entrance_ids_by_scene_id_name[scene_id_name]


from . import scene_table_mini


def get_scene_rom_file_name(scene_id: int) -> str:
    return scene_table_mini.DATA[scene_id][0]


def get_scene_id_name(scene_id: int) -> str:
    return scene_table_mini.DATA[scene_id][1]


scene_id_by_rom_file_name = {
    rom_file_name: scene_id
    for scene_id, (rom_file_name, scene_id_name) in enumerate(scene_table_mini.DATA)
}


def get_scene_id_from_rom_file_name(rom_file_name: str) -> int:
    return scene_id_by_rom_file_name[rom_file_name]


from . import dmadata_table


def get_dmadata_table_rom_file_names() -> Sequence[str]:
    return dmadata_table.DATA


dmadata = None


def get_dmadata_table_rom_file_name_from_vrom(vromStart: int, vromEnd: int) -> str:
    global dmadata
    if dmadata is None:
        import struct

        # FIXME handle multiversion
        with open("extracted/gc-eu-mq-dbg/baserom/dmadata", "rb") as f:
            bytes = f.read()
        dmadata = list(struct.iter_unpack(">IIII", bytes))
    for i, (e_vromStart, e_vromEnd, e_romStart, e_romEnd) in enumerate(dmadata):
        if e_vromStart == vromStart and e_vromEnd == vromEnd:
            break
    if i >= len(dmadata_table.DATA):
        raise ValueError("Can't find rom file", hex(vromStart), hex(vromEnd))
    return dmadata_table.DATA[i]


from . import audio_ids


def get_sequence_id_name(sequence_id: int) -> str:
    return audio_ids.SEQ_IDS[sequence_id]


def get_nature_ambience_id_name(nature_ambience_id: int) -> str:
    return audio_ids.NATURE_AMBIENCE_IDS[nature_ambience_id]


from . import misc_ids


def get_scene_cam_type_name(scene_cam_type: int) -> str:
    return misc_ids.SCENE_CAM_TYPES[scene_cam_type]


def get_room_behavior_type1_name(behavior_type1: int) -> str:
    return misc_ids.ROOM_BEHAVIOR_TYPE1_NAMES[behavior_type1]


def get_room_behavior_type2_name(behavior_type2: int) -> str:
    return misc_ids.ROOM_BEHAVIOR_TYPE2_NAMES[behavior_type2]


def get_lens_mode_name(lens_mode: int) -> str:
    return misc_ids.LENS_MODES[lens_mode]


def get_camera_setting_type_name(camera_setting_type: int) -> str:
    return misc_ids.CAMERA_SETTING_TYPES[camera_setting_type]
