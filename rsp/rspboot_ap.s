/**
 * @file rspboot_ap.s
 *
 * This RSP microcode program acts as a loader for other microcodes. This ucode:
 * - (Optionally) Waits for the RDP to go idle
 * - Loads a ucode's .data section to the start of DMEM
 * - Loads a ucode's .text section to RSPBOOT_ENTRYPOINT
 * - Jumps to the loaded ucode
 *
 * Along the way it also checks whether the task scheduler running the CPU has
 * requested a yield and, if so, halts the RSP.
 *
 * This is a special variant of rspboot that is designed to work alongside IPL3 X105
 * and the cic6105 microcode to attempt to detect whether the running game is a pirated
 * copy. If it is so determined (in the antipiracy_test routine) cic6105 will not set
 * signal 7 in SP_STATUS, causing subsequent runs of rspboot to corrupt random regions
 * of memory (see the dpclock_corrupt routine)
 */
.rsp
#include "rcp.h"
#include "sptask.h"
#include "rspboot.h"

#define OSTASK_FIELD(field) (-0x40 + OS_TASK_OFF_##field)($zero)

.create CODE_FILE, IMEM_START

entry:
    // This jump is overwritten once rspboot runs for the first time
    j       antipiracy_test
     lw     $17, OSTASK_FIELD(FLAGS)

load_ucode_text_and_enter:
    li      $ra, RSPBOOT_ENTRYPOINT
    li      $1, (IMEM_SIZE - (RSPBOOT_ENTRYPOINT - IMEM_START))-1
    mtc0    $16, SP_DRAM_ADDR
    mtc0    $ra, SP_MEM_ADDR
    mtc0    $1, SP_RD_LEN
@@while_dma_busy:
    mfc0    $1, SP_DMA_BUSY
    bnez    $1, @@while_dma_busy
check_yield:
     mfc0   $1, SP_STATUS
    andi    $1, $1, SP_STATUS_YIELD
    bnez    $1, yield_break
     li     $1, OSTASK_ADDR // $1 is expected to contain the OSTask pointer by many ucodes
    jr      $ra

yield_break:
     li     $17, (SP_SET_SIG2 | SP_SET_SIG1 | SP_CLR_SIG0)
    mtc0    $17, SP_STATUS
    break

antipiracy_test:
    // Checks that $4, $5, $6 and $11 all have expected register values set by IPL3
    lui     $1, (SP_CLR_SIG7 >> 16)
    li      $3, 0x3D8
    bne     $11, $3, set_status_and_patch
    addi    $16, $zero, entry_failure
    lui     $3, 0x3A0
    ori     $3, $3, 0x4820
    bne     $4, $3, set_status_and_patch
    lui     $3, 0x2529
    ori     $3, $3, 0x4
    bne     $6, $3, set_status_and_patch
    srl     $3, $5, 12
    addi    $2, $3, -76
    bltz    $2, set_status_and_patch
    addi    $2, $3, -79
    bgtz    $2, set_status_and_patch
    vxor    $v13, $v13, $v13[1q]
    vaddc   $v13, $v13, $v13[2h]
    vnxor   $v13, $v13, $v13[4]
    mfc2    $3, $v13[0]
    xori    $3, $3, 0x1234  // $3 is calculated and then never used before it is repurposed
    nop
    lui     $1, (SP_SET_SIG7 >> 16)
    addi    $16, $zero, entry_success
set_status_and_patch:
    mtc0    $1, SP_STATUS
    lw      $1, OSTASK_FIELD(UBOOT)
    // fallthrough to dma write 8 bytes, patches the first 8 bytes of the ucode in dram
    // with a new jump target that avoids the DPC_CLOCK code if SP_STATUS_SIG7 is set

dma_write_8:
@@while_dma_full:
    mfc0    $3, SP_DMA_FULL
    bne     $3, $3, @@while_dma_full
     nop
    mtc0    $16, SP_MEM_ADDR
    mtc0    $1, SP_DRAM_ADDR
    j       dp_wait
     mtc0   $zero, SP_WR_LEN // 0 = 8-byte write to RDRAM

.align 8
entry_success:
    // antipiracy check passed, rspboot is patched to check signal 7 instead of performing the check again
    j       check_sig7
     lw     $17, OSTASK_FIELD(FLAGS)

.align 8
entry_failure:
    // antipiracy check failed, rspboot is patched to run the failure codepath until reset
    j       dpclock_corrupt
     lw     $17, OSTASK_FIELD(FLAGS)

check_sig7: // if signal 7 is set, skip DPC_CLOCK sampling + corruption
    mfc0    $16, SP_STATUS
    andi    $16, $16, SP_STATUS_SIG7
    bnez    $16, dp_wait
dpclock_corrupt:
     mfc0   $16, DPC_CLOCK
    andi    $1, $16, 0x1FFF
    bnez    $1, @@stepover // if the 13 low-order bits of the sampled clock are 0, set DPC_END to DPC_CLOCK
     andi   $1, $16, 0x7F
    mtc0    $16, DPC_END
@@stepover:
    beqz    $1, dma_write_8 // if the 7 low-order bits of the sampled clock are 0, corrupt 8 random bytes of DRAM
     srl    $1, $16, 2
dp_wait:
    sll     $17, $17, (32 - OS_TASK_DP_WAIT)
    bgezal  $17, load_ucode_data
     lw     $16, OSTASK_FIELD(UDATA_SZ)
    mfc0    $1, DPC_STATUS
    andi    $1, $1, DPC_STATUS_DMA_BUSY
    bnez    $1, check_yield // yield check while waiting for RDP Command FIFO to become idle

load_ucode_data:
@@while_dma_full:
    mfc0    $1, SP_DMA_FULL
    bnez    $1, @@while_dma_full
     lw     $1, OSTASK_FIELD(UDATA)
    addi    $16, $16, -1
    mtc0    $zero, SP_MEM_ADDR
    mtc0    $1, SP_DRAM_ADDR
    mtc0    $16, SP_RD_LEN
@@while_dma_busy:
    mfc0    $1, SP_DMA_BUSY
    bnez    $1, @@while_dma_busy
     li     $ra, load_ucode_text_and_enter
    mtc0    $zero, SP_SEMAPHORE
    vxor    $v16, $v16, $v16    // set $v16 to 0, some F3DZEX versions rely on this being set to function properly
    sw      $4, OSTASK_FIELD(UBOOT)
    j       check_yield
     lw     $16, OSTASK_FIELD(UCODE)

.align 0x10

.if . > IMEM_END
    .error "Not enough room in IMEM"
.endif

.close
