glabel func_80AB0DAC
/* 0001C 80AB0DAC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00020 80AB0DB0 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 00024 80AB0DB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00028 80AB0DB8 00E53821 */  addu    $a3, $a3, $a1              
/* 0002C 80AB0DBC 8CE71E08 */  lw      $a3, 0x1E08($a3)           ## 00011E08
/* 00030 80AB0DC0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00034 80AB0DC4 10E00048 */  beq     $a3, $zero, .L80AB0EE8     
/* 00038 80AB0DC8 00000000 */  nop
/* 0003C 80AB0DCC AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00040 80AB0DD0 0C2AC364 */  jal     func_80AB0D90              
/* 00044 80AB0DD4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00048 80AB0DD8 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 0004C 80AB0DDC 000270C0 */  sll     $t6, $v0,  3               
/* 00050 80AB0DE0 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 00054 80AB0DE4 00EE3821 */  addu    $a3, $a3, $t6              
/* 00058 80AB0DE8 8CE40004 */  lw      $a0, 0x0004($a3)           ## 00000004
/* 0005C 80AB0DEC 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00060 80AB0DF0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00064 80AB0DF4 00047900 */  sll     $t7, $a0,  4               
/* 00068 80AB0DF8 000FC702 */  srl     $t8, $t7, 28               
/* 0006C 80AB0DFC 0018C880 */  sll     $t9, $t8,  2               
/* 00070 80AB0E00 01194021 */  addu    $t0, $t0, $t9              
/* 00074 80AB0E04 8D086FA8 */  lw      $t0, 0x6FA8($t0)           ## 80166FA8
/* 00078 80AB0E08 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0007C 80AB0E0C 00814824 */  and     $t1, $a0, $at              
/* 00080 80AB0E10 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00084 80AB0E14 01091821 */  addu    $v1, $t0, $t1              
/* 00088 80AB0E18 00611821 */  addu    $v1, $v1, $at              
/* 0008C 80AB0E1C 846A0000 */  lh      $t2, 0x0000($v1)           ## 00000000
/* 00090 80AB0E20 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00094 80AB0E24 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00098 80AB0E28 00000000 */  nop
/* 0009C 80AB0E2C 468021A0 */  cvt.s.w $f6, $f4                   
/* 000A0 80AB0E30 E4C602E4 */  swc1    $f6, 0x02E4($a2)           ## 000002E4
/* 000A4 80AB0E34 846B0002 */  lh      $t3, 0x0002($v1)           ## 00000002
/* 000A8 80AB0E38 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 000AC 80AB0E3C 00000000 */  nop
/* 000B0 80AB0E40 468042A0 */  cvt.s.w $f10, $f8                  
/* 000B4 80AB0E44 E4CA02E8 */  swc1    $f10, 0x02E8($a2)          ## 000002E8
/* 000B8 80AB0E48 846C0004 */  lh      $t4, 0x0004($v1)           ## 00000004
/* 000BC 80AB0E4C 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 000C0 80AB0E50 00000000 */  nop
/* 000C4 80AB0E54 468084A0 */  cvt.s.w $f18, $f16                 
/* 000C8 80AB0E58 E4D202EC */  swc1    $f18, 0x02EC($a2)          ## 000002EC
/* 000CC 80AB0E5C 846D0006 */  lh      $t5, 0x0006($v1)           ## 00000006
/* 000D0 80AB0E60 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 000D4 80AB0E64 00000000 */  nop
/* 000D8 80AB0E68 468021A0 */  cvt.s.w $f6, $f4                   
/* 000DC 80AB0E6C E4C602F0 */  swc1    $f6, 0x02F0($a2)           ## 000002F0
/* 000E0 80AB0E70 846E0008 */  lh      $t6, 0x0008($v1)           ## 00000008
/* 000E4 80AB0E74 C4C402F0 */  lwc1    $f4, 0x02F0($a2)           ## 000002F0
/* 000E8 80AB0E78 C4C602E4 */  lwc1    $f6, 0x02E4($a2)           ## 000002E4
/* 000EC 80AB0E7C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 000F0 80AB0E80 46062301 */  sub.s   $f12, $f4, $f6             
/* 000F4 80AB0E84 468042A0 */  cvt.s.w $f10, $f8                  
/* 000F8 80AB0E88 E4CA02F4 */  swc1    $f10, 0x02F4($a2)          ## 000002F4
/* 000FC 80AB0E8C 846F000A */  lh      $t7, 0x000A($v1)           ## 0000000A
/* 00100 80AB0E90 C4CA02EC */  lwc1    $f10, 0x02EC($a2)          ## 000002EC
/* 00104 80AB0E94 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 00108 80AB0E98 00000000 */  nop
/* 0010C 80AB0E9C 468084A0 */  cvt.s.w $f18, $f16                 
/* 00110 80AB0EA0 E4D202F8 */  swc1    $f18, 0x02F8($a2)          ## 000002F8
/* 00114 80AB0EA4 C4C802F8 */  lwc1    $f8, 0x02F8($a2)           ## 000002F8
/* 00118 80AB0EA8 0C03F494 */  jal     Math_atan2f              
/* 0011C 80AB0EAC 460A4381 */  sub.s   $f14, $f8, $f10            
/* 00120 80AB0EB0 3C0180AB */  lui     $at, %hi(D_80AB5200)       ## $at = 80AB0000
/* 00124 80AB0EB4 C4305200 */  lwc1    $f16, %lo(D_80AB5200)($at) 
/* 00128 80AB0EB8 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0012C 80AB0EBC 3C0480AB */  lui     $a0, %hi(D_80AB4F90)       ## $a0 = 80AB0000
/* 00130 80AB0EC0 46100482 */  mul.s   $f18, $f0, $f16            
/* 00134 80AB0EC4 24844F90 */  addiu   $a0, $a0, %lo(D_80AB4F90)  ## $a0 = 80AB4F90
/* 00138 80AB0EC8 4600910D */  trunc.w.s $f4, $f18                  
/* 0013C 80AB0ECC 44192000 */  mfc1    $t9, $f4                   
/* 00140 80AB0ED0 00000000 */  nop
/* 00144 80AB0ED4 A4D902FC */  sh      $t9, 0x02FC($a2)           ## 000002FC
/* 00148 80AB0ED8 0C00084C */  jal     osSyncPrintf
              
/* 0014C 80AB0EDC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00150 80AB0EE0 10000005 */  beq     $zero, $zero, .L80AB0EF8   
/* 00154 80AB0EE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB0EE8:
/* 00158 80AB0EE8 3C0480AB */  lui     $a0, %hi(D_80AB4FD4)       ## $a0 = 80AB0000
/* 0015C 80AB0EEC 0C00084C */  jal     osSyncPrintf
              
/* 00160 80AB0EF0 24844FD4 */  addiu   $a0, $a0, %lo(D_80AB4FD4)  ## $a0 = 80AB4FD4
/* 00164 80AB0EF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB0EF8:
/* 00168 80AB0EF8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0016C 80AB0EFC 03E00008 */  jr      $ra                        
/* 00170 80AB0F00 00000000 */  nop


