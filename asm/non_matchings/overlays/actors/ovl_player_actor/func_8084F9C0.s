glabel func_8084F9C0
/* 1D7B0 8084F9C0 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 1D7B4 8084F9C4 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 1D7B8 8084F9C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1D7BC 8084F9CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1D7C0 8084F9D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1D7C4 8084F9D4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 1D7C8 8084F9D8 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 1D7CC 8084F9DC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 1D7D0 8084F9E0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 1D7D4 8084F9E4 0C028EF0 */  jal     func_800A3BC0              
/* 1D7D8 8084F9E8 24E501B4 */  addiu   $a1, $a3, 0x01B4           ## $a1 = 000001B4
/* 1D7DC 8084F9EC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 1D7E0 8084F9F0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 1D7E4 8084F9F4 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 1D7E8 8084F9F8 C4E00060 */  lwc1    $f0, 0x0060($a3)           ## 00000060
/* 1D7EC 8084F9FC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1D7F0 8084FA00 4606003C */  c.lt.s  $f0, $f6                   
/* 1D7F4 8084FA04 00000000 */  nop
/* 1D7F8 8084FA08 45020006 */  bc1fl   .L8084FA24                 
/* 1D7FC 8084FA0C 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 1D800 8084FA10 0C20DEE7 */  jal     func_80837B9C              
/* 1D804 8084FA14 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1D808 8084FA18 1000000B */  beq     $zero, $zero, .L8084FA48   
/* 1D80C 8084FA1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1D810 8084FA20 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
.L8084FA24:
/* 1D814 8084FA24 24E40838 */  addiu   $a0, $a3, 0x0838           ## $a0 = 00000838
/* 1D818 8084FA28 3C054040 */  lui     $a1, 0x4040                ## $a1 = 40400000
/* 1D81C 8084FA2C 4608003C */  c.lt.s  $f0, $f8                   
/* 1D820 8084FA30 00000000 */  nop
/* 1D824 8084FA34 45020004 */  bc1fl   .L8084FA48                 
/* 1D828 8084FA38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1D82C 8084FA3C 0C01DE80 */  jal     Math_ApproxF
              
/* 1D830 8084FA40 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 1D834 8084FA44 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8084FA48:
/* 1D838 8084FA48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1D83C 8084FA4C 03E00008 */  jr      $ra                        
/* 1D840 8084FA50 00000000 */  nop
