/**
 * @file rspboot.s
 *
 * This RSP microcode program acts as a loader for other microcodes. This ucode:
 * - (Optionally) Waits for the RDP to go idle
 * - Loads a ucode's .data section to the start of DMEM
 * - Loads a ucode's .text section to RSPBOOT_ENTRYPOINT
 * - Jumps to the loaded ucode
 *
 * Along the way it also checks whether the task scheduler running on the CPU has
 * requested a yield and, if so, halts the RSP.
 */
.rsp
#include "rcp.h"
#include "sptask.h"
#include "rspboot.h"

// $1 is expected to contain the OSTask pointer by many ucodes
OSTask_reg equ $1

.create CODE_FILE, IMEM_START_VA

entry:
    j       start
     addi   OSTask_reg, $zero, OSTASK_ADDR

load_ucode_text_and_enter:
    // Read the ucode .text DRAM address from the OSTask
    lw      $2, OS_TASK_OFF_UCODE(OSTask_reg)
    // Always DMA as much as will fit in IMEM to RSPBOOT_ENTRYPOINT
    addi    $3, $zero, (IMEM_SIZE - (RSPBOOT_ENTRYPOINT - IMEM_START)) - 1
    addi    $7, $zero, RSPBOOT_ENTRYPOINT
    // Start the DMA, assuming it's not busy having waited for it while
    // loading the ucode .data
    mtc0    $7, SP_MEM_ADDR
    mtc0    $2, SP_DRAM_ADDR
    mtc0    $3, SP_RD_LEN
    // Wait for .text to load
@@while_dma_busy:
    mfc0    $4, SP_DMA_BUSY
    bnez    $4, @@while_dma_busy
     nop
    // Check yield one more time
    jal     check_yield
     nop
    // Return the semaphore and jump to the ucode that was loaded
    jr      $7
     mtc0   $zero, SP_SEMAPHORE

check_yield:
    // Check the YIELD bit in SP_STATUS: if it is set enter yield_break,
    // otherwise return
    mfc0    $8, SP_STATUS
    andi    $8, $8, SP_STATUS_YIELD
    bnez    $8, yield_break
     nop
    // No need to yield, return to caller
    jr      $ra
yield_break:
    // Return the semaphore (note this happens even if there is no yield as it
    // is in the delay slot of the above instruction)
     mtc0   $zero, SP_SEMAPHORE
    // Update the RSP status to signal task complete and yielded, clear the
    // yield request
    li      $8, (SP_SET_TASKDONE | SP_SET_YIELDED | SP_CLR_YIELD)
    mtc0    $8, SP_STATUS
    // Halt the RSP
    break
    nop

// Everything up to here needs to end before RSPBOOT_ENTRYPOINT so it's not overwritten by the .text loader
.if . > RSPBOOT_ENTRYPOINT_VA
    .error "Not enough reserved IMEM for .text bootstrapper"
.endif

start:
    // Check the DP_WAIT flag, if not set branch straight to loading ucode .data
    lw      $2, OS_TASK_OFF_FLAGS(OSTask_reg)
    andi    $2, $2, OS_TASK_DP_WAIT
    beqz    $2, load_ucode_data
     nop
    // If the flag is set, we need to wait for the RDP to become idle just in case
    // it's still reading commands from DMEM in XBUS mode. First check if we need
    // to yield to another task.
    jal     check_yield
     nop
    // Now poll RDP DMA busy
    mfc0    $2, DPC_STATUS
    andi    $2, $2, DPC_STATUS_DMA_BUSY
    // If the RDP is still busy, check yield again. This will return to the same
    // return address as the above jal since $ra has not been clobbered since then.
    bgtz    $2, check_yield
     nop
load_ucode_data:
    // Load the DRAM address and size of the ucode .data from the OSTask
    lw      $2, OS_TASK_OFF_UDATA(OSTask_reg)
    lw      $3, OS_TASK_OFF_UDATA_SZ(OSTask_reg)
    addi    $3, $3, -1
    // Wait for a DMA slot to free
@@while_dma_full:
    mfc0    $30, SP_DMA_FULL
    bnez    $30, @@while_dma_full
     nop
    // Submit the DMA transfer for the ucode .data, targeting the start of DMEM
    mtc0    $zero, SP_MEM_ADDR
    mtc0    $2, SP_DRAM_ADDR
    mtc0    $3, SP_RD_LEN
    // Wait for the transfer to complete
@@while_dma_busy:
    mfc0    $4, SP_DMA_BUSY
    bnez    $4, @@while_dma_busy
     nop
    // Check whether we need to yield, does not return if we do
    jal     check_yield
     nop
    // Jump to ucode .text loader
    j       load_ucode_text_and_enter
     nop

.align 0x10

.if . > IMEM_END_VA
    .error "Not enough room in IMEM"
.endif

.close
