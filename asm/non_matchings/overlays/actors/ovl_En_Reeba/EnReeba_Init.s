.rdata
glabel D_80AE65F0
    .asciz "[33m☆☆☆☆☆ リーバぼす登場 ☆☆☆☆☆ %f\n[m"
    .balign 4

.late_rodata
glabel D_80AE667C
    .float 0.04

glabel D_80AE6680
 .word 0xC6D6D800

.text
glabel EnReeba_Init
/* 00000 80AE4CD0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00004 80AE4CD4 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00008 80AE4CD8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0000C 80AE4CDC AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00010 80AE4CE0 8C990024 */  lw      $t9, 0x0024($a0)           ## 00000024
/* 00014 80AE4CE4 3C01C060 */  lui     $at, 0xC060                ## $at = C0600000
/* 00018 80AE4CE8 44812000 */  mtc1    $at, $f4                   ## $f4 = -3.50
/* 0001C 80AE4CEC AC990038 */  sw      $t9, 0x0038($a0)           ## 00000038
/* 00020 80AE4CF0 8C99002C */  lw      $t9, 0x002C($a0)           ## 0000002C
/* 00024 80AE4CF4 8C980028 */  lw      $t8, 0x0028($a0)           ## 00000028
/* 00028 80AE4CF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0002C 80AE4CFC 240E0047 */  addiu   $t6, $zero, 0x0047         ## $t6 = 00000047
/* 00030 80AE4D00 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00034 80AE4D04 A08E0117 */  sb      $t6, 0x0117($a0)           ## 00000117
/* 00038 80AE4D08 A08F001F */  sb      $t7, 0x001F($a0)           ## 0000001F
/* 0003C 80AE4D0C E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00040 80AE4D10 AC990040 */  sw      $t9, 0x0040($a0)           ## 00000040
/* 00044 80AE4D14 AC98003C */  sw      $t8, 0x003C($a0)           ## 0000003C
/* 00048 80AE4D18 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0004C 80AE4D1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00050 80AE4D20 26080190 */  addiu   $t0, $s0, 0x0190           ## $t0 = 00000190
/* 00054 80AE4D24 260901FC */  addiu   $t1, $s0, 0x01FC           ## $t1 = 000001FC
/* 00058 80AE4D28 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0005C 80AE4D2C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00060 80AE4D30 240A0012 */  addiu   $t2, $zero, 0x0012         ## $t2 = 00000012
/* 00064 80AE4D34 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00068 80AE4D38 24E701E4 */  addiu   $a3, $a3, 0x01E4           ## $a3 = 060001E4
/* 0006C 80AE4D3C 24C61EE8 */  addiu   $a2, $a2, 0x1EE8           ## $a2 = 06001EE8
/* 00070 80AE4D40 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00074 80AE4D44 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00078 80AE4D48 0C02915F */  jal     SkelAnime_Init
              
/* 0007C 80AE4D4C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00080 80AE4D50 240B00FE */  addiu   $t3, $zero, 0x00FE         ## $t3 = 000000FE
/* 00084 80AE4D54 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 00088 80AE4D58 A20B00AE */  sb      $t3, 0x00AE($s0)           ## 000000AE
/* 0008C 80AE4D5C A20C00AF */  sb      $t4, 0x00AF($s0)           ## 000000AF
/* 00090 80AE4D60 26050290 */  addiu   $a1, $s0, 0x0290           ## $a1 = 00000290
/* 00094 80AE4D64 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00098 80AE4D68 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0009C 80AE4D6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A0 80AE4D70 3C0780AE */  lui     $a3, %hi(D_80AE65A0)       ## $a3 = 80AE0000
/* 000A4 80AE4D74 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 000A8 80AE4D78 24E765A0 */  addiu   $a3, $a3, %lo(D_80AE65A0)  ## $a3 = 80AE65A0
/* 000AC 80AE4D7C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B0 80AE4D80 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000B4 80AE4D84 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B8 80AE4D88 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 000BC 80AE4D8C 3C0180AE */  lui     $at, %hi(D_80AE667C)       ## $at = 80AE0000
/* 000C0 80AE4D90 A60D027A */  sh      $t5, 0x027A($s0)           ## 0000027A
/* 000C4 80AE4D94 860E027A */  lh      $t6, 0x027A($s0)           ## 0000027A
/* 000C8 80AE4D98 C426667C */  lwc1    $f6, %lo(D_80AE667C)($at)  
/* 000CC 80AE4D9C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 000D0 80AE4DA0 11C0001C */  beq     $t6, $zero, .L80AE4E14     
/* 000D4 80AE4DA4 E606028C */  swc1    $f6, 0x028C($s0)           ## 0000028C
/* 000D8 80AE4DA8 C608028C */  lwc1    $f8, 0x028C($s0)           ## 0000028C
/* 000DC 80AE4DAC 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 000E0 80AE4DB0 240F0023 */  addiu   $t7, $zero, 0x0023         ## $t7 = 00000023
/* 000E4 80AE4DB4 2418002D */  addiu   $t8, $zero, 0x002D         ## $t8 = 0000002D
/* 000E8 80AE4DB8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 000EC 80AE4DBC 3C0480AE */  lui     $a0, %hi(D_80AE65F0)       ## $a0 = 80AE0000
/* 000F0 80AE4DC0 A60F02D0 */  sh      $t7, 0x02D0($s0)           ## 000002D0
/* 000F4 80AE4DC4 A61802D2 */  sh      $t8, 0x02D2($s0)           ## 000002D2
/* 000F8 80AE4DC8 248465F0 */  addiu   $a0, $a0, %lo(D_80AE65F0)  ## $a0 = 80AE65F0
/* 000FC 80AE4DCC E610028C */  swc1    $f16, 0x028C($s0)          ## 0000028C
/* 00100 80AE4DD0 C612028C */  lwc1    $f18, 0x028C($s0)          ## 0000028C
/* 00104 80AE4DD4 46009121 */  cvt.d.s $f4, $f18                  
/* 00108 80AE4DD8 44072000 */  mfc1    $a3, $f4                   
/* 0010C 80AE4DDC 44062800 */  mfc1    $a2, $f5                   
/* 00110 80AE4DE0 0C00084C */  jal     osSyncPrintf
              
/* 00114 80AE4DE4 00000000 */  nop
/* 00118 80AE4DE8 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 0011C 80AE4DEC 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00120 80AE4DF0 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00124 80AE4DF4 A21900AF */  sb      $t9, 0x00AF($s0)           ## 000000AF
/* 00128 80AE4DF8 A20802AC */  sb      $t0, 0x02AC($s0)           ## 000002AC
/* 0012C 80AE4DFC A20902AD */  sb      $t1, 0x02AD($s0)           ## 000002AD
/* 00130 80AE4E00 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00134 80AE4E04 26251C24 */  addiu   $a1, $s1, 0x1C24           ## $a1 = 00001C24
/* 00138 80AE4E08 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0013C 80AE4E0C 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00140 80AE4E10 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
.L80AE4E14:
/* 00144 80AE4E14 3C0180AE */  lui     $at, %hi(D_80AE6680)       ## $at = 80AE0000
/* 00148 80AE4E18 C4286680 */  lwc1    $f8, %lo(D_80AE6680)($at)  
/* 0014C 80AE4E1C C606028C */  lwc1    $f6, 0x028C($s0)           ## 0000028C
/* 00150 80AE4E20 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00154 80AE4E24 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00158 80AE4E28 46083002 */  mul.s   $f0, $f6, $f8              
/* 0015C 80AE4E2C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00160 80AE4E30 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00164 80AE4E34 44050000 */  mfc1    $a1, $f0                   
/* 00168 80AE4E38 E6000284 */  swc1    $f0, 0x0284($s0)           ## 00000284
/* 0016C 80AE4E3C 0C00AC78 */  jal     ActorShape_Init
              
/* 00170 80AE4E40 E60000BC */  swc1    $f0, 0x00BC($s0)           ## 000000BC
/* 00174 80AE4E44 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00178 80AE4E48 44810000 */  mtc1    $at, $f0                   ## $f0 = 60.00
/* 0017C 80AE4E4C 3C0A80AE */  lui     $t2, %hi(D_80AE6560)       ## $t2 = 80AE0000
/* 00180 80AE4E50 254A6560 */  addiu   $t2, $t2, %lo(D_80AE6560)  ## $t2 = 80AE6560
/* 00184 80AE4E54 AE0A0098 */  sw      $t2, 0x0098($s0)           ## 00000098
/* 00188 80AE4E58 240B001D */  addiu   $t3, $zero, 0x001D         ## $t3 = 0000001D
/* 0018C 80AE4E5C 44070000 */  mfc1    $a3, $f0                   
/* 00190 80AE4E60 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00194 80AE4E64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00198 80AE4E68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0019C 80AE4E6C 3C06420C */  lui     $a2, 0x420C                ## $a2 = 420C0000
/* 001A0 80AE4E70 0C00B92D */  jal     func_8002E4B4              
/* 001A4 80AE4E74 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 001A8 80AE4E78 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 001AC 80AE4E7C 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 001B0 80AE4E80 0C010753 */  jal     func_80041D4C              
/* 001B4 80AE4E84 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 001B8 80AE4E88 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 001BC 80AE4E8C 10410008 */  beq     $v0, $at, .L80AE4EB0       
/* 001C0 80AE4E90 3C0C80AE */  lui     $t4, %hi(func_80AE4F40)    ## $t4 = 80AE0000
/* 001C4 80AE4E94 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 001C8 80AE4E98 10410005 */  beq     $v0, $at, .L80AE4EB0       
/* 001CC 80AE4E9C 00000000 */  nop
/* 001D0 80AE4EA0 0C00B55C */  jal     Actor_Kill
              
/* 001D4 80AE4EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001D8 80AE4EA8 10000004 */  beq     $zero, $zero, .L80AE4EBC   
/* 001DC 80AE4EAC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AE4EB0:
/* 001E0 80AE4EB0 258C4F40 */  addiu   $t4, $t4, %lo(func_80AE4F40) ## $t4 = 00004F40
/* 001E4 80AE4EB4 AE0C026C */  sw      $t4, 0x026C($s0)           ## 0000026C
/* 001E8 80AE4EB8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AE4EBC:
/* 001EC 80AE4EBC 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 001F0 80AE4EC0 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 001F4 80AE4EC4 03E00008 */  jr      $ra                        
/* 001F8 80AE4EC8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
