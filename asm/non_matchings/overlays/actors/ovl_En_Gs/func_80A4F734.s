glabel func_80A4F734
/* 01414 80A4F734 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01418 80A4F738 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0141C 80A4F73C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 01420 80A4F740 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01424 80A4F744 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01428 80A4F748 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0142C 80A4F74C 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 01430 80A4F750 00052A03 */  sra     $a1, $a1,  8               
/* 01434 80A4F754 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 01438 80A4F758 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0143C 80A4F75C 14400003 */  bne     $v0, $zero, .L80A4F76C     
/* 01440 80A4F760 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01444 80A4F764 0C29391C */  jal     func_80A4E470              
/* 01448 80A4F768 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A4F76C:
/* 0144C 80A4F76C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01450 80A4F770 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01454 80A4F774 03E00008 */  jr      $ra                        
/* 01458 80A4F778 00000000 */  nop
