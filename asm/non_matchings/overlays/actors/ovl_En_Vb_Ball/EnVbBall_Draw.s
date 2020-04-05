glabel EnVbBall_Draw
/* 00DE0 80B29D80 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00DE4 80B29D84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00DE8 80B29D88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DEC 80B29D8C AFA40058 */  sw      $a0, 0x0058($sp)           
/* 00DF0 80B29D90 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00DF4 80B29D94 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00DF8 80B29D98 3C0680B3 */  lui     $a2, %hi(D_80B2A090)       ## $a2 = 80B30000
/* 00DFC 80B29D9C 24C6A090 */  addiu   $a2, $a2, %lo(D_80B2A090)  ## $a2 = 80B2A090
/* 00E00 80B29DA0 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00E04 80B29DA4 2407025C */  addiu   $a3, $zero, 0x025C         ## $a3 = 0000025C
/* 00E08 80B29DA8 0C031AB1 */  jal     Graph_OpenDisps              
/* 00E0C 80B29DAC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00E10 80B29DB0 8FAF005C */  lw      $t7, 0x005C($sp)           
/* 00E14 80B29DB4 0C024F46 */  jal     func_80093D18              
/* 00E18 80B29DB8 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00E1C 80B29DBC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E20 80B29DC0 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00E24 80B29DC4 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00E28 80B29DC8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00E2C 80B29DCC AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00E30 80B29DD0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00E34 80B29DD4 8FA8005C */  lw      $t0, 0x005C($sp)           
/* 00E38 80B29DD8 3C0580B3 */  lui     $a1, %hi(D_80B2A0A4)       ## $a1 = 80B30000
/* 00E3C 80B29DDC 24A5A0A4 */  addiu   $a1, $a1, %lo(D_80B2A0A4)  ## $a1 = 80B2A0A4
/* 00E40 80B29DE0 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00E44 80B29DE4 2406025F */  addiu   $a2, $zero, 0x025F         ## $a2 = 0000025F
/* 00E48 80B29DE8 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E4C 80B29DEC AFA20038 */  sw      $v0, 0x0038($sp)           
/* 00E50 80B29DF0 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 00E54 80B29DF4 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00E58 80B29DF8 24849F20 */  addiu   $a0, $a0, 0x9F20           ## $a0 = 06009F20
/* 00E5C 80B29DFC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E60 80B29E00 8FA90058 */  lw      $t1, 0x0058($sp)           
/* 00E64 80B29E04 00046100 */  sll     $t4, $a0,  4               
/* 00E68 80B29E08 000C6F02 */  srl     $t5, $t4, 28               
/* 00E6C 80B29E0C 852A001C */  lh      $t2, 0x001C($t1)           ## 0000001C
/* 00E70 80B29E10 000D7080 */  sll     $t6, $t5,  2               
/* 00E74 80B29E14 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00E78 80B29E18 294100C8 */  slti    $at, $t2, 0x00C8           
/* 00E7C 80B29E1C 14200016 */  bne     $at, $zero, .L80B29E78     
/* 00E80 80B29E20 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00E84 80B29E24 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00E88 80B29E28 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00E8C 80B29E2C 2484B2F8 */  addiu   $a0, $a0, 0xB2F8           ## $a0 = 0600B2F8
/* 00E90 80B29E30 00046900 */  sll     $t5, $a0,  4               
/* 00E94 80B29E34 000D7702 */  srl     $t6, $t5, 28               
/* 00E98 80B29E38 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00E9C 80B29E3C AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 00EA0 80B29E40 000E7880 */  sll     $t7, $t6,  2               
/* 00EA4 80B29E44 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00EA8 80B29E48 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00EAC 80B29E4C 030FC021 */  addu    $t8, $t8, $t7              
/* 00EB0 80B29E50 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00EB4 80B29E54 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00EB8 80B29E58 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 00EBC 80B29E5C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00EC0 80B29E60 0081C824 */  and     $t9, $a0, $at              
/* 00EC4 80B29E64 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00EC8 80B29E68 03194021 */  addu    $t0, $t8, $t9              
/* 00ECC 80B29E6C 01014821 */  addu    $t1, $t0, $at              
/* 00ED0 80B29E70 1000004E */  beq     $zero, $zero, .L80B29FAC   
/* 00ED4 80B29E74 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
.L80B29E78:
/* 00ED8 80B29E78 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00EDC 80B29E7C 01EE7821 */  addu    $t7, $t7, $t6              
/* 00EE0 80B29E80 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00EE4 80B29E84 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00EE8 80B29E88 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00EEC 80B29E8C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00EF0 80B29E90 8DEF6FA8 */  lw      $t7, 0x6FA8($t7)           ## 80166FA8
/* 00EF4 80B29E94 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00EF8 80B29E98 0081C024 */  and     $t8, $a0, $at              
/* 00EFC 80B29E9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00F00 80B29EA0 01F8C821 */  addu    $t9, $t7, $t8              
/* 00F04 80B29EA4 03214021 */  addu    $t0, $t9, $at              
/* 00F08 80B29EA8 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 00F0C 80B29EAC 8FA9005C */  lw      $t1, 0x005C($sp)           
/* 00F10 80B29EB0 0C025011 */  jal     func_80094044              
/* 00F14 80B29EB4 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 00F18 80B29EB8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F1C 80B29EBC 8FA40058 */  lw      $a0, 0x0058($sp)           
/* 00F20 80B29EC0 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 00F24 80B29EC4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00F28 80B29EC8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00F2C 80B29ECC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00F30 80B29ED0 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00F34 80B29ED4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00F38 80B29ED8 44817000 */  mtc1    $at, $f14                  ## $f14 = 100.00
/* 00F3C 80B29EDC 4600218D */  trunc.w.s $f6, $f4                   
/* 00F40 80B29EE0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00F44 80B29EE4 440F3000 */  mfc1    $t7, $f6                   
/* 00F48 80B29EE8 00000000 */  nop
/* 00F4C 80B29EEC 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00F50 80B29EF0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00F54 80B29EF4 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00F58 80B29EF8 0C034261 */  jal     Matrix_Translate              
/* 00F5C 80B29EFC C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00F60 80B29F00 8FB90058 */  lw      $t9, 0x0058($sp)           
/* 00F64 80B29F04 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F68 80B29F08 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 00F6C 80B29F0C C72C0160 */  lwc1    $f12, 0x0160($t9)          ## 00000160
/* 00F70 80B29F10 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00F74 80B29F14 44066000 */  mfc1    $a2, $f12                  
/* 00F78 80B29F18 0C0342A3 */  jal     Matrix_Scale              
/* 00F7C 80B29F1C 00000000 */  nop
/* 00F80 80B29F20 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00F84 80B29F24 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00F88 80B29F28 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00F8C 80B29F2C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00F90 80B29F30 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00F94 80B29F34 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00F98 80B29F38 8FAA005C */  lw      $t2, 0x005C($sp)           
/* 00F9C 80B29F3C 3C0580B3 */  lui     $a1, %hi(D_80B2A0B8)       ## $a1 = 80B30000
/* 00FA0 80B29F40 24A5A0B8 */  addiu   $a1, $a1, %lo(D_80B2A0B8)  ## $a1 = 80B2A0B8
/* 00FA4 80B29F44 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 00FA8 80B29F48 24060272 */  addiu   $a2, $zero, 0x0272         ## $a2 = 00000272
/* 00FAC 80B29F4C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00FB0 80B29F50 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00FB4 80B29F54 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00FB8 80B29F58 3C040405 */  lui     $a0, 0x0405                ## $a0 = 04050000
/* 00FBC 80B29F5C 24849210 */  addiu   $a0, $a0, 0x9210           ## $a0 = 04049210
/* 00FC0 80B29F60 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00FC4 80B29F64 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00FC8 80B29F68 00046900 */  sll     $t5, $a0,  4               
/* 00FCC 80B29F6C 000D7702 */  srl     $t6, $t5, 28               
/* 00FD0 80B29F70 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00FD4 80B29F74 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00FD8 80B29F78 000E7880 */  sll     $t7, $t6,  2               
/* 00FDC 80B29F7C 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00FE0 80B29F80 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00FE4 80B29F84 030FC021 */  addu    $t8, $t8, $t7              
/* 00FE8 80B29F88 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00FEC 80B29F8C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00FF0 80B29F90 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 00FF4 80B29F94 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00FF8 80B29F98 0081C824 */  and     $t9, $a0, $at              
/* 00FFC 80B29F9C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01000 80B29FA0 03194021 */  addu    $t0, $t8, $t9              
/* 01004 80B29FA4 01014821 */  addu    $t1, $t0, $at              
/* 01008 80B29FA8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
.L80B29FAC:
/* 0100C 80B29FAC 8FAA005C */  lw      $t2, 0x005C($sp)           
/* 01010 80B29FB0 3C0680B3 */  lui     $a2, %hi(D_80B2A0CC)       ## $a2 = 80B30000
/* 01014 80B29FB4 24C6A0CC */  addiu   $a2, $a2, %lo(D_80B2A0CC)  ## $a2 = 80B2A0CC
/* 01018 80B29FB8 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 0101C 80B29FBC 24070278 */  addiu   $a3, $zero, 0x0278         ## $a3 = 00000278
/* 01020 80B29FC0 0C031AD5 */  jal     Graph_CloseDisps              
/* 01024 80B29FC4 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 01028 80B29FC8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0102C 80B29FCC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01030 80B29FD0 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01034 80B29FD4 03E00008 */  jr      $ra                        
/* 01038 80B29FD8 00000000 */  nop
/* 0103C 80B29FDC 00000000 */  nop

