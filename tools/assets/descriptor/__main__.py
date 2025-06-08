# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import argparse
from pprint import pprint as vanilla_pprint

try:
    from rich.pretty import pprint
except ImportError:
    pprint = vanilla_pprint

from tools import version_config

from . import base


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--version", "-v", default="gc-eu-mq-dbg")
    parser.add_argument("--all", action="store_true")
    parser.add_argument("-s", dest="single", default=None)
    args = parser.parse_args()

    if not args.all and args.single is None:
        parser.error("Must specify --all or -s")

    vc = version_config.load_version_config(args.version)

    pools = base.get_resources_desc(vc)

    try:
        for pool in pools:
            if not args.all and not any(
                coll.backing_memory.name == args.single
                for coll in pool.collections
                if isinstance(coll.backing_memory, base.BaseromFileBackingMemory)
            ):
                continue
            if any(coll.out_path.name == "gameplay_keep" for coll in pool.collections):
                vanilla_pprint(pool)
            else:
                pprint(pool)
            for coll in pool.collections:
                print(coll.out_path)
                for res in coll.resources:
                    print(f"0x{res.offset:06X}", res.symbol_name)
            if args.all:
                input("Press enter for next pool")
    except KeyboardInterrupt:
        print()


main()
