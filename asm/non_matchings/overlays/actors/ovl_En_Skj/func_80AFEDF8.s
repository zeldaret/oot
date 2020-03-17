glabel func_80AFEDF8
/* 00B48 80AFEDF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B4C 80AFEDFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B50 80AFEE00 C48602EC */  lwc1    $f6, 0x02EC($a0)           ## 000002EC
/* 00B54 80AFEE04 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00B58 80AFEE08 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00B5C 80AFEE0C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B60 80AFEE10 4606203C */  c.lt.s  $f4, $f6                   
/* 00B64 80AFEE14 00000000 */  nop
/* 00B68 80AFEE18 45020008 */  bc1fl   .L80AFEE3C                 
/* 00B6C 80AFEE1C 84CE008A */  lh      $t6, 0x008A($a2)           ## 0000008A
/* 00B70 80AFEE20 0C00B779 */  jal     func_8002DDE4              
/* 00B74 80AFEE24 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B78 80AFEE28 10400003 */  beq     $v0, $zero, .L80AFEE38     
/* 00B7C 80AFEE2C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B80 80AFEE30 10000010 */  beq     $zero, $zero, .L80AFEE74   
/* 00B84 80AFEE34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFEE38:
/* 00B88 80AFEE38 84CE008A */  lh      $t6, 0x008A($a2)           ## 0000008A
.L80AFEE3C:
/* 00B8C 80AFEE3C 84CF0032 */  lh      $t7, 0x0032($a2)           ## 00000032
/* 00B90 80AFEE40 84C302C8 */  lh      $v1, 0x02C8($a2)           ## 000002C8
/* 00B94 80AFEE44 01CF1023 */  subu    $v0, $t6, $t7              
/* 00B98 80AFEE48 00021400 */  sll     $v0, $v0, 16               
/* 00B9C 80AFEE4C 00021403 */  sra     $v0, $v0, 16               
/* 00BA0 80AFEE50 0043082A */  slt     $at, $v0, $v1              
/* 00BA4 80AFEE54 10200006 */  beq     $at, $zero, .L80AFEE70     
/* 00BA8 80AFEE58 0003C023 */  subu    $t8, $zero, $v1            
/* 00BAC 80AFEE5C 0302082A */  slt     $at, $t8, $v0              
/* 00BB0 80AFEE60 50200004 */  beql    $at, $zero, .L80AFEE74     
/* 00BB4 80AFEE64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00BB8 80AFEE68 10000002 */  beq     $zero, $zero, .L80AFEE74   
/* 00BBC 80AFEE6C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFEE70:
/* 00BC0 80AFEE70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AFEE74:
/* 00BC4 80AFEE74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BC8 80AFEE78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BCC 80AFEE7C 03E00008 */  jr      $ra                        
/* 00BD0 80AFEE80 00000000 */  nop


