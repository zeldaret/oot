glabel func_8086C6EC
/* 00A4C 8086C6EC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A50 8086C6F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A54 8086C6F4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A58 8086C6F8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A5C 8086C6FC 84E50016 */  lh      $a1, 0x0016($a3)           ## 00000016
/* 00A60 8086C700 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00A64 8086C704 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00A68 8086C708 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00A6C 8086C70C 24060200 */  addiu   $a2, $zero, 0x0200         ## $a2 = 00000200
/* 00A70 8086C710 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00A74 8086C714 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00A78 8086C718 3C01C2FA */  lui     $at, 0xC2FA                ## $at = C2FA0000
/* 00A7C 8086C71C 44813000 */  mtc1    $at, $f6                   ## $f6 = -125.00
/* 00A80 8086C720 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 00A84 8086C724 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00A88 8086C728 24E40028 */  addiu   $a0, $a3, 0x0028           ## $a0 = 00000028
/* 00A8C 8086C72C 46062200 */  add.s   $f8, $f4, $f6              
/* 00A90 8086C730 44054000 */  mfc1    $a1, $f8                   
/* 00A94 8086C734 0C01DE80 */  jal     Math_ApproxF
              
/* 00A98 8086C738 00000000 */  nop
/* 00A9C 8086C73C 10400007 */  beq     $v0, $zero, .L8086C75C     
/* 00AA0 8086C740 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00AA4 8086C744 8FAE001C */  lw      $t6, 0x001C($sp)           
/* 00AA8 8086C748 3C0F8087 */  lui     $t7, %hi(func_8086C76C)    ## $t7 = 80870000
/* 00AAC 8086C74C 25EFC76C */  addiu   $t7, $t7, %lo(func_8086C76C) ## $t7 = 8086C76C
/* 00AB0 8086C750 51C00003 */  beql    $t6, $zero, .L8086C760     
/* 00AB4 8086C754 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AB8 8086C758 ACEF0164 */  sw      $t7, 0x0164($a3)           ## 00000164
.L8086C75C:
/* 00ABC 8086C75C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086C760:
/* 00AC0 8086C760 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AC4 8086C764 03E00008 */  jr      $ra                        
/* 00AC8 8086C768 00000000 */  nop


