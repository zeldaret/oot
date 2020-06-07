glabel func_809C75C8
/* 00668 809C75C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0066C 809C75CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00670 809C75D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00674 809C75D4 0C00BD68 */  jal     func_8002F5A0              
/* 00678 809C75D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0067C 809C75DC 1040000A */  beq     $v0, $zero, .L809C7608     
/* 00680 809C75E0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00684 809C75E4 3C05809C */  lui     $a1, %hi(func_809C74AC)    ## $a1 = 809C0000
/* 00688 809C75E8 24A574AC */  addiu   $a1, $a1, %lo(func_809C74AC) ## $a1 = 809C74AC
/* 0068C 809C75EC 0C271BD8 */  jal     func_809C6F60              
/* 00690 809C75F0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00694 809C75F4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00698 809C75F8 0C271D2B */  jal     func_809C74AC              
/* 0069C 809C75FC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 006A0 809C7600 10000005 */  beq     $zero, $zero, .L809C7618   
/* 006A4 809C7604 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C7608:
/* 006A8 809C7608 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006AC 809C760C 00000000 */  nop
/* 006B0 809C7610 E5C40060 */  swc1    $f4, 0x0060($t6)           ## 00000060
/* 006B4 809C7614 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C7618:
/* 006B8 809C7618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006BC 809C761C 03E00008 */  jr      $ra                        
/* 006C0 809C7620 00000000 */  nop
