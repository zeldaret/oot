glabel func_80A60294
/* 04FA4 80A60294 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04FA8 80A60298 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04FAC 80A6029C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04FB0 80A602A0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 04FB4 80A602A4 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 04FB8 80A602A8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 04FBC 80A602AC AC8E0210 */  sw      $t6, 0x0210($a0)           ## 00000210
/* 04FC0 80A602B0 AC8F0380 */  sw      $t7, 0x0380($a0)           ## 00000380
/* 04FC4 80A602B4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 04FC8 80A602B8 3C0180A6 */  lui     $at, %hi(D_80A668FC)       ## $at = 80A60000
/* 04FCC 80A602BC C42668FC */  lwc1    $f6, %lo(D_80A668FC)($at)  
/* 04FD0 80A602C0 C4E40068 */  lwc1    $f4, 0x0068($a3)           ## 00000068
/* 04FD4 80A602C4 8CF80158 */  lw      $t8, 0x0158($a3)           ## 00000158
/* 04FD8 80A602C8 3C0880A6 */  lui     $t0, %hi(D_80A65E58)       ## $t0 = 80A60000
/* 04FDC 80A602CC 46062202 */  mul.s   $f8, $f4, $f6              
/* 04FE0 80A602D0 0018C880 */  sll     $t9, $t8,  2               
/* 04FE4 80A602D4 01194021 */  addu    $t0, $t0, $t9              
/* 04FE8 80A602D8 8D085E58 */  lw      $t0, %lo(D_80A65E58)($t0)  
/* 04FEC 80A602DC 248401AC */  addiu   $a0, $a0, 0x01AC           ## $a0 = 000001AC
/* 04FF0 80A602E0 8D050018 */  lw      $a1, 0x0018($t0)           ## 80A60018
/* 04FF4 80A602E4 44064000 */  mfc1    $a2, $f8                   
/* 04FF8 80A602E8 0C0294A7 */  jal     func_800A529C              
/* 04FFC 80A602EC 00000000 */  nop
/* 05000 80A602F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05004 80A602F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05008 80A602F8 03E00008 */  jr      $ra                        
/* 0500C 80A602FC 00000000 */  nop


