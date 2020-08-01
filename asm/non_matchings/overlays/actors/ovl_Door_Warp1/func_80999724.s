.late_rodata
glabel D_8099C794
    .float 0.01

glabel D_8099C798
    .float 0.01

.text
glabel func_80999724
/* 00FA4 80999724 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00FA8 80999728 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FAC 8099972C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00FB0 80999730 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00FB4 80999734 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FB8 80999738 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FBC 8099973C 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
/* 00FC0 80999740 3C01809A */  lui     $at, %hi(D_8099C794)       ## $at = 809A0000
/* 00FC4 80999744 C424C794 */  lwc1    $f4, %lo(D_8099C794)($at)  
/* 00FC8 80999748 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00FCC 8099974C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00FD0 80999750 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 00FD4 80999754 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 00FD8 80999758 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 00FDC 8099975C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00FE0 80999760 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00FE4 80999764 3C01809A */  lui     $at, %hi(D_8099C798)       ## $at = 809A0000
/* 00FE8 80999768 C426C798 */  lwc1    $f6, %lo(D_8099C798)($at)  
/* 00FEC 8099976C 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00FF0 80999770 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00FF4 80999774 260401A4 */  addiu   $a0, $s0, 0x01A4           ## $a0 = 000001A4
/* 00FF8 80999778 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 00FFC 8099977C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01000 80999780 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01004 80999784 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01008 80999788 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0100C 8099978C 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
/* 01010 80999790 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01014 80999794 50620030 */  beql    $v1, $v0, .L80999858       
/* 01018 80999798 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 0101C 8099979C 1041002D */  beq     $v0, $at, .L80999854       
/* 01020 809997A0 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01024 809997A4 1041002B */  beq     $v0, $at, .L80999854       
/* 01028 809997A8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0102C 809997AC 5041002A */  beql    $v0, $at, .L80999858       
/* 01030 809997B0 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 01034 809997B4 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
/* 01038 809997B8 28410064 */  slti    $at, $v0, 0x0064           
/* 0103C 809997BC 10200002 */  beq     $at, $zero, .L809997C8     
/* 01040 809997C0 244E0002 */  addiu   $t6, $v0, 0x0002           ## $t6 = 00000002
/* 01044 809997C4 A60E01AC */  sh      $t6, 0x01AC($s0)           ## 000001AC
.L809997C8:
/* 01048 809997C8 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
/* 0104C 809997CC 28410078 */  slti    $at, $v0, 0x0078           
/* 01050 809997D0 10200002 */  beq     $at, $zero, .L809997DC     
/* 01054 809997D4 244F0004 */  addiu   $t7, $v0, 0x0004           ## $t7 = 00000004
/* 01058 809997D8 A60F01AE */  sh      $t7, 0x01AE($s0)           ## 000001AE
.L809997DC:
/* 0105C 809997DC 860201B0 */  lh      $v0, 0x01B0($s0)           ## 000001B0
/* 01060 809997E0 284100E6 */  slti    $at, $v0, 0x00E6           
/* 01064 809997E4 10200003 */  beq     $at, $zero, .L809997F4     
/* 01068 809997E8 24580004 */  addiu   $t8, $v0, 0x0004           ## $t8 = 00000004
/* 0106C 809997EC 10000028 */  beq     $zero, $zero, .L80999890   
/* 01070 809997F0 A61801B0 */  sh      $t8, 0x01B0($s0)           ## 000001B0
.L809997F4:
/* 01074 809997F4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01078 809997F8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0107C 809997FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01080 80999800 14410005 */  bne     $v0, $at, .L80999818       
/* 01084 80999804 3C05809A */  lui     $a1, %hi(func_80999E64)    ## $a1 = 809A0000
/* 01088 80999808 0C2661E0 */  jal     func_80998780              
/* 0108C 8099980C 24A59E64 */  addiu   $a1, $a1, %lo(func_80999E64) ## $a1 = 80999E64
/* 01090 80999810 10000020 */  beq     $zero, $zero, .L80999894   
/* 01094 80999814 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80999818:
/* 01098 80999818 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0109C 8099981C 10410008 */  beq     $v0, $at, .L80999840       
/* 010A0 80999820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010A4 80999824 10620006 */  beq     $v1, $v0, .L80999840       
/* 010A8 80999828 3C05809A */  lui     $a1, %hi(func_809999A0)    ## $a1 = 809A0000
/* 010AC 8099982C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010B0 80999830 0C2661E0 */  jal     func_80998780              
/* 010B4 80999834 24A599A0 */  addiu   $a1, $a1, %lo(func_809999A0) ## $a1 = 809999A0
/* 010B8 80999838 10000016 */  beq     $zero, $zero, .L80999894   
/* 010BC 8099983C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80999840:
/* 010C0 80999840 3C05809A */  lui     $a1, %hi(func_809998A4)    ## $a1 = 809A0000
/* 010C4 80999844 0C2661E0 */  jal     func_80998780              
/* 010C8 80999848 24A598A4 */  addiu   $a1, $a1, %lo(func_809998A4) ## $a1 = 809998A4
/* 010CC 8099984C 10000011 */  beq     $zero, $zero, .L80999894   
/* 010D0 80999850 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80999854:
/* 010D4 80999854 860201AE */  lh      $v0, 0x01AE($s0)           ## 000001AE
.L80999858:
/* 010D8 80999858 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010DC 8099985C 3C05809A */  lui     $a1, %hi(func_809998A4)    ## $a1 = 809A0000
/* 010E0 80999860 2841FFCE */  slti    $at, $v0, 0xFFCE           
/* 010E4 80999864 10200002 */  beq     $at, $zero, .L80999870     
/* 010E8 80999868 24590004 */  addiu   $t9, $v0, 0x0004           ## $t9 = 00000004
/* 010EC 8099986C A61901AE */  sh      $t9, 0x01AE($s0)           ## 000001AE
.L80999870:
/* 010F0 80999870 860201B0 */  lh      $v0, 0x01B0($s0)           ## 000001B0
/* 010F4 80999874 28410046 */  slti    $at, $v0, 0x0046           
/* 010F8 80999878 10200003 */  beq     $at, $zero, .L80999888     
/* 010FC 8099987C 24480004 */  addiu   $t0, $v0, 0x0004           ## $t0 = 00000004
/* 01100 80999880 10000003 */  beq     $zero, $zero, .L80999890   
/* 01104 80999884 A60801B0 */  sh      $t0, 0x01B0($s0)           ## 000001B0
.L80999888:
/* 01108 80999888 0C2661E0 */  jal     func_80998780              
/* 0110C 8099988C 24A598A4 */  addiu   $a1, $a1, %lo(func_809998A4) ## $a1 = 809998A4
.L80999890:
/* 01110 80999890 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80999894:
/* 01114 80999894 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01118 80999898 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0111C 8099989C 03E00008 */  jr      $ra                        
/* 01120 809998A0 00000000 */  nop
