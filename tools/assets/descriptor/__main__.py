from tools import version_config

from . import base


def main():
    vc = version_config.load_version_config("gc-eu-mq-dbg")

    pools = base.get_resources_desc(vc)

    from pprint import pprint

    if 0:
        with open(
            "/home/dragorn421/Documents/oot/tools/assets/descriptor/resources.txt",
            "w",
        ) as f:
            for i, pool in enumerate(pools):
                print(round(i / len(pools) * 100, 2), "%", end="\r")
                pprint(pool, f)


main()
