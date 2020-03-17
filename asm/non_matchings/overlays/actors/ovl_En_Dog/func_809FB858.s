glabel func_809FB858
/* 00888 809FB858 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0088C 809FB85C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00890 809FB860 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00894 809FB864 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00898 809FB868 0C27ECA7 */  jal     func_809FB29C              
/* 0089C 809FB86C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 008A0 809FB870 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008A4 809FB874 14460003 */  bne     $v0, $a2, .L809FB884       
/* 008A8 809FB878 3C0E80A0 */  lui     $t6, %hi(func_809FB940)    ## $t6 = 80A00000
/* 008AC 809FB87C 25CEB940 */  addiu   $t6, $t6, %lo(func_809FB940) ## $t6 = 809FB940
/* 008B0 809FB880 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L809FB884:
/* 008B4 809FB884 860201EC */  lh      $v0, 0x01EC($s0)           ## 000001EC
/* 008B8 809FB888 240400C8 */  addiu   $a0, $zero, 0x00C8         ## $a0 = 000000C8
/* 008BC 809FB88C 14400003 */  bne     $v0, $zero, .L809FB89C     
/* 008C0 809FB890 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 008C4 809FB894 10000003 */  beq     $zero, $zero, .L809FB8A4   
/* 008C8 809FB898 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809FB89C:
/* 008CC 809FB89C A60F01EC */  sh      $t7, 0x01EC($s0)           ## 000001EC
/* 008D0 809FB8A0 860301EC */  lh      $v1, 0x01EC($s0)           ## 000001EC
.L809FB8A4:
/* 008D4 809FB8A4 5460001A */  bnel    $v1, $zero, .L809FB910     
/* 008D8 809FB8A8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 008DC 809FB8AC 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 008E0 809FB8B0 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 008E4 809FB8B4 A60201EC */  sh      $v0, 0x01EC($s0)           ## 000001EC
/* 008E8 809FB8B8 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 008EC 809FB8BC 3C0C80A0 */  lui     $t4, %hi(func_809FB6C4)    ## $t4 = 80A00000
/* 008F0 809FB8C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 008F4 809FB8C4 8F19009C */  lw      $t9, 0x009C($t8)           ## 0000009C
/* 008F8 809FB8C8 258CB6C4 */  addiu   $t4, $t4, %lo(func_809FB6C4) ## $t4 = 809FB6C4
/* 008FC 809FB8CC 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00900 809FB8D0 51000004 */  beql    $t0, $zero, .L809FB8E4     
/* 00904 809FB8D4 A60601F0 */  sh      $a2, 0x01F0($s0)           ## 000001F0
/* 00908 809FB8D8 10000002 */  beq     $zero, $zero, .L809FB8E4   
/* 0090C 809FB8DC A60001F0 */  sh      $zero, 0x01F0($s0)         ## 000001F0
/* 00910 809FB8E0 A60601F0 */  sh      $a2, 0x01F0($s0)           ## 000001F0
.L809FB8E4:
/* 00914 809FB8E4 860901F0 */  lh      $t1, 0x01F0($s0)           ## 000001F0
/* 00918 809FB8E8 54C90008 */  bnel    $a2, $t1, .L809FB90C       
/* 0091C 809FB8EC AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 00920 809FB8F0 860A01EC */  lh      $t2, 0x01EC($s0)           ## 000001EC
/* 00924 809FB8F4 05410003 */  bgez    $t2, .L809FB904            
/* 00928 809FB8F8 000A5843 */  sra     $t3, $t2,  1               
/* 0092C 809FB8FC 25410001 */  addiu   $at, $t2, 0x0001           ## $at = 00000001
/* 00930 809FB900 00015843 */  sra     $t3, $at,  1               
.L809FB904:
/* 00934 809FB904 A60B01EC */  sh      $t3, 0x01EC($s0)           ## 000001EC
/* 00938 809FB908 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
.L809FB90C:
/* 0093C 809FB90C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L809FB910:
/* 00940 809FB910 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00944 809FB914 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00948 809FB918 44050000 */  mfc1    $a1, $f0                   
/* 0094C 809FB91C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00950 809FB920 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00954 809FB924 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00958 809FB928 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0095C 809FB92C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00960 809FB930 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00964 809FB934 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00968 809FB938 03E00008 */  jr      $ra                        
/* 0096C 809FB93C 00000000 */  nop


