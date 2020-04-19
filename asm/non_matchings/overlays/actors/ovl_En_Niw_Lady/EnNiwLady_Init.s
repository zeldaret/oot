.rdata
glabel D_80ABB420
    .asciz "[32m☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB458
    .asciz "\n\n"
    .balign 4

.text
glabel EnNiwLady_Init
/* 00000 80AB9C40 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80AB9C44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 80AB9C48 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0000C 80AB9C4C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00010 80AB9C50 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00014 80AB9C54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00018 80AB9C58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0001C 80AB9C5C 00A12021 */  addu    $a0, $a1, $at              
/* 00020 80AB9C60 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00024 80AB9C64 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00028 80AB9C68 24050110 */  addiu   $a1, $zero, 0x0110         ## $a1 = 00000110
/* 0002C 80AB9C6C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00030 80AB9C70 A2020280 */  sb      $v0, 0x0280($s0)           ## 00000280
/* 00034 80AB9C74 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00038 80AB9C78 240500C5 */  addiu   $a1, $zero, 0x00C5         ## $a1 = 000000C5
/* 0003C 80AB9C7C A2020281 */  sb      $v0, 0x0281($s0)           ## 00000281
/* 00040 80AB9C80 820E0281 */  lb      $t6, 0x0281($s0)           ## 00000281
/* 00044 80AB9C84 05C00004 */  bltz    $t6, .L80AB9C98            
/* 00048 80AB9C88 00000000 */  nop
/* 0004C 80AB9C8C 820F0280 */  lb      $t7, 0x0280($s0)           ## 00000280
/* 00050 80AB9C90 05E30006 */  bgezl   $t7, .L80AB9CAC            
/* 00054 80AB9C94 A6000278 */  sh      $zero, 0x0278($s0)         ## 00000278
.L80AB9C98:
/* 00058 80AB9C98 0C00B55C */  jal     Actor_Kill
              
/* 0005C 80AB9C9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00060 80AB9CA0 10000021 */  beq     $zero, $zero, .L80AB9D28   
/* 00064 80AB9CA4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00068 80AB9CA8 A6000278 */  sh      $zero, 0x0278($s0)         ## 00000278
.L80AB9CAC:
/* 0006C 80AB9CAC 8FB80034 */  lw      $t8, 0x0034($sp)           
/* 00070 80AB9CB0 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 00074 80AB9CB4 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00078 80AB9CB8 871900A4 */  lh      $t9, 0x00A4($t8)           ## 000000A4
/* 0007C 80AB9CBC 3C098016 */  lui     $t1, %hi(gSaveContext+0x10)
/* 00080 80AB9CC0 3C0480AC */  lui     $a0, %hi(D_80ABB420)       ## $a0 = 80AC0000
/* 00084 80AB9CC4 57210003 */  bnel    $t9, $at, .L80AB9CD4       
/* 00088 80AB9CC8 86050278 */  lh      $a1, 0x0278($s0)           ## 00000278
/* 0008C 80AB9CCC A6080278 */  sh      $t0, 0x0278($s0)           ## 00000278
/* 00090 80AB9CD0 86050278 */  lh      $a1, 0x0278($s0)           ## 00000278
.L80AB9CD4:
/* 00094 80AB9CD4 10A00008 */  beq     $a1, $zero, .L80AB9CF8     
/* 00098 80AB9CD8 00000000 */  nop
/* 0009C 80AB9CDC 8D29E670 */  lw      $t1, %lo(gSaveContext+0x10)($t1)
/* 000A0 80AB9CE0 15200005 */  bne     $t1, $zero, .L80AB9CF8     
/* 000A4 80AB9CE4 00000000 */  nop
/* 000A8 80AB9CE8 0C00B55C */  jal     Actor_Kill
              
/* 000AC 80AB9CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B0 80AB9CF0 1000000D */  beq     $zero, $zero, .L80AB9D28   
/* 000B4 80AB9CF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB9CF8:
/* 000B8 80AB9CF8 0C00084C */  jal     osSyncPrintf
              
/* 000BC 80AB9CFC 2484B420 */  addiu   $a0, $a0, %lo(D_80ABB420)  ## $a0 = FFFFB420
/* 000C0 80AB9D00 3C0480AC */  lui     $a0, %hi(D_80ABB458)       ## $a0 = 80AC0000
/* 000C4 80AB9D04 0C00084C */  jal     osSyncPrintf
              
/* 000C8 80AB9D08 2484B458 */  addiu   $a0, $a0, %lo(D_80ABB458)  ## $a0 = 80ABB458
/* 000CC 80AB9D0C 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 000D0 80AB9D10 44812000 */  mtc1    $at, $f4                   ## $f4 = 600.00
/* 000D4 80AB9D14 3C0A80AC */  lui     $t2, %hi(func_80AB9F24)    ## $t2 = 80AC0000
/* 000D8 80AB9D18 254A9F24 */  addiu   $t2, $t2, %lo(func_80AB9F24) ## $t2 = 80AB9F24
/* 000DC 80AB9D1C AE0A0250 */  sw      $t2, 0x0250($s0)           ## 00000250
/* 000E0 80AB9D20 E60400F4 */  swc1    $f4, 0x00F4($s0)           ## 000000F4
/* 000E4 80AB9D24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AB9D28:
/* 000E8 80AB9D28 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000EC 80AB9D2C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000F0 80AB9D30 03E00008 */  jr      $ra                        
/* 000F4 80AB9D34 00000000 */  nop
