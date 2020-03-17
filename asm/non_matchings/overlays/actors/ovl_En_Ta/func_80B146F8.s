glabel func_80B146F8
/* 00C58 80B146F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C5C 80B146FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C60 80B14700 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C64 80B14704 0C00BC65 */  jal     func_8002F194              
/* 00C68 80B14708 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C6C 80B1470C 10400006 */  beq     $v0, $zero, .L80B14728     
/* 00C70 80B14710 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C74 80B14714 3C0580B1 */  lui     $a1, %hi(func_80B143D4)    ## $a1 = 80B10000
/* 00C78 80B14718 3C0680B1 */  lui     $a2, %hi(func_80B167FC)    ## $a2 = 80B10000
/* 00C7C 80B1471C 24C667FC */  addiu   $a2, $a2, %lo(func_80B167FC) ## $a2 = 80B167FC
/* 00C80 80B14720 0C2C4EA8 */  jal     func_80B13AA0              
/* 00C84 80B14724 24A543D4 */  addiu   $a1, $a1, %lo(func_80B143D4) ## $a1 = 80B143D4
.L80B14728:
/* 00C88 80B14728 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00C8C 80B1472C 240E204B */  addiu   $t6, $zero, 0x204B         ## $t6 = 0000204B
/* 00C90 80B14730 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 00C94 80B14734 A5EE010E */  sh      $t6, 0x010E($t7)           ## 0000010E
/* 00C98 80B14738 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00C9C 80B1473C 0C00BCB3 */  jal     func_8002F2CC              
/* 00CA0 80B14740 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CA4 80B14744 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CA8 80B14748 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CAC 80B1474C 03E00008 */  jr      $ra                        
/* 00CB0 80B14750 00000000 */  nop


