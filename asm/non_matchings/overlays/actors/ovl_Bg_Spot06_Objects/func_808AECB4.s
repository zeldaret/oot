glabel func_808AECB4
/* 00534 808AECB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00538 808AECB8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0053C 808AECBC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00540 808AECC0 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 00544 808AECC4 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00548 808AECC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0054C 808AECCC AFB30020 */  sw      $s3, 0x0020($sp)           
/* 00550 808AECD0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00554 808AECD4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00558 808AECD8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0055C 808AECDC 86250168 */  lh      $a1, 0x0168($s1)           ## 00000168
/* 00560 808AECE0 10400012 */  beq     $v0, $zero, .L808AED2C     
/* 00564 808AECE4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00568 808AECE8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 0056C 808AECEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00570 808AECF0 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00574 808AECF4 3C0F808B */  lui     $t7, %hi(func_808AED48)    ## $t7 = 808B0000
/* 00578 808AECF8 25EFED48 */  addiu   $t7, $t7, %lo(func_808AED48) ## $t7 = 808AED48
/* 0057C 808AECFC 46062200 */  add.s   $f8, $f4, $f6              
/* 00580 808AED00 A62E016A */  sh      $t6, 0x016A($s1)           ## 0000016A
/* 00584 808AED04 AE2F0164 */  sw      $t7, 0x0164($s1)           ## 00000164
/* 00588 808AED08 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0058C 808AED0C E6280028 */  swc1    $f8, 0x0028($s1)           ## 00000028
/* 00590 808AED10 2413000F */  addiu   $s3, $zero, 0x000F         ## $s3 = 0000000F
/* 00594 808AED14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L808AED18:
/* 00598 808AED18 0C22BAF0 */  jal     func_808AEBC0              
/* 0059C 808AED1C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 005A0 808AED20 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 005A4 808AED24 5613FFFC */  bnel    $s0, $s3, .L808AED18       
/* 005A8 808AED28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L808AED2C:
/* 005AC 808AED2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005B0 808AED30 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 005B4 808AED34 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 005B8 808AED38 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 005BC 808AED3C 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 005C0 808AED40 03E00008 */  jr      $ra                        
/* 005C4 808AED44 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


