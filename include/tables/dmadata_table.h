/**
 * Select dmadata table for version
 */
#if !OOT_DEBUG || NON_MATCHING
// For retail versions and non-matching builds, dmadata is generated from the specfile segments
#include "dmadata_table_spec.h"
#else
#include "dmadata_table_mqdbg.h"
#endif
