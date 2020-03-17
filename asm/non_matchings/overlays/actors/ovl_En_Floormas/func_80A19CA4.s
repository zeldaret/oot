glabel func_80A19CA4
/* 02794 80A19CA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02798 80A19CA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0279C 80A19CAC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 027A0 80A19CB0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 027A4 80A19CB4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 027A8 80A19CB8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 027AC 80A19CBC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 027B0 80A19CC0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 027B4 80A19CC4 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
/* 027B8 80A19CC8 10400003 */  beq     $v0, $zero, .L80A19CD8     
/* 027BC 80A19CCC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 027C0 80A19CD0 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
/* 027C4 80A19CD4 84C20194 */  lh      $v0, 0x0194($a2)           ## 00000194
.L80A19CD8:
/* 027C8 80A19CD8 5440000C */  bnel    $v0, $zero, .L80A19D0C     
/* 027CC 80A19CDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 027D0 80A19CE0 90CF00AF */  lbu     $t7, 0x00AF($a2)           ## 000000AF
/* 027D4 80A19CE4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 027D8 80A19CE8 15E00005 */  bne     $t7, $zero, .L80A19D00     
/* 027DC 80A19CEC 00000000 */  nop
/* 027E0 80A19CF0 0C286119 */  jal     func_80A18464              
/* 027E4 80A19CF4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 027E8 80A19CF8 10000004 */  beq     $zero, $zero, .L80A19D0C   
/* 027EC 80A19CFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A19D00:
/* 027F0 80A19D00 0C285DF2 */  jal     func_80A177C8              
/* 027F4 80A19D04 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 027F8 80A19D08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A19D0C:
/* 027FC 80A19D0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02800 80A19D10 03E00008 */  jr      $ra                        
/* 02804 80A19D14 00000000 */  nop


