/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#ifndef XML_H
#define XML_H

#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>

#include <libxml/parser.h>

#define XMLSTR_TO_STR(s) ((const char *)(s))

typedef void (*xml_parser_func)(const char *, void *);

typedef struct {
    const char *name;
    bool optional;
    xml_parser_func parser_func;
    size_t offset;
} xml_attr_spec[];

void
xml_parse_int(const char *value, void *out);
void
xml_parse_uint(const char *value, void *out);
void
xml_parse_s16(const char *value, void *out);
void
xml_parse_u8(const char *value, void *out);
void
xml_parse_s8(const char *value, void *out);
void
xml_parse_note_number(const char *value, void *out);
void
xml_parse_string(const char *value, void *out);
void
xml_parse_c_identifier(const char *value, void *out);
void
xml_parse_bool(const char *value, void *out);
void
xml_parse_float(const char *value, void *out);
void
xml_parse_double(const char *value, void *out);

void
xml_get_single_property(void *out, const xmlNodePtr node, const char *name, xml_parser_func parser);

void
xml_parse_node_by_spec(void *out, const xmlNodePtr node, const xml_attr_spec spec, size_t spec_length);

void
xml_print_tree(xmlDocPtr document);

#endif
