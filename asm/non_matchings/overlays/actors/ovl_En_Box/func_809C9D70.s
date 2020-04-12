.late_rodata
glabel D_809CA8FC
 .word 0x387BA882

.text
glabel func_809C9D70
/* 00FB0 809C9D70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00FB4 809C9D74 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FB8 809C9D78 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00FBC 809C9D7C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00FC0 809C9D80 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00FC4 809C9D84 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 00FC8 809C9D88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FCC 809C9D8C 01C17824 */  and     $t7, $t6, $at              
/* 00FD0 809C9D90 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00FD4 809C9D94 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00FD8 809C9D98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00FDC 809C9D9C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00FE0 809C9DA0 1040001D */  beq     $v0, $zero, .L809C9E18     
/* 00FE4 809C9DA4 3C0541F0 */  lui     $a1, 0x41F0                ## $a1 = 41F00000
/* 00FE8 809C9DA8 860201F4 */  lh      $v0, 0x01F4($s0)           ## 000001F4
/* 00FEC 809C9DAC 1840000E */  blez    $v0, .L809C9DE8            
/* 00FF0 809C9DB0 2841FF89 */  slti    $at, $v0, 0xFF89           
/* 00FF4 809C9DB4 28410078 */  slti    $at, $v0, 0x0078           
/* 00FF8 809C9DB8 10200003 */  beq     $at, $zero, .L809C9DC8     
/* 00FFC 809C9DBC 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 01000 809C9DC0 10000048 */  beq     $zero, $zero, .L809C9EE4   
/* 01004 809C9DC4 A61801F4 */  sh      $t8, 0x01F4($s0)           ## 000001F4
.L809C9DC8:
/* 01008 809C9DC8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0100C 809C9DCC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 01010 809C9DD0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 01014 809C9DD4 44051000 */  mfc1    $a1, $f2                   
/* 01018 809C9DD8 0C01DE80 */  jal     Math_ApproxF
              
/* 0101C 809C9DDC 260401B0 */  addiu   $a0, $s0, 0x01B0           ## $a0 = 000001B0
/* 01020 809C9DE0 10000041 */  beq     $zero, $zero, .L809C9EE8   
/* 01024 809C9DE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809C9DE8:
/* 01028 809C9DE8 14200003 */  bne     $at, $zero, .L809C9DF8     
/* 0102C 809C9DEC 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01030 809C9DF0 1000003C */  beq     $zero, $zero, .L809C9EE4   
/* 01034 809C9DF4 A61901F4 */  sh      $t9, 0x01F4($s0)           ## 000001F4
.L809C9DF8:
/* 01038 809C9DF8 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 0103C 809C9DFC 3C063D4C */  lui     $a2, 0x3D4C                ## $a2 = 3D4C0000
/* 01040 809C9E00 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3D4CCCCD
/* 01044 809C9E04 44051000 */  mfc1    $a1, $f2                   
/* 01048 809C9E08 0C01DE80 */  jal     Math_ApproxF
              
/* 0104C 809C9E0C 260401B0 */  addiu   $a0, $s0, 0x01B0           ## $a0 = 000001B0
/* 01050 809C9E10 10000035 */  beq     $zero, $zero, .L809C9EE8   
/* 01054 809C9E14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809C9E18:
/* 01058 809C9E18 A7A0002E */  sh      $zero, 0x002E($sp)         
/* 0105C 809C9E1C 0C0295B2 */  jal     func_800A56C8              
/* 01060 809C9E20 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01064 809C9E24 10400004 */  beq     $v0, $zero, .L809C9E38     
/* 01068 809C9E28 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 0106C 809C9E2C 2404281F */  addiu   $a0, $zero, 0x281F         ## $a0 = 0000281F
/* 01070 809C9E30 10000006 */  beq     $zero, $zero, .L809C9E4C   
/* 01074 809C9E34 A7A4002E */  sh      $a0, 0x002E($sp)           
.L809C9E38:
/* 01078 809C9E38 0C0295B2 */  jal     func_800A56C8              
/* 0107C 809C9E3C 3C0542B4 */  lui     $a1, 0x42B4                ## $a1 = 42B40000
/* 01080 809C9E40 10400002 */  beq     $v0, $zero, .L809C9E4C     
/* 01084 809C9E44 24082820 */  addiu   $t0, $zero, 0x2820         ## $t0 = 00002820
/* 01088 809C9E48 A7A8002E */  sh      $t0, 0x002E($sp)           
.L809C9E4C:
/* 0108C 809C9E4C 97A4002E */  lhu     $a0, 0x002E($sp)           
/* 01090 809C9E50 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01094 809C9E54 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01098 809C9E58 10800007 */  beq     $a0, $zero, .L809C9E78     
/* 0109C 809C9E5C 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 010A0 809C9E60 3C098013 */  lui     $t1, 0x8013                ## $t1 = 80130000
/* 010A4 809C9E64 252933E8 */  addiu   $t1, $t1, 0x33E8           ## $t1 = 801333E8
/* 010A8 809C9E68 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 010AC 809C9E6C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 010B0 809C9E70 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 010B4 809C9E74 AFA70010 */  sw      $a3, 0x0010($sp)           
.L809C9E78:
/* 010B8 809C9E78 8E0A0184 */  lw      $t2, 0x0184($s0)           ## 00000184
/* 010BC 809C9E7C 240B7D00 */  addiu   $t3, $zero, 0x7D00         ## $t3 = 00007D00
/* 010C0 809C9E80 85420016 */  lh      $v0, 0x0016($t2)           ## 00000016
/* 010C4 809C9E84 18400017 */  blez    $v0, .L809C9EE4            
/* 010C8 809C9E88 01626023 */  subu    $t4, $t3, $v0              
/* 010CC 809C9E8C 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 010D0 809C9E90 3C01809D */  lui     $at, %hi(D_809CA8FC)       ## $at = 809D0000
/* 010D4 809C9E94 C428A8FC */  lwc1    $f8, %lo(D_809CA8FC)($at)  
/* 010D8 809C9E98 468021A0 */  cvt.s.w $f6, $f4                   
/* 010DC 809C9E9C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 010E0 809C9EA0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 010E4 809C9EA4 46083282 */  mul.s   $f10, $f6, $f8             
/* 010E8 809C9EA8 E60A01B0 */  swc1    $f10, 0x01B0($s0)          ## 000001B0
/* 010EC 809C9EAC C60001B0 */  lwc1    $f0, 0x01B0($s0)           ## 000001B0
/* 010F0 809C9EB0 4602003C */  c.lt.s  $f0, $f2                   
/* 010F4 809C9EB4 00000000 */  nop
/* 010F8 809C9EB8 45020004 */  bc1fl   .L809C9ECC                 
/* 010FC 809C9EBC 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 01100 809C9EC0 10000008 */  beq     $zero, $zero, .L809C9EE4   
/* 01104 809C9EC4 E60201B0 */  swc1    $f2, 0x01B0($s0)           ## 000001B0
/* 01108 809C9EC8 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
.L809C9ECC:
/* 0110C 809C9ECC 00000000 */  nop
/* 01110 809C9ED0 4600103C */  c.lt.s  $f2, $f0                   
/* 01114 809C9ED4 00000000 */  nop
/* 01118 809C9ED8 45020003 */  bc1fl   .L809C9EE8                 
/* 0111C 809C9EDC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01120 809C9EE0 E60201B0 */  swc1    $f2, 0x01B0($s0)           ## 000001B0
.L809C9EE4:
/* 01124 809C9EE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809C9EE8:
/* 01128 809C9EE8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0112C 809C9EEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01130 809C9EF0 03E00008 */  jr      $ra                        
/* 01134 809C9EF4 00000000 */  nop
