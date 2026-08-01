#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsfreeblocks.o"
#endif
    include "$(BUILD_DIR)/src/libultra/mgu/scale.o"
    include "$(BUILD_DIR)/src/libultra/gu/sinf.o"
    include "$(BUILD_DIR)/src/libultra/gu/sins.o"
    include "$(BUILD_DIR)/src/libultra/io/sptask.o"
    include "$(BUILD_DIR)/src/libultra/io/motor.o"
    include "$(BUILD_DIR)/src/libultra/io/siacs.o"
    include "$(BUILD_DIR)/src/libultra/io/controller.o"
    include "$(BUILD_DIR)/src/libultra/io/contreaddata.o"
    include "$(BUILD_DIR)/src/libultra/gu/perspective.o"
    include "$(BUILD_DIR)/src/libultra/io/sprawdma.o"
    include "$(BUILD_DIR)/src/libultra/io/sirawdma.o"
    include "$(BUILD_DIR)/src/libultra/io/sptaskyield.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsreadwritefile.o"
    include "$(BUILD_DIR)/src/libultra/io/pfsgetstatus.o"
#endif
    include "$(BUILD_DIR)/src/libultra/mgu/mtxidentf.o"
    include "$(BUILD_DIR)/src/libultra/gu/lookat.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsallocatefile.o"
#endif
    include "$(BUILD_DIR)/src/libultra/os/stoptimer.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/contpfs.o"
    include "$(BUILD_DIR)/src/libultra/mgu/mtxl2f.o"
    include "$(BUILD_DIR)/src/libultra/io/pfsfindfile.o"
#endif
    include "$(BUILD_DIR)/src/libultra/gu/sqrtf.o"
    include "$(BUILD_DIR)/src/libultra/os/afterprenmi.o"
    include "$(BUILD_DIR)/src/libultra/io/contquery.o"
    include "$(BUILD_DIR)/src/libultra/gu/lookathil.o"
#if !DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/libc/xprintf.o"
    include "$(BUILD_DIR)/src/libultra/libc/string.o"
#endif
    include "$(BUILD_DIR)/src/libultra/io/sp.o"
    include "$(BUILD_DIR)/src/libultra/mgu/mtxident.o"
    include "$(BUILD_DIR)/src/libultra/gu/position.o"
    include "$(BUILD_DIR)/src/libultra/io/sptaskyielded.o"
    include "$(BUILD_DIR)/src/libultra/gu/rotate.o"
    include "$(BUILD_DIR)/src/libultra/io/aisetfreq.o"
    include "$(BUILD_DIR)/src/libultra/os/getactivequeue.o"
    include "$(BUILD_DIR)/src/libultra/mgu/normalize.o"
    include "$(BUILD_DIR)/src/libultra/io/dpgetstat.o"
    include "$(BUILD_DIR)/src/libultra/io/dpsetstat.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsdeletefile.o"
#endif
    include "$(BUILD_DIR)/src/libultra/gu/ortho.o"
    include "$(BUILD_DIR)/src/libultra/gu/cosf.o"
    include "$(BUILD_DIR)/src/libultra/gu/libm_vals.o"
    include "$(BUILD_DIR)/src/libultra/gu/coss.o"
    include "$(BUILD_DIR)/src/libultra/io/visetevent.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsisplug.o"
#endif
    include "$(BUILD_DIR)/src/libultra/gu/us2dex.o"
    include "$(BUILD_DIR)/src/libultra/io/pfsselectbank.o"
    include "$(BUILD_DIR)/src/libultra/io/contsetch.o"
#if DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsfilestate.o"
    include "$(BUILD_DIR)/src/libultra/io/pfsinitpak.o"
    include "$(BUILD_DIR)/src/libultra/io/pfschecker.o"
#endif
    include "$(BUILD_DIR)/src/libultra/io/aigetlen.o"
    include "$(BUILD_DIR)/src/libultra/mgu/translate.o"
    include "$(BUILD_DIR)/src/libultra/io/contramwrite.o"
#if !DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/vimodefpallan1.o"
    include "$(BUILD_DIR)/src/libultra/io/pfsgetstatus.o"
    include "$(BUILD_DIR)/src/libultra/io/contpfs.o"
#endif
    include "$(BUILD_DIR)/src/libultra/io/contramread.o"
    include "$(BUILD_DIR)/src/libultra/io/crc.o"
#if !DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/io/pfsisplug.o"
#endif
    include "$(BUILD_DIR)/src/libultra/os/settimer.o"
#if !DEBUG_FEATURES
    include "$(BUILD_DIR)/src/libultra/libc/xldtob.o"
    include "$(BUILD_DIR)/src/libultra/libc/ldiv.o"
    include "$(BUILD_DIR)/src/libultra/libc/xlitob.o"
#endif
    include "$(BUILD_DIR)/src/libultra/io/spgetstat.o"
    include "$(BUILD_DIR)/src/libultra/io/spsetstat.o"
    include "$(BUILD_DIR)/src/libultra/os/writebackdcacheall.o"
    include "$(BUILD_DIR)/src/libultra/os/getcurrfaultedthread.o"
    include "$(BUILD_DIR)/src/libultra/mgu/mtxf2l.o"
    include "$(BUILD_DIR)/src/libultra/libc/llcvt.o"
    include "$(BUILD_DIR)/src/libultra/io/vigetcurrframebuf.o"
    include "$(BUILD_DIR)/src/libultra/io/spsetpc.o"
    include "$(BUILD_DIR)/src/libc/sqrt.o"
