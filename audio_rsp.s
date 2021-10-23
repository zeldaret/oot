// Notes by Tharo
// Build using:
// ./armips -strequ CODE_FILE rsp_audio.text.o -strequ DATA_FILE rsp_audio.rodata.o rsp.s

.rsp

// flags

OS_TASK_DP_WAIT         equ 0x0002

// rdp rd flags
DPC_STATUS_XBUS_DMA     equ 0x0001
DPC_STATUS_DMA_BUSY     equ 0x0100
DPC_STATUS_START_VALID  equ 0x0400

// rdp wr flags
DPC_STATUS_CLR_XBUS     equ 0x0001

.macro jumpTableEntry, addr
    .dh addr & 0xFFFF
.endmacro

.create DATA_FILE, 0x0000

// 0x0000
data_0000:
.dh 0x0000, 0x0001, 0x0002, 0xFFFF, 0x0020, 0x0800, 0x7FFF, 0x4000

// 0x0010
dispatchTable:
    jumpTableEntry cmd_SPNOOP
    jumpTableEntry cmd_ADPCM
    jumpTableEntry cmd_CLEARBUFF
    jumpTableEntry cmd_UNK3
    jumpTableEntry cmd_ADDMIXER
    jumpTableEntry cmd_RESAMPLE
    jumpTableEntry cmd_RESAMPLE_ZOH
    jumpTableEntry cmd_FILTER
    jumpTableEntry cmd_SETBUFF
    jumpTableEntry cmd_DUPLICATE
    jumpTableEntry cmd_DMEMMOVE
    jumpTableEntry cmd_LOADADPCM
    jumpTableEntry cmd_MIXER
    jumpTableEntry cmd_INTERLEAVE
    jumpTableEntry cmd_HILOGAIN
    jumpTableEntry cmd_SETLOOP
    jumpTableEntry cmd_UNK16
    jumpTableEntry cmd_INTERL
    jumpTableEntry cmd_ENVSETUP1
    jumpTableEntry cmd_ENVMIXER
    jumpTableEntry cmd_LOADBUFF
    jumpTableEntry cmd_SAVEBUFF
    jumpTableEntry cmd_ENVSETUP2
    jumpTableEntry cmd_UNK17

// 0x0040
data_0040:
.word 0xF0000F00, 0x00F0000F, 0x00010010, 0x01001000, 0xC0003000, 0x0C000300, 0x00010004, 0x00100040

// 0x0060
data_0060:
.word 0x00020004, 0x00060008, 0x000A000C, 0x000E0010, 0x00010001, 0x00010001, 0x00010001, 0x00010001
.word 0x00000001, 0x00020004, 0x00080010, 0x01000200, 0x00010000, 0x00000000, 0x00010000, 0x00000000
.word 0x00000001, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00010000, 0x00000000, 0x00010000
.word 0x00000000, 0x00000001, 0x00000000, 0x00000001, 0x20004000, 0x60008000, 0xA000C000, 0xE000FFFF

// 0x00E0
data_00E0:
.word 0x0C3966AD, 0x0D46FFDF, 0x0B396696, 0x0E5FFFD8, 0x0A446669, 0x0F83FFD0, 0x095A6626, 0x10B4FFC8
.word 0x087D65CD, 0x11F0FFBF, 0x07AB655E, 0x1338FFB6, 0x06E464D9, 0x148CFFAC, 0x0628643F, 0x15EBFFA1
.word 0x0577638F, 0x1756FF96, 0x04D162CB, 0x18CBFF8A, 0x043561F3, 0x1A4CFF7E, 0x03A46106, 0x1BD7FF71
.word 0x031C6007, 0x1D6CFF64, 0x029F5EF5, 0x1F0BFF56, 0x022A5DD0, 0x20B3FF48, 0x01BE5C9A, 0x2264FF3A
.word 0x015B5B53, 0x241EFF2C, 0x010159FC, 0x25E0FF1E, 0x00AE5896, 0x27A9FF10, 0x00635720, 0x297AFF02
.word 0x001F559D, 0x2B50FEF4, 0xFFE2540D, 0x2D2CFEE8, 0xFFAC5270, 0x2F0DFEDB, 0xFF7C50C7, 0x30F3FED0
.word 0xFF534F14, 0x32DCFEC6, 0xFF2E4D57, 0x34C8FEBD, 0xFF0F4B91, 0x36B6FEB6, 0xFEF549C2, 0x38A5FEB0
.word 0xFEDF47ED, 0x3A95FEAC, 0xFECE4611, 0x3C85FEAB, 0xFEC04430, 0x3E74FEAC, 0xFEB6424A, 0x4060FEAF
.word 0xFEAF4060, 0x424AFEB6, 0xFEAC3E74, 0x4430FEC0, 0xFEAB3C85, 0x4611FECE, 0xFEAC3A95, 0x47EDFEDF
.word 0xFEB038A5, 0x49C2FEF5, 0xFEB636B6, 0x4B91FF0F, 0xFEBD34C8, 0x4D57FF2E, 0xFEC632DC, 0x4F14FF53
.word 0xFED030F3, 0x50C7FF7C, 0xFEDB2F0D, 0x5270FFAC, 0xFEE82D2C, 0x540DFFE2, 0xFEF42B50, 0x559D001F
.word 0xFF02297A, 0x57200063, 0xFF1027A9, 0x589600AE, 0xFF1E25E0, 0x59FC0101, 0xFF2C241E, 0x5B53015B
.word 0xFF3A2264, 0x5C9A01BE, 0xFF4820B3, 0x5DD0022A, 0xFF561F0B, 0x5EF5029F, 0xFF641D6C, 0x6007031C
.word 0xFF711BD7, 0x610603A4, 0xFF7E1A4C, 0x61F30435, 0xFF8A18CB, 0x62CB04D1, 0xFF961756, 0x638F0577
.word 0xFFA115EB, 0x643F0628, 0xFFAC148C, 0x64D906E4, 0xFFB61338, 0x655E07AB, 0xFFBF11F0, 0x65CD087D
.word 0xFFC810B4, 0x6626095A, 0xFFD00F83, 0x66690A44, 0xFFD80E5F, 0x66960B39, 0xFFDF0D46, 0x66AD0C39

// 0x02E0
audio_in_buf    equ 0x00 // 0x2E0
audio_out_buf   equ 0x02 // 0x2E2
audio_count     equ 0x04 // 0x2E4
audio_loop_addr equ 0x08 // 0x2E8
audioStruct:
    .skip 0x10

// 0x02F0
nextTaskEntry:
    .skip 0x40

// 0x0330
adpcmTable:
    .skip 0xC80

// 0x0FB0
tmpData:
    .skip 0x50          // temporary area

.close

/*
r0 = zero
at = temp
v0 = temp
v1 = temp
a0 = 
a1 = 
a2 = 
a3 = 
t0 = 
t1 = 
t2 = 
t3 = 
t4 = 
t5 = 
t6 = 
t7 = 
s0 = 
s1 = 
s2 = 
s3 = 
s4 = 
s5 = 
s6 = 
s7 = 
t8 = audioStruct
t9 = cmd wd 2
k0 = cmd wd 1
k1 = task_size counter
gp = task_data pointer
sp = current command pointer
fp = special
ra = return address
*/

.create CODE_FILE, 0x04001000

audio_entry:
/* 04001000 000000 340A0FC0 */  ori		$t2, $zero, 0xfc0
/* 04001004 000004 8D420018 */  lw		$v0, 0x18($t2)
/* 04001008 000008 8D43001C */  lw		$v1, 0x1c($t2)
/* 0400100C 00000C 40803800 */  mtc0	$zero, SP_SEMAPHORE             // release semaphore
/* 04001010 000010 0D0006B5 */  jal		dma_read_start
/* 04001014 000014 20010000 */   addi	$at, $zero, 0
/* 04001018 000018 201802E0 */  addi	$t8, $zero, audioStruct
/* 0400101C 00001C 20170FB0 */  addi	$s7, $zero, tmpData
/* 04001020 000020 8D5C0030 */  lw		$gp, 0x30($t2)                  // task_data
/* 04001024 000024 8D5B0034 */  lw		$k1, 0x34($t2)                  // task_data_size
/* 04001028 000028 40055800 */  mfc0	$a1, DPC_STATUS
/* 0400102C 00002C 30A40001 */  andi	$a0, $a1, DPC_STATUS_XBUS_DMA
/* 04001030 000030 10800006 */  beqz	$a0, no_dma
/* 04001034 000034 30A40100 */   andi	$a0, $a1, DPC_STATUS_DMA_BUSY
/* 04001038 000038 10800004 */  beqz	$a0, no_dma
/* 0400103C 00003C 00000000 */   nop	
dpc_dma_busy:
/* 04001040 000040 40045800 */  mfc0	$a0, DPC_STATUS
/* 04001044 000044 30840100 */  andi	$a0, $a0, DPC_STATUS_DMA_BUSY
/* 04001048 000048 1C80FFFD */  bgtz	$a0, dpc_dma_busy
no_dma:
/* 0400104C 00004C 00000000 */   nop	
/* 04001050 000050 0D000431 */  jal		load_acmd_list
/* 04001054 000054 00000000 */   nop	

dispatch_cmd:
/* 04001058 000058 8FBA0000 */  lw		$k0, ($sp)              // first cmd word
/* 0400105C 00005C 8FB90004 */  lw		$t9, 4($sp)             // second cmd word
/* 04001060 000060 001A0DC2 */  srl		$at, $k0, 0x17          // cmd byte << 1
/* 04001064 000064 302100FE */  andi	$at, $at, 0xfe
/* 04001068 000068 239C0008 */  addi	$gp, $gp, 8             // increment task_data
/* 0400106C 00006C 237BFFF8 */  addi	$k1, $k1, -8            // decrement task_size
/* 04001070 000070 23BD0008 */  addi	$sp, $sp, 8             // increment to next command
/* 04001074 000074 23DEFFF8 */  addi	$fp, $fp, -8
/* 04001078 000078 00011020 */  add		$v0, $zero, $at
/* 0400107C 00007C 84420010 */  lh		$v0, (dispatchTable)($v0)   // dispatchTable @ 0x10
/* 04001080 000080 00400008 */  jr		$v0
/* 04001084 000084 00000000 */   nop	
/* 04001088 000088 0000000D */  break	

next_cmd:
/* 0400108C 00008C 1FC0FFF2 */  bgtz	$fp, dispatch_cmd
/* 04001090 000090 00000000 */   nop	
/* 04001094 000094 1B600005 */  blez	$k1, task_done          // task size less or equal to 0 -> no task
/* 04001098 000098 00000000 */   nop	
/* 0400109C 00009C 0D000431 */  jal		load_acmd_list
/* 040010A0 0000A0 00000000 */   nop	
/* 040010A4 0000A4 09000416 */  j		dispatch_cmd
/* 040010A8 0000A8 00000000 */   nop	
task_done:
/* 040010AC 0000AC 34014000 */  ori		$at, $zero, 0x4000      // set signal 2 (yield?)
/* 040010B0 0000B0 40812000 */  mtc0	$at, SP_STATUS
/* 040010B4 0000B4 0000000D */  break	
/* 040010B8 0000B8 00000000 */  nop		
forever:
/* 040010BC 0000BC 1000FFFF */  b		forever
/* 040010C0 0000C0 00000000 */   nop	

// DMAs the acmd list to DMEM, placing it at nextTaskEntry
load_acmd_list:
/* 040010C4 0000C4 23E50000 */  addi	$a1, $ra, 0             // save $ra in $a1
/* 040010C8 0000C8 001C1020 */  add		$v0, $zero, $gp
/* 040010CC 0000CC 23630000 */  addi	$v1, $k1, 0
/* 040010D0 0000D0 2064FFC0 */  addi	$a0, $v1, -0x40
/* 040010D4 0000D4 18800002 */  blez	$a0, .L040010E0
/* 040010D8 0000D8 200102F0 */   addi	$at, $zero, nextTaskEntry
/* 040010DC 0000DC 20030040 */  addi	$v1, $zero, data_0040
.L040010E0:
/* 040010E0 0000E0 207E0000 */  addi	$fp, $v1, 0
/* 040010E4 0000E4 0D0006B5 */  jal		dma_read_start
/* 040010E8 0000E8 2063FFFF */   addi	$v1, $v1, -1
/* 040010EC 0000EC 00A00008 */  jr		$a1                     // return with stored $ra
/* 040010F0 0000F0 201D02F0 */   addi	$sp, $zero, nextTaskEntry

dma_read:
/* 040010F4 0000F4 40043800 */  mfc0	$a0, SP_SEMAPHORE       // acquire semaphore
/* 040010F8 0000F8 1480FFFE */  bnez	$a0, dma_read
/* 040010FC 0000FC 00000000 */   nop	
@@dma_not_full:
/* 04001100 000100 40042800 */  mfc0	$a0, SP_DMA_FULL
/* 04001104 000104 1480FFFE */  bnez	$a0, @@dma_not_full
/* 04001108 000108 00000000 */   nop	
/* 0400110C 00010C 40810000 */  mtc0	$at, SP_MEM_ADDR
/* 04001110 000110 40820800 */  mtc0	$v0, SP_DRAM_ADDR
/* 04001114 000114 40831000 */  mtc0	$v1, SP_RD_LEN
/* 04001118 000118 03E00008 */  jr		$ra
/* 0400111C 00011C 00000000 */   nop	

dma_write:
/* 04001120 000120 40043800 */  mfc0	$a0, SP_SEMAPHORE       // acquire semaphore
/* 04001124 000124 1480FFFE */  bnez	$a0, dma_write
/* 04001128 000128 00000000 */   nop	
@@dma_not_full:
/* 0400112C 00012C 40042800 */  mfc0	$a0, SP_DMA_FULL
/* 04001130 000130 1480FFFE */  bnez	$a0, @@dma_not_full
/* 04001134 000134 00000000 */   nop	
/* 04001138 000138 40810000 */  mtc0	$at, SP_MEM_ADDR
/* 0400113C 00013C 40820800 */  mtc0	$v0, SP_DRAM_ADDR
/* 04001140 000140 40831800 */  mtc0	$v1, SP_WR_LEN
/* 04001144 000144 03E00008 */  jr		$ra
/* 04001148 000148 00000000 */   nop	

/***************************************************************
 *  ZZXXAAAA XXXXBBBB
 *      Z = cmd
 *      X = pad
 *      A = dmem addr
 *      B = count
 */
cmd_CLEARBUFF:
/* 0400114C 00014C 3323FFFF */  andi	$v1, $t9, 0xffff        // load count
/* 04001150 000150 1060FFCE */  beqz	$v1, next_cmd           // 0 count, leave early
/* 04001154 000154 3342FFFF */   andi	$v0, $k0, 0xffff        // load dmem addr
/* 04001158 000158 4A00002C */  vxor	$v0, $v0, $v0           // clear $v0
/* 0400115C 00015C 2063FFF0 */  addi	$v1, $v1, -0x10
@@loop:
/* 04001160 000160 E8401800 */  sdv		$v0[0], ($v0)           // store vector 0 over the dmem buffer
/* 04001164 000164 E8401801 */  sdv		$v0[0], 0x8($v0)
/* 04001168 000168 20420010 */  addi	$v0, $v0, 0x10
/* 0400116C 00016C 1C60FFFC */  bgtz	$v1, @@loop             // if not reached end of count, continue clearing
/* 04001170 000170 2063FFF0 */   addi	$v1, $v1, -0x10
/* 04001174 000174 09000423 */  j		next_cmd
/* 04001178 000178 00000000 */   nop	

/***************************************************************
 *  ZZAABBBB CCCCDDDD
 *      Z = cmd
 *      A = flags
 *      B = dmem in
 *      C = dmem out
 *      D = count
 */
cmd_SETBUFF:
/* 0400117C 00017C 00191402 */  srl		$v0, $t9, 0x10
/* 04001180 000180 A71A0000 */  sh		$k0, (audio_in_buf)($t8)    // store dmem in
/* 04001184 000184 A7020002 */  sh		$v0, (audio_out_buf)($t8)   // store dmem out
/* 04001188 000188 09000423 */  j		next_cmd
/* 0400118C 00018C A7190004 */   sh		$t9, (audio_count)($t8)  // store count          | audio_rate_lo_right = 4 ?

/***************************************************************
 *  ZZAABBBB CCCCDDDD
 *      Z = cmd
 *      A = count
 *      B = dest
 *      C = L
 *      D = R
 */
cmd_INTERLEAVE: 
/* 04001190 000190 3344FFFF */  andi	$a0, $k0, 0xffff
/* 04001194 000194 001A0B02 */  srl		$at, $k0, 0xc
/* 04001198 000198 30210FF0 */  andi	$at, $at, 0xff0         // count << 4
/* 0400119C 00019C 3323FFFF */  andi	$v1, $t9, 0xffff
/* 040011A0 0001A0 00191402 */  srl		$v0, $t9, 0x10
@@loop:
/* 040011A4 0001A4 C8411800 */  ldv		$v1[0], ($v0)           // load L
/* 040011A8 0001A8 C8621800 */  ldv		$v2[0], ($v1)           // load R
/* 040011AC 0001AC 2021FFF8 */  addi	$at, $at, -8
/* 040011B0 0001B0 20840010 */  addi	$a0, $a0, 0x10
/* 040011B4 0001B4 E8810878 */  ssv		$v1[0], -0x10($a0)      // do interleave
/* 040011B8 0001B8 E881097A */  ssv		$v1[2], -0xC($a0)
/* 040011BC 0001BC 20420008 */  addi	$v0, $v0, 8
/* 040011C0 0001C0 E8810A7C */  ssv		$v1[4], -0x8($a0)
/* 040011C4 0001C4 E8810B7E */  ssv		$v1[6], -0x4($a0)
/* 040011C8 0001C8 E8820879 */  ssv		$v2[0], -0xE($a0)
/* 040011CC 0001CC 20630008 */  addi	$v1, $v1, 8
/* 040011D0 0001D0 E882097B */  ssv		$v2[2], -0xA($a0)
/* 040011D4 0001D4 E8820A7D */  ssv		$v2[4], -0x6($a0)
/* 040011D8 0001D8 1C20FFF2 */  bgtz	$at, @@loop             // until done
/* 040011DC 0001DC E8820B7F */   ssv	$v2[6], -0x2($a0)
/* 040011E0 0001E0 09000423 */  j		next_cmd
/* 040011E4 0001E4 00000000 */   nop	

/***************************************************************
 *  ZZXXAAAA BBBBCCCC
 *      Z = cmd
 *      X = pad
 *      A = dmem in
 *      B = dmem out
 *      C = count
 */
cmd_DMEMMOVE:
/* 040011E8 0001E8 3321FFFF */  andi	$at, $t9, 0xffff        // count
/* 040011EC 0001EC 1020FFA7 */  beqz	$at, next_cmd           // 0 count, leave early
/* 040011F0 0001F0 3342FFFF */   andi	$v0, $k0, 0xffff
/* 040011F4 0001F4 00191C02 */  srl		$v1, $t9, 0x10
@@loop:
/* 040011F8 0001F8 C8411800 */  ldv		$v1[0], ($v0)           // load from dmem in
/* 040011FC 0001FC C8421801 */  ldv		$v2[0], 0x8($v0)
/* 04001200 000200 2021FFF0 */  addi	$at, $at, -0x10
/* 04001204 000204 20420010 */  addi	$v0, $v0, 0x10
/* 04001208 000208 E8611800 */  sdv		$v1[0], ($v1)           // store to dmem out
/* 0400120C 00020C E8621801 */  sdv		$v2[0], 0x8($v1)
/* 04001210 000210 1C20FFF9 */  bgtz	$at, @@loop             // until done
/* 04001214 000214 20630010 */   addi	$v1, $v1, 0x10
/* 04001218 000218 09000423 */  j		next_cmd
/* 0400121C 00021C 00000000 */   nop	

/***************************************************************
 *  ZZXXXXXX AAAAAAAA
 *      Z = cmd
 *      X = pad
 *      A = addr
 */
cmd_SETLOOP:
/* 04001220 000220 00190A00 */  sll		$at, $t9, 8
/* 04001224 000224 00010A02 */  srl		$at, $at, 8             // remove addr high byte
/* 04001228 000228 09000423 */  j		next_cmd
/* 0400122C 00022C AF010008 */   sw		$at, (audio_loop_addr)($t8)      // store addr in audio struct

/***************************************************************
 *  ZZAABBBB CCCCCCCC
 *      Z = cmd
 *      A = flags
 *      B = gain
 *      C = addr
 */
cmd_ADPCM:
/* 04001230 000230 C81F2000 */  lqv		$v31[0], (data_0000)($zero)
/* 04001234 000234 4A1BDEEC */  vxor	$v27, $v27, $v27        // clear vectors
/* 04001238 000238 97150000 */  lhu		$s5, (audio_in_buf)($t8)
/* 0400123C 00023C 4A19CE6C */  vxor	$v25, $v25, $v25
/* 04001240 000240 4A18C62C */  vxor	$v24, $v24, $v24
/* 04001244 000244 22B40001 */  addi	$s4, $s5, 1
/* 04001248 000248 97130002 */  lhu		$s3, (audio_out_buf)($t8)
/* 0400124C 00024C 4A0D6B6C */  vxor	$v13, $v13, $v13
/* 04001250 000250 4A0E73AC */  vxor	$v14, $v14, $v14
/* 04001254 000254 97120004 */  lhu		$s2, (audio_count)($t8)  // load count
/* 04001258 000258 4A0F7BEC */  vxor	$v15, $v15, $v15
/* 0400125C 00025C 4A10842C */  vxor	$v16, $v16, $v16
/* 04001260 000260 00198A00 */  sll		$s1, $t9, 8
/* 04001264 000264 4A118C6C */  vxor	$v17, $v17, $v17
/* 04001268 000268 4A1294AC */  vxor	$v18, $v18, $v18
/* 0400126C 00026C 00118A02 */  srl		$s1, $s1, 8             // remove addr high byte
/* 04001270 000270 4A139CEC */  vxor	$v19, $v19, $v19
/* 04001274 000274 EA7B2000 */  sqv		$v27[0], ($s3)
/* 04001278 000278 EA7B2001 */  sqv		$v27[0], 0x10($s3)
/* 0400127C 00027C 20100040 */  addi	$s0, $zero, data_0040
/* 04001280 000280 200F0330 */  addi	$t7, $zero, adpcmTable  // possibly adpcmTable
/* 04001284 000284 001A0C02 */  srl		$at, $k0, 0x10          // load flags
/* 04001288 000288 30280004 */  andi	$t0, $at, 4
/* 0400128C 00028C 1100000A */  beqz	$t0, .L040012B8         // if !(flags & 4) aka reg ADPCM , skip
/* 04001290 000290 00000000 */   nop	
/* 04001294 000294 200A0005 */  addi	$t2, $zero, 5           // process SHORT ADPCM
/* 04001298 000298 2009000E */  addi	$t1, $zero, 0xe
/* 0400129C 00029C CA191802 */  ldv		$v25[0], 0x10($s0)
/* 040012A0 0002A0 CA171803 */  ldv		$v23[0], 0x18($s0)
/* 040012A4 0002A4 2210FFFF */  addi	$s0, $s0, -1
/* 040012A8 0002A8 CA191C02 */  ldv		$v25[8], 0x10($s0)
/* 040012AC 0002AC 22100002 */  addi	$s0, $s0, 2
/* 040012B0 0002B0 090004B4 */  j		.L040012D0              // step over !(flags & 4)
/* 040012B4 0002B4 CA171C03 */   ldv	$v23[8], 0x18($s0)
.L040012B8:
/* 040012B8 0002B8 200A0009 */  addi	$t2, $zero, 9
/* 040012BC 0002BC 2009000C */  addi	$t1, $zero, 0xc
/* 040012C0 0002C0 CA191800 */  ldv		$v25[0], ($s0)
/* 040012C4 0002C4 CA181C00 */  ldv		$v24[8], ($s0)
/* 040012C8 0002C8 CA171801 */  ldv		$v23[0], 0x8($s0)
/* 040012CC 0002CC CA171C01 */  ldv		$v23[8], 0x8($s0)
.L040012D0:
/* 040012D0 0002D0 001A0C02 */  srl		$at, $k0, 0x10
/* 040012D4 0002D4 30210001 */  andi	$at, $at, 1
/* 040012D8 0002D8 1C200008 */  bgtz	$at, .L040012FC         // if (flags & 1) , skip
/* 040012DC 0002DC 001A0C02 */   srl	$at, $k0, 0x10
/* 040012E0 0002E0 30210002 */  andi	$at, $at, 2
/* 040012E4 0002E4 10010002 */  beq		$zero, $at, .L040012F0  // if !(flags & 2) , skip       (flags & 2) related to looping? if (flags & 2) is set it uses the loop address
/* 040012E8 0002E8 22220000 */   addi	$v0, $s1, 0             // get from command addr
/* 040012EC 0002EC 8F020008 */  lw		$v0, (audio_loop_addr)($t8)  // or get from audio struct based on (flags & 2)
.L040012F0:
/* 040012F0 0002F0 22610000 */  addi	$at, $s3, 0
/* 040012F4 0002F4 0D0006B5 */  jal		dma_read_start
/* 040012F8 0002F8 2003001F */   addi	$v1, $zero, 0x1f
.L040012FC:
/* 040012FC 0002FC CA7B2001 */  lqv		$v27[0], 0x10($s3)
/* 04001300 000300 22730020 */  addi	$s3, $s3, 0x20
/* 04001304 000304 12400077 */  beqz	$s2, .L040014E4         // 0 count, leave early
/* 04001308 000308 CA811800 */   ldv	$v1[0], ($s4)
/* 0400130C 00030C 92A10000 */  lbu		$at, ($s5)
/* 04001310 000310 302B000F */  andi	$t3, $at, 0xf
/* 04001314 000314 000B5940 */  sll		$t3, $t3, 5
/* 04001318 000318 4B01C8E8 */  vand	$v3, $v25, $v1[0]
/* 0400131C 00031C 016F6820 */  add		$t5, $t3, $t7
/* 04001320 000320 4A04212C */  vxor	$v4, $v4, $v4           // clear vectors
/* 04001324 000324 4A0631AC */  vxor	$v6, $v6, $v6
/* 04001328 000328 15000004 */  bnez	$t0, .L0400133C         // if (flags & 4) , skip
/* 0400132C 00032C 4B21C968 */   vand	$v5, $v25, $v1[1]
/* 04001330 000330 4B21C128 */  vand	$v4, $v24, $v1[1]
/* 04001334 000334 4B41C968 */  vand	$v5, $v25, $v1[2]
/* 04001338 000338 4B61C1A8 */  vand	$v6, $v24, $v1[3]
.L0400133C:
/* 0400133C 00033C 00017102 */  srl		$t6, $at, 4
/* 04001340 000340 00091020 */  add		$v0, $zero, $t1
/* 04001344 000344 004E7022 */  sub		$t6, $v0, $t6
/* 04001348 000348 21C2FFFF */  addi	$v0, $t6, -1
/* 0400134C 00034C 34038000 */  ori		$v1, $zero, 0x8000
/* 04001350 000350 11C00002 */  beqz	$t6, .L0400135C
/* 04001354 000354 2004FFFF */   addi	$a0, $zero, -1
/* 04001358 000358 00432006 */  srlv	$a0, $v1, $v0
.L0400135C:
/* 0400135C 00035C 4884B000 */  mtc2	$a0, $v22[0]
/* 04001360 000360 C9B52000 */  lqv		$v21[0], ($t5)
/* 04001364 000364 C9B42001 */  lqv		$v20[0], 0x10($t5)
/* 04001368 000368 21ADFFFE */  addi	$t5, $t5, -2
/* 0400136C 00036C C9B32802 */  lrv		$v19[0], 0x20($t5)
/* 04001370 000370 21ADFFFE */  addi	$t5, $t5, -2
/* 04001374 000374 C9B22802 */  lrv		$v18[0], 0x20($t5)
/* 04001378 000378 21ADFFFE */  addi	$t5, $t5, -2
/* 0400137C 00037C C9B12802 */  lrv		$v17[0], 0x20($t5)
/* 04001380 000380 21ADFFFE */  addi	$t5, $t5, -2
/* 04001384 000384 C9B02802 */  lrv		$v16[0], 0x20($t5)
/* 04001388 000388 21ADFFFE */  addi	$t5, $t5, -2
/* 0400138C 00038C C9AF2802 */  lrv		$v15[0], 0x20($t5)
/* 04001390 000390 21ADFFFE */  addi	$t5, $t5, -2
/* 04001394 000394 C9AE2802 */  lrv		$v14[0], 0x20($t5)
/* 04001398 000398 21ADFFFE */  addi	$t5, $t5, -2
/* 0400139C 00039C C9AD2802 */  lrv		$v13[0], 0x20($t5)
.L040013A0:
/* 040013A0 0003A0 028AA020 */  add		$s4, $s4, $t2
/* 040013A4 0003A4 4A171F86 */  vmudn	$v30, $v3, $v23
/* 040013A8 0003A8 02AAA820 */  add		$s5, $s5, $t2
/* 040013AC 0003AC 4A17278E */  vmadn	$v30, $v4, $v23
/* 040013B0 0003B0 CA811800 */  ldv		$v1[0], ($s4)
/* 040013B4 0003B4 4A172F46 */  vmudn	$v29, $v5, $v23
/* 040013B8 0003B8 92A10000 */  lbu		$at, ($s5)
/* 040013BC 0003BC 4A17374E */  vmadn	$v29, $v6, $v23
/* 040013C0 0003C0 19C00003 */  blez	$t6, .L040013D0
/* 040013C4 0003C4 302B000F */   andi	$t3, $at, 0xf
/* 040013C8 0003C8 4B16F785 */  vmudm	$v30, $v30, $v22[0]
/* 040013CC 0003CC 4B16EF45 */  vmudm	$v29, $v29, $v22[0]
.L040013D0:
/* 040013D0 0003D0 000B5940 */  sll		$t3, $t3, 5
/* 040013D4 0003D4 4B01C8E8 */  vand	$v3, $v25, $v1[0]
/* 040013D8 0003D8 016F6820 */  add		$t5, $t3, $t7
/* 040013DC 0003DC 15000004 */  bnez	$t0, .L040013F0
/* 040013E0 0003E0 4B21C968 */   vand	$v5, $v25, $v1[1]
/* 040013E4 0003E4 4B21C128 */  vand	$v4, $v24, $v1[1]
/* 040013E8 0003E8 4B41C968 */  vand	$v5, $v25, $v1[2]
/* 040013EC 0003EC 4B61C1A8 */  vand	$v6, $v24, $v1[3]
.L040013F0:
/* 040013F0 0003F0 00017102 */  srl		$t6, $at, 4
/* 040013F4 0003F4 4BDBA887 */  vmudh	$v2, $v21, $v27[6]
/* 040013F8 0003F8 00091020 */  add		$v0, $zero, $t1
/* 040013FC 0003FC 4BFBA08F */  vmadh	$v2, $v20, $v27[7]
/* 04001400 000400 004E7022 */  sub		$t6, $v0, $t6
/* 04001404 000404 4B1E988F */  vmadh	$v2, $v19, $v30[0]
/* 04001408 000408 21C2FFFF */  addi	$v0, $t6, -1
/* 0400140C 00040C 4B3E908F */  vmadh	$v2, $v18, $v30[1]
/* 04001410 000410 20030001 */  addi	$v1, $zero, 1
/* 04001414 000414 4B5E888F */  vmadh	$v2, $v17, $v30[2]
/* 04001418 000418 00031BC0 */  sll		$v1, $v1, 0xf
/* 0400141C 00041C 4B7E808F */  vmadh	$v2, $v16, $v30[3]
/* 04001420 000420 11C00002 */  beqz	$t6, .L0400142C
/* 04001424 000424 2004FFFF */   addi	$a0, $zero, -1
/* 04001428 000428 00432006 */  srlv	$a0, $v1, $v0
.L0400142C:
/* 0400142C 00042C 4B9E7F0F */  vmadh	$v28, $v15, $v30[4]
/* 04001430 000430 4884B000 */  mtc2	$a0, $v22[0]
/* 04001434 000434 4BBE708F */  vmadh	$v2, $v14, $v30[5]
/* 04001438 000438 4BDE688F */  vmadh	$v2, $v13, $v30[6]
/* 0400143C 00043C 4BBFF08F */  vmadh	$v2, $v30, $v31[5]
/* 04001440 000440 4B3C3E9D */  vsar	$v26, $v7, $v28[1]
/* 04001444 000444 4B1C3F1D */  vsar	$v28, $v7, $v28[0]
/* 04001448 000448 4B9FD086 */  vmudn	$v2, $v26, $v31[4]
/* 0400144C 00044C 4B9FE70F */  vmadh	$v28, $v28, $v31[4]
/* 04001450 000450 4B1D9887 */  vmudh	$v2, $v19, $v29[0]
/* 04001454 000454 21ACFFFE */  addi	$t4, $t5, -2
/* 04001458 000458 4B3D908F */  vmadh	$v2, $v18, $v29[1]
/* 0400145C 00045C C9932802 */  lrv		$v19[0], 0x20($t4)
/* 04001460 000460 4B5D888F */  vmadh	$v2, $v17, $v29[2]
/* 04001464 000464 218CFFFE */  addi	$t4, $t4, -2
/* 04001468 000468 4B7D808F */  vmadh	$v2, $v16, $v29[3]
/* 0400146C 00046C C9922802 */  lrv		$v18[0], 0x20($t4)
/* 04001470 000470 4B9D788F */  vmadh	$v2, $v15, $v29[4]
/* 04001474 000474 218CFFFE */  addi	$t4, $t4, -2
/* 04001478 000478 4BBD708F */  vmadh	$v2, $v14, $v29[5]
/* 0400147C 00047C C9912802 */  lrv		$v17[0], 0x20($t4)
/* 04001480 000480 4BDD688F */  vmadh	$v2, $v13, $v29[6]
/* 04001484 000484 218CFFFE */  addi	$t4, $t4, -2
/* 04001488 000488 4BBFE88F */  vmadh	$v2, $v29, $v31[5]
/* 0400148C 00048C C9902802 */  lrv		$v16[0], 0x20($t4)
/* 04001490 000490 4BDCA88F */  vmadh	$v2, $v21, $v28[6]
/* 04001494 000494 218CFFFE */  addi	$t4, $t4, -2
/* 04001498 000498 4BFCA08F */  vmadh	$v2, $v20, $v28[7]
/* 0400149C 00049C C98F2802 */  lrv		$v15[0], 0x20($t4)
/* 040014A0 0004A0 4B3B3E9D */  vsar	$v26, $v7, $v27[1]
/* 040014A4 0004A4 218CFFFE */  addi	$t4, $t4, -2
/* 040014A8 0004A8 4B1B3EDD */  vsar	$v27, $v7, $v27[0]
/* 040014AC 0004AC C98E2802 */  lrv		$v14[0], 0x20($t4)
/* 040014B0 0004B0 218CFFFE */  addi	$t4, $t4, -2
/* 040014B4 0004B4 C98D2802 */  lrv		$v13[0], 0x20($t4)
/* 040014B8 0004B8 C9B52000 */  lqv		$v21[0], ($t5)
/* 040014BC 0004BC 4B9FD086 */  vmudn	$v2, $v26, $v31[4]
/* 040014C0 0004C0 C9B42001 */  lqv		$v20[0], 0x10($t5)
/* 040014C4 0004C4 4B9FDECF */  vmadh	$v27, $v27, $v31[4]
/* 040014C8 0004C8 2252FFE0 */  addi	$s2, $s2, -0x20
/* 040014CC 0004CC EA7C1800 */  sdv		$v28[0], ($s3)
/* 040014D0 0004D0 EA7C1C01 */  sdv		$v28[8], 0x8($s3)
/* 040014D4 0004D4 EA7B1802 */  sdv		$v27[0], 0x10($s3)
/* 040014D8 0004D8 EA7B1C03 */  sdv		$v27[8], 0x18($s3)
/* 040014DC 0004DC 1E40FFB0 */  bgtz	$s2, .L040013A0         // until done
/* 040014E0 0004E0 22730020 */   addi	$s3, $s3, 0x20
.L040014E4:
/* 040014E4 0004E4 2261FFE0 */  addi	$at, $s3, -0x20
/* 040014E8 0004E8 22220000 */  addi	$v0, $s1, 0
/* 040014EC 0004EC 090006B1 */  j		dma_write_and_nextcmd
/* 040014F0 0004F0 20030020 */   addi	$v1, $zero, 0x20

/***************************************************************
 *  ZZAABBBB CCCCCCCC
 *      Z = cmd
 *      A = flags
 *      B = pitch
 *      C = addr
 */
cmd_RESAMPLE:
/* 040014F4 0004F4 87080000 */  lh		$t0, (audio_in_buf)($t8)
/* 040014F8 0004F8 87130002 */  lh		$s3, (audio_out_buf)($t8)
/* 040014FC 0004FC 87120004 */  lh		$s2, (audio_count)($t8)
/* 04001500 000500 00191200 */  sll		$v0, $t9, 8
/* 04001504 000504 00021202 */  srl		$v0, $v0, 8             // remove addr high byte
/* 04001508 000508 22E10000 */  addi	$at, $s7, 0
/* 0400150C 00050C 0002B020 */  add		$s6, $zero, $v0
/* 04001510 000510 2003001F */  addi	$v1, $zero, 0x1f
/* 04001514 000514 001A3C02 */  srl		$a3, $k0, 0x10
/* 04001518 000518 30EA0001 */  andi	$t2, $a3, 1
/* 0400151C 00051C 1D400005 */  bgtz	$t2, .L04001534         // if (flags & 1) , skip
/* 04001520 000520 00000000 */   nop	
/* 04001524 000524 0D0006B5 */  jal		dma_read_start
/* 04001528 000528 00000000 */   nop	
/* 0400152C 00052C 09000550 */  j		.L04001540              // step over (flags & 1)
/* 04001530 000530 00000000 */   nop	
.L04001534:
/* 04001534 000534 A6E00008 */  sh		$zero, 8($s7)
/* 04001538 000538 4A10842C */  vxor	$v16, $v16, $v16        // clear $v16
/* 0400153C 00053C EAF01800 */  sdv		$v16[0], ($s7)
.L04001540:
/* 04001540 000540 30EA0002 */  andi	$t2, $a3, 2
/* 04001544 000544 11400006 */  beqz	$t2, .L04001560         // if !(flags & 2) , skip
/* 04001548 000548 CAF01800 */   ldv	$v16[0], ($s7)
/* 0400154C 00054C 2108FFFC */  addi	$t0, $t0, -4
/* 04001550 000550 E9100800 */  ssv		$v16[0], ($t0)
/* 04001554 000554 E9100A01 */  ssv		$v16[4], 0x2($t0)
/* 04001558 000558 09000568 */  j		.L040015A0
/* 0400155C 00055C 00000000 */   nop	
.L04001560:
/* 04001560 000560 30EA0004 */  andi	$t2, $a3, 4
/* 04001564 000564 1140000C */  beqz	$t2, .L04001598
/* 04001568 000568 00000000 */   nop	
/* 0400156C 00056C 2108FFF0 */  addi	$t0, $t0, -0x10
/* 04001570 000570 E9100800 */  ssv		$v16[0], ($t0)
/* 04001574 000574 E9100801 */  ssv		$v16[0], 0x2($t0)
/* 04001578 000578 E9100902 */  ssv		$v16[2], 0x4($t0)
/* 0400157C 00057C E9100903 */  ssv		$v16[2], 0x6($t0)
/* 04001580 000580 E9100A04 */  ssv		$v16[4], 0x8($t0)
/* 04001584 000584 E9100A05 */  ssv		$v16[4], 0xA($t0)
/* 04001588 000588 E9100B06 */  ssv		$v16[6], 0xC($t0)
/* 0400158C 00058C E9100B07 */  ssv		$v16[6], 0xE($t0)
/* 04001590 000590 09000568 */  j		.L040015A0
/* 04001594 000594 00000000 */   nop	
.L04001598:
/* 04001598 000598 2108FFF8 */  addi	$t0, $t0, -8
/* 0400159C 00059C E9101800 */  sdv		$v16[0], ($t0)
.L040015A0:
/* 040015A0 0005A0 CAF70F04 */  lsv		$v23[14], 0x8($s7)  // saved pitch_accumulator
/* 040015A4 0005A4 C9101800 */  ldv		$v16[0], ($t0)
/* 040015A8 0005A8 48889200 */  mtc2	$t0, $v18[4]
/* 040015AC 0005AC 200A00E0 */  addi	$t2, $zero, data_00E0
/* 040015B0 0005B0 488A9300 */  mtc2	$t2, $v18[6]
/* 040015B4 0005B4 489A9400 */  mtc2	$k0, $v18[8]        // pitch
/* 040015B8 0005B8 200A0040 */  addi	$t2, $zero, data_0040
/* 040015BC 0005BC 488A9500 */  mtc2	$t2, $v18[10]
/* 040015C0 0005C0 20090060 */  addi	$t1, $zero, data_0060
/* 040015C4 0005C4 C93F2001 */  lqv		$v31[0], 0x10($t1)
/* 040015C8 0005C8 C9392000 */  lqv		$v25[0], ($t1)
/* 040015CC 0005CC 4A1FCE51 */  vsub	$v25, $v25, $v31
/* 040015D0 0005D0 C93E2002 */  lqv		$v30[0], 0x20($t1)
/* 040015D4 0005D4 C93D2003 */  lqv		$v29[0], 0x30($t1)
/* 040015D8 0005D8 C93C2004 */  lqv		$v28[0], 0x40($t1)
/* 040015DC 0005DC C93B2005 */  lqv		$v27[0], 0x50($t1)
/* 040015E0 0005E0 C93A2006 */  lqv		$v26[0], 0x60($t1)
/* 040015E4 0005E4 4A1FCE51 */  vsub	$v25, $v25, $v31
/* 040015E8 0005E8 C9382007 */  lqv		$v24[0], 0x70($t1)
/* 040015EC 0005EC 22F50020 */  addi	$s5, $s7, 0x20
/* 040015F0 0005F0 22F40030 */  addi	$s4, $s7, 0x30
/* 040015F4 0005F4 4A16B5AC */  vxor	$v22, $v22, $v22        // clear $v22
/* 040015F8 0005F8 4BF7FDC5 */  vmudm	$v23, $v31, $v23[7]   // load pitch_accumulator into every vector elem
/* 040015FC 0005FC 4B92CD8D */  vmadm	$v22, $v25, $v18[4]   // (accumulate) >> 16
/* 04001600 000600 4B1EFDCE */  vmadn	$v23, $v31, $v30[0]   // result & 0xffff
/* 04001604 000604 4B52FD46 */  vmudn	$v21, $v31, $v18[2]   // load in address to every vector elem
/* 04001608 000608 4B5EB54E */  vmadn	$v21, $v22, $v30[2]   // accumulate 2*$v22
/* 0400160C 00060C 4BB2BC44 */  vmudl	$v17, $v23, $v18[5]   // 64 * $v23 >> 16
/* 04001610 000610 4B9E8C46 */  vmudn	$v17, $v17, $v30[4]   // *= 8
/* 04001614 000614 4B72FC4E */  vmadn	$v17, $v31, $v18[3]   // += 0x00c0
/* 04001618 000618 C9392000 */  lqv		$v25[0], ($t1)
/* 0400161C 00061C EAB52000 */  sqv		$v21[0], ($s5)
/* 04001620 000620 EA912000 */  sqv		$v17[0], ($s4)
/* 04001624 000624 EAF70B84 */  ssv		$v23[7], 0x8($s7)
/* 04001628 000628 86B10000 */  lh		$s1, ($s5)
/* 0400162C 00062C 86890000 */  lh		$t1, ($s4)
/* 04001630 000630 86AD0008 */  lh		$t5, 8($s5)
/* 04001634 000634 86850008 */  lh		$a1, 8($s4)
/* 04001638 000638 86B00002 */  lh		$s0, 2($s5)
/* 0400163C 00063C 86880002 */  lh		$t0, 2($s4)
/* 04001640 000640 86AC000A */  lh		$t4, 0xa($s5)
/* 04001644 000644 8684000A */  lh		$a0, 0xa($s4)
/* 04001648 000648 86AF0004 */  lh		$t7, 4($s5)
/* 0400164C 00064C 86870004 */  lh		$a3, 4($s4)
/* 04001650 000650 86AB000C */  lh		$t3, 0xc($s5)
/* 04001654 000654 8683000C */  lh		$v1, 0xc($s4)
/* 04001658 000658 86AE0006 */  lh		$t6, 6($s5)
/* 0400165C 00065C 86860006 */  lh		$a2, 6($s4)
/* 04001660 000660 86AA000E */  lh		$t2, 0xe($s5)
/* 04001664 000664 8682000E */  lh		$v0, 0xe($s4)
.L04001668:
/* 04001668 000668 CA301800 */  ldv		$v16[0], ($s1)
/* 0400166C 00066C 4BF7FDC5 */  vmudm	$v23, $v31, $v23[7]
/* 04001670 000670 C92F1800 */  ldv		$v15[0], ($t1)
/* 04001674 000674 4BF6FDCF */  vmadh	$v23, $v31, $v22[7]
/* 04001678 000678 C9B01C00 */  ldv		$v16[8], ($t5)
/* 0400167C 00067C 4B92CD8D */  vmadm	$v22, $v25, $v18[4]
/* 04001680 000680 C8AF1C00 */  ldv		$v15[8], ($a1)
/* 04001684 000684 4B1EFDCE */  vmadn	$v23, $v31, $v30[0]
/* 04001688 000688 CA0E1800 */  ldv		$v14[0], ($s0)
/* 0400168C 00068C 4B52FD46 */  vmudn	$v21, $v31, $v18[2]
/* 04001690 000690 C90D1800 */  ldv		$v13[0], ($t0)
/* 04001694 000694 4B5EB54E */  vmadn	$v21, $v22, $v30[2]
/* 04001698 000698 C98E1C00 */  ldv		$v14[8], ($t4)
/* 0400169C 00069C 4BB2BC44 */  vmudl	$v17, $v23, $v18[5]
/* 040016A0 0006A0 C88D1C00 */  ldv		$v13[8], ($a0)
/* 040016A4 0006A4 C9EC1800 */  ldv		$v12[0], ($t7)
/* 040016A8 0006A8 C8EB1800 */  ldv		$v11[0], ($a3)
/* 040016AC 0006AC C96C1C00 */  ldv		$v12[8], ($t3)
/* 040016B0 0006B0 4B9E8C46 */  vmudn	$v17, $v17, $v30[4]
/* 040016B4 0006B4 C86B1C00 */  ldv		$v11[8], ($v1)
/* 040016B8 0006B8 C9CA1800 */  ldv		$v10[0], ($t6)
/* 040016BC 0006BC C8C91800 */  ldv		$v9[0], ($a2)
/* 040016C0 0006C0 4B72FC4E */  vmadn	$v17, $v31, $v18[3]
/* 040016C4 0006C4 C94A1C00 */  ldv		$v10[8], ($t2)
/* 040016C8 0006C8 4A0F8200 */  vmulf	$v8, $v16, $v15
/* 040016CC 0006CC C8491C00 */  ldv		$v9[8], ($v0)
/* 040016D0 0006D0 4A0D71C0 */  vmulf	$v7, $v14, $v13
/* 040016D4 0006D4 EAB52000 */  sqv		$v21[0], ($s5)
/* 040016D8 0006D8 4A0B6180 */  vmulf	$v6, $v12, $v11
/* 040016DC 0006DC EA912000 */  sqv		$v17[0], ($s4)
/* 040016E0 0006E0 86B10000 */  lh		$s1, ($s5)
/* 040016E4 0006E4 4A095140 */  vmulf	$v5, $v10, $v9
/* 040016E8 0006E8 86890000 */  lh		$t1, ($s4)
/* 040016EC 0006EC 4A684210 */  vadd	$v8, $v8, $v8[1q]
/* 040016F0 0006F0 86AD0008 */  lh		$t5, 8($s5)
/* 040016F4 0006F4 4A6739D0 */  vadd	$v7, $v7, $v7[1q]
/* 040016F8 0006F8 86850008 */  lh		$a1, 8($s4)
/* 040016FC 0006FC 4A663190 */  vadd	$v6, $v6, $v6[1q]
/* 04001700 000700 86B00002 */  lh		$s0, 2($s5)
/* 04001704 000704 4A652950 */  vadd	$v5, $v5, $v5[1q]
/* 04001708 000708 86880002 */  lh		$t0, 2($s4)
/* 0400170C 00070C 4AC84210 */  vadd	$v8, $v8, $v8[2h]
/* 04001710 000710 86AC000A */  lh		$t4, 0xa($s5)
/* 04001714 000714 4AC739D0 */  vadd	$v7, $v7, $v7[2h]
/* 04001718 000718 8684000A */  lh		$a0, 0xa($s4)
/* 0400171C 00071C 4AC63190 */  vadd	$v6, $v6, $v6[2h]
/* 04001720 000720 86AF0004 */  lh		$t7, 4($s5)
/* 04001724 000724 4AC52950 */  vadd	$v5, $v5, $v5[2h]
/* 04001728 000728 86870004 */  lh		$a3, 4($s4)
/* 0400172C 00072C 4A88E906 */  vmudn	$v4, $v29, $v8[0h]
/* 04001730 000730 86AB000C */  lh		$t3, 0xc($s5)
/* 04001734 000734 4A87E10E */  vmadn	$v4, $v28, $v7[0h]
/* 04001738 000738 8683000C */  lh		$v1, 0xc($s4)
/* 0400173C 00073C 4A86D90E */  vmadn	$v4, $v27, $v6[0h]
/* 04001740 000740 86AE0006 */  lh		$t6, 6($s5)
/* 04001744 000744 4A85D10E */  vmadn	$v4, $v26, $v5[0h]
/* 04001748 000748 86860006 */  lh		$a2, 6($s4)
/* 0400174C 00074C 86AA000E */  lh		$t2, 0xe($s5)
/* 04001750 000750 2252FFF0 */  addi	$s2, $s2, -0x10
/* 04001754 000754 EA642000 */  sqv		$v4[0], ($s3)
/* 04001758 000758 1A400003 */  blez	$s2, .L04001768
/* 0400175C 00075C 8682000E */   lh		$v0, 0xe($s4)
/* 04001760 000760 0900059A */  j		.L04001668
/* 04001764 000764 22730010 */   addi	$s3, $s3, 0x10
.L04001768:
/* 04001768 000768 EAF70804 */  ssv		$v23[0], 0x8($s7)
/* 0400176C 00076C CA301800 */  ldv		$v16[0], ($s1)
/* 04001770 000770 EAF01800 */  sdv		$v16[0], ($s7)
/* 04001774 000774 00161020 */  add		$v0, $zero, $s6
/* 04001778 000778 22E10000 */  addi	$at, $s7, 0
/* 0400177C 00077C 090006B1 */  j		dma_write_and_nextcmd
/* 04001780 000780 20030020 */   addi	$v1, $zero, 0x20

/***************************************************************
 *  ZZAABBBB CCCCDDDD
 *      Z = cmd
 *      A = count2
 *      B = dmem in
 *      C = dmem out
 *      D = count
 */
cmd_UNK16:
/* 04001784 000784 001A7C02 */  srl		$t7, $k0, 0x10
/* 04001788 000788 31EF00FF */  andi	$t7, $t7, 0xff
/* 0400178C 00078C 334DFFFF */  andi	$t5, $k0, 0xffff
/* 04001790 000790 00197402 */  srl		$t6, $t9, 0x10
@@loop_outer:
/* 04001794 000794 21EFFFFF */  addi	$t7, $t7, -1        // decr count2
/* 04001798 000798 332CFFFF */  andi	$t4, $t9, 0xffff    // (re)load count
@@loop_inner:
/* 0400179C 00079C C9A12000 */  lqv		$v1[0], ($t5)       // load from dmem in
/* 040017A0 0007A0 C9A22001 */  lqv		$v2[0], 0x10($t5)
/* 040017A4 0007A4 218CFFE0 */  addi	$t4, $t4, -0x20
/* 040017A8 0007A8 21AD0020 */  addi	$t5, $t5, 0x20
/* 040017AC 0007AC E9C12000 */  sqv		$v1[0], ($t6)       // store to dmem out
/* 040017B0 0007B0 E9C22001 */  sqv		$v2[0], 0x10($t6)
/* 040017B4 0007B4 1D80FFF9 */  bgtz	$t4, @@loop_inner   // until count done
/* 040017B8 0007B8 21CE0020 */   addi	$t6, $t6, 0x20
/* 040017BC 0007BC 1DE0FFF5 */  bgtz	$t7, @@loop_outer   // until count2 done
/* 040017C0 0007C0 00000000 */   nop	
/* 040017C4 0007C4 09000423 */  j		next_cmd
/* 040017C8 0007C8 00000000 */   nop	

/***************************************************************
 *  ZZAABBBB CCCCXXXX
 *      Z = cmd
 *      A = count
 *      B = dmem in
 *      C = dmem out
 *      X = pad
 */
cmd_DUPLICATE:
/* 040017CC 0007CC 001A7C02 */  srl		$t7, $k0, 0x10
/* 040017D0 0007D0 31EF00FF */  andi	$t7, $t7, 0xff
/* 040017D4 0007D4 334DFFFF */  andi	$t5, $k0, 0xffff
/* 040017D8 0007D8 00197402 */  srl		$t6, $t9, 0x10
/* 040017DC 0007DC C9A12000 */  lqv		$v1[0], ($t5)       // load from dmem in
/* 040017E0 0007E0 C9A22001 */  lqv		$v2[0], 0x10($t5)
/* 040017E4 0007E4 C9A32002 */  lqv		$v3[0], 0x20($t5)
/* 040017E8 0007E8 C9A42003 */  lqv		$v4[0], 0x30($t5)
/* 040017EC 0007EC C9A52004 */  lqv		$v5[0], 0x40($t5)
/* 040017F0 0007F0 C9A62005 */  lqv		$v6[0], 0x50($t5)
/* 040017F4 0007F4 C9A72006 */  lqv		$v7[0], 0x60($t5)
/* 040017F8 0007F8 C9A82007 */  lqv		$v8[0], 0x70($t5)
@@loop:
/* 040017FC 0007FC 21EFFFFF */  addi	$t7, $t7, -1        // decr count
/* 04001800 000800 E9C12000 */  sqv		$v1[0], ($t6)       // store to dmem out
/* 04001804 000804 E9C22001 */  sqv		$v2[0], 0x10($t6)
/* 04001808 000808 E9C32002 */  sqv		$v3[0], 0x20($t6)
/* 0400180C 00080C E9C42003 */  sqv		$v4[0], 0x30($t6)
/* 04001810 000810 E9C52004 */  sqv		$v5[0], 0x40($t6)
/* 04001814 000814 E9C62005 */  sqv		$v6[0], 0x50($t6)
/* 04001818 000818 E9C72006 */  sqv		$v7[0], 0x60($t6)
/* 0400181C 00081C E9C82007 */  sqv		$v8[0], 0x70($t6)
/* 04001820 000820 1DE0FFF6 */  bgtz	$t7, @@loop         // until done
/* 04001824 000824 21CE0080 */   addi	$t6, $t6, 0x80
/* 04001828 000828 09000423 */  j		next_cmd
/* 0400182C 00082C 00000000 */   nop	

/***************************************************************
 *  ZZXXAAAA BBBBCCCC
 *      Z = cmd
 *      A = count
 *      B = dmem in
 *      C = dmem out
 */
cmd_INTERL:
/* 04001830 000830 334CFFFF */  andi	$t4, $k0, 0xffff
/* 04001834 000834 332EFFFF */  andi	$t6, $t9, 0xffff
/* 04001838 000838 00196C02 */  srl		$t5, $t9, 0x10
@@loop:
/* 0400183C 00083C C9A10800 */  lsv		$v1[0], ($t5)           // load from dmem in with interleaving
/* 04001840 000840 C9A20804 */  lsv		$v2[0], 0x8($t5)
/* 04001844 000844 C9A30808 */  lsv		$v3[0], 0x10($t5)
/* 04001848 000848 C9A4080C */  lsv		$v4[0], 0x18($t5)
/* 0400184C 00084C C9A10902 */  lsv		$v1[2], 0x4($t5)
/* 04001850 000850 C9A20906 */  lsv		$v2[2], 0xC($t5)
/* 04001854 000854 C9A3090A */  lsv		$v3[2], 0x14($t5)
/* 04001858 000858 C9A4090E */  lsv		$v4[2], 0x1C($t5)
/* 0400185C 00085C 21AD0020 */  addi	$t5, $t5, 0x20
/* 04001860 000860 218CFFF8 */  addi	$t4, $t4, -8            // decr count
/* 04001864 000864 E9C11000 */  slv		$v1[0], ($t6)           // store to dmem out
/* 04001868 000868 E9C21001 */  slv		$v2[0], 0x4($t6)
/* 0400186C 00086C E9C31002 */  slv		$v3[0], 0x8($t6)
/* 04001870 000870 E9C41003 */  slv		$v4[0], 0xC($t6)
/* 04001874 000874 1D80FFF1 */  bgtz	$t4, @@loop             // until done
/* 04001878 000878 21CE0010 */   addi	$t6, $t6, 0x10
/* 0400187C 00087C 09000423 */  j		next_cmd
/* 04001880 000880 00000000 */   nop	

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 */
cmd_ENVMIXER:
/* 04001884 000884 4A04212C */  vxor	$v4, $v4, $v4           // clear vectors
/* 04001888 000888 4A00002C */  vxor	$v0, $v0, $v0
/* 0400188C 00088C C8032000 */  lqv		$v3[0], (data_0000)($zero)
/* 04001890 000890 02B5A820 */  add		$s5, $s5, $s5
/* 04001894 000894 48952000 */  mtc2	$s5, $v4[0]
/* 04001898 000898 48952100 */  mtc2	$s5, $v4[2]
/* 0400189C 00089C 001A6302 */  srl		$t4, $k0, 0xc
/* 040018A0 0008A0 31930FF0 */  andi	$s3, $t4, 0xff0
/* 040018A4 0008A4 02D6B020 */  add		$s6, $s6, $s6
/* 040018A8 0008A8 48962200 */  mtc2	$s6, $v4[4]
/* 040018AC 0008AC 48962300 */  mtc2	$s6, $v4[6]
/* 040018B0 0008B0 00196502 */  srl		$t4, $t9, 0x14
/* 040018B4 0008B4 318E0FF0 */  andi	$t6, $t4, 0xff0
/* 040018B8 0008B8 016B5820 */  add		$t3, $t3, $t3
/* 040018BC 0008BC 488B2400 */  mtc2	$t3, $v4[8]
/* 040018C0 0008C0 488B2500 */  mtc2	$t3, $v4[10]
/* 040018C4 0008C4 00196302 */  srl		$t4, $t9, 0xc
/* 040018C8 0008C8 318F0FF0 */  andi	$t7, $t4, 0xff0
/* 040018CC 0008CC 00196102 */  srl		$t4, $t9, 4
/* 040018D0 0008D0 31900FF0 */  andi	$s0, $t4, 0xff0
/* 040018D4 0008D4 00196100 */  sll		$t4, $t9, 4
/* 040018D8 0008D8 31910FF0 */  andi	$s1, $t4, 0xff0
/* 040018DC 0008DC 334C0002 */  andi	$t4, $k0, 2
/* 040018E0 0008E0 000C6042 */  srl		$t4, $t4, 1
/* 040018E4 0008E4 000C6022 */  neg		$t4, $t4
/* 040018E8 0008E8 488C1000 */  mtc2	$t4, $v2[0]
/* 040018EC 0008EC 334C0001 */  andi	$t4, $k0, 1
/* 040018F0 0008F0 000C6022 */  neg		$t4, $t4
/* 040018F4 0008F4 488C1100 */  mtc2	$t4, $v2[2]
/* 040018F8 0008F8 334C0008 */  andi	$t4, $k0, 8
/* 040018FC 0008FC 000C6042 */  srl		$t4, $t4, 1
/* 04001900 000900 000C6022 */  neg		$t4, $t4
/* 04001904 000904 488C1200 */  mtc2	$t4, $v2[4]
/* 04001908 000908 334C0004 */  andi	$t4, $k0, 4
/* 0400190C 00090C 000C6042 */  srl		$t4, $t4, 1
/* 04001910 000910 000C6022 */  neg		$t4, $t4
/* 04001914 000914 488C1300 */  mtc2	$t4, $v2[6]
/* 04001918 000918 001A6202 */  srl		$t4, $k0, 8
/* 0400191C 00091C 319400FF */  andi	$s4, $t4, 0xff
/* 04001920 000920 4A000010 */  vadd	$v0, $v0, $v0
/* 04001924 000924 334A0010 */  andi	$t2, $k0, 0x10
/* 04001928 000928 CA682000 */  lqv		$v8[0], ($s3)
.L0400192C:
/* 0400192C 00092C CA6F2001 */  lqv		$v15[0], 0x10($s3)
/* 04001930 000930 22730020 */  addi	$s3, $s3, 0x20
/* 04001934 000934 4B014245 */  vmudm	$v9, $v8, $v1[0]
/* 04001938 000938 4B414285 */  vmudm	$v10, $v8, $v1[2]
/* 0400193C 00093C 2294FFF0 */  addi	$s4, $s4, -0x10
/* 04001940 000940 C9CB2000 */  lqv		$v11[0], ($t6)
/* 04001944 000944 C9EC2000 */  lqv		$v12[0], ($t7)
/* 04001948 000948 4B217C05 */  vmudm	$v16, $v15, $v1[1]
/* 0400194C 00094C 4B617C45 */  vmudm	$v17, $v15, $v1[3]
/* 04001950 000950 C9D22001 */  lqv		$v18[0], 0x10($t6)
/* 04001954 000954 C9F32001 */  lqv		$v19[0], 0x10($t7)
/* 04001958 000958 4B024A6C */  vxor	$v9, $v9, $v2[0]
/* 0400195C 00095C 4B2252AC */  vxor	$v10, $v10, $v2[1]
/* 04001960 000960 CA0D2000 */  lqv		$v13[0], ($s0)
/* 04001964 000964 CA2E2000 */  lqv		$v14[0], ($s1)
/* 04001968 000968 4A095AD0 */  vadd	$v11, $v11, $v9
/* 0400196C 00096C 4A0A6310 */  vadd	$v12, $v12, $v10
/* 04001970 000970 4B814A45 */  vmudm	$v9, $v9, $v1[4]
/* 04001974 000974 4B815285 */  vmudm	$v10, $v10, $v1[4]
/* 04001978 000978 4B02842C */  vxor	$v16, $v16, $v2[0]
/* 0400197C 00097C 4B228C6C */  vxor	$v17, $v17, $v2[1]
/* 04001980 000980 CA142001 */  lqv		$v20[0], 0x10($s0)
/* 04001984 000984 CA352001 */  lqv		$v21[0], 0x10($s1)
/* 04001988 000988 4A109490 */  vadd	$v18, $v18, $v16
/* 0400198C 00098C 4A119CD0 */  vadd	$v19, $v19, $v17
/* 04001990 000990 4BA18405 */  vmudm	$v16, $v16, $v1[5]
/* 04001994 000994 4BA18C45 */  vmudm	$v17, $v17, $v1[5]
/* 04001998 000998 4B424A6C */  vxor	$v9, $v9, $v2[2]
/* 0400199C 00099C 4B6252AC */  vxor	$v10, $v10, $v2[3]
/* 040019A0 0009A0 E9CB2000 */  sqv		$v11[0], ($t6)
/* 040019A4 0009A4 4B42842C */  vxor	$v16, $v16, $v2[2]
/* 040019A8 0009A8 4B628C6C */  vxor	$v17, $v17, $v2[3]
/* 040019AC 0009AC 15400015 */  bnez	$t2, .L04001A04
/* 040019B0 0009B0 E9EC2000 */   sqv	$v12[0], ($t7)
/* 040019B4 0009B4 4A096B50 */  vadd	$v13, $v13, $v9
/* 040019B8 0009B8 4A0A7390 */  vadd	$v14, $v14, $v10
/* 040019BC 0009BC E9D22001 */  sqv		$v18[0], 0x10($t6)
/* 040019C0 0009C0 E9F32001 */  sqv		$v19[0], 0x10($t7)
/* 040019C4 0009C4 4A10A510 */  vadd	$v20, $v20, $v16
/* 040019C8 0009C8 4A11AD50 */  vadd	$v21, $v21, $v17
.L040019CC:
/* 040019CC 0009CC 21CE0020 */  addi	$t6, $t6, 0x20
/* 040019D0 0009D0 EA0D2000 */  sqv		$v13[0], ($s0)
/* 040019D4 0009D4 EA2E2000 */  sqv		$v14[0], ($s1)
/* 040019D8 0009D8 21EF0020 */  addi	$t7, $t7, 0x20
/* 040019DC 0009DC CA682000 */  lqv		$v8[0], ($s3)
/* 040019E0 0009E0 EA142001 */  sqv		$v20[0], 0x10($s0)
/* 040019E4 0009E4 22100020 */  addi	$s0, $s0, 0x20
/* 040019E8 0009E8 4A040854 */  vaddc	$v1, $v1, $v4
/* 040019EC 0009EC EA352001 */  sqv		$v21[0], 0x10($s1)
/* 040019F0 0009F0 22310020 */  addi	$s1, $s1, 0x20
/* 040019F4 0009F4 1E80FFCD */  bgtz	$s4, .L0400192C
/* 040019F8 0009F8 4A000010 */   vadd	$v0, $v0, $v0
/* 040019FC 0009FC 09000423 */  j		next_cmd
/* 04001A00 000A00 4A00002C */   vxor	$v0, $v0, $v0           // clear $v0
.L04001A04:
/* 04001A04 000A04 4A0A6B50 */  vadd	$v13, $v13, $v10
/* 04001A08 000A08 4A097390 */  vadd	$v14, $v14, $v9
/* 04001A0C 000A0C E9D22001 */  sqv		$v18[0], 0x10($t6)
/* 04001A10 000A10 E9F32001 */  sqv		$v19[0], 0x10($t7)
/* 04001A14 000A14 4A11A510 */  vadd	$v20, $v20, $v17
/* 04001A18 000A18 09000673 */  j		.L040019CC
/* 04001A1C 000A1C 4A10AD50 */   vadd	$v21, $v21, $v16

/***************************************************************
 *  ZZAABBBB CCCCDDDD
 *      Z = cmd
 *      A = 
 *      B = 
 *      C = 
 *      D = 
 */
cmd_ENVSETUP1:
/* 04001A20 000A20 4A01086C */  vxor	$v1, $v1, $v1       // clear $v1
/* 04001A24 000A24 334BFFFF */  andi	$t3, $k0, 0xffff
/* 04001A28 000A28 001A6202 */  srl		$t4, $k0, 8
/* 04001A2C 000A2C 318CFF00 */  andi	$t4, $t4, 0xff00
/* 04001A30 000A30 488C0C00 */  mtc2	$t4, $v1[8]
/* 04001A34 000A34 018B6020 */  add		$t4, $t4, $t3
/* 04001A38 000A38 488C0D00 */  mtc2	$t4, $v1[10]
/* 04001A3C 000A3C 0019AC02 */  srl		$s5, $t9, 0x10
/* 04001A40 000A40 09000423 */  j		next_cmd
/* 04001A44 000A44 3336FFFF */   andi	$s6, $t9, 0xffff

/***************************************************************
 *  ZZXXXXXX AAAABBBB
 *      Z = cmd
 *      X = pad
 *      A = vol left
 *      B = vol right
 */
cmd_ENVSETUP2:
/* 04001A48 000A48 00196402 */  srl		$t4, $t9, 0x10
/* 04001A4C 000A4C 488C0800 */  mtc2	$t4, $v1[0]         // apply vol left
/* 04001A50 000A50 01956020 */  add		$t4, $t4, $s5
/* 04001A54 000A54 488C0900 */  mtc2	$t4, $v1[2]         // gain?
/* 04001A58 000A58 332CFFFF */  andi	$t4, $t9, 0xffff
/* 04001A5C 000A5C 488C0A00 */  mtc2	$t4, $v1[4]         // apply vol right
/* 04001A60 000A60 01966020 */  add		$t4, $t4, $s6
/* 04001A64 000A64 09000423 */  j		next_cmd
/* 04001A68 000A68 488C0B00 */   mtc2	$t4, $v1[6]         // gain?

func_04001A6C: // setup buff and noop
/* 04001A6C 000A6C 001A1B02 */  srl		$v1, $k0, 0xc       // ?
/* 04001A70 000A70 30630FF0 */  andi	$v1, $v1, 0xff0
/* 04001A74 000A74 3341FFFF */  andi	$at, $k0, 0xffff    // ?
setup_loadadpcm:
/* 04001A78 000A78 00191200 */  sll		$v0, $t9, 8
/* 04001A7C 000A7C 03E00008 */  jr		$ra
/* 04001A80 000A80 00021202 */   srl	$v0, $v0, 8         // remove addr high byte

/***************************************************************
 *  ZZAABBBB CCCCCCCC
 *      Z = cmd
 *      A = len >> 4
 *      B = ?
 *      C = addr
 */
cmd_LOADBUFF:
/* 04001A84 000A84 0D00069B */  jal		func_04001A6C
/* 04001A88 000A88 00000000 */   nop	
/* 04001A8C 000A8C 090006AD */  j		dma_read_and_nextcmd
/* 04001A90 000A90 00000000 */   nop	

/***************************************************************
 *  ZZAABBBB CCCCCCCC
 *      Z = cmd
 *      A = len >> 4
 *      B = ?
 *      C = addr
 */
cmd_SAVEBUFF:
/* 04001A94 000A94 0D00069B */  jal		func_04001A6C
/* 04001A98 000A98 00000000 */   nop	
/* 04001A9C 000A9C 090006B1 */  j		dma_write_and_nextcmd
/* 04001AA0 000AA0 00000000 */   nop	

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_LOADADPCM:
/* 04001AA4 000AA4 0D00069E */  jal		setup_loadadpcm
/* 04001AA8 000AA8 20010330 */   addi	$at, $zero, adpcmTable
/* 04001AAC 000AAC 090006AD */  j		dma_read_and_nextcmd
/* 04001AB0 000AB0 3343FFFF */   andi	$v1, $k0, 0xffff

dma_read_and_nextcmd:
/* 04001AB4 000AB4 0D0006B5 */  jal		dma_read_start
/* 04001AB8 000AB8 2063FFFF */   addi	$v1, $v1, -1
/* 04001ABC 000ABC 09000423 */  j		next_cmd
/* 04001AC0 000AC0 00000000 */   nop	

dma_write_and_nextcmd:
/* 04001AC4 000AC4 0D0006BF */  jal		dma_write_start
/* 04001AC8 000AC8 2063FFFF */   addi	$v1, $v1, -1
/* 04001ACC 000ACC 09000423 */  j		next_cmd
/* 04001AD0 000AD0 00000000 */   nop	

dma_read_start:
/* 04001AD4 000AD4 40043800 */  mfc0	$a0, SP_SEMAPHORE       // acquire semaphore
/* 04001AD8 000AD8 1480FD86 */  bnez	$a0, dma_read
/* 04001ADC 000ADC 00000000 */   nop	
@@dma_not_full:
/* 04001AE0 000AE0 40042800 */  mfc0	$a0, SP_DMA_FULL
/* 04001AE4 000AE4 1480FFFE */  bnez	$a0, @@dma_not_full
/* 04001AE8 000AE8 00000000 */   nop	
/* 04001AEC 000AEC 40810000 */  mtc0	$at, SP_MEM_ADDR
/* 04001AF0 000AF0 40820800 */  mtc0	$v0, SP_DRAM_ADDR
/* 04001AF4 000AF4 090006C8 */  j		.L04001B20
/* 04001AF8 000AF8 40831000 */   mtc0	$v1, SP_RD_LEN
dma_write_start:
/* 04001AFC 000AFC 40043800 */  mfc0	$a0, SP_SEMAPHORE       // acquire semaphore
/* 04001B00 000B00 1480FD87 */  bnez	$a0, dma_write
/* 04001B04 000B04 00000000 */   nop	
@@dma_not_full:
/* 04001B08 000B08 40042800 */  mfc0	$a0, SP_DMA_FULL
/* 04001B0C 000B0C 1480FFFE */  bnez	$a0, @@dma_not_full
/* 04001B10 000B10 00000000 */   nop	
/* 04001B14 000B14 40810000 */  mtc0	$at, SP_MEM_ADDR
/* 04001B18 000B18 40820800 */  mtc0	$v0, SP_DRAM_ADDR
/* 04001B1C 000B1C 40831800 */  mtc0	$v1, SP_WR_LEN
.L04001B20:                                                     // dma_busy
/* 04001B20 000B20 20040001 */  addi	$a0, $zero, 1
@@dma_wait:
/* 04001B24 000B24 1480FFFF */  bnez	$a0, @@dma_wait
/* 04001B28 000B28 40043000 */   mfc0	$a0, SP_DMA_BUSY
/* 04001B2C 000B2C 03E00008 */  jr		$ra
/* 04001B30 000B30 40803800 */   mtc0	$zero, SP_SEMAPHORE     // release semaphore

/***************************************************************
 *  ZZAABBBB CCCCDDDD
 *      Z = cmd
 *      A = count
 *      B = gain
 *      C = dmem in
 *      D = dmem out
 */
cmd_MIXER:
/* 04001B34 000B34 C81F2000 */  lqv		$v31[0], (data_0000)($zero)
/* 04001B38 000B38 001A9302 */  srl		$s2, $k0, 0xc
/* 04001B3C 000B3C 32520FF0 */  andi	$s2, $s2, 0xff0         // count << 4
/* 04001B40 000B40 3333FFFF */  andi	$s3, $t9, 0xffff        // load dmem out
/* 04001B44 000B44 0019A402 */  srl		$s4, $t9, 0x10          // load dmem in
/* 04001B48 000B48 3351FFFF */  andi	$s1, $k0, 0xffff
/* 04001B4C 000B4C 4891F000 */  mtc2	$s1, $v30[0]            // set gain
/* 04001B50 000B50 CA7B2000 */  lqv		$v27[0], ($s3)          // do mix
/* 04001B54 000B54 CA9D2000 */  lqv		$v29[0], ($s4)
/* 04001B58 000B58 CA7A2001 */  lqv		$v26[0], 0x10($s3)
/* 04001B5C 000B5C CA9C2001 */  lqv		$v28[0], 0x10($s4)
@@loop:
/* 04001B60 000B60 4BDFDEC0 */  vmulf	$v27, $v27, $v31[6]
/* 04001B64 000B64 2252FFE0 */  addi	$s2, $s2, -0x20
/* 04001B68 000B68 4B1EEEC8 */  vmacf	$v27, $v29, $v30[0]
/* 04001B6C 000B6C 22940020 */  addi	$s4, $s4, 0x20
/* 04001B70 000B70 4BDFD680 */  vmulf	$v26, $v26, $v31[6]
/* 04001B74 000B74 4B1EE688 */  vmacf	$v26, $v28, $v30[0]
/* 04001B78 000B78 CA9D2000 */  lqv		$v29[0], ($s4)
/* 04001B7C 000B7C EA7B2000 */  sqv		$v27[0], ($s3)
/* 04001B80 000B80 CA7B2002 */  lqv		$v27[0], 0x20($s3)
/* 04001B84 000B84 EA7A2001 */  sqv		$v26[0], 0x10($s3)
/* 04001B88 000B88 CA9C2001 */  lqv		$v28[0], 0x10($s4)
/* 04001B8C 000B8C 22730020 */  addi	$s3, $s3, 0x20
/* 04001B90 000B90 1E40FFF3 */  bgtz	$s2, @@loop             // until done
/* 04001B94 000B94 CA7A2001 */   lqv	$v26[0], 0x10($s3)
/* 04001B98 000B98 09000423 */  j		next_cmd
/* 04001B9C 000B9C 00000000 */   nop	

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_UNK17:
/* 04001BA0 000BA0 970D0000 */  lhu		$t5, (audio_in_buf)($t8)
/* 04001BA4 000BA4 4A0210AC */  vxor	$v2, $v2, $v2           // clear vectors
/* 04001BA8 000BA8 970E0002 */  lhu		$t6, (audio_out_buf)($t8)
/* 04001BAC 000BAC 4A0318EC */  vxor	$v3, $v3, $v3
/* 04001BB0 000BB0 970C0004 */  lhu		$t4, (audio_count)($t8)
/* 04001BB4 000BB4 00198A00 */  sll		$s1, $t9, 8
/* 04001BB8 000BB8 00118A02 */  srl		$s1, $s1, 8
/* 04001BBC 000BBC E9C22000 */  sqv		$v2[0], ($t6)
/* 04001BC0 000BC0 E9C32001 */  sqv		$v3[0], 0x10($t6)
/* 04001BC4 000BC4 001A0C02 */  srl		$at, $k0, 0x10
/* 04001BC8 000BC8 30210001 */  andi	$at, $at, 1
/* 04001BCC 000BCC 1C200008 */  bgtz	$at, .L04001BF0
/* 04001BD0 000BD0 001A0C02 */   srl	$at, $k0, 0x10
/* 04001BD4 000BD4 30210002 */  andi	$at, $at, 2
/* 04001BD8 000BD8 10010002 */  beq		$zero, $at, .L04001BE4
/* 04001BDC 000BDC 22220000 */   addi	$v0, $s1, 0
/* 04001BE0 000BE0 8F020008 */  lw		$v0, (audio_loop_addr)($t8)
.L04001BE4:
/* 04001BE4 000BE4 21C10000 */  addi	$at, $t6, 0
/* 04001BE8 000BE8 0D0006B5 */  jal		dma_read_start
/* 04001BEC 000BEC 2003001F */   addi	$v1, $zero, 0x1f
.L04001BF0:
/* 04001BF0 000BF0 21CE0020 */  addi	$t6, $t6, 0x20
/* 04001BF4 000BF4 1180000B */  beqz	$t4, .L04001C24
/* 04001BF8 000BF8 00000000 */   nop	
/* 04001BFC 000BFC C9A23000 */  lpv		$v2[0], ($t5)
/* 04001C00 000C00 C9A33001 */  lpv		$v3[0], 0x8($t5)
/* 04001C04 000C04 21AD0010 */  addi	$t5, $t5, 0x10
.L04001C08:
/* 04001C08 000C08 218CFFE0 */  addi	$t4, $t4, -0x20
/* 04001C0C 000C0C C9A43000 */  lpv		$v4[0], ($t5)
/* 04001C10 000C10 E9C22000 */  sqv		$v2[0], ($t6)
/* 04001C14 000C14 C9A53001 */  lpv		$v5[0], 0x8($t5)
/* 04001C18 000C18 E9C32001 */  sqv		$v3[0], 0x10($t6)
/* 04001C1C 000C1C 1D800005 */  bgtz	$t4, .L04001C34
/* 04001C20 000C20 21CE0020 */   addi	$t6, $t6, 0x20
.L04001C24:
/* 04001C24 000C24 21C1FFE0 */  addi	$at, $t6, -0x20
/* 04001C28 000C28 22220000 */  addi	$v0, $s1, 0
/* 04001C2C 000C2C 090006B1 */  j		dma_write_and_nextcmd
/* 04001C30 000C30 20030020 */   addi	$v1, $zero, 0x20
.L04001C34:
/* 04001C34 000C34 218CFFE0 */  addi	$t4, $t4, -0x20
/* 04001C38 000C38 C9A23002 */  lpv		$v2[0], 0x10($t5)
/* 04001C3C 000C3C E9C42000 */  sqv		$v4[0], ($t6)
/* 04001C40 000C40 C9A33003 */  lpv		$v3[0], 0x18($t5)
/* 04001C44 000C44 E9C52001 */  sqv		$v5[0], 0x10($t6)
/* 04001C48 000C48 21AD0020 */  addi	$t5, $t5, 0x20
/* 04001C4C 000C4C 1D80FFEE */  bgtz	$t4, .L04001C08
/* 04001C50 000C50 21CE0020 */   addi	$t6, $t6, 0x20
/* 04001C54 000C54 09000709 */  j		.L04001C24
/* 04001C58 000C58 00000000 */   nop	

/***************************************************************
 *  ZZAABBBB CCCCXXXX
 *      Z = cmd
 *      A = gain (hi nibble is HI gain, lo nibble is LO gain)?
 *      B = count
 *      C = dmem in/out
 *      X = pad
 *
 *      $k0 = cmd wd 1
 *      $t9 = cmd wd 2
 *
 */
cmd_HILOGAIN:
/* 04001C5C 000C5C 334CFFFF */  andi	$t4, $k0, 0xffff        // load count
/* 04001C60 000C60 00196C02 */  srl		$t5, $t9, 0x10          // extract dmem addr
/* 04001C64 000C64 001A7902 */  srl		$t7, $k0, 4
/* 04001C68 000C68 31EFF000 */  andi	$t7, $t7, 0xf000
/* 04001C6C 000C6C 488F1900 */  mtc2	$t7, $v3[2]             // move LO(gain) << 0xC to $v3[2]
/* 04001C70 000C70 001A7D02 */  srl		$t7, $k0, 0x14
/* 04001C74 000C74 31EF000F */  andi	$t7, $t7, 0xf
/* 04001C78 000C78 488F1800 */  mtc2	$t7, $v3[0]             // move HI(gain) to $v3[0]
@@loop:
/* 04001C7C 000C7C C9A12000 */  lqv		$v1[0], ($t5)           // load
/* 04001C80 000C80 C9A22001 */  lqv		$v2[0], 0x10($t5)
/* 04001C84 000C84 4B230905 */  vmudm	$v4, $v1, $v3[1]        // do gain
/* 04001C88 000C88 4B03090F */  vmadh	$v4, $v1, $v3[0]
/* 04001C8C 000C8C 4B231145 */  vmudm	$v5, $v2, $v3[1]
/* 04001C90 000C90 4B03114F */  vmadh	$v5, $v2, $v3[0]
/* 04001C94 000C94 E9A42000 */  sqv		$v4[0], ($t5)           // store
/* 04001C98 000C98 E9A52001 */  sqv		$v5[0], 0x10($t5)
/* 04001C9C 000C9C 218CFFE0 */  addi	$t4, $t4, -0x20         // decr count in multiples of 0x20
/* 04001CA0 000CA0 1D80FFF6 */  bgtz	$t4, @@loop             // until done
/* 04001CA4 000CA4 21AD0020 */   addi	$t5, $t5, 0x20
/* 04001CA8 000CA8 09000423 */  j		next_cmd
/* 04001CAC 000CAC 4A00002C */   vxor	$v0, $v0, $v0           // clear $v0

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_FILTER:
/* 04001CB0 000CB0 22ED0000 */  addi	$t5, $s7, 0
/* 04001CB4 000CB4 4A00002C */  vxor	$v0, $v0, $v0           // clear $v0
/* 04001CB8 000CB8 22EE0020 */  addi	$t6, $s7, 0x20
/* 04001CBC 000CBC E9A02000 */  sqv		$v0[0], ($t5)
/* 04001CC0 000CC0 00191200 */  sll		$v0, $t9, 8
/* 04001CC4 000CC4 E9A02001 */  sqv		$v0[0], 0x10($t5)
/* 04001CC8 000CC8 00021202 */  srl		$v0, $v0, 8
/* 04001CCC 000CCC 001A6402 */  srl		$t4, $k0, 0x10
/* 04001CD0 000CD0 318C00FF */  andi	$t4, $t4, 0xff
/* 04001CD4 000CD4 1180000B */  beqz	$t4, .L04001D04
/* 04001CD8 000CD8 00000000 */   nop	
/* 04001CDC 000CDC 218CFFFF */  addi	$t4, $t4, -1
/* 04001CE0 000CE0 1180000A */  beqz	$t4, .L04001D0C
/* 04001CE4 000CE4 00000000 */   nop	
/* 04001CE8 000CE8 334FFFFF */  andi	$t7, $k0, 0xffff
/* 04001CEC 000CEC 4A00002C */  vxor	$v0, $v0, $v0           // clear $v0
/* 04001CF0 000CF0 E9C02000 */  sqv		$v0[0], ($t6)
/* 04001CF4 000CF4 E9C02002 */  sqv		$v0[0], 0x20($t6)
/* 04001CF8 000CF8 21C10010 */  addi	$at, $t6, 0x10
/* 04001CFC 000CFC 090006AD */  j		dma_read_and_nextcmd
/* 04001D00 000D00 20030010 */   addi	$v1, $zero, 0x10
.L04001D04:
/* 04001D04 000D04 01A00820 */  add		$at, $t5, $zero
/* 04001D08 000D08 0D0006B5 */  jal		dma_read_start
.L04001D0C:
/* 04001D0C 000D0C 2003001F */   addi	$v1, $zero, 0x1f
/* 04001D10 000D10 C9D82001 */  lqv		$v24[0], 0x10($t6)
/* 04001D14 000D14 C9B92001 */  lqv		$v25[0], 0x10($t5)
/* 04001D18 000D18 4A0E73AC */  vxor	$v14, $v14, $v14        // clear $v14
/* 04001D1C 000D1C 4A000000 */  vmulf	$v0, $v0, $v0
/* 04001D20 000D20 200C4000 */  addi	$t4, $zero, 0x4000
/* 04001D24 000D24 488C7800 */  mtc2	$t4, $v15[0]
/* 04001D28 000D28 4B0FC388 */  vmacf	$v14, $v24, $v15[0]
/* 04001D2C 000D2C 4B0FCB88 */  vmacf	$v14, $v25, $v15[0]
/* 04001D30 000D30 E9CE2001 */  sqv		$v14[0], 0x10($t6)
/* 04001D34 000D34 E9AE2001 */  sqv		$v14[0], 0x10($t5)
/* 04001D38 000D38 01A00820 */  add		$at, $t5, $zero
/* 04001D3C 000D3C 334BFFFF */  andi	$t3, $k0, 0xffff
/* 04001D40 000D40 C9D82001 */  lqv		$v24[0], 0x10($t6)
/* 04001D44 000D44 C9DC1801 */  ldv		$v28[0], 0x8($t6)
/* 04001D48 000D48 C9DC1C02 */  ldv		$v28[8], 0x10($t6)
/* 04001D4C 000D4C C9D41803 */  ldv		$v20[0], 0x18($t6)
/* 04001D50 000D50 C9D41C04 */  ldv		$v20[8], 0x20($t6)
/* 04001D54 000D54 21CE0002 */  addi	$t6, $t6, 2
/* 04001D58 000D58 C9DF1800 */  ldv		$v31[0], ($t6)
/* 04001D5C 000D5C C9DF1C01 */  ldv		$v31[8], 0x8($t6)
/* 04001D60 000D60 C9D11802 */  ldv		$v17[0], 0x10($t6)
/* 04001D64 000D64 C9D11C03 */  ldv		$v17[8], 0x18($t6)
/* 04001D68 000D68 C9DB1801 */  ldv		$v27[0], 0x8($t6)
/* 04001D6C 000D6C C9DB1C02 */  ldv		$v27[8], 0x10($t6)
/* 04001D70 000D70 C9D51803 */  ldv		$v21[0], 0x18($t6)
/* 04001D74 000D74 C9D51C04 */  ldv		$v21[8], 0x20($t6)
/* 04001D78 000D78 21CE0002 */  addi	$t6, $t6, 2
/* 04001D7C 000D7C C9DE1800 */  ldv		$v30[0], ($t6)
/* 04001D80 000D80 C9DE1C01 */  ldv		$v30[8], 0x8($t6)
/* 04001D84 000D84 C9DA1801 */  ldv		$v26[0], 0x8($t6)
/* 04001D88 000D88 C9DA1C02 */  ldv		$v26[8], 0x10($t6)
/* 04001D8C 000D8C C9D21802 */  ldv		$v18[0], 0x10($t6)
/* 04001D90 000D90 C9D21C03 */  ldv		$v18[8], 0x18($t6)
/* 04001D94 000D94 C9D61803 */  ldv		$v22[0], 0x18($t6)
/* 04001D98 000D98 C9D61C04 */  ldv		$v22[8], 0x20($t6)
/* 04001D9C 000D9C 21CE0002 */  addi	$t6, $t6, 2
/* 04001DA0 000DA0 C9DD1800 */  ldv		$v29[0], ($t6)
/* 04001DA4 000DA4 C9DD1C01 */  ldv		$v29[8], 0x8($t6)
/* 04001DA8 000DA8 C9D91801 */  ldv		$v25[0], 0x8($t6)
/* 04001DAC 000DAC C9D91C02 */  ldv		$v25[8], 0x10($t6)
/* 04001DB0 000DB0 C9D31802 */  ldv		$v19[0], 0x10($t6)
/* 04001DB4 000DB4 C9D31C03 */  ldv		$v19[8], 0x18($t6)
/* 04001DB8 000DB8 C9D71803 */  ldv		$v23[0], 0x18($t6)
/* 04001DBC 000DBC C9D71C04 */  ldv		$v23[8], 0x20($t6)
/* 04001DC0 000DC0 C9AF2000 */  lqv		$v15[0], ($t5)
.L04001DC4:
/* 04001DC4 000DC4 C9702000 */  lqv		$v16[0], ($t3)
/* 04001DC8 000DC8 4A0E73AC */  vxor	$v14, $v14, $v14        // clear $v14
/* 04001DCC 000DCC 4A000000 */  vmulf	$v0, $v0, $v0
/* 04001DD0 000DD0 4B2FBB88 */  vmacf	$v14, $v23, $v15[1]
/* 04001DD4 000DD4 4B4FB388 */  vmacf	$v14, $v22, $v15[2]
/* 04001DD8 000DD8 4B6FAB88 */  vmacf	$v14, $v21, $v15[3]
/* 04001DDC 000DDC 4B8FA388 */  vmacf	$v14, $v20, $v15[4]
/* 04001DE0 000DE0 4BAF9B88 */  vmacf	$v14, $v19, $v15[5]
/* 04001DE4 000DE4 4BCF9388 */  vmacf	$v14, $v18, $v15[6]
/* 04001DE8 000DE8 4BEF8B88 */  vmacf	$v14, $v17, $v15[7]
/* 04001DEC 000DEC 4B10C388 */  vmacf	$v14, $v24, $v16[0]
/* 04001DF0 000DF0 4B30CB88 */  vmacf	$v14, $v25, $v16[1]
/* 04001DF4 000DF4 4B50D388 */  vmacf	$v14, $v26, $v16[2]
/* 04001DF8 000DF8 4B70DB88 */  vmacf	$v14, $v27, $v16[3]
/* 04001DFC 000DFC 4B90E388 */  vmacf	$v14, $v28, $v16[4]
/* 04001E00 000E00 4BB0EB88 */  vmacf	$v14, $v29, $v16[5]
/* 04001E04 000E04 4BD0F388 */  vmacf	$v14, $v30, $v16[6]
/* 04001E08 000E08 4BF0FB88 */  vmacf	$v14, $v31, $v16[7]
/* 04001E0C 000E0C 21EFFFF0 */  addi	$t7, $t7, -0x10
/* 04001E10 000E10 E96E2000 */  sqv		$v14[0], ($t3)
/* 04001E14 000E14 216B0010 */  addi	$t3, $t3, 0x10
/* 04001E18 000E18 1DE0FFEA */  bgtz	$t7, .L04001DC4
/* 04001E1C 000E1C 4A1003D4 */   vaddc	$v15, $v0, $v16
/* 04001E20 000E20 E9B02000 */  sqv		$v16[0], ($t5)
/* 04001E24 000E24 090006B1 */  j		dma_write_and_nextcmd
/* 04001E28 000E28 2003001F */   addi	$v1, $zero, 0x1f

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_ADDMIXER:
/* 04001E2C 000E2C 4A1FFFD4 */  vaddc	$v31, $v31, $v31
/* 04001E30 000E30 001A9302 */  srl		$s2, $k0, 0xc
/* 04001E34 000E34 32520FF0 */  andi	$s2, $s2, 0xff0
/* 04001E38 000E38 3333FFFF */  andi	$s3, $t9, 0xffff
/* 04001E3C 000E3C 0019A402 */  srl		$s4, $t9, 0x10
/* 04001E40 000E40 CA7B2000 */  lqv		$v27[0], ($s3)
@@loop:
/* 04001E44 000E44 CA9D2000 */  lqv		$v29[0], ($s4)
/* 04001E48 000E48 CA7A2001 */  lqv		$v26[0], 0x10($s3)
/* 04001E4C 000E4C CA9C2001 */  lqv		$v28[0], 0x10($s4)
/* 04001E50 000E50 CA792002 */  lqv		$v25[0], 0x20($s3)
/* 04001E54 000E54 CA972002 */  lqv		$v23[0], 0x20($s4)
/* 04001E58 000E58 CA782003 */  lqv		$v24[0], 0x30($s3)
/* 04001E5C 000E5C CA962003 */  lqv		$v22[0], 0x30($s4)
/* 04001E60 000E60 22940040 */  addi	$s4, $s4, 0x40
/* 04001E64 000E64 4A1DDED0 */  vadd	$v27, $v27, $v29
/* 04001E68 000E68 4A1CD690 */  vadd	$v26, $v26, $v28
/* 04001E6C 000E6C 4A17CE50 */  vadd	$v25, $v25, $v23
/* 04001E70 000E70 4A16C610 */  vadd	$v24, $v24, $v22
/* 04001E74 000E74 2252FFC0 */  addi	$s2, $s2, -0x40
/* 04001E78 000E78 EA7B2000 */  sqv		$v27[0], ($s3)
/* 04001E7C 000E7C EA7A2001 */  sqv		$v26[0], 0x10($s3)
/* 04001E80 000E80 EA792002 */  sqv		$v25[0], 0x20($s3)
/* 04001E84 000E84 EA782003 */  sqv		$v24[0], 0x30($s3)
/* 04001E88 000E88 22730040 */  addi	$s3, $s3, 0x40
/* 04001E8C 000E8C 1E40FFED */  bgtz	$s2, @@loop
/* 04001E90 000E90 CA7B2000 */   lqv	$v27[0], ($s3)
/* 04001E94 000E94 09000423 */  j		next_cmd
/* 04001E98 000E98 00000000 */   nop	

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_RESAMPLE_ZOH:
/* 04001E9C 000E9C 870E0000 */  lh		$t6, (audio_in_buf)($t8)
/* 04001EA0 000EA0 870F0002 */  lh		$t7, (audio_out_buf)($t8)
/* 04001EA4 000EA4 870D0004 */  lh		$t5, (audio_count)($t8)
/* 04001EA8 000EA8 334CFFFF */  andi	$t4, $k0, 0xffff
/* 04001EAC 000EAC 000C6080 */  sll		$t4, $t4, 2
/* 04001EB0 000EB0 332AFFFF */  andi	$t2, $t9, 0xffff
/* 04001EB4 000EB4 000E7400 */  sll		$t6, $t6, 0x10
/* 04001EB8 000EB8 014E5025 */  or		$t2, $t2, $t6
@@loop:
/* 04001EBC 000EBC 000A5C02 */  srl		$t3, $t2, 0x10
/* 04001EC0 000EC0 316BFFFE */  andi	$t3, $t3, 0xfffe
/* 04001EC4 000EC4 C9610800 */  lsv		$v1[0], ($t3)
/* 04001EC8 000EC8 014C5020 */  add		$t2, $t2, $t4
/* 04001ECC 000ECC 000A5C02 */  srl		$t3, $t2, 0x10
/* 04001ED0 000ED0 316BFFFE */  andi	$t3, $t3, 0xfffe
/* 04001ED4 000ED4 C9610900 */  lsv		$v1[2], ($t3)
/* 04001ED8 000ED8 014C5020 */  add		$t2, $t2, $t4
/* 04001EDC 000EDC 000A5C02 */  srl		$t3, $t2, 0x10
/* 04001EE0 000EE0 316BFFFE */  andi	$t3, $t3, 0xfffe
/* 04001EE4 000EE4 C9610A00 */  lsv		$v1[4], ($t3)
/* 04001EE8 000EE8 014C5020 */  add		$t2, $t2, $t4
/* 04001EEC 000EEC 000A5C02 */  srl		$t3, $t2, 0x10
/* 04001EF0 000EF0 316BFFFE */  andi	$t3, $t3, 0xfffe
/* 04001EF4 000EF4 C9610B00 */  lsv		$v1[6], ($t3)
/* 04001EF8 000EF8 014C5020 */  add		$t2, $t2, $t4
/* 04001EFC 000EFC 21ADFFF8 */  addi	$t5, $t5, -8
/* 04001F00 000F00 E9E11800 */  sdv		$v1[0], ($t7)
/* 04001F04 000F04 21EF0008 */  addi	$t7, $t7, 8
/* 04001F08 000F08 1DA0FFEC */  bgtz	$t5, @@loop
/* 04001F0C 000F0C 00000000 */   nop	
/* 04001F10 000F10 0D000423 */  jal		next_cmd            //! oversight? should just be "j"? $ra isn't saved and is quickly overwritten so this never returns?
/* 04001F14 000F14 00000000 */   nop	

/***************************************************************
 *  ZZ
 *      Z = cmd
 *      
 *      
 */
cmd_UNK3:
/* 04001F18 000F18 C81F2000 */  lqv		$v31[0], (data_0000)($zero)
/* 04001F1C 000F1C 3352FFFF */  andi	$s2, $k0, 0xffff
/* 04001F20 000F20 3333FFFF */  andi	$s3, $t9, 0xffff
/* 04001F24 000F24 0019A402 */  srl		$s4, $t9, 0x10
/* 04001F28 000F28 CA9D2000 */  lqv		$v29[0], ($s4)
/* 04001F2C 000F2C CA9C2001 */  lqv		$v28[0], 0x10($s4)
/* 04001F30 000F30 CA7B2000 */  lqv		$v27[0], ($s3)
/* 04001F34 000F34 CA7A2001 */  lqv		$v26[0], 0x10($s3)
@@loop:
/* 04001F38 000F38 2252FFE0 */  addi	$s2, $s2, -0x20
/* 04001F3C 000F3C 22940020 */  addi	$s4, $s4, 0x20
/* 04001F40 000F40 4A1DE6C6 */  vmudn	$v27, $v28, $v29
/* 04001F44 000F44 4A1DE68E */  vmadn	$v26, $v28, $v29
/* 04001F48 000F48 EA7B2001 */  sqv		$v27[0], 0x10($s3)
/* 04001F4C 000F4C EA7A2000 */  sqv		$v26[0], ($s3)
/* 04001F50 000F50 CA9D2000 */  lqv		$v29[0], ($s4)
/* 04001F54 000F54 CA9C2001 */  lqv		$v28[0], 0x10($s4)
/* 04001F58 000F58 1E40FFF7 */  bgtz	$s2, @@loop
/* 04001F5C 000F5C 22730020 */   addi	$s3, $s3, 0x20
/* 04001F60 000F60 09000423 */  j		next_cmd
/* 04001F64 000F64 00000000 */   nop	

/***************************************************************
 *  ZZXXXXXX XXXXXXXX
 *      Z = cmd
 *      
 *      
 */
cmd_SPNOOP:
/* 04001F68 000F68 0D00069B */  jal		func_04001A6C
/* 04001F6C 000F6C 00000000 */   nop	
/* 04001F70 000F70 22E10000 */  addi	$at, $s7, 0
/* 04001F74 000F74 0D0006B5 */  jal		dma_read_start
/* 04001F78 000F78 2063FFFF */   addi	$v1, $v1, -1
/* 04001F7C 000F7C 8C260004 */  lw		$a2, 4($at)
/* 04001F80 000F80 20C60001 */  addi	$a2, $a2, 1
/* 04001F84 000F84 AC260004 */  sw		$a2, 4($at)
/* 04001F88 000F88 AC3B0008 */  sw		$k1, 8($at)
/* 04001F8C 000F8C AC3E000C */  sw		$fp, 0xc($at)
/* 04001F90 000F90 3346FFFF */  andi	$a2, $k0, 0xffff
/* 04001F94 000F94 0D0006BF */  jal		dma_write_start
/* 04001F98 000F98 A4260000 */   sh		$a2, ($at)
/* 04001F9C 000F9C 09000423 */  j		next_cmd
/* 04001FA0 000FA0 00000000 */   nop	

.align 0x10

.close
