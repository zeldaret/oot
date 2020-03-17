glabel BgHakaSgami_Update
/* 0088C 8087ED6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00890 8087ED70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00894 8087ED74 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00898 8087ED78 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 0089C 8087ED7C 342100C0 */  ori     $at, $at, 0x00C0           ## $at = 300000C0
/* 008A0 8087ED80 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 008A4 8087ED84 01C17824 */  and     $t7, $t6, $at              
/* 008A8 8087ED88 51E00007 */  beql    $t7, $zero, .L8087EDA8     
/* 008AC 8087ED8C 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 008B0 8087ED90 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 008B4 8087ED94 3C188088 */  lui     $t8, %hi(func_8087E7E4)    ## $t8 = 80880000
/* 008B8 8087ED98 2718E7E4 */  addiu   $t8, $t8, %lo(func_8087E7E4) ## $t8 = 8087E7E4
/* 008BC 8087ED9C 57190005 */  bnel    $t8, $t9, .L8087EDB4       
/* 008C0 8087EDA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008C4 8087EDA4 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
.L8087EDA8:
/* 008C8 8087EDA8 0320F809 */  jalr    $ra, $t9                   
/* 008CC 8087EDAC 00000000 */  nop
/* 008D0 8087EDB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087EDB4:
/* 008D4 8087EDB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008D8 8087EDB8 03E00008 */  jr      $ra                        
/* 008DC 8087EDBC 00000000 */  nop


