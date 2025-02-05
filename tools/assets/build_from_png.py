#!/usr/bin/env python3

import sys
from pathlib import Path


VERBOSE = False

from n64 import G_IM_FMT, G_IM_SIZ
import n64yatc
from png2raw import png2raw


def main():
    png_path = Path(sys.argv[1])
    out_bin_path = Path(sys.argv[2])

    suffixes = png_path.suffixes
    assert len(suffixes) >= 2
    assert suffixes[-1] == ".png"
    suffixes.pop()
    if suffixes[-1] in {".u64", ".u32"}:
        suffixes.pop()
    assert len(suffixes) > 0
    if suffixes[-1].startswith(".tlut_"):
        tlut_info = suffixes.pop().removeprefix(".")
    else:
        tlut_info = None
    assert len(suffixes) > 0
    fmtsiz_str = suffixes[-1].removeprefix(".")

    fmt, siz = None, None
    for candidate_fmt in G_IM_FMT:
        for candidate_siz in G_IM_SIZ:
            candidate_fmtsiz_str = f"{candidate_fmt.name.lower()}{candidate_siz.bpp}"
            if candidate_fmtsiz_str == fmtsiz_str:
                fmt = candidate_fmt
                siz = candidate_siz

    assert fmt is not None and siz is not None, fmtsiz_str

    if fmt != G_IM_FMT.CI:
        with png2raw.Instance(png_path) as png:
            data_rgba32 = png.read_to_rgba32()
        tex_bin = n64yatc.convert(data_rgba32, G_IM_FMT.RGBA, G_IM_SIZ._32b, fmt, siz)
        # print(len(tex_bin), tex_bin[:0x10], tex_bin[-0x10:], file=sys.stderr)
        # sys.stdout.buffer.write(tex_bin) # for some reason the *string* "None." is also written to stdout???
        out_bin_path.write_bytes(tex_bin)
    else:
        # TODO probably move tlut_info and overall tex file suffix construction/parsing to its own library

        if tlut_info is None:
            tlut_elem_type = "u64"
            tlut_out_bin_path_base_str = str(out_bin_path)
            tlut_out_bin_path_base_str = tlut_out_bin_path_base_str.removesuffix(".bin")
            if tlut_out_bin_path_base_str.endswith(".u64"):
                tlut_out_bin_path_base_str = tlut_out_bin_path_base_str.removesuffix(
                    ".u64"
                )
            all_pngs_using_tlut = [png_path]
        else:
            tlut_elem_type = "u64"
            if tlut_info.endswith("_u64"):
                tlut_elem_type = "u64"
                tlut_name = tlut_info.removeprefix("tlut_").removesuffix("_u64")
            elif tlut_info.endswith("_u32"):
                tlut_elem_type = "u32"
                tlut_name = tlut_info.removeprefix("tlut_").removesuffix("_u32")
            else:
                tlut_name = tlut_info.removeprefix("tlut_")
            tlut_out_bin_path_base_str = str(out_bin_path.parent / tlut_name)

            # TODO this is far from perfect.
            #  what if a tlut_name is included in another
            #  what if not in the same folder (just don't support that)
            #  does the same png get built several times
            all_pngs_using_tlut = list(png_path.parent.glob(f"*.tlut_{tlut_name}*.png"))
            assert png_path in all_pngs_using_tlut
        tlut_out_bin_path = Path(
            f"{tlut_out_bin_path_base_str}.tlut.rgba16.{tlut_elem_type}.bin"
        )

        if VERBOSE:
            print(all_pngs_using_tlut)

        with png2raw.Instance(png_path) as png:
            palette_rgba32 = png.get_palette_rgba32()
            data_ci8 = png.read_palette_indices()
        tex_bin = n64yatc.convert(data_ci8, G_IM_FMT.CI, G_IM_SIZ._8b, fmt, siz)
        tlut_bin = n64yatc.convert(
            palette_rgba32, G_IM_FMT.RGBA, G_IM_SIZ._32b, G_IM_FMT.RGBA, G_IM_SIZ._16b
        )
        out_bin_path.write_bytes(tex_bin)
        tlut_out_bin_path.write_bytes(tlut_bin)

        import subprocess

        # HACK since the makefile doesn't know the tlut file should be built (bin2c'd), build it here
        cmd = [
            "tools/assets/bin2c/bin2c",
            tlut_elem_type,
        ]
        with tlut_out_bin_path.open("rb") as fin:
            with tlut_out_bin_path.with_suffix(".inc.c").open("w") as fout:
                subprocess.check_call(cmd, stdin=fin, stdout=fout)


if __name__ == "__main__":
    main()
