glabel func_80A9BFA8
/* 01008 80A9BFA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0100C 80A9BFAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01010 80A9BFB0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01014 80A9BFB4 848E019C */  lh      $t6, 0x019C($a0)           ## 0000019C
/* 01018 80A9BFB8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0101C 80A9BFBC 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 01020 80A9BFC0 29C10079 */  slti    $at, $t6, 0x0079           
/* 01024 80A9BFC4 1420000D */  bne     $at, $zero, .L80A9BFFC     
/* 01028 80A9BFC8 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 0102C 80A9BFCC 8CE5000C */  lw      $a1, 0x000C($a3)           ## 0000000C
/* 01030 80A9BFD0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01034 80A9BFD4 0C01DE80 */  jal     Math_ApproxF
              
/* 01038 80A9BFD8 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 0103C 80A9BFDC 10400007 */  beq     $v0, $zero, .L80A9BFFC     
/* 01040 80A9BFE0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01044 80A9BFE4 84EF019C */  lh      $t7, 0x019C($a3)           ## 0000019C
/* 01048 80A9BFE8 29E100AA */  slti    $at, $t7, 0x00AA           
/* 0104C 80A9BFEC 54200004 */  bnel    $at, $zero, .L80A9C000     
/* 01050 80A9BFF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01054 80A9BFF4 0C2A7003 */  jal     func_80A9C00C              
/* 01058 80A9BFF8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L80A9BFFC:
/* 0105C 80A9BFFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C000:
/* 01060 80A9C000 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01064 80A9C004 03E00008 */  jr      $ra                        
/* 01068 80A9C008 00000000 */  nop
