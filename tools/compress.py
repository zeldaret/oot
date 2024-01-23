# SPDX-FileCopyrightText: 2024 zeldaret
# SPDX-License-Identifier: CC0-1.0

from __future__ import annotations

import argparse
from pathlib import Path
import dataclasses
import struct
import time
import multiprocessing
import multiprocessing.pool

import crunch64


STRUCT_IIII = struct.Struct(">IIII")


@dataclasses.dataclass
class DmaEntry:
    """
    A Python counterpart to the dmadata entry struct:
    ```c
    typedef struct {
        /* 0x00 */ uintptr_t vromStart;
        /* 0x04 */ uintptr_t vromEnd;
        /* 0x08 */ uintptr_t romStart;
        /* 0x0C */ uintptr_t romEnd;
    } DmaEntry;
    ```
    """

    vromStart: int
    vromEnd: int
    romStart: int
    romEnd: int

    def __repr__(self):
        return (
            "DmaEntry("
            f"vromStart=0x{self.vromStart:08X}, "
            f"vromEnd=0x{self.vromEnd:08X}, "
            f"romStart=0x{self.romStart:08X}, "
            f"romEnd=0x{self.romEnd:08X}"
            ")"
        )

    SIZE_BYTES = STRUCT_IIII.size

    def to_bin(self, data: memoryview):
        STRUCT_IIII.pack_into(
            data,
            0,
            self.vromStart,
            self.vromEnd,
            self.romStart,
            self.romEnd,
        )

    @staticmethod
    def from_bin(data: memoryview):
        return DmaEntry(*STRUCT_IIII.unpack_from(data))


DMA_ENTRY_ZERO = DmaEntry(0, 0, 0, 0)


def align(v: int):
    v += 0xF
    return v // 0x10 * 0x10


@dataclasses.dataclass
class RomSegment:
    vromStart: int
    vromEnd: int
    is_compressed: bool
    data: memoryview | None
    data_async: multiprocessing.pool.AsyncResult | None

    @property
    def uncompressed_size(self):
        return self.vromEnd - self.vromStart


# Make interrupting the compression with ^C less jank
# https://stackoverflow.com/questions/72967793/keyboardinterrupt-with-python-multiprocessing-pool
def set_sigint_ignored():
    import signal

    signal.signal(signal.SIGINT, signal.SIG_IGN)


def compress_rom(
    rom_data: memoryview,
    dmadata_offset_start: int,
    dmadata_offset_end: int,
    compress_entries_indices: set[int],
    n_threads: int = None,
):
    """
    rom_data: the uncompressed rom data
    dmadata_offset_start: the offset in the rom where the dmadata starts (inclusive)
    dmadata_offset_end: the offset in the rom where the dmadata ends (exclusive)
    compress_entries_indices: the indices in the dmadata of the segments that should be compressed
    n_threads: how many cores to use for compression
    """

    # Segments of the compressed rom (not all are compressed)
    compressed_rom_segments: list[RomSegment] = []

    with multiprocessing.Pool(n_threads, initializer=set_sigint_ignored) as p:
        # Extract each segment from the input rom
        for entry_index, dmadata_offset in enumerate(
            range(dmadata_offset_start, dmadata_offset_end, DmaEntry.SIZE_BYTES)
        ):
            dma_entry = DmaEntry.from_bin(rom_data[dmadata_offset:])
            if dma_entry == DMA_ENTRY_ZERO:
                continue

            segment_rom_start = dma_entry.romStart
            segment_rom_end = dma_entry.romStart + (
                dma_entry.vromEnd - dma_entry.vromStart
            )
            segment_data_uncompressed = rom_data[segment_rom_start:segment_rom_end]

            is_compressed = entry_index in compress_entries_indices

            if is_compressed:
                segment_data = None
                segment_data_async = p.apply_async(
                    crunch64.yaz0.compress,
                    (bytes(segment_data_uncompressed),),
                )
            else:
                segment_data = segment_data_uncompressed
                segment_data_async = None

            compressed_rom_segments.append(
                RomSegment(
                    dma_entry.vromStart,
                    dma_entry.vromEnd,
                    is_compressed,
                    segment_data,
                    segment_data_async,
                )
            )

        # Technically optional but required for matching.
        compressed_rom_segments.sort(key=lambda segment: segment.vromStart)

        # Wait on compression of all compressed segments
        waiting_on_segments = [
            segment for segment in compressed_rom_segments if segment.is_compressed
        ]
        total_uncompressed_size_of_data_to_compress = sum(
            segment.uncompressed_size for segment in waiting_on_segments
        )
        uncompressed_size_of_data_compressed_so_far = 0
        while waiting_on_segments:
            # Show progress
            progress = (
                uncompressed_size_of_data_compressed_so_far
                / total_uncompressed_size_of_data_to_compress
            )
            print(f"Compressing... {progress * 100:.1f}%", end="\r")

            # The segments for which the compression is not finished yet are
            # added to this list
            still_waiting_on_segments = []
            got_some_results = False
            for segment in waiting_on_segments:
                assert segment.data is None
                assert segment.data_async is not None

                try:
                    compressed_data = segment.data_async.get(0)
                except multiprocessing.TimeoutError:
                    # Compression not finished yet
                    still_waiting_on_segments.append(segment)
                else:
                    # Compression finished!
                    assert isinstance(compressed_data, bytes)
                    segment.data = memoryview(compressed_data)
                    uncompressed_size_of_data_compressed_so_far += (
                        segment.uncompressed_size
                    )
                    got_some_results = True
                    segment.data_async = None

            if not got_some_results and still_waiting_on_segments:
                # Nothing happened this wait iteration, idle a bit
                time.sleep(0.010)

            waiting_on_segments = still_waiting_on_segments

    print("Putting together the compressed rom...")

    # Put together the compressed rom
    compressed_rom_size = sum(
        align(len(segment.data)) for segment in compressed_rom_segments
    )
    pad_to_multiple_of = 8 * 2**20  # 8 MiB
    compressed_rom_size_padded = (
        (compressed_rom_size + pad_to_multiple_of - 1)
        // pad_to_multiple_of
        * pad_to_multiple_of
    )
    compressed_rom_data = memoryview(bytearray(compressed_rom_size_padded))
    compressed_rom_dma_entries: list[DmaEntry] = []
    rom_offset = 0
    for segment in compressed_rom_segments:
        assert segment.data is not None

        segment_rom_start = rom_offset
        segment_rom_end = align(segment_rom_start + len(segment.data))

        i = segment_rom_start + len(segment.data)
        assert i <= len(compressed_rom_data)
        compressed_rom_data[segment_rom_start:i] = segment.data

        compressed_rom_dma_entries.append(
            DmaEntry(
                segment.vromStart,
                segment.vromEnd,
                segment_rom_start,
                segment_rom_end if segment.is_compressed else 0,
            )
        )

        rom_offset = segment_rom_end

    assert rom_offset == compressed_rom_size
    # Pad the compressed rom with the pattern matching the baseroms
    for i in range(compressed_rom_size, compressed_rom_size_padded):
        compressed_rom_data[i] = i % 256

    # Write the new dmadata
    dmadata_offset = dmadata_offset_start
    for dma_entry in compressed_rom_dma_entries:
        assert dmadata_offset + DmaEntry.SIZE_BYTES <= dmadata_offset_end

        dma_entry.to_bin(compressed_rom_data[dmadata_offset:])

        dmadata_offset += DmaEntry.SIZE_BYTES

    return compressed_rom_data


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--in",
        dest="in_rom",
        required=True,
        help="path to an uncompressed rom to be compressed",
    )
    parser.add_argument(
        "--out",
        dest="out_rom",
        required=True,
        help="path of the compressed rom to write out",
    )
    parser.add_argument(
        "--dma-range",
        dest="dma_range",
        required=True,
        help=(
            "The dmadata location in the rom, in format"
            " 'start_inclusive-end_exclusive' and using hexadecimal offsets"
            " (e.g. '0x12f70-0x19030')."
        ),
    )
    parser.add_argument(
        "--compress",
        dest="compress_ranges",
        required=True,
        help=(
            "The indices in the dmadata of the entries to be compressed,"
            " where 0 is the first entry."
            " It is a comma-separated list of individual indices and inclusive ranges."
            " e.g. '0-1,3,5,6-9' is all indices from 0 to 9 (included) except 2 and 4."
        ),
    )
    parser.add_argument(
        "--threads",
        dest="n_threads",
        type=int,
        default=1,
        help="how many cores to use for parallel compression",
    )
    args = parser.parse_args()

    in_rom_p = Path(args.in_rom)
    if not in_rom_p.exists():
        parser.error(f"Input rom file {in_rom_p} doesn't exist.")

    out_rom_p = Path(args.out_rom)

    dma_range_str: str = args.dma_range
    dma_range_ends_str = dma_range_str.split("-")
    assert len(dma_range_ends_str) == 2, dma_range_str
    dmadata_offset_start, dmadata_offset_end = (
        int(v_str, 16) for v_str in dma_range_ends_str
    )
    assert dmadata_offset_start < dmadata_offset_end, dma_range_str

    compress_ranges_str: str = args.compress_ranges
    compress_entries_indices = set()
    for compress_range_str in compress_ranges_str.split(","):
        compress_range_ends_str = compress_range_str.split("-")
        assert len(compress_range_ends_str) <= 2, (
            compress_range_ends_str,
            compress_range_str,
            compress_ranges_str,
        )
        compress_range_ends = [int(v_str) for v_str in compress_range_ends_str]
        if len(compress_range_ends) == 1:
            compress_entries_indices.add(compress_range_ends[0])
        else:
            assert len(compress_range_ends) == 2
            compress_range_first, compress_range_last = compress_range_ends
            compress_entries_indices.update(
                range(compress_range_first, compress_range_last + 1)
            )

    n_threads = args.n_threads

    in_rom_data = in_rom_p.read_bytes()
    out_rom_data = compress_rom(
        memoryview(in_rom_data),
        dmadata_offset_start,
        dmadata_offset_end,
        compress_entries_indices,
        n_threads,
    )
    out_rom_p.write_bytes(out_rom_data)


if __name__ == "__main__":
    main()
