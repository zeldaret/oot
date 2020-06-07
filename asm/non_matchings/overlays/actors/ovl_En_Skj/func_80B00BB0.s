glabel func_80B00BB0
/* 02900 80B00BB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02904 80B00BB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02908 80B00BB8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0290C 80B00BBC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02910 80B00BC0 0C042F6F */  jal     func_8010BDBC              
/* 02914 80B00BC4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02918 80B00BC8 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 0291C 80B00BCC A3A2001F */  sb      $v0, 0x001F($sp)           
/* 02920 80B00BD0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02924 80B00BD4 0C2C0282 */  jal     func_80B00A08              
/* 02928 80B00BD8 8DC51C44 */  lw      $a1, 0x1C44($t6)           ## 00001C44
/* 0292C 80B00BDC 93AF001F */  lbu     $t7, 0x001F($sp)           
/* 02930 80B00BE0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02934 80B00BE4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02938 80B00BE8 55E10010 */  bnel    $t7, $at, .L80B00C2C       
/* 0293C 80B00BEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02940 80B00BF0 0C042F56 */  jal     func_8010BD58              
/* 02944 80B00BF4 2405002E */  addiu   $a1, $zero, 0x002E         ## $a1 = 0000002E
/* 02948 80B00BF8 3C0280B0 */  lui     $v0, %hi(D_80B0164C)       ## $v0 = 80B00000
/* 0294C 80B00BFC 8C42164C */  lw      $v0, %lo(D_80B0164C)($v0)  
/* 02950 80B00C00 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02954 80B00C04 241900A0 */  addiu   $t9, $zero, 0x00A0         ## $t9 = 000000A0
/* 02958 80B00C08 50400003 */  beql    $v0, $zero, .L80B00C18     
/* 0295C 80B00C0C 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 02960 80B00C10 A05802D8 */  sb      $t8, 0x02D8($v0)           ## 80B002D8
/* 02964 80B00C14 8FA20020 */  lw      $v0, 0x0020($sp)           
.L80B00C18:
/* 02968 80B00C18 3C0880B0 */  lui     $t0, %hi(func_80B00C38)    ## $t0 = 80B00000
/* 0296C 80B00C1C 25080C38 */  addiu   $t0, $t0, %lo(func_80B00C38) ## $t0 = 80B00C38
/* 02970 80B00C20 A45902CA */  sh      $t9, 0x02CA($v0)           ## 80B002CA
/* 02974 80B00C24 AC480274 */  sw      $t0, 0x0274($v0)           ## 80B00274
/* 02978 80B00C28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B00C2C:
/* 0297C 80B00C2C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02980 80B00C30 03E00008 */  jr      $ra                        
/* 02984 80B00C34 00000000 */  nop
