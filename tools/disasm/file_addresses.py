import csv
from dataclasses import dataclass
from pathlib import Path

@dataclass
class DmaFile:
    name: str
    vrom_start: int
    vrom_end: int
    rom_start: int
    rom_end: int
    overlay_vram_start: int|None
    overlay_dir: str|None

def parse_file_addresses(path: Path) -> list[DmaFile]:
    result = []
    with open(path) as f:
        reader = csv.DictReader(f)
        for row in reader:
            name = row["name"]
            result.append(DmaFile(
                name=row["name"],
                vrom_start=int(row["vrom_start"], 16),
                vrom_end=int(row["vrom_end"], 16),
                rom_start=int(row["rom_start"], 16),
                rom_end=int(row["rom_end"], 16),
                overlay_vram_start=int(row["overlay_vram_start"], 16) if row["overlay_vram_start"] else None,
                overlay_dir=row["overlay_dir"] if row["overlay_dir"] else None))
    return result

def get_z_name_for_overlay(filename: str) -> str:
    if filename == "ovl_player_actor":
        return "z_player"
    elif filename.startswith("ovl_Effect_"):
        return "z_eff_" + filename[len("ovl_Effect_"):].lower()
    else:
        return "z_" + filename[len("ovl_"):].lower()
