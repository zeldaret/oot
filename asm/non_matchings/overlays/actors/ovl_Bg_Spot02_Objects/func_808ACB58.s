glabel func_808ACB58
/* 004F8 808ACB58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004FC 808ACB5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00500 808ACB60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00504 808ACB64 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00508 808ACB68 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0050C 808ACB6C 44813000 */  mtc1    $at, $f6                   ## $f6 = 255.00
/* 00510 808ACB70 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 00514 808ACB74 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00518 808ACB78 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 0051C 808ACB7C 46062200 */  add.s   $f8, $f4, $f6              
/* 00520 808ACB80 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00524 808ACB84 44054000 */  mfc1    $a1, $f8                   
/* 00528 808ACB88 0C01DE80 */  jal     Math_StepToF
              
/* 0052C 808ACB8C 00000000 */  nop
/* 00530 808ACB90 1040000A */  beq     $v0, $zero, .L808ACBBC     
/* 00534 808ACB94 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00538 808ACB98 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0053C 808ACB9C 24052893 */  addiu   $a1, $zero, 0x2893         ## $a1 = 00002893
/* 00540 808ACBA0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00544 808ACBA4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00548 808ACBA8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0054C 808ACBAC 3C0E808B */  lui     $t6, %hi(func_808AC8FC)    ## $t6 = 808B0000
/* 00550 808ACBB0 25CEC8FC */  addiu   $t6, $t6, %lo(func_808AC8FC) ## $t6 = 808AC8FC
/* 00554 808ACBB4 10000004 */  beq     $zero, $zero, .L808ACBC8   
/* 00558 808ACBB8 ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
.L808ACBBC:
/* 0055C 808ACBBC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00560 808ACBC0 0C00BE5D */  jal     func_8002F974              
/* 00564 808ACBC4 240500CB */  addiu   $a1, $zero, 0x00CB         ## $a1 = 000000CB
.L808ACBC8:
/* 00568 808ACBC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0056C 808ACBCC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00570 808ACBD0 03E00008 */  jr      $ra                        
/* 00574 808ACBD4 00000000 */  nop
