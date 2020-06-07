.rdata
glabel D_80AFE0E0
    .asciz "../z_en_skb.c"
    .balign 4

glabel D_80AFE0F0
    .asciz "../z_en_skb.c"
    .balign 4

.text
glabel func_80AFDD30
/* 01390 80AFDD30 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01394 80AFDD34 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01398 80AFDD38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0139C 80AFDD3C AFA40048 */  sw      $a0, 0x0048($sp)           
/* 013A0 80AFDD40 14A1006B */  bne     $a1, $at, .L80AFDEF0       
/* 013A4 80AFDD44 AFA70054 */  sw      $a3, 0x0054($sp)           
/* 013A8 80AFDD48 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 013AC 80AFDD4C 240703CC */  addiu   $a3, $zero, 0x03CC         ## $a3 = 000003CC
/* 013B0 80AFDD50 91CF0283 */  lbu     $t7, 0x0283($t6)           ## 00000283
/* 013B4 80AFDD54 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 013B8 80AFDD58 17000063 */  bne     $t8, $zero, .L80AFDEE8     
/* 013BC 80AFDD5C 00000000 */  nop
/* 013C0 80AFDD60 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 013C4 80AFDD64 3C0680B0 */  lui     $a2, %hi(D_80AFE0E0)       ## $a2 = 80B00000
/* 013C8 80AFDD68 24C6E0E0 */  addiu   $a2, $a2, %lo(D_80AFE0E0)  ## $a2 = 80AFE0E0
/* 013CC 80AFDD6C 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 013D0 80AFDD70 0C031AB1 */  jal     Graph_OpenDisps              
/* 013D4 80AFDD74 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 013D8 80AFDD78 8FA20048 */  lw      $v0, 0x0048($sp)           
/* 013DC 80AFDD7C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 013E0 80AFDD80 00411021 */  addu    $v0, $v0, $at              
/* 013E4 80AFDD84 8C441DE4 */  lw      $a0, 0x1DE4($v0)           ## 00001DE4
/* 013E8 80AFDD88 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 013EC 80AFDD8C 00800821 */  addu    $at, $a0, $zero            
/* 013F0 80AFDD90 00042080 */  sll     $a0, $a0,  2               
/* 013F4 80AFDD94 00812023 */  subu    $a0, $a0, $at              
/* 013F8 80AFDD98 00042100 */  sll     $a0, $a0,  4               
/* 013FC 80AFDD9C 00812023 */  subu    $a0, $a0, $at              
/* 01400 80AFDDA0 000420C0 */  sll     $a0, $a0,  3               
/* 01404 80AFDDA4 00812023 */  subu    $a0, $a0, $at              
/* 01408 80AFDDA8 00042100 */  sll     $a0, $a0,  4               
/* 0140C 80AFDDAC 00042400 */  sll     $a0, $a0, 16               
/* 01410 80AFDDB0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01414 80AFDDB4 00042403 */  sra     $a0, $a0, 16               
/* 01418 80AFDDB8 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 0141C 80AFDDBC 44812000 */  mtc1    $at, $f4                   ## $f4 = 95.00
/* 01420 80AFDDC0 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 01424 80AFDDC4 24031770 */  addiu   $v1, $zero, 0x1770         ## $v1 = 00001770
/* 01428 80AFDDC8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0142C 80AFDDCC 4600320D */  trunc.w.s $f8, $f6                   
/* 01430 80AFDDD0 44094000 */  mfc1    $t1, $f8                   
/* 01434 80AFDDD4 00000000 */  nop
/* 01438 80AFDDD8 00095400 */  sll     $t2, $t1, 16               
/* 0143C 80AFDDDC 000A5C03 */  sra     $t3, $t2, 16               
/* 01440 80AFDDE0 05620012 */  bltzl   $t3, .L80AFDE2C            
/* 01444 80AFDDE4 8C4E1DE4 */  lw      $t6, 0x1DE4($v0)           ## 00001DE4
/* 01448 80AFDDE8 8C4C1DE4 */  lw      $t4, 0x1DE4($v0)           ## 00001DE4
/* 0144C 80AFDDEC 01830019 */  multu   $t4, $v1                   
/* 01450 80AFDDF0 00002012 */  mflo    $a0                        
/* 01454 80AFDDF4 00042400 */  sll     $a0, $a0, 16               
/* 01458 80AFDDF8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0145C 80AFDDFC 00042403 */  sra     $a0, $a0, 16               
/* 01460 80AFDE00 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 01464 80AFDE04 44815000 */  mtc1    $at, $f10                  ## $f10 = 95.00
/* 01468 80AFDE08 00000000 */  nop
/* 0146C 80AFDE0C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01470 80AFDE10 4600848D */  trunc.w.s $f18, $f16                 
/* 01474 80AFDE14 44059000 */  mfc1    $a1, $f18                  
/* 01478 80AFDE18 00000000 */  nop
/* 0147C 80AFDE1C 00052C00 */  sll     $a1, $a1, 16               
/* 01480 80AFDE20 10000011 */  beq     $zero, $zero, .L80AFDE68   
/* 01484 80AFDE24 00052C03 */  sra     $a1, $a1, 16               
/* 01488 80AFDE28 8C4E1DE4 */  lw      $t6, 0x1DE4($v0)           ## 00001DE4
.L80AFDE2C:
/* 0148C 80AFDE2C 01C30019 */  multu   $t6, $v1                   
/* 01490 80AFDE30 00002012 */  mflo    $a0                        
/* 01494 80AFDE34 00042400 */  sll     $a0, $a0, 16               
/* 01498 80AFDE38 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0149C 80AFDE3C 00042403 */  sra     $a0, $a0, 16               
/* 014A0 80AFDE40 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 014A4 80AFDE44 44812000 */  mtc1    $at, $f4                   ## $f4 = 95.00
/* 014A8 80AFDE48 00000000 */  nop
/* 014AC 80AFDE4C 46040182 */  mul.s   $f6, $f0, $f4              
/* 014B0 80AFDE50 4600320D */  trunc.w.s $f8, $f6                   
/* 014B4 80AFDE54 44054000 */  mfc1    $a1, $f8                   
/* 014B8 80AFDE58 00000000 */  nop
/* 014BC 80AFDE5C 00052C00 */  sll     $a1, $a1, 16               
/* 014C0 80AFDE60 00052C03 */  sra     $a1, $a1, 16               
/* 014C4 80AFDE64 00052823 */  subu    $a1, $zero, $a1            
.L80AFDE68:
/* 014C8 80AFDE68 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 014CC 80AFDE6C 24A200A0 */  addiu   $v0, $a1, 0x00A0           ## $v0 = 000000A0
/* 014D0 80AFDE70 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 014D4 80AFDE74 8CC302C0 */  lw      $v1, 0x02C0($a2)           ## 000002C0
/* 014D8 80AFDE78 00021400 */  sll     $v0, $v0, 16               
/* 014DC 80AFDE7C 00021403 */  sra     $v0, $v0, 16               
/* 014E0 80AFDE80 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 014E4 80AFDE84 ACD802C0 */  sw      $t8, 0x02C0($a2)           ## 000002C0
/* 014E8 80AFDE88 AC600004 */  sw      $zero, 0x0004($v1)         ## 00000004
/* 014EC 80AFDE8C AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 014F0 80AFDE90 8CC302C0 */  lw      $v1, 0x02C0($a2)           ## 000002C0
/* 014F4 80AFDE94 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 000000A0
/* 014F8 80AFDE98 00025600 */  sll     $t2, $v0, 24               
/* 014FC 80AFDE9C 00025C00 */  sll     $t3, $v0, 16               
/* 01500 80AFDEA0 014B6025 */  or      $t4, $t2, $t3              ## $t4 = 00000000
/* 01504 80AFDEA4 00026A00 */  sll     $t5, $v0,  8               
/* 01508 80AFDEA8 24680008 */  addiu   $t0, $v1, 0x0008           ## $t0 = 00000008
/* 0150C 80AFDEAC 018D7025 */  or      $t6, $t4, $t5              ## $t6 = 00000000
/* 01510 80AFDEB0 ACC802C0 */  sw      $t0, 0x02C0($a2)           ## 000002C0
/* 01514 80AFDEB4 35CF00FF */  ori     $t7, $t6, 0x00FF           ## $t7 = 000000FF
/* 01518 80AFDEB8 3C09FB00 */  lui     $t1, 0xFB00                ## $t1 = FB000000
/* 0151C 80AFDEBC AC690000 */  sw      $t1, 0x0000($v1)           ## 00000000
/* 01520 80AFDEC0 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 01524 80AFDEC4 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 01528 80AFDEC8 3C0680B0 */  lui     $a2, %hi(D_80AFE0F0)       ## $a2 = 80B00000
/* 0152C 80AFDECC 24C6E0F0 */  addiu   $a2, $a2, %lo(D_80AFE0F0)  ## $a2 = 80AFE0F0
/* 01530 80AFDED0 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFE0
/* 01534 80AFDED4 240703D2 */  addiu   $a3, $zero, 0x03D2         ## $a3 = 000003D2
/* 01538 80AFDED8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0153C 80AFDEDC 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000008
/* 01540 80AFDEE0 1000000C */  beq     $zero, $zero, .L80AFDF14   
/* 01544 80AFDEE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFDEE8:
/* 01548 80AFDEE8 10000009 */  beq     $zero, $zero, .L80AFDF10   
/* 0154C 80AFDEEC ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80AFDEF0:
/* 01550 80AFDEF0 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01554 80AFDEF4 14A10006 */  bne     $a1, $at, .L80AFDF10       
/* 01558 80AFDEF8 8FB9005C */  lw      $t9, 0x005C($sp)           
/* 0155C 80AFDEFC 93280283 */  lbu     $t0, 0x0283($t9)           ## 00000283
/* 01560 80AFDF00 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 01564 80AFDF04 51200003 */  beql    $t1, $zero, .L80AFDF14     
/* 01568 80AFDF08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0156C 80AFDF0C ACC00000 */  sw      $zero, 0x0000($a2)         ## 00000000
.L80AFDF10:
/* 01570 80AFDF10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFDF14:
/* 01574 80AFDF14 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01578 80AFDF18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0157C 80AFDF1C 03E00008 */  jr      $ra                        
/* 01580 80AFDF20 00000000 */  nop
