glabel func_80ACFDAC
/* 0090C 80ACFDAC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x10)
/* 00910 80ACFDB0 8DCEE670 */  lw      $t6, %lo(gSaveContext+0x10)($t6)
/* 00914 80ACFDB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00918 80ACFDB8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0091C 80ACFDBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00920 80ACFDC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00924 80ACFDC4 15C0000B */  bne     $t6, $zero, .L80ACFDF4     
/* 00928 80ACFDC8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0092C 80ACFDCC C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00930 80ACFDD0 C48602DC */  lwc1    $f6, 0x02DC($a0)           ## 000002DC
/* 00934 80ACFDD4 4606203C */  c.lt.s  $f4, $f6                   
/* 00938 80ACFDD8 00000000 */  nop
/* 0093C 80ACFDDC 45020030 */  bc1fl   .L80ACFEA0                 
/* 00940 80ACFDE0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00944 80ACFDE4 0C2B40B9 */  jal     func_80AD02E4              
/* 00948 80ACFDE8 00000000 */  nop
/* 0094C 80ACFDEC 1000002C */  beq     $zero, $zero, .L80ACFEA0   
/* 00950 80ACFDF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFDF4:
/* 00954 80ACFDF4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00958 80ACFDF8 260400BC */  addiu   $a0, $s0, 0x00BC           ## $a0 = 000000BC
/* 0095C 80ACFDFC 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 00960 80ACFE00 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00964 80ACFE04 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 00968 80ACFE08 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0096C 80ACFE0C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00970 80ACFE10 8E0202D4 */  lw      $v0, 0x02D4($s0)           ## 000002D4
/* 00974 80ACFE14 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00978 80ACFE18 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 0097C 80ACFE1C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00980 80ACFE20 10400017 */  beq     $v0, $zero, .L80ACFE80     
/* 00984 80ACFE24 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00988 80ACFE28 31F90004 */  andi    $t9, $t7, 0x0004           ## $t9 = 00000004
/* 0098C 80ACFE2C 1320000B */  beq     $t9, $zero, .L80ACFE5C     
/* 00990 80ACFE30 AE0F02D4 */  sw      $t7, 0x02D4($s0)           ## 000002D4
/* 00994 80ACFE34 3C053E51 */  lui     $a1, 0x3E51                ## $a1 = 3E510000
/* 00998 80ACFE38 44061000 */  mfc1    $a2, $f2                   
/* 0099C 80ACFE3C 3C073E70 */  lui     $a3, 0x3E70                ## $a3 = 3E700000
/* 009A0 80ACFE40 34E7A3D7 */  ori     $a3, $a3, 0xA3D7           ## $a3 = 3E70A3D7
/* 009A4 80ACFE44 34A5EB85 */  ori     $a1, $a1, 0xEB85           ## $a1 = 3E51EB85
/* 009A8 80ACFE48 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 009AC 80ACFE4C 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 009B0 80ACFE50 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 009B4 80ACFE54 10000012 */  beq     $zero, $zero, .L80ACFEA0   
/* 009B8 80ACFE58 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFE5C:
/* 009BC 80ACFE5C 44050000 */  mfc1    $a1, $f0                   
/* 009C0 80ACFE60 44061000 */  mfc1    $a2, $f2                   
/* 009C4 80ACFE64 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 009C8 80ACFE68 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 009CC 80ACFE6C 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 009D0 80ACFE70 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 009D4 80ACFE74 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 009D8 80ACFE78 10000009 */  beq     $zero, $zero, .L80ACFEA0   
/* 009DC 80ACFE7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFE80:
/* 009E0 80ACFE80 92080311 */  lbu     $t0, 0x0311($s0)           ## 00000311
/* 009E4 80ACFE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009E8 80ACFE88 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 009EC 80ACFE8C 51200004 */  beql    $t1, $zero, .L80ACFEA0     
/* 009F0 80ACFE90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 009F4 80ACFE94 0C2B3E48 */  jal     func_80ACF920              
/* 009F8 80ACFE98 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 009FC 80ACFE9C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ACFEA0:
/* 00A00 80ACFEA0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A04 80ACFEA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A08 80ACFEA8 03E00008 */  jr      $ra                        
/* 00A0C 80ACFEAC 00000000 */  nop
