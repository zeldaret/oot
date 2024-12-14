#include "versions.h"

/**
 * Select dmadata table for version
 */
#if OOT_VERSION == GC_EU_MQ_DBG && !NON_MATCHING
#include "dmadata_table_mqdbg.h"
#else
// For retail versions and non-matching builds, dmadata is generated from the specfile segments
#include "dmadata_table_spec.h"
#endif
