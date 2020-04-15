.rdata
glabel D_80AFA44C
    .asciz "SDA DRAW \n"
    .balign 4

glabel D_80AFA458
    .asciz "SDA DRAW END\n"
    .balign 4

.text
glabel EnSda_Draw
/* 00090 80AF8EB0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00094 80AF8EB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00098 80AF8EB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0009C 80AF8EBC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 000A0 80AF8EC0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000A4 80AF8EC4 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 000A8 80AF8EC8 0C031A73 */  jal     Graph_Alloc
              
/* 000AC 80AF8ECC 24051000 */  addiu   $a1, $zero, 0x1000         ## $a1 = 00001000
/* 000B0 80AF8ED0 3C0480B0 */  lui     $a0, %hi(D_80AFA44C)       ## $a0 = 80B00000
/* 000B4 80AF8ED4 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 000B8 80AF8ED8 0C00084C */  jal     osSyncPrintf
              
/* 000BC 80AF8EDC 2484A44C */  addiu   $a0, $a0, %lo(D_80AFA44C)  ## $a0 = 80AFA44C
/* 000C0 80AF8EE0 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 000C4 80AF8EE4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000C8 80AF8EE8 8FB80034 */  lw      $t8, 0x0034($sp)           
/* 000CC 80AF8EEC 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 000D0 80AF8EF0 55E10004 */  bnel    $t7, $at, .L80AF8F04       
/* 000D4 80AF8EF4 8F101C44 */  lw      $s0, 0x1C44($t8)           ## 00001C44
/* 000D8 80AF8EF8 10000002 */  beq     $zero, $zero, .L80AF8F04   
/* 000DC 80AF8EFC 8C900118 */  lw      $s0, 0x0118($a0)           ## 00000118
/* 000E0 80AF8F00 8F101C44 */  lw      $s0, 0x1C44($t8)           ## 00001C44
.L80AF8F04:
/* 000E4 80AF8F04 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 000E8 80AF8F08 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 000EC 80AF8F0C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 000F0 80AF8F10 0C2BE571 */  jal     func_80AF95C4              
/* 000F4 80AF8F14 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000F8 80AF8F18 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 000FC 80AF8F1C 8F39FA90 */  lw      $t9, -0x0570($t9)          ## 8015FA90
/* 00100 80AF8F20 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00104 80AF8F24 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00108 80AF8F28 872809D4 */  lh      $t0, 0x09D4($t9)           ## 801609D4
/* 0010C 80AF8F2C 29010005 */  slti    $at, $t0, 0x0005           
/* 00110 80AF8F30 10200003 */  beq     $at, $zero, .L80AF8F40     
/* 00114 80AF8F34 00000000 */  nop
/* 00118 80AF8F38 0C2BE71C */  jal     func_80AF9C70              
/* 0011C 80AF8F3C 8FA60034 */  lw      $a2, 0x0034($sp)           
.L80AF8F40:
/* 00120 80AF8F40 3C0480B0 */  lui     $a0, %hi(D_80AFA458)       ## $a0 = 80B00000
/* 00124 80AF8F44 0C00084C */  jal     osSyncPrintf
              
/* 00128 80AF8F48 2484A458 */  addiu   $a0, $a0, %lo(D_80AFA458)  ## $a0 = 80AFA458
/* 0012C 80AF8F4C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00130 80AF8F50 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00134 80AF8F54 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00138 80AF8F58 03E00008 */  jr      $ra                        
/* 0013C 80AF8F5C 00000000 */  nop
