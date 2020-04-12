.rdata
glabel D_8089B210
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B228
    .asciz "../z_bg_jya_megami.c"
    .balign 4

glabel D_8089B240
    .asciz "../z_bg_jya_megami.c"
    .balign 4

.text
glabel func_8089ABC8
/* 00A98 8089ABC8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00A9C 8089ABCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AA0 8089ABD0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00AA4 8089ABD4 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00AA8 8089ABD8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00AAC 8089ABDC 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00AB0 8089ABE0 3C06808A */  lui     $a2, %hi(D_8089B210)       ## $a2 = 808A0000
/* 00AB4 8089ABE4 24C6B210 */  addiu   $a2, $a2, %lo(D_8089B210)  ## $a2 = 8089B210
/* 00AB8 8089ABE8 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 00ABC 8089ABEC 240702C2 */  addiu   $a3, $zero, 0x02C2         ## $a3 = 000002C2
/* 00AC0 8089ABF0 0C031AB1 */  jal     Graph_OpenDisps              
/* 00AC4 8089ABF4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00AC8 8089ABF8 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00ACC 8089ABFC 0C024F46 */  jal     func_80093D18              
/* 00AD0 8089AC00 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00AD4 8089AC04 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00AD8 8089AC08 8FA80048 */  lw      $t0, 0x0048($sp)           
/* 00ADC 8089AC0C 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 00AE0 8089AC10 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00AE4 8089AC14 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00AE8 8089AC18 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 00AEC 8089AC1C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00AF0 8089AC20 850901CC */  lh      $t1, 0x01CC($t0)           ## 000001CC
/* 00AF4 8089AC24 3C04808A */  lui     $a0, %hi(D_8089B1AC)       ## $a0 = 808A0000
/* 00AF8 8089AC28 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 00AFC 8089AC2C 00095080 */  sll     $t2, $t1,  2               
/* 00B00 8089AC30 008A2021 */  addu    $a0, $a0, $t2              
/* 00B04 8089AC34 8C84B1AC */  lw      $a0, %lo(D_8089B1AC)($a0)  
/* 00B08 8089AC38 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 00B0C 8089AC3C 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 00B10 8089AC40 00046100 */  sll     $t4, $a0,  4               
/* 00B14 8089AC44 000C6F02 */  srl     $t5, $t4, 28               
/* 00B18 8089AC48 000D7080 */  sll     $t6, $t5,  2               
/* 00B1C 8089AC4C 00CE7821 */  addu    $t7, $a2, $t6              
/* 00B20 8089AC50 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 00B24 8089AC54 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 00B28 8089AC58 00855824 */  and     $t3, $a0, $a1              
/* 00B2C 8089AC5C 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 00B30 8089AC60 0178C821 */  addu    $t9, $t3, $t8              
/* 00B34 8089AC64 03274821 */  addu    $t1, $t9, $a3              
/* 00B38 8089AC68 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00B3C 8089AC6C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00B40 8089AC70 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00B44 8089AC74 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 00B48 8089AC78 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00B4C 8089AC7C AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00B50 8089AC80 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00B54 8089AC84 850D01CC */  lh      $t5, 0x01CC($t0)           ## 000001CC
/* 00B58 8089AC88 3C04808A */  lui     $a0, %hi(D_8089B1C0)       ## $a0 = 808A0000
/* 00B5C 8089AC8C 000D7080 */  sll     $t6, $t5,  2               
/* 00B60 8089AC90 008E2021 */  addu    $a0, $a0, $t6              
/* 00B64 8089AC94 8C84B1C0 */  lw      $a0, %lo(D_8089B1C0)($a0)  
/* 00B68 8089AC98 00045900 */  sll     $t3, $a0,  4               
/* 00B6C 8089AC9C 000BC702 */  srl     $t8, $t3, 28               
/* 00B70 8089ACA0 0018C880 */  sll     $t9, $t8,  2               
/* 00B74 8089ACA4 00D94821 */  addu    $t1, $a2, $t9              
/* 00B78 8089ACA8 8D2A0000 */  lw      $t2, 0x0000($t1)           ## 00000000
/* 00B7C 8089ACAC 00857824 */  and     $t7, $a0, $a1              
/* 00B80 8089ACB0 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 00B84 8089ACB4 01EA6021 */  addu    $t4, $t7, $t2              
/* 00B88 8089ACB8 01876821 */  addu    $t5, $t4, $a3              
/* 00B8C 8089ACBC AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00B90 8089ACC0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00B94 8089ACC4 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 00B98 8089ACC8 3C05808A */  lui     $a1, %hi(D_8089B228)       ## $a1 = 808A0000
/* 00B9C 8089ACCC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00BA0 8089ACD0 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 00BA4 8089ACD4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00BA8 8089ACD8 8FB8004C */  lw      $t8, 0x004C($sp)           
/* 00BAC 8089ACDC 24A5B228 */  addiu   $a1, $a1, %lo(D_8089B228)  ## $a1 = 8089B228
/* 00BB0 8089ACE0 240602CC */  addiu   $a2, $zero, 0x02CC         ## $a2 = 000002CC
/* 00BB4 8089ACE4 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000008
/* 00BB8 8089ACE8 0C0346A2 */  jal     Matrix_NewMtx              
/* 00BBC 8089ACEC AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00BC0 8089ACF0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00BC4 8089ACF4 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 00BC8 8089ACF8 25EF5780 */  addiu   $t7, $t7, 0x5780           ## $t7 = 06005780
/* 00BCC 8089ACFC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00BD0 8089AD00 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00BD4 8089AD04 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 00BD8 8089AD08 3C06808A */  lui     $a2, %hi(D_8089B240)       ## $a2 = 808A0000
/* 00BDC 8089AD0C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00BE0 8089AD10 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 00BE4 8089AD14 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00BE8 8089AD18 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00BEC 8089AD1C 8FAA004C */  lw      $t2, 0x004C($sp)           
/* 00BF0 8089AD20 24C6B240 */  addiu   $a2, $a2, %lo(D_8089B240)  ## $a2 = 8089B240
/* 00BF4 8089AD24 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFEC
/* 00BF8 8089AD28 240702D0 */  addiu   $a3, $zero, 0x02D0         ## $a3 = 000002D0
/* 00BFC 8089AD2C 0C031AD5 */  jal     Graph_CloseDisps              
/* 00C00 8089AD30 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 00C04 8089AD34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C08 8089AD38 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C0C 8089AD3C 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00C10 8089AD40 03E00008 */  jr      $ra                        
/* 00C14 8089AD44 00000000 */  nop
