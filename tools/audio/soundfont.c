/**
 * SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET
 * SPDX-License-Identifier: MPL-2.0
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#include "soundfont.h"
#include "xml.h"
#include "util.h"

envelope_data *
sf_get_envelope(soundfont *sf, const char *name)
{
    LL_FOREACH(envelope_data *, env, sf->envelopes) {
        if (env->points != NULL && strequ(name, env->name))
            return env;
    }
    return NULL;
}

sample_data *
sample_data_forname(soundfont *sf, const char *name)
{
    LL_FOREACH(sample_data *, sample, sf->samples) {
        if (strequ(sample->name, name))
            return sample;
    }
    return NULL;
}

void
read_soundfont_info(soundfont *sf, xmlNodePtr node)
{
    static const xml_attr_spec spec = {
        {"Name",             false, xml_parse_c_identifier, offsetof(soundfont, info.name)             },
        { "Index",           false, xml_parse_int,          offsetof(soundfont, info.index)            },
        { "Medium",          false, xml_parse_c_identifier, offsetof(soundfont, info.medium)           },
        { "CachePolicy",     false, xml_parse_c_identifier, offsetof(soundfont, info.cache_policy)     },
        { "SampleBank",      false, xml_parse_string,       offsetof(soundfont, info.bank_path)        },
        { "Indirect",        true,  xml_parse_int,          offsetof(soundfont, info.pointer_index)    },
        { "SampleBankDD",    true,  xml_parse_string,       offsetof(soundfont, info.bank_path_dd)     },
        { "IndirectDD",      true,  xml_parse_int,          offsetof(soundfont, info.pointer_index_dd) },
        { "LoopsHaveFrames", true,  xml_parse_bool,         offsetof(soundfont, info.loops_have_frames)},
        { "NumInstruments",  true,  xml_parse_uint,         offsetof(soundfont, info.num_instruments)  },
        { "PadToSize",       true,  xml_parse_uint,         offsetof(soundfont, info.pad_to_size)      },
    };
    sf->info.num_instruments = 0;
    sf->info.num_drums = 0;
    sf->info.num_effects = 0;
    sf->info.bank_path_dd = NULL;
    sf->info.pointer_index = -1;
    sf->info.pointer_index_dd = -1;
    sf->info.loops_have_frames = false;
    sf->info.pad_to_size = 0;
    xml_parse_node_by_spec(sf, node, spec, ARRAY_COUNT(spec));

    xmlDocPtr sb_doc = xmlReadFile(sf->info.bank_path, NULL, XML_PARSE_NONET);
    if (sb_doc == NULL)
        error("Failed to read sample bank xml file \"%s\"", sf->info.bank_path);
    read_samplebank_xml(&sf->sb, sb_doc);

    if (sf->info.bank_path_dd != NULL) {
        xmlDocPtr sbdd_doc = xmlReadFile(sf->info.bank_path_dd, NULL, XML_PARSE_NONET);
        if (sbdd_doc == NULL)
            error("Failed to read sample bank xml file \"%s\"", sf->info.bank_path);
        read_samplebank_xml(&sf->sbdd, sbdd_doc);
    }
}
