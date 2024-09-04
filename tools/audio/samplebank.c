/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include <assert.h>

#include "xml.h"
#include "samplebank.h"
#include "util.h"

const char *
samplebank_path_forname(samplebank *sb, const char *name)
{
    assert(name != NULL);

    for (size_t i = 0; i < sb->num_samples; i++) {
        if (strequ(sb->sample_names[i], name))
            return sb->sample_paths[i];
    }
    return NULL;
}

typedef struct {
    const char *name;
    const char *path;
} samplebank_xml_entry;

void
read_samplebank_xml(samplebank *sb, xmlDocPtr doc)
{
    // XML Example:
    // <SampleBank Name="" Index="" Medium="" CachePolicy="" BufferBug="">
    //     <Pointer Index=""/>
    //     <Sample Name="" Path=""/>
    //     <Blob Name="" Path=""/>

    static const xml_attr_spec header_spec = {
        {"Name",         false, xml_parse_c_identifier, offsetof(samplebank, name)        },
        { "Index",       false, xml_parse_int,          offsetof(samplebank, index)       },
        { "Medium",      false, xml_parse_c_identifier, offsetof(samplebank, medium)      },
        { "CachePolicy", false, xml_parse_c_identifier, offsetof(samplebank, cache_policy)},
        { "BufferBug",   true,  xml_parse_bool,         offsetof(samplebank, buffer_bug)  },
    };
    static const xml_attr_spec entry_spec = {
        {"Name",  false, xml_parse_c_identifier, offsetof(samplebank_xml_entry, name)},
        { "Path", false, xml_parse_string,       offsetof(samplebank_xml_entry, path)},
    };

    xmlNodePtr root = xmlDocGetRootElement(doc);

    if (!strequ(XMLSTR_TO_STR(root->name), "SampleBank"))
        error("Root node must be <SampleBank>");

    sb->buffer_bug = false;
    xml_parse_node_by_spec(sb, root, header_spec, ARRAY_COUNT(header_spec));

    if (root->children == NULL)
        error("Missing samples list");

    size_t entries_cap = 8;
    size_t entries_len = 0;
    sb->sample_names = malloc(entries_cap * sizeof(const char *));
    sb->sample_paths = malloc(entries_cap * sizeof(const char *));
    sb->is_sample = malloc(entries_cap * sizeof(bool));

    size_t pointers_cap = 4;
    size_t pointers_len = 0;
    sb->pointer_indices = malloc(pointers_cap * sizeof(int));

    LL_FOREACH(xmlNodePtr, node, root->children) {
        if (node->type != XML_ELEMENT_NODE)
            continue;

        if (node->children != NULL) {
            xmlNodePtr first_child = node->children;
            const char *child_name = XMLSTR_TO_STR(first_child->name);
            error("Unexpected child node(s) (first is %s) in samples list (line %d)", child_name, first_child->line);
        }

        const char *node_name = XMLSTR_TO_STR(node->name);
        bool is_sample;

        if (strequ(node_name, "Sample")) {
            is_sample = true;
        } else if (strequ(node_name, "Blob")) {
            is_sample = false;
        } else if (strequ(node_name, "Pointer")) {
            // pointer entry
            int ptr_index;
            xml_get_single_property(&ptr_index, node, "Index", xml_parse_int);

            if (pointers_len == pointers_cap) {
                pointers_cap *= 2;
                sb->pointer_indices = realloc(sb->pointer_indices, pointers_cap * sizeof(int));
            }
            sb->pointer_indices[pointers_len++] = ptr_index;
            continue;
        } else {
            error("Unexpected element node %s in samples list (line %d)", node_name, node->line);
        }

        samplebank_xml_entry ent;
        xml_parse_node_by_spec(&ent, node, entry_spec, ARRAY_COUNT(entry_spec));

        if (entries_len == entries_cap) {
            entries_cap *= 2;
            sb->sample_names = realloc(sb->sample_names, entries_cap * sizeof(const char *));
            sb->sample_paths = realloc(sb->sample_paths, entries_cap * sizeof(const char *));
            sb->is_sample = realloc(sb->is_sample, entries_cap * sizeof(bool));
        }

        sb->sample_names[entries_len] = ent.name;
        sb->sample_paths[entries_len] = ent.path;
        sb->is_sample[entries_len] = is_sample;
        entries_len++;
    }

    sb->num_samples = entries_len;
    sb->num_pointers = pointers_len;
}
