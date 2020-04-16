.rdata
glabel D_80AC90A0
    .asciz "\x1b[33m★★★ 会話開始！！ ★★★\x1b[m\n"
    .balign 4

.text
glabel func_80AC3B18
/* 00E78 80AC3B18 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E7C 80AC3B1C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E80 80AC3B20 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E84 80AC3B24 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00E88 80AC3B28 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 00E8C 80AC3B2C 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00E90 80AC3B30 01CFC023 */  subu    $t8, $t6, $t7              
/* 00E94 80AC3B34 A49801F0 */  sh      $t8, 0x01F0($a0)           ## 000001F0
/* 00E98 80AC3B38 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E9C 80AC3B3C 0C00BC65 */  jal     func_8002F194              
/* 00EA0 80AC3B40 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00EA4 80AC3B44 10400012 */  beq     $v0, $zero, .L80AC3B90     
/* 00EA8 80AC3B48 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00EAC 80AC3B4C 3C0480AD */  lui     $a0, %hi(D_80AC90A0)       ## $a0 = 80AD0000
/* 00EB0 80AC3B50 248490A0 */  addiu   $a0, $a0, %lo(D_80AC90A0)  ## $a0 = 80AC90A0
/* 00EB4 80AC3B54 0C00084C */  jal     osSyncPrintf
              
/* 00EB8 80AC3B58 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00EBC 80AC3B5C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 00EC0 80AC3B60 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 00EC4 80AC3B64 8C590680 */  lw      $t9, 0x0680($v0)           ## 00000680
/* 00EC8 80AC3B68 03214025 */  or      $t0, $t9, $at              ## $t0 = 20000000
/* 00ECC 80AC3B6C AC480680 */  sw      $t0, 0x0680($v0)           ## 00000680
/* 00ED0 80AC3B70 0C02F164 */  jal     func_800BC590              
/* 00ED4 80AC3B74 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00ED8 80AC3B78 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00EDC 80AC3B7C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00EE0 80AC3B80 0C2B0E4A */  jal     func_80AC3928              
/* 00EE4 80AC3B84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00EE8 80AC3B88 1000000D */  beq     $zero, $zero, .L80AC3BC0   
/* 00EEC 80AC3B8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC3B90:
/* 00EF0 80AC3B90 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00EF4 80AC3B94 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00EF8 80AC3B98 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 00EFC 80AC3B9C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00F00 80AC3BA0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00F04 80AC3BA4 4606203C */  c.lt.s  $f4, $f6                   
/* 00F08 80AC3BA8 00000000 */  nop
/* 00F0C 80AC3BAC 45020004 */  bc1fl   .L80AC3BC0                 
/* 00F10 80AC3BB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F14 80AC3BB4 0C00BCB3 */  jal     func_8002F2CC              
/* 00F18 80AC3BB8 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 00F1C 80AC3BBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC3BC0:
/* 00F20 80AC3BC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F24 80AC3BC4 03E00008 */  jr      $ra                        
/* 00F28 80AC3BC8 00000000 */  nop
