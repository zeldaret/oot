# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from xml.etree import ElementTree


class XMLDescError(Exception):
    pass


def check_attrib(
    elem: ElementTree.Element,
    required: set[str],
    optional: set[str] = set(),
):
    required_and_missing = required - elem.attrib.keys()
    if required_and_missing:
        raise XMLDescError(
            "Missing attributes on "
            + ElementTree.tostring(elem, encoding="unicode")
            + ": "
            + ", ".join(required_and_missing)
        )
    unknown = elem.attrib.keys() - required - optional
    if unknown:
        raise XMLDescError(
            "Unknown attributes on "
            + ElementTree.tostring(elem, encoding="unicode")
            + ": "
            + ", ".join(unknown)
        )
