// Scene files are reordered between versions. On GameCube and iQue, dungeon scenes
// have been moved to the beginning.
#if PLATFORM_N64
#include "scenes_n64.inc"
#else
#include "scenes_gc_ique.inc"
#endif
