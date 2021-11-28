/**
 * Select dmadata table for version
 */
#ifdef NON_MATCHING
    // For non-matching builds, dmadata is generated from the specfile segments
    #include "include/tables/dmadata_table.h"
#else
    #include "tables/dmadata_table_mqdbg.h"
#endif
