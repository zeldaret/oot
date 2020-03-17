glabel func_809DF870
/* 00A70 809DF870 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A74 809DF874 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A78 809DF878 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A7C 809DF87C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A80 809DF880 0C042F6F */  jal     func_8010BDBC              
/* 00A84 809DF884 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A88 809DF888 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A8C 809DF88C 54410018 */  bnel    $v0, $at, .L809DF8F0       
/* 00A90 809DF890 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A94 809DF894 0C041AF2 */  jal     func_80106BC8              
/* 00A98 809DF898 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00A9C 809DF89C 50400014 */  beql    $v0, $zero, .L809DF8F0     
/* 00AA0 809DF8A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AA4 809DF8A4 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00AA8 809DF8A8 00000000 */  nop
/* 00AAC 809DF8AC 10400009 */  beq     $v0, $zero, .L809DF8D4     
/* 00AB0 809DF8B0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AB4 809DF8B4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AB8 809DF8B8 0C042DC8 */  jal     func_8010B720              
/* 00ABC 809DF8BC 24052007 */  addiu   $a1, $zero, 0x2007         ## $a1 = 00002007
/* 00AC0 809DF8C0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00AC4 809DF8C4 3C0E809E */  lui     $t6, %hi(func_809DF7D8)    ## $t6 = 809E0000
/* 00AC8 809DF8C8 25CEF7D8 */  addiu   $t6, $t6, %lo(func_809DF7D8) ## $t6 = 809DF7D8
/* 00ACC 809DF8CC 10000007 */  beq     $zero, $zero, .L809DF8EC   
/* 00AD0 809DF8D0 ADEE027C */  sw      $t6, 0x027C($t7)           ## 0000027C
.L809DF8D4:
/* 00AD4 809DF8D4 0C042DC8 */  jal     func_8010B720              
/* 00AD8 809DF8D8 24052013 */  addiu   $a1, $zero, 0x2013         ## $a1 = 00002013
/* 00ADC 809DF8DC 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 00AE0 809DF8E0 3C18809E */  lui     $t8, %hi(func_809DF6BC)    ## $t8 = 809E0000
/* 00AE4 809DF8E4 2718F6BC */  addiu   $t8, $t8, %lo(func_809DF6BC) ## $t8 = 809DF6BC
/* 00AE8 809DF8E8 AF38027C */  sw      $t8, 0x027C($t9)           ## 0000027C
.L809DF8EC:
/* 00AEC 809DF8EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809DF8F0:
/* 00AF0 809DF8F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AF4 809DF8F4 03E00008 */  jr      $ra                        
/* 00AF8 809DF8F8 00000000 */  nop


