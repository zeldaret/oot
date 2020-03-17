glabel func_809EFEE8
/* 00B98 809EFEE8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B9C 809EFEEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BA0 809EFEF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00BA4 809EFEF4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00BA8 809EFEF8 0C042F6F */  jal     func_8010BDBC              
/* 00BAC 809EFEFC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00BB0 809EFF00 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00BB4 809EFF04 5441000F */  bnel    $v0, $at, .L809EFF44       
/* 00BB8 809EFF08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BBC 809EFF0C 0C041AF2 */  jal     func_80106BC8              
/* 00BC0 809EFF10 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00BC4 809EFF14 5040000B */  beql    $v0, $zero, .L809EFF44     
/* 00BC8 809EFF18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BCC 809EFF1C 0C041B33 */  jal     func_80106CCC              
/* 00BD0 809EFF20 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00BD4 809EFF24 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00BD8 809EFF28 0C27BF74 */  jal     func_809EFDD0              
/* 00BDC 809EFF2C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00BE0 809EFF30 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00BE4 809EFF34 3C0E809F */  lui     $t6, %hi(func_809EFF50)    ## $t6 = 809F0000
/* 00BE8 809EFF38 25CEFF50 */  addiu   $t6, $t6, %lo(func_809EFF50) ## $t6 = 809EFF50
/* 00BEC 809EFF3C ADEE0268 */  sw      $t6, 0x0268($t7)           ## 00000268
/* 00BF0 809EFF40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809EFF44:
/* 00BF4 809EFF44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BF8 809EFF48 03E00008 */  jr      $ra                        
/* 00BFC 809EFF4C 00000000 */  nop


