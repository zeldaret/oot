glabel func_80AFE390
/* 000E0 80AFE390 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 000E4 80AFE394 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000E8 80AFE398 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 000EC 80AFE39C 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 000F0 80AFE3A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000F4 80AFE3A4 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 000F8 80AFE3A8 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 000FC 80AFE3AC E7A40024 */  swc1    $f4, 0x0024($sp)           
/* 00100 80AFE3B0 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 00104 80AFE3B4 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00108 80AFE3B8 44815000 */  mtc1    $at, $f10                  ## $f10 = 32768.00
/* 0010C 80AFE3BC 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 00110 80AFE3C0 3C0180B0 */  lui     $at, %hi(D_80B018F4)       ## $at = 80B00000
/* 00114 80AFE3C4 C43218F4 */  lwc1    $f18, %lo(D_80B018F4)($at) 
/* 00118 80AFE3C8 46803220 */  cvt.s.w $f8, $f6                   
/* 0011C 80AFE3CC AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00120 80AFE3D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00124 80AFE3D4 460A4403 */  div.s   $f16, $f8, $f10            
/* 00128 80AFE3D8 46128302 */  mul.s   $f12, $f16, $f18           
/* 0012C 80AFE3DC 0C034348 */  jal     Matrix_RotateY              
/* 00130 80AFE3E0 00000000 */  nop
/* 00134 80AFE3E4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00138 80AFE3E8 27A4001C */  addiu   $a0, $sp, 0x001C           ## $a0 = FFFFFFF4
/* 0013C 80AFE3EC 0C0346BD */  jal     Matrix_MultVec3f              
/* 00140 80AFE3F0 24C502E0 */  addiu   $a1, $a2, 0x02E0           ## $a1 = 000002E0
/* 00144 80AFE3F4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 00148 80AFE3F8 C4C402E0 */  lwc1    $f4, 0x02E0($a2)           ## 000002E0
/* 0014C 80AFE3FC C4C60024 */  lwc1    $f6, 0x0024($a2)           ## 00000024
/* 00150 80AFE400 C4CA02E8 */  lwc1    $f10, 0x02E8($a2)          ## 000002E8
/* 00154 80AFE404 C4D0002C */  lwc1    $f16, 0x002C($a2)          ## 0000002C
/* 00158 80AFE408 46062200 */  add.s   $f8, $f4, $f6              
/* 0015C 80AFE40C 46105480 */  add.s   $f18, $f10, $f16           
/* 00160 80AFE410 E4C802E0 */  swc1    $f8, 0x02E0($a2)           ## 000002E0
/* 00164 80AFE414 E4D202E8 */  swc1    $f18, 0x02E8($a2)          ## 000002E8
/* 00168 80AFE418 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0016C 80AFE41C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00170 80AFE420 03E00008 */  jr      $ra                        
/* 00174 80AFE424 00000000 */  nop
