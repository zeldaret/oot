# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from pprint import pprint as vanilla_pprint

try:
    from rich.pretty import pprint
except ImportError:
    pprint = vanilla_pprint

from tools import version_config

from . import base


def main():
    vc = version_config.load_version_config("gc-eu-mq-dbg")

    pools = base.get_resources_desc(vc)

    try:
        for pool in pools:
            if any(coll.out_path.name == "gameplay_keep" for coll in pool.collections):
                vanilla_pprint(pool)
            else:
                pprint(pool)
            input("Press enter for next pool")
    except KeyboardInterrupt:
        print()


main()
