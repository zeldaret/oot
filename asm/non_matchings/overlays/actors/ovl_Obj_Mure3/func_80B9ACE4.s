glabel func_80B9ACE4
/* 00314 80B9ACE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00318 80B9ACE8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0031C 80B9ACEC AFB50028 */  sw      $s5, 0x0028($sp)           
/* 00320 80B9ACF0 AFB40024 */  sw      $s4, 0x0024($sp)           
/* 00324 80B9ACF4 AFB30020 */  sw      $s3, 0x0020($sp)           
/* 00328 80B9ACF8 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 0032C 80B9ACFC AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00330 80B9AD00 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00334 80B9AD04 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00338 80B9AD08 3C1480BA */  lui     $s4, %hi(D_80B9B0C0)       ## $s4 = 80BA0000
/* 0033C 80B9AD0C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00340 80B9AD10 000E7B43 */  sra     $t7, $t6, 13               
/* 00344 80B9AD14 31F80007 */  andi    $t8, $t7, 0x0007           ## $t8 = 00000000
/* 00348 80B9AD18 0018C840 */  sll     $t9, $t8,  1               
/* 0034C 80B9AD1C 0299A021 */  addu    $s4, $s4, $t9              
/* 00350 80B9AD20 8694B0C0 */  lh      $s4, %lo(D_80B9B0C0)($s4)  
/* 00354 80B9AD24 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00358 80B9AD28 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0035C 80B9AD2C 1A80001E */  blez    $s4, .L80B9ADA8            
/* 00360 80B9AD30 24910150 */  addiu   $s1, $a0, 0x0150           ## $s1 = 00000150
.L80B9AD34:
/* 00364 80B9AD34 9648016C */  lhu     $t0, 0x016C($s2)           ## 0000016C
/* 00368 80B9AD38 02209825 */  or      $s3, $s1, $zero            ## $s3 = 00000150
/* 0036C 80B9AD3C 02084807 */  srav    $t1, $t0, $s0              
/* 00370 80B9AD40 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00374 80B9AD44 55400015 */  bnel    $t2, $zero, .L80B9AD9C     
/* 00378 80B9AD48 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0037C 80B9AD4C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000150
/* 00380 80B9AD50 50800012 */  beql    $a0, $zero, .L80B9AD9C     
/* 00384 80B9AD54 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000002
/* 00388 80B9AD58 0C00BD04 */  jal     func_8002F410              
/* 0038C 80B9AD5C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 00390 80B9AD60 54400006 */  bnel    $v0, $zero, .L80B9AD7C     
/* 00394 80B9AD64 964C016C */  lhu     $t4, 0x016C($s2)           ## 0000016C
/* 00398 80B9AD68 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000150
/* 0039C 80B9AD6C 8C8B0130 */  lw      $t3, 0x0130($a0)           ## 00000130
/* 003A0 80B9AD70 15600007 */  bne     $t3, $zero, .L80B9AD90     
/* 003A4 80B9AD74 00000000 */  nop
/* 003A8 80B9AD78 964C016C */  lhu     $t4, 0x016C($s2)           ## 0000016C
.L80B9AD7C:
/* 003AC 80B9AD7C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 003B0 80B9AD80 020D7004 */  sllv    $t6, $t5, $s0              
/* 003B4 80B9AD84 018E7825 */  or      $t7, $t4, $t6              ## $t7 = 00000000
/* 003B8 80B9AD88 10000003 */  beq     $zero, $zero, .L80B9AD98   
/* 003BC 80B9AD8C A64F016C */  sh      $t7, 0x016C($s2)           ## 0000016C
.L80B9AD90:
/* 003C0 80B9AD90 0C00B55C */  jal     Actor_Kill
              
/* 003C4 80B9AD94 00000000 */  nop
.L80B9AD98:
/* 003C8 80B9AD98 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000003
.L80B9AD9C:
/* 003CC 80B9AD9C 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = 00000154
/* 003D0 80B9ADA0 1614FFE4 */  bne     $s0, $s4, .L80B9AD34       
/* 003D4 80B9ADA4 AE600000 */  sw      $zero, 0x0000($s3)         ## 00000150
.L80B9ADA8:
/* 003D8 80B9ADA8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 003DC 80B9ADAC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 003E0 80B9ADB0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 003E4 80B9ADB4 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 003E8 80B9ADB8 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 003EC 80B9ADBC 8FB40024 */  lw      $s4, 0x0024($sp)           
/* 003F0 80B9ADC0 8FB50028 */  lw      $s5, 0x0028($sp)           
/* 003F4 80B9ADC4 03E00008 */  jr      $ra                        
/* 003F8 80B9ADC8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
