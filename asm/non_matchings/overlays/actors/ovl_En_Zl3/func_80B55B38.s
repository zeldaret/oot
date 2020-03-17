glabel func_80B55B38
/* 02788 80B55B38 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0278C 80B55B3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02790 80B55B40 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 02794 80B55B44 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02798 80B55B48 24A56508 */  addiu   $a1, $a1, 0x6508           ## $a1 = 06006508
/* 0279C 80B55B4C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 027A0 80B55B50 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 027A4 80B55B54 0C2D5385 */  jal     func_80B54E14              
/* 027A8 80B55B58 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 027AC 80B55B5C 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 027B0 80B55B60 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 027B4 80B55B64 ADEE024C */  sw      $t6, 0x024C($t7)           ## 0000024C
/* 027B8 80B55B68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 027BC 80B55B6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 027C0 80B55B70 03E00008 */  jr      $ra                        
/* 027C4 80B55B74 00000000 */  nop


