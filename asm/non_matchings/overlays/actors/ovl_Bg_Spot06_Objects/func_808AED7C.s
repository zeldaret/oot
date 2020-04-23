glabel func_808AED7C
/* 005FC 808AED7C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00600 808AED80 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00604 808AED84 0C22BAF0 */  jal     func_808AEBC0              
/* 00608 808AED88 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0060C 808AED8C 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00610 808AED90 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00614 808AED94 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00618 808AED98 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 0061C 808AED9C 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00620 808AEDA0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00624 808AEDA4 46062200 */  add.s   $f8, $f4, $f6              
/* 00628 808AEDA8 24E40028 */  addiu   $a0, $a3, 0x0028           ## $a0 = 00000028
/* 0062C 808AEDAC 44054000 */  mfc1    $a1, $f8                   
/* 00630 808AEDB0 0C01DE80 */  jal     Math_ApproxF
              
/* 00634 808AEDB4 00000000 */  nop
/* 00638 808AEDB8 1040000A */  beq     $v0, $zero, .L808AEDE4     
/* 0063C 808AEDBC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00640 808AEDC0 3C0E808B */  lui     $t6, %hi(func_808AEE00)    ## $t6 = 808B0000
/* 00644 808AEDC4 25CEEE00 */  addiu   $t6, $t6, %lo(func_808AEE00) ## $t6 = 808AEE00
/* 00648 808AEDC8 ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
/* 0064C 808AEDCC A4E0016A */  sh      $zero, 0x016A($a3)         ## 0000016A
/* 00650 808AEDD0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00654 808AEDD4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00658 808AEDD8 24052837 */  addiu   $a1, $zero, 0x2837         ## $a1 = 00002837
/* 0065C 808AEDDC 10000005 */  beq     $zero, $zero, .L808AEDF4   
/* 00660 808AEDE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AEDE4:
/* 00664 808AEDE4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00668 808AEDE8 0C00BE5D */  jal     func_8002F974              
/* 0066C 808AEDEC 24052036 */  addiu   $a1, $zero, 0x2036         ## $a1 = 00002036
/* 00670 808AEDF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AEDF4:
/* 00674 808AEDF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00678 808AEDF8 03E00008 */  jr      $ra                        
/* 0067C 808AEDFC 00000000 */  nop
