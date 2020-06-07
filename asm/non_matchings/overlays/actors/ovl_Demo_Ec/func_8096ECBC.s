.rdata
glabel D_809706CC
    .asciz "\x1B[31mかつらが無い!!!!!!!!!!!!!!!!\n\x1B[m"
    .balign 4

.text
glabel func_8096ECBC
/* 0180C 8096ECBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01810 8096ECC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01814 8096ECC4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 01818 8096ECC8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0181C 8096ECCC 10410009 */  beq     $v0, $at, .L8096ECF4       
/* 01820 8096ECD0 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01824 8096ECD4 1041000A */  beq     $v0, $at, .L8096ED00       
/* 01828 8096ECD8 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 0182C 8096ECDC 1041000B */  beq     $v0, $at, .L8096ED0C       
/* 01830 8096ECE0 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01834 8096ECE4 1041000C */  beq     $v0, $at, .L8096ED18       
/* 01838 8096ECE8 3C048097 */  lui     $a0, %hi(D_809706CC)       ## $a0 = 80970000
/* 0183C 8096ECEC 1000000D */  beq     $zero, $zero, .L8096ED24   
/* 01840 8096ECF0 00000000 */  nop
.L8096ECF4:
/* 01844 8096ECF4 3C020600 */  lui     $v0, 0x0600                ## $v0 = 06000000
/* 01848 8096ECF8 1000000D */  beq     $zero, $zero, .L8096ED30   
/* 0184C 8096ECFC 24425BD0 */  addiu   $v0, $v0, 0x5BD0           ## $v0 = 06005BD0
.L8096ED00:
/* 01850 8096ED00 3C020600 */  lui     $v0, 0x0600                ## $v0 = 06000000
/* 01854 8096ED04 1000000A */  beq     $zero, $zero, .L8096ED30   
/* 01858 8096ED08 24425AC0 */  addiu   $v0, $v0, 0x5AC0           ## $v0 = 06005AC0
.L8096ED0C:
/* 0185C 8096ED0C 3C020600 */  lui     $v0, 0x0600                ## $v0 = 06000000
/* 01860 8096ED10 10000007 */  beq     $zero, $zero, .L8096ED30   
/* 01864 8096ED14 24425990 */  addiu   $v0, $v0, 0x5990           ## $v0 = 06005990
.L8096ED18:
/* 01868 8096ED18 3C020600 */  lui     $v0, 0x0600                ## $v0 = 06000000
/* 0186C 8096ED1C 10000004 */  beq     $zero, $zero, .L8096ED30   
/* 01870 8096ED20 24425880 */  addiu   $v0, $v0, 0x5880           ## $v0 = 06005880
.L8096ED24:
/* 01874 8096ED24 0C00084C */  jal     osSyncPrintf
              
/* 01878 8096ED28 248406CC */  addiu   $a0, $a0, %lo(D_809706CC)  ## $a0 = 809706CC
/* 0187C 8096ED2C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8096ED30:
/* 01880 8096ED30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01884 8096ED34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01888 8096ED38 03E00008 */  jr      $ra                        
/* 0188C 8096ED3C 00000000 */  nop
