glabel func_80AC5C24
/* 02F84 80AC5C24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F88 80AC5C28 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 02F8C 80AC5C2C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02F90 80AC5C30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F94 80AC5C34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02F98 80AC5C38 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 02F9C 80AC5C3C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02FA0 80AC5C40 0C042F6F */  jal     func_8010BDBC              
/* 02FA4 80AC5C44 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 02FA8 80AC5C48 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02FAC 80AC5C4C 1441000F */  bne     $v0, $at, .L80AC5C8C       
/* 02FB0 80AC5C50 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02FB4 80AC5C54 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02FB8 80AC5C58 0C041AF2 */  jal     func_80106BC8              
/* 02FBC 80AC5C5C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02FC0 80AC5C60 1040000A */  beq     $v0, $zero, .L80AC5C8C     
/* 02FC4 80AC5C64 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02FC8 80AC5C68 90CF0252 */  lbu     $t7, 0x0252($a2)           ## 00000252
/* 02FCC 80AC5C6C 84CE01FE */  lh      $t6, 0x01FE($a2)           ## 000001FE
/* 02FD0 80AC5C70 000FC080 */  sll     $t8, $t7,  2               
/* 02FD4 80AC5C74 00D8C821 */  addu    $t9, $a2, $t8              
/* 02FD8 80AC5C78 A4CE01FC */  sh      $t6, 0x01FC($a2)           ## 000001FC
/* 02FDC 80AC5C7C 8F280200 */  lw      $t0, 0x0200($t9)           ## 00000200
/* 02FE0 80AC5C80 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02FE4 80AC5C84 0C042DC8 */  jal     func_8010B720              
/* 02FE8 80AC5C88 9505010E */  lhu     $a1, 0x010E($t0)           ## 0000010E
.L80AC5C8C:
/* 02FEC 80AC5C8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02FF0 80AC5C90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02FF4 80AC5C94 03E00008 */  jr      $ra                        
/* 02FF8 80AC5C98 00000000 */  nop
