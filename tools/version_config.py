# Version-specific configuration for setup and assets extraction

# SPDX-FileCopyrightText: © 2024 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

from collections import OrderedDict
import csv
import dataclasses
from pathlib import Path
from typing import Optional

import yaml

PROJECT_ROOT = Path(__file__).parent.parent


@dataclasses.dataclass
class VersionConfig:
    # Version name
    version: str
    checksums: list[str]
    # ROM offset to start of DMA table
    dmadata_start: int
    # "NTSC" (JP/EN), "PAL" (EN/DE/FR), or "CN" (JP/CN)
    text_lang: str
    # DMA segment information, in ROM order
    dmadata_segments: OrderedDict[str, SegmentInfo]
    # ROM pieces that are copied directly into the build with .incbin
    incbins: list[IncbinConfig]
    # Addresses of important variables needed for asset extraction
    variables: dict[str, int]
    # Assets to extract
    assets: list[AssetConfig]


@dataclasses.dataclass
class SegmentInfo:
    name: str
    vram: Optional[int]


@dataclasses.dataclass
class IncbinConfig:
    name: str
    segment: str
    vram: int
    size: int


@dataclasses.dataclass
class AssetConfig:
    name: str
    xml_path: Path
    start_offset: Optional[int]
    end_offset: Optional[int]


def load_dmadata_segments(version: str) -> OrderedDict[str, SegmentInfo]:
    segments = OrderedDict()
    with open(PROJECT_ROOT / f"baseroms/{version}/segments.csv", "r") as f:
        reader = csv.DictReader(f)
        for row in reader:
            name = row["Name"]
            vram = int(row["VRAM start"], 16) if row["VRAM start"] else None
            segments[name] = SegmentInfo(name, vram)
    return segments


def load_version_config(version: str) -> VersionConfig:
    with open(PROJECT_ROOT / f"baseroms/{version}/config.yml", "r") as f:
        config = yaml.load(f, Loader=yaml.Loader)

    incbins = []
    for incbin in config["incbins"]:
        incbins.append(
            IncbinConfig(
                incbin["name"], incbin["segment"], incbin["vram"], incbin["size"]
            )
        )

    assets = []
    for asset in config["assets"]:
        name = asset["name"]
        xml_path = Path(asset["xml_path"])
        start_offset = asset.get("start_offset", None)
        end_offset = asset.get("end_offset", None)
        assets.append(AssetConfig(name, xml_path, start_offset, end_offset))

    return VersionConfig(
        version=version,
        checksums=config.get("checksums", ["checksum"]),
        dmadata_start=config["dmadata_start"],
        text_lang=config["text_lang"],
        dmadata_segments=load_dmadata_segments(version),
        incbins=incbins,
        variables=config["variables"],
        assets=assets,
    )
