glabel func_80A31D88
/* 01418 80A31D88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0141C 80A31D8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01420 80A31D90 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01424 80A31D94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01428 80A31D98 0C042F6F */  jal     func_8010BDBC              
/* 0142C 80A31D9C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01430 80A31DA0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01434 80A31DA4 5441000C */  bnel    $v0, $at, .L80A31DD8       
/* 01438 80A31DA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0143C 80A31DAC 0C041AF2 */  jal     func_80106BC8              
/* 01440 80A31DB0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01444 80A31DB4 10400007 */  beq     $v0, $zero, .L80A31DD4     
/* 01448 80A31DB8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0144C 80A31DBC 0C042DC8 */  jal     func_8010B720              
/* 01450 80A31DC0 24056041 */  addiu   $a1, $zero, 0x6041         ## $a1 = 00006041
/* 01454 80A31DC4 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01458 80A31DC8 3C0E80A3 */  lui     $t6, %hi(func_80A31BE8)    ## $t6 = 80A30000
/* 0145C 80A31DCC 25CE1BE8 */  addiu   $t6, $t6, %lo(func_80A31BE8) ## $t6 = 80A31BE8
/* 01460 80A31DD0 ADEE02B4 */  sw      $t6, 0x02B4($t7)           ## 000002B4
.L80A31DD4:
/* 01464 80A31DD4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A31DD8:
/* 01468 80A31DD8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0146C 80A31DDC 03E00008 */  jr      $ra                        
/* 01470 80A31DE0 00000000 */  nop
