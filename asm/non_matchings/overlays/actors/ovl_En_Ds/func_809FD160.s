glabel func_809FD160
/* 00130 809FD160 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00134 809FD164 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00138 809FD168 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0013C 809FD16C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00140 809FD170 0C042F6F */  jal     func_8010BDBC              
/* 00144 809FD174 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00148 809FD178 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0014C 809FD17C 5441000C */  bnel    $v0, $at, .L809FD1B0       
/* 00150 809FD180 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00154 809FD184 0C041AF2 */  jal     func_80106BC8              
/* 00158 809FD188 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0015C 809FD18C 50400008 */  beql    $v0, $zero, .L809FD1B0     
/* 00160 809FD190 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00164 809FD194 0C041B33 */  jal     func_80106CCC              
/* 00168 809FD198 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0016C 809FD19C 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00170 809FD1A0 3C0E80A0 */  lui     $t6, %hi(func_809FD7B4)    ## $t6 = 80A00000
/* 00174 809FD1A4 25CED7B4 */  addiu   $t6, $t6, %lo(func_809FD7B4) ## $t6 = 809FD7B4
/* 00178 809FD1A8 AC4E01EC */  sw      $t6, 0x01EC($v0)           ## 000001EC
/* 0017C 809FD1AC 8FA20018 */  lw      $v0, 0x0018($sp)           
.L809FD1B0:
/* 00180 809FD1B0 944F01E8 */  lhu     $t7, 0x01E8($v0)           ## 000001E8
/* 00184 809FD1B4 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00188 809FD1B8 A45801E8 */  sh      $t8, 0x01E8($v0)           ## 000001E8
/* 0018C 809FD1BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00190 809FD1C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00194 809FD1C4 03E00008 */  jr      $ra                        
/* 00198 809FD1C8 00000000 */  nop


