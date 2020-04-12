.late_rodata
glabel D_808AF9FC
    .float 0.05

glabel D_808AFA00
 .word 0x3E333333

.text
glabel func_808AEBC0
/* 00440 808AEBC0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00444 808AEBC4 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00448 808AEBC8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0044C 808AEBCC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00450 808AEBD0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00454 808AEBD4 01E57821 */  addu    $t7, $t7, $a1              
/* 00458 808AEBD8 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 0045C 808AEBDC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00460 808AEBE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00464 808AEBE4 01E1001B */  divu    $zero, $t7, $at            
/* 00468 808AEBE8 0000C010 */  mfhi    $t8                        
/* 0046C 808AEBEC 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00470 808AEBF0 5700002C */  bnel    $t8, $zero, .L808AECA4     
/* 00474 808AEBF4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00478 808AEBF8 44816000 */  mtc1    $at, $f12                  ## $f12 = 160.00
/* 0047C 808AEBFC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00480 808AEC00 00000000 */  nop
/* 00484 808AEC04 E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00488 808AEC08 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0048C 808AEC0C 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 00490 808AEC10 00042400 */  sll     $a0, $a0, 16               
/* 00494 808AEC14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00498 808AEC18 00042403 */  sra     $a0, $a0, 16               
/* 0049C 808AEC1C C7A40030 */  lwc1    $f4, 0x0030($sp)           
/* 004A0 808AEC20 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 004A4 808AEC24 46040182 */  mul.s   $f6, $f0, $f4              
/* 004A8 808AEC28 46083280 */  add.s   $f10, $f6, $f8             
/* 004AC 808AEC2C E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 004B0 808AEC30 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 004B4 808AEC34 E7B00038 */  swc1    $f16, 0x0038($sp)          
/* 004B8 808AEC38 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 004BC 808AEC3C 24844000 */  addiu   $a0, $a0, 0x4000           ## $a0 = 00004000
/* 004C0 808AEC40 00042400 */  sll     $a0, $a0, 16               
/* 004C4 808AEC44 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 004C8 808AEC48 00042403 */  sra     $a0, $a0, 16               
/* 004CC 808AEC4C C7B20030 */  lwc1    $f18, 0x0030($sp)          
/* 004D0 808AEC50 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 004D4 808AEC54 46120102 */  mul.s   $f4, $f0, $f18             
/* 004D8 808AEC58 46062200 */  add.s   $f8, $f4, $f6              
/* 004DC 808AEC5C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004E0 808AEC60 E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 004E4 808AEC64 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 004E8 808AEC68 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 004EC 808AEC6C 3C01808B */  lui     $at, %hi(D_808AF9FC)       ## $at = 808B0000
/* 004F0 808AEC70 C430F9FC */  lwc1    $f16, %lo(D_808AF9FC)($at) 
/* 004F4 808AEC74 3C01808B */  lui     $at, %hi(D_808AFA00)       ## $at = 808B0000
/* 004F8 808AEC78 C424FA00 */  lwc1    $f4, %lo(D_808AFA00)($at)  
/* 004FC 808AEC7C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00500 808AEC80 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00504 808AEC84 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 00508 808AEC88 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 0050C 808AEC8C 3C07428C */  lui     $a3, 0x428C                ## $a3 = 428C0000
/* 00510 808AEC90 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00514 808AEC94 46049180 */  add.s   $f6, $f18, $f4             
/* 00518 808AEC98 0C00A4F9 */  jal     func_800293E4              
/* 0051C 808AEC9C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00520 808AECA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808AECA4:
/* 00524 808AECA4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00528 808AECA8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0052C 808AECAC 03E00008 */  jr      $ra                        
/* 00530 808AECB0 00000000 */  nop
