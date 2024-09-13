/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "xml.h"
#include "util.h"

#define copy_out(out, v) memcpy((out), &(v), sizeof(v));

/**
 * Parse a string as an integer.
 *
 * The expected value matches case-insensitive regex `^\s*[-+]?(0x[0-9A-F]+|[0-9]+)\s*$`.
 * The value may be base 10, or base 16 with a (case-insensitive) 0x prefix.
 * Leading and trailing whitespace is ignored.
 */
static int
xml_str_to_int(const char *value)
{
    if (value == NULL || value[0] == '\0')
        goto err;

    bool neg = false;
    int res;

    size_t value_len = strlen(value);
    size_t start;

    // consume initial whitespace
    for (start = 0; start < value_len; start++) {
        if (!isspace(value[start]))
            break;
    }
    // if we consumed the whole string, it was bad
    if (start == value_len)
        goto err;

    // handle sign character if present
    if (value[start] == '+' || value[start] == '-') {
        neg = value[start] == '-';
        start++;
    }

    int base;

    // get absolute value in either base 10 or 16
    if (start + 2 < value_len && value[start + 0] == '0' && tolower(value[start + 1]) == 'x') {
        start += 2;
        base = 16;
    } else {
        base = 10;
    }

    char *str_end;
    res = strtol(&value[start], &str_end, base);
    size_t end = str_end - value;
    if (start == end)
        goto err;

    // consume trailing whitespace
    while (value[end] != '\0') {
        if (!isspace(value[end]))
            goto err;
        end++;
    }

    assert(end == value_len);

    // apply sign
    return neg ? -res : res;
err:
    error("bad int value %s", value);
}

void
xml_parse_int(const char *value, void *out)
{
    int v = xml_str_to_int(value);

    copy_out(out, v);
}

void
xml_parse_uint(const char *value, void *out)
{
    int v = xml_str_to_int(value);
    if (v < 0)
        error("Value should be unsigned");

    copy_out(out, v);
}

void
xml_parse_s16(const char *value, void *out)
{
    int v = xml_str_to_int(value);
    if (v < INT16_MIN || v > INT16_MAX)
        error("Value %d out of range for s16", v);
    int16_t vs16 = v;

    copy_out(out, vs16);
}

void
xml_parse_u8(const char *value, void *out)
{
    int v = xml_str_to_int(value);
    if (v < 0 || v > UINT8_MAX)
        error("Value %d out of range for u8", v);
    uint8_t vu8 = v;

    copy_out(out, vu8);
}

void
xml_parse_s8(const char *value, void *out)
{
    int v = xml_str_to_int(value);
    if (v < INT8_MIN || v > INT8_MAX)
        error("Value %d out of range for s8", v);
    int8_t vs8 = v;

    copy_out(out, vs8);
}

/**
 * Parse a note number name to its s8 [0;127] value.
 * For example "PITCH_EF4" -> 42.
 */
void
xml_parse_note_number(const char *value, void *out)
{
    size_t value_len = strlen(value);
    int8_t vs8;
    char c;

    if (value_len == 0)
        goto err;

    // consume initial whitespace
    size_t start;
    for (start = 0; start < value_len; start++) {
        if (!isspace(value[start]))
            break;
    }
    // if we consumed the whole string, it was bad
    if (start == value_len)
        goto err;

    c = toupper(value[start]);

    if (c >= 'A' && c <= 'G') {
        start++;

        // got a note number
        static const int8_t notes_lut[] = {
            /* A */ 12,
            /* B */ 14,
            /* C */ 3,
            /* D */ 5,
            /* E */ 7,
            /* F */ 8,
            /* G */ 10,
        };
        char cm = toupper(value[start]);
        int mod = 0;
        int v;

        if (value_len > start && (cm == 'F' || cm == 'S')) {
            // handle flat/sharp modifier
            mod = (cm == 'S') ? 1 : -1;
            start++;
        }

        if (start == value_len)
            goto err;

        bool neg = false;
        int res;

        // if value starts with NEG (ignoring case)
        if (start + 3 <= value_len && toupper(value[start + 0]) == 'N' && toupper(value[start + 1]) == 'E' &&
            toupper(value[start + 2]) == 'G') {
            neg = true;
            start += 3;
        }

        int base = 10;

        char *str_end;
        res = strtol(&value[start], &str_end, base);
        size_t end = str_end - value;
        if (start == end)
            goto err;

        // consume trailing whitespace
        while (value[end] != '\0') {
            if (!isspace(value[end]))
                goto err;
            end++;
        }

        assert(end == value_len);

        // apply sign
        v = neg ? -res : res;

        if (v < -1 || v > 10)
            error("Value %d out of range for note number", v);

        vs8 = (v - 1) * 12 + notes_lut[c - 'A'] + mod;
        if (vs8 < 0)
            vs8 += 128;
    } else { // got a raw value
        vs8 = xml_str_to_int(&value[start]);
    }

    if (vs8 < 0)
        goto err;

    copy_out(out, vs8);
    return;
err:
    error("Invalid note %s", value);
}

void
xml_parse_string(const char *value, void *out)
{
    // copies only the pointer to the string
    copy_out(out, value);
}

void
xml_parse_c_identifier(const char *value, void *out)
{
    if (!str_is_c_identifier(value))
        error("Input %s is not a valid C Language identifier", value);

    // copies only the pointer to the string
    copy_out(out, value);
}

void
xml_parse_bool(const char *value, void *out)
{
    bool v;

    // TODO make case-insensitive
    if (strequ(value, "true"))
        v = true;
    else if (strequ(value, "false"))
        v = false;
    else
        error("Invalid value %s for bool", value);

    copy_out(out, v);
}

void
xml_parse_float(const char *value, void *out)
{
    char *end;
    float v = strtof(value, &end);

    if (value == end)
        error("Invalid value %s for float", value);
    if (v < 0.0f)
        error("Only positive floats are allowed");

    copy_out(out, v);
}

void
xml_parse_double(const char *value, void *out)
{
    char *end;
    double v = strtod(value, &end);

    if (value == end)
        error("Invalid value %s for double", value);
    if (v < 0.0)
        error("Only positive doubles are allowed");

    copy_out(out, v);
}

void
xml_get_single_property(void *out, const xmlNodePtr node, const char *name, xml_parser_func parser)
{
    xmlAttrPtr attr = node->properties;

    if (attr == NULL || attr->next != NULL)
        error("Expected only property %s on line %d", name, node->line);

    const char *prop_name = XMLSTR_TO_STR(attr->name);

    if (!strequ(prop_name, name))
        error("Unexpected attribute on line %d: got: \"%s\", expected: \"%s\"", node->line, prop_name, name);

    xmlChar *xvalue = xmlNodeListGetString(node->doc, attr->children, 1);
    const char *value = XMLSTR_TO_STR(xvalue);

    parser(value, (uint8_t *)out);

    if (parser != xml_parse_string && parser != xml_parse_c_identifier)
        free(xvalue);
}

void
xml_parse_node_by_spec(void *out, const xmlNodePtr node, const xml_attr_spec spec, size_t spec_length)
{
    bool *got = alloca(spec_length * sizeof(bool));
    memset(got, false, spec_length * sizeof(bool));

    LL_FOREACH(xmlAttrPtr, attr, node->properties) {
        const char *name = XMLSTR_TO_STR(attr->name);
        bool found = false;

        for (size_t i = 0; i < spec_length; i++) {
            if (strequ(name, spec[i].name)) {
                // strictly speaking this pointer needs to be freed but we may want to save the string itself
                // so we just don't free it and let it clean up when the program terminates
                xmlChar *xvalue = xmlNodeListGetString(node->doc, attr->children, 1);
                const char *value = XMLSTR_TO_STR(xvalue);

                spec[i].parser_func(value, (uint8_t *)out + spec[i].offset);

                if (spec[i].parser_func != xml_parse_string && spec[i].parser_func != xml_parse_c_identifier)
                    free(xvalue); // free when we don't need the string in the future, TODO strdup when we do need it?

                got[i] = true;
                found = true;
                break;
            }
        }

        if (!found)
            error("Unrecognized attribute %s on line %d", name, node->line);
    }

    for (size_t i = 0; i < spec_length; i++) {
        if (!spec[i].optional && !got[i])
            error("Expected a %s attribute on line %d", spec[i].name, node->line);
    }
}

static void
xml_print_rec(xmlNodePtr base, int *pIndent)
{
    LL_FOREACH(xmlNodePtr, node, base) {
        if (node->type != XML_ELEMENT_NODE)
            continue;

        fprintf(stdout, "%*cChild is <%s> (%i)\n", *pIndent, ' ', node->name, node->type);
        *pIndent += 4;

        LL_FOREACH(xmlAttrPtr, attr, node->properties) {
            xmlChar *value = xmlNodeListGetString(node->doc, attr->children, 1);
            fprintf(stdout, "%*c- Property <%s> \"%s\"\n", *pIndent, ' ', attr->name, XMLSTR_TO_STR(value));
            free(value);
        }

        xml_print_rec(node->children, pIndent);
        *pIndent -= 4;
    }
}

void
xml_print_tree(xmlDocPtr document)
{
    xmlNodePtr root = xmlDocGetRootElement(document);
    int indent = 4;
    fprintf(stdout, "Root is <%s> (%i)\n", root->name, root->type);

    LL_FOREACH(xmlAttrPtr, attr, root->properties) {
        xmlChar *value = xmlNodeListGetString(root->doc, attr->children, 1);
        fprintf(stdout, "%*c- Property <%s> \"%s\"\n", indent, ' ', attr->name, XMLSTR_TO_STR(value));
        free(value);
    }

    xml_print_rec(root->children, &indent);
}
