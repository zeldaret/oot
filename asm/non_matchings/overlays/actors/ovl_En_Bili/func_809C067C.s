glabel func_809C067C
/* 00DDC 809C067C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00DE0 809C0680 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DE4 809C0684 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00DE8 809C0688 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00DEC 809C068C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00DF0 809C0690 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00DF4 809C0694 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00DF8 809C0698 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00DFC 809C069C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00E00 809C06A0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00E04 809C06A4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00E08 809C06A8 0C01DE80 */  jal     Math_ApproxF
              
/* 00E0C 809C06AC 24E40068 */  addiu   $a0, $a3, 0x0068           ## $a0 = 00000068
/* 00E10 809C06B0 10400007 */  beq     $v0, $zero, .L809C06D0     
/* 00E14 809C06B4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00E18 809C06B8 84EE0032 */  lh      $t6, 0x0032($a3)           ## 00000032
/* 00E1C 809C06BC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00E20 809C06C0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00E24 809C06C4 01C17821 */  addu    $t7, $t6, $at              
/* 00E28 809C06C8 0C26FE6F */  jal     func_809BF9BC              
/* 00E2C 809C06CC A4EF0032 */  sh      $t7, 0x0032($a3)           ## 00000032
.L809C06D0:
/* 00E30 809C06D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E34 809C06D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E38 809C06D8 03E00008 */  jr      $ra                        
/* 00E3C 809C06DC 00000000 */  nop


