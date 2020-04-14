.rdata
glabel D_80855240
    .asciz "../z_player.c"
    .balign 4

glabel D_80855250
    .asciz "size = %x\n"
    .balign 4

glabel D_8085525C
    .asciz "size <= 1024 * 8"
    .balign 4

glabel D_80855270
    .asciz "../z_player.c"
    .balign 4

glabel D_80855280
    .asciz "../z_player.c"
    .balign 4

.text
glabel func_8083AE40
/* 08C30 8083AE40 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 08C34 8083AE44 00053C00 */  sll     $a3, $a1, 16               
/* 08C38 8083AE48 00073C03 */  sra     $a3, $a3, 16               
/* 08C3C 8083AE4C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 08C40 8083AE50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 08C44 8083AE54 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 08C48 8083AE58 10E00035 */  beq     $a3, $zero, .L8083AF30     
/* 08C4C 8083AE5C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 08C50 8083AE60 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 08C54 8083AE64 A08E0170 */  sb      $t6, 0x0170($a0)           ## 00000170
/* 08C58 8083AE68 24840194 */  addiu   $a0, $a0, 0x0194           ## $a0 = 00000194
/* 08C5C 8083AE6C AFA4003C */  sw      $a0, 0x003C($sp)           
/* 08C60 8083AE70 A7A7004E */  sh      $a3, 0x004E($sp)           
/* 08C64 8083AE74 260501AC */  addiu   $a1, $s0, 0x01AC           ## $a1 = 000001AC
/* 08C68 8083AE78 0C001874 */  jal     osCreateMesgQueue
              
/* 08C6C 8083AE7C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 08C70 8083AE80 87A7004E */  lh      $a3, 0x004E($sp)           
/* 08C74 8083AE84 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 08C78 8083AE88 27187528 */  addiu   $t8, $t8, 0x7528           ## $t8 = 80127528
/* 08C7C 8083AE8C 000778C0 */  sll     $t7, $a3,  3               
/* 08C80 8083AE90 01F81021 */  addu    $v0, $t7, $t8              
/* 08C84 8083AE94 8C590004 */  lw      $t9, 0x0004($v0)           ## 00000004
/* 08C88 8083AE98 8C480000 */  lw      $t0, 0x0000($v0)           ## 00000000
/* 08C8C 8083AE9C 3C048085 */  lui     $a0, %hi(D_80855240)       ## $a0 = 80850000
/* 08C90 8083AEA0 24845240 */  addiu   $a0, $a0, %lo(D_80855240)  ## $a0 = 80855240
/* 08C94 8083AEA4 03284823 */  subu    $t1, $t9, $t0              
/* 08C98 8083AEA8 AFA90040 */  sw      $t1, 0x0040($sp)           
/* 08C9C 8083AEAC AFA20038 */  sw      $v0, 0x0038($sp)           
/* 08CA0 8083AEB0 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 08CA4 8083AEB4 24052382 */  addiu   $a1, $zero, 0x2382         ## $a1 = 00002382
/* 08CA8 8083AEB8 3C048085 */  lui     $a0, %hi(D_80855250)       ## $a0 = 80850000
/* 08CAC 8083AEBC 24845250 */  addiu   $a0, $a0, %lo(D_80855250)  ## $a0 = 80855250
/* 08CB0 8083AEC0 0C00084C */  jal     osSyncPrintf
              
/* 08CB4 8083AEC4 8FA50040 */  lw      $a1, 0x0040($sp)           
/* 08CB8 8083AEC8 8FAA0040 */  lw      $t2, 0x0040($sp)           
/* 08CBC 8083AECC 3C048085 */  lui     $a0, %hi(D_8085525C)       ## $a0 = 80850000
/* 08CC0 8083AED0 8FA20038 */  lw      $v0, 0x0038($sp)           
/* 08CC4 8083AED4 2D412001 */  sltiu   $at, $t2, 0x2001           
/* 08CC8 8083AED8 14200007 */  bne     $at, $zero, .L8083AEF8     
/* 08CCC 8083AEDC 2484525C */  addiu   $a0, $a0, %lo(D_8085525C)  ## $a0 = 8085525C
/* 08CD0 8083AEE0 3C058085 */  lui     $a1, %hi(D_80855270)       ## $a1 = 80850000
/* 08CD4 8083AEE4 24A55270 */  addiu   $a1, $a1, %lo(D_80855270)  ## $a1 = 80855270
/* 08CD8 8083AEE8 24062383 */  addiu   $a2, $zero, 0x2383         ## $a2 = 00002383
/* 08CDC 8083AEEC 0C0007FC */  jal     __assert
              
/* 08CE0 8083AEF0 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 08CE4 8083AEF4 8FA20038 */  lw      $v0, 0x0038($sp)           
.L8083AEF8:
/* 08CE8 8083AEF8 8E0501B0 */  lw      $a1, 0x01B0($s0)           ## 000001B0
/* 08CEC 8083AEFC 8FAB003C */  lw      $t3, 0x003C($sp)           
/* 08CF0 8083AF00 3C0C8085 */  lui     $t4, %hi(D_80855280)       ## $t4 = 80850000
/* 08CF4 8083AF04 258C5280 */  addiu   $t4, $t4, %lo(D_80855280)  ## $t4 = 80855280
/* 08CF8 8083AF08 240D238B */  addiu   $t5, $zero, 0x238B         ## $t5 = 0000238B
/* 08CFC 8083AF0C AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 08D00 8083AF10 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 08D04 8083AF14 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 08D08 8083AF18 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 08D0C 8083AF1C 26040174 */  addiu   $a0, $s0, 0x0174           ## $a0 = 00000174
/* 08D10 8083AF20 8C460000 */  lw      $a2, 0x0000($v0)           ## 00000000
/* 08D14 8083AF24 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 08D18 8083AF28 0C000697 */  jal     DmaMgr_SendRequest2              
/* 08D1C 8083AF2C AFAB0014 */  sw      $t3, 0x0014($sp)           
.L8083AF30:
/* 08D20 8083AF30 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 08D24 8083AF34 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 08D28 8083AF38 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 08D2C 8083AF3C 03E00008 */  jr      $ra                        
/* 08D30 8083AF40 00000000 */  nop
