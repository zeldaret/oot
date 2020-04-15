glabel EnPeehat_Destroy
/* 00274 80ACF714 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00278 80ACF718 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0027C 80ACF71C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00280 80ACF720 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00284 80ACF724 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00288 80ACF728 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0028C 80ACF72C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00290 80ACF730 24A50300 */  addiu   $a1, $a1, 0x0300           ## $a1 = 00000300
/* 00294 80ACF734 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00298 80ACF738 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0029C 80ACF73C 0C016F32 */  jal     func_8005BCC8              
/* 002A0 80ACF740 24A5034C */  addiu   $a1, $a1, 0x034C           ## $a1 = 0000034C
/* 002A4 80ACF744 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 002A8 80ACF748 846E001C */  lh      $t6, 0x001C($v1)           ## 0000001C
/* 002AC 80ACF74C 59C0000B */  blezl   $t6, .L80ACF77C            
/* 002B0 80ACF750 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002B4 80ACF754 8C620118 */  lw      $v0, 0x0118($v1)           ## 00000118
/* 002B8 80ACF758 50400008 */  beql    $v0, $zero, .L80ACF77C     
/* 002BC 80ACF75C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002C0 80ACF760 8C4F0130 */  lw      $t7, 0x0130($v0)           ## 00000130
/* 002C4 80ACF764 51E00005 */  beql    $t7, $zero, .L80ACF77C     
/* 002C8 80ACF768 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002CC 80ACF76C 845802FA */  lh      $t8, 0x02FA($v0)           ## 000002FA
/* 002D0 80ACF770 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 002D4 80ACF774 A45902FA */  sh      $t9, 0x02FA($v0)           ## 000002FA
/* 002D8 80ACF778 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACF77C:
/* 002DC 80ACF77C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002E0 80ACF780 03E00008 */  jr      $ra                        
/* 002E4 80ACF784 00000000 */  nop
