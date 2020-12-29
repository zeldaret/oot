glabel func_80B23D74
/* 01084 80B23D74 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01088 80B23D78 3C0E80B2 */  lui     $t6, %hi(D_80B243DC)       ## $t6 = 80B20000
/* 0108C 80B23D7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01090 80B23D80 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 01094 80B23D84 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 01098 80B23D88 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 0109C 80B23D8C 25CE43DC */  addiu   $t6, $t6, %lo(D_80B243DC)  ## $t6 = 80B243DC
/* 010A0 80B23D90 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B243DC
/* 010A4 80B23D94 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 010A8 80B23D98 3C1980B2 */  lui     $t9, %hi(D_80B243E8)       ## $t9 = 80B20000
/* 010AC 80B23D9C ACD80000 */  sw      $t8, 0x0000($a2)           ## FFFFFFF4
/* 010B0 80B23DA0 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B243E0
/* 010B4 80B23DA4 273943E8 */  addiu   $t9, $t9, %lo(D_80B243E8)  ## $t9 = 80B243E8
/* 010B8 80B23DA8 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFE8
/* 010BC 80B23DAC ACCF0004 */  sw      $t7, 0x0004($a2)           ## FFFFFFF8
/* 010C0 80B23DB0 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B243E4
/* 010C4 80B23DB4 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 010C8 80B23DB8 ACD80008 */  sw      $t8, 0x0008($a2)           ## FFFFFFFC
/* 010CC 80B23DBC 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B243E8
/* 010D0 80B23DC0 ACE90000 */  sw      $t1, 0x0000($a3)           ## FFFFFFE8
/* 010D4 80B23DC4 8F280004 */  lw      $t0, 0x0004($t9)           ## 80B243EC
/* 010D8 80B23DC8 ACE80004 */  sw      $t0, 0x0004($a3)           ## FFFFFFEC
/* 010DC 80B23DCC 8F290008 */  lw      $t1, 0x0008($t9)           ## 80B243F0
/* 010E0 80B23DD0 ACE90008 */  sw      $t1, 0x0008($a3)           ## FFFFFFF0
/* 010E4 80B23DD4 8FAA0054 */  lw      $t2, 0x0054($sp)           
/* 010E8 80B23DD8 8D42011C */  lw      $v0, 0x011C($t2)           ## 0000011C
/* 010EC 80B23DDC 5040002D */  beql    $v0, $zero, .L80B23E94     
/* 010F0 80B23DE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010F4 80B23DE4 14A1002A */  bne     $a1, $at, .L80B23E90       
/* 010F8 80B23DE8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = FFFFFFF4
/* 010FC 80B23DEC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = FFFFFFE8
/* 01100 80B23DF0 0C0346BD */  jal     Matrix_MultVec3f              
/* 01104 80B23DF4 AFA20020 */  sw      $v0, 0x0020($sp)           
/* 01108 80B23DF8 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 0110C 80B23DFC 844B07A0 */  lh      $t3, 0x07A0($v0)           ## 000007A0
/* 01110 80B23E00 000B6080 */  sll     $t4, $t3,  2               
/* 01114 80B23E04 004C6821 */  addu    $t5, $v0, $t4              
/* 01118 80B23E08 0C016A7D */  jal     Camera_GetCamDirYaw              
/* 0111C 80B23E0C 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
/* 01120 80B23E10 00022400 */  sll     $a0, $v0, 16               
/* 01124 80B23E14 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 01128 80B23E18 00042403 */  sra     $a0, $a0, 16               
/* 0112C 80B23E1C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01130 80B23E20 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 01134 80B23E24 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 01138 80B23E28 8FA20040 */  lw      $v0, 0x0040($sp)           
/* 0113C 80B23E2C 46003202 */  mul.s   $f8, $f6, $f0              
/* 01140 80B23E30 46082281 */  sub.s   $f10, $f4, $f8             
/* 01144 80B23E34 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 01148 80B23E38 844E07A0 */  lh      $t6, 0x07A0($v0)           ## 000007A0
/* 0114C 80B23E3C 000E7880 */  sll     $t7, $t6,  2               
/* 01150 80B23E40 004FC021 */  addu    $t8, $v0, $t7              
/* 01154 80B23E44 0C016A7D */  jal     Camera_GetCamDirYaw              
/* 01158 80B23E48 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 0115C 80B23E4C 00022400 */  sll     $a0, $v0, 16               
/* 01160 80B23E50 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 01164 80B23E54 00042403 */  sra     $a0, $a0, 16               
/* 01168 80B23E58 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0116C 80B23E5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 01170 80B23E60 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 01174 80B23E64 27A80028 */  addiu   $t0, $sp, 0x0028           ## $t0 = FFFFFFE8
/* 01178 80B23E68 46009182 */  mul.s   $f6, $f18, $f0             
/* 0117C 80B23E6C 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 01180 80B23E70 46068101 */  sub.s   $f4, $f16, $f6             
/* 01184 80B23E74 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 01188 80B23E78 8D0A0000 */  lw      $t2, 0x0000($t0)           ## FFFFFFE8
/* 0118C 80B23E7C AF2A0024 */  sw      $t2, 0x0024($t9)           ## 00000024
/* 01190 80B23E80 8D090004 */  lw      $t1, 0x0004($t0)           ## FFFFFFEC
/* 01194 80B23E84 AF290028 */  sw      $t1, 0x0028($t9)           ## 00000028
/* 01198 80B23E88 8D0A0008 */  lw      $t2, 0x0008($t0)           ## FFFFFFF0
/* 0119C 80B23E8C AF2A002C */  sw      $t2, 0x002C($t9)           ## 0000002C
.L80B23E90:
/* 011A0 80B23E90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B23E94:
/* 011A4 80B23E94 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 011A8 80B23E98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 011AC 80B23E9C 03E00008 */  jr      $ra                        
/* 011B0 80B23EA0 00000000 */  nop
