/**
 * Select dmadata table for version
 */
#if !DEBUG_FEATURES || NON_MATCHING
// For retail versions and non-matching builds, dmadata is generated from the specfile segments
#include "dmadata_table_spec.h"
#else
#include "dmadata_table_mqdbg.h"
#endif
