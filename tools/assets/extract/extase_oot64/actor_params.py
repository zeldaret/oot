def bits(p: int, s: int, n: int):
    return (p >> s) & ((1 << n) - 1)


def cbool(b: bool):
    return "true" if b else "false"


def params_en_door(params: int, **kwargs):
    unused_mask = 0b1111_1100_0011_1111
    type = bits(params, 7, 3)
    type_name = [
        "DOOR_ROOMLOAD",
        "DOOR_LOCKED",
        "DOOR_ROOMLOAD2",
        "DOOR_SCENEEXIT",
        "DOOR_AJAR",
        "DOOR_CHECKABLE",
        "DOOR_EVENING",
        "DOOR_ROOMLOAD7",
    ][type]
    isDoubleDoor = bits(params, 6, 1) != 0
    if type_name == "DOOR_LOCKED":
        unused_mask &= ~0b0011_1111
        switchFlag = bits(params, 0, 6)
        params_str = f"ENDOOR_PARAMS_LOCKED({cbool(isDoubleDoor)}, {switchFlag})"
    elif type_name == "DOOR_CHECKABLE":
        unused_mask &= ~0b0011_1111
        textIdMinux0x0200 = bits(params, 0, 6)
        params_str = (
            f"ENDOOR_PARAMS_CHECKABLE({cbool(isDoubleDoor)}, {textIdMinux0x0200})"
        )
    elif type_name == "DOOR_EVENING":
        unused_mask &= ~0b0011_1111
        textIdMinux0x0200 = bits(params, 0, 6)
        params_str = (
            f"ENDOOR_PARAMS_EVENING({cbool(isDoubleDoor)}, {textIdMinux0x0200})"
        )
    else:
        unused_mask &= ~0b0011_1111
        data = bits(params, 0, 6)
        assert data == 0x3F
        params_str = f"ENDOOR_PARAMS_NODATA({type_name}, {cbool(isDoubleDoor)})"
    assert (params & unused_mask) == 0, (f"{params:#06X}", params_str)
    return params_str


def params_en_wood02(params: int, rot_z: int, **kwargs):
    type = bits(params, 0, 8)
    data = bits(params, 8, 8)

    type_name = [
        "WOOD_TREE_CONICAL_LARGE",
        "WOOD_TREE_CONICAL_MEDIUM",
        "WOOD_TREE_CONICAL_SMALL",
        "WOOD_TREE_CONICAL_SPAWNER",
        "WOOD_TREE_CONICAL_SPAWNED",
        "WOOD_TREE_OVAL_GREEN",
        "WOOD_TREE_OVAL_YELLOW_SPAWNER",
        "WOOD_TREE_OVAL_YELLOW_SPAWNED",
        "WOOD_TREE_OVAL_GREEN_SPAWNER",
        "WOOD_TREE_OVAL_GREEN_SPAWNED",
        "WOOD_TREE_KAKARIKO_ADULT",
        "WOOD_BUSH_GREEN_SMALL",
        "WOOD_BUSH_GREEN_LARGE",
        "WOOD_BUSH_GREEN_SMALL_SPAWNER",
        "WOOD_BUSH_GREEN_SMALL_SPAWNED",
        "WOOD_BUSH_GREEN_LARGE_SPAWNER",
        "WOOD_BUSH_GREEN_LARGE_SPAWNED",
        "WOOD_BUSH_BLACK_SMALL",
        "WOOD_BUSH_BLACK_LARGE",
        "WOOD_BUSH_BLACK_SMALL_SPAWNER",
        "WOOD_BUSH_BLACK_SMALL_SPAWNED",
        "WOOD_BUSH_BLACK_LARGE_SPAWNER",
        "WOOD_BUSH_BLACK_LARGE_SPAWNED",
        "WOOD_LEAF_GREEN",
        "WOOD_LEAF_YELLOW",
    ][type]

    if rot_z != 0:
        # TODO figure out when EnSw params are documented
        data_str = f"0x{data:02X}"
    elif data == 0xFF:
        data_str = "0xFF"
    else:
        data_str = [
            "COLLECTIBLE_DROP_TABLE_0",
            "COLLECTIBLE_DROP_TABLE_1",
            "COLLECTIBLE_DROP_TABLE_2",
            "COLLECTIBLE_DROP_TABLE_3",
            "COLLECTIBLE_DROP_TABLE_4",
            "COLLECTIBLE_DROP_TABLE_5",
            "COLLECTIBLE_DROP_TABLE_6",
            "COLLECTIBLE_DROP_TABLE_7",
            "COLLECTIBLE_DROP_TABLE_8",
            "COLLECTIBLE_DROP_TABLE_9",
            "COLLECTIBLE_DROP_TABLE_10",
            "COLLECTIBLE_DROP_TABLE_11",
            "COLLECTIBLE_DROP_TABLE_12",
            "COLLECTIBLE_DROP_TABLE_13",
            "COLLECTIBLE_DROP_TABLE_14",
        ][data]

    return f"ENWOOD02_PARAMS({type_name}, {data_str})"


PARAMS_FMT = {
    "ACTOR_EN_DOOR": params_en_door,
    "ACTOR_EN_WOOD02": params_en_wood02,
}

INCLUDES = {
    "ACTOR_EN_DOOR": ["src/overlays/actors/ovl_En_Door/z_en_door.h"],
    "ACTOR_EN_WOOD02": [
        "src/overlays/actors/ovl_En_Wood02/z_en_wood02.h",
        "z_en_item00.h",  # for COLLECTIBLE_DROP_TABLE_* but TODO not always needed
    ],
}
