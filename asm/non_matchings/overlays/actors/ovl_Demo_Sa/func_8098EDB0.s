glabel func_8098EDB0
/* 00950 8098EDB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00954 8098EDB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00958 8098EDB8 908E014D */  lbu     $t6, 0x014D($a0)           ## 0000014D
/* 0095C 8098EDBC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00960 8098EDC0 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00964 8098EDC4 15C1000C */  bne     $t6, $at, .L8098EDF8       
/* 00968 8098EDC8 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 0096C 8098EDCC 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 00970 8098EDD0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00974 8098EDD4 4600203E */  c.le.s  $f4, $f0                   
/* 00978 8098EDD8 00000000 */  nop
/* 0097C 8098EDDC 45020007 */  bc1fl   .L8098EDFC                 
/* 00980 8098EDE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00984 8098EDE4 0C263942 */  jal     func_8098E508              
/* 00988 8098EDE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0098C 8098EDEC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00990 8098EDF0 0C263947 */  jal     func_8098E51C              
/* 00994 8098EDF4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L8098EDF8:
/* 00998 8098EDF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098EDFC:
/* 0099C 8098EDFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009A0 8098EE00 03E00008 */  jr      $ra                        
/* 009A4 8098EE04 00000000 */  nop
