.late_rodata
glabel D_80B0F20C
 .word 0x481C4000
glabel D_80B0F210
    .float 0.1

glabel D_80B0F214
 .word 0xBDCCCCCD

.text
glabel func_80B0C9F0
/* 00C40 80B0C9F0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C44 80B0C9F4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C48 80B0C9F8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00C4C 80B0C9FC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C50 80B0CA00 3C0180B1 */  lui     $at, %hi(D_80B0F20C)       ## $at = 80B10000
/* 00C54 80B0CA04 C426F20C */  lwc1    $f6, %lo(D_80B0F20C)($at)  
/* 00C58 80B0CA08 C484008C */  lwc1    $f4, 0x008C($a0)           ## 0000008C
/* 00C5C 80B0CA0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C60 80B0CA10 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00C64 80B0CA14 4606203C */  c.lt.s  $f4, $f6                   
/* 00C68 80B0CA18 00000000 */  nop
/* 00C6C 80B0CA1C 4502000D */  bc1fl   .L80B0CA54                 
/* 00C70 80B0CA20 860A0392 */  lh      $t2, 0x0392($s0)           ## 00000392
/* 00C74 80B0CA24 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00C78 80B0CA28 31CFE000 */  andi    $t7, $t6, 0xE000           ## $t7 = 00000000
/* 00C7C 80B0CA2C 000FC343 */  sra     $t8, $t7, 13               
/* 00C80 80B0CA30 57000008 */  bnel    $t8, $zero, .L80B0CA54     
/* 00C84 80B0CA34 860A0392 */  lh      $t2, 0x0392($s0)           ## 00000392
/* 00C88 80B0CA38 90A81C26 */  lbu     $t0, 0x1C26($a1)           ## 00001C26
/* 00C8C 80B0CA3C 51000005 */  beql    $t0, $zero, .L80B0CA54     
/* 00C90 80B0CA40 860A0392 */  lh      $t2, 0x0392($s0)           ## 00000392
/* 00C94 80B0CA44 908900AF */  lbu     $t1, 0x00AF($a0)           ## 000000AF
/* 00C98 80B0CA48 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00C9C 80B0CA4C A08900B0 */  sb      $t1, 0x00B0($a0)           ## 000000B0
/* 00CA0 80B0CA50 860A0392 */  lh      $t2, 0x0392($s0)           ## 00000392
.L80B0CA54:
/* 00CA4 80B0CA54 55400056 */  bnel    $t2, $zero, .L80B0CBB0     
/* 00CA8 80B0CA58 860A0390 */  lh      $t2, 0x0390($s0)           ## 00000390
/* 00CAC 80B0CA5C 920201A5 */  lbu     $v0, 0x01A5($s0)           ## 000001A5
/* 00CB0 80B0CA60 240D0010 */  addiu   $t5, $zero, 0x0010         ## $t5 = 00000010
/* 00CB4 80B0CA64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB8 80B0CA68 304B0002 */  andi    $t3, $v0, 0x0002           ## $t3 = 00000000
/* 00CBC 80B0CA6C 15600003 */  bne     $t3, $zero, .L80B0CA7C     
/* 00CC0 80B0CA70 304CFFFD */  andi    $t4, $v0, 0xFFFD           ## $t4 = 00000000
/* 00CC4 80B0CA74 5060004E */  beql    $v1, $zero, .L80B0CBB0     
/* 00CC8 80B0CA78 860A0390 */  lh      $t2, 0x0390($s0)           ## 00000390
.L80B0CA7C:
/* 00CCC 80B0CA7C A60D0392 */  sh      $t5, 0x0392($s0)           ## 00000392
/* 00CD0 80B0CA80 860E0392 */  lh      $t6, 0x0392($s0)           ## 00000392
/* 00CD4 80B0CA84 A20C01A5 */  sb      $t4, 0x01A5($s0)           ## 000001A5
/* 00CD8 80B0CA88 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00CDC 80B0CA8C 240600C8 */  addiu   $a2, $zero, 0x00C8         ## $a2 = 000000C8
/* 00CE0 80B0CA90 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00CE4 80B0CA94 0C00D09B */  jal     func_8003426C              
/* 00CE8 80B0CA98 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00CEC 80B0CA9C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00CF0 80B0CAA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CF4 80B0CAA4 10400006 */  beq     $v0, $zero, .L80B0CAC0     
/* 00CF8 80B0CAA8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00CFC 80B0CAAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D00 80B0CAB0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D04 80B0CAB4 2405386B */  addiu   $a1, $zero, 0x386B         ## $a1 = 0000386B
/* 00D08 80B0CAB8 10000046 */  beq     $zero, $zero, .L80B0CBD4   
/* 00D0C 80B0CABC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B0CAC0:
/* 00D10 80B0CAC0 0C00CB1F */  jal     func_80032C7C              
/* 00D14 80B0CAC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D18 80B0CAC8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00D1C 80B0CACC 3C0E8003 */  lui     $t6, 0x8003                ## $t6 = 80030000
/* 00D20 80B0CAD0 25CEB5EC */  addiu   $t6, $t6, 0xB5EC           ## $t6 = 8002B5EC
/* 00D24 80B0CAD4 31F8E000 */  andi    $t8, $t7, 0xE000           ## $t8 = 00000000
/* 00D28 80B0CAD8 0018CB43 */  sra     $t9, $t8, 13               
/* 00D2C 80B0CADC 1320001D */  beq     $t9, $zero, .L80B0CB54     
/* 00D30 80B0CAE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D34 80B0CAE4 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00D38 80B0CAE8 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 00D3C 80B0CAEC 3C0180B1 */  lui     $at, %hi(D_80B0F214)       ## $at = 80B10000
/* 00D40 80B0CAF0 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
/* 00D44 80B0CAF4 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00D48 80B0CAF8 8D09009C */  lw      $t1, 0x009C($t0)           ## 0000009C
/* 00D4C 80B0CAFC 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00D50 80B0CB00 15400005 */  bne     $t2, $zero, .L80B0CB18     
/* 00D54 80B0CB04 00000000 */  nop
/* 00D58 80B0CB08 3C0180B1 */  lui     $at, %hi(D_80B0F210)       ## $at = 80B10000
/* 00D5C 80B0CB0C C42AF210 */  lwc1    $f10, %lo(D_80B0F210)($at) 
/* 00D60 80B0CB10 10000003 */  beq     $zero, $zero, .L80B0CB20   
/* 00D64 80B0CB14 E60A0420 */  swc1    $f10, 0x0420($s0)          ## 00000420
.L80B0CB18:
/* 00D68 80B0CB18 C430F214 */  lwc1    $f16, %lo(D_80B0F214)($at) 
/* 00D6C 80B0CB1C E6100420 */  swc1    $f16, 0x0420($s0)          ## 00000420
.L80B0CB20:
/* 00D70 80B0CB20 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00D74 80B0CB24 44812000 */  mtc1    $at, $f4                   ## $f4 = 4.00
/* 00D78 80B0CB28 C6120420 */  lwc1    $f18, 0x0420($s0)          ## 00000420
/* 00D7C 80B0CB2C 3C0D80B1 */  lui     $t5, %hi(func_80B0D878)    ## $t5 = 80B10000
/* 00D80 80B0CB30 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 00D84 80B0CB34 46049182 */  mul.s   $f6, $f18, $f4             
/* 00D88 80B0CB38 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00D8C 80B0CB3C 25ADD878 */  addiu   $t5, $t5, %lo(func_80B0D878) ## $t5 = 80B0D878
/* 00D90 80B0CB40 A60B0394 */  sh      $t3, 0x0394($s0)           ## 00000394
/* 00D94 80B0CB44 A60C038A */  sh      $t4, 0x038A($s0)           ## 0000038A
/* 00D98 80B0CB48 AE0D0190 */  sw      $t5, 0x0190($s0)           ## 00000190
/* 00D9C 80B0CB4C 10000013 */  beq     $zero, $zero, .L80B0CB9C   
/* 00DA0 80B0CB50 E6060420 */  swc1    $f6, 0x0420($s0)           ## 00000420
.L80B0CB54:
/* 00DA4 80B0CB54 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00DA8 80B0CB58 44814000 */  mtc1    $at, $f8                   ## $f8 = 16.00
/* 00DAC 80B0CB5C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00DB0 80B0CB60 44815000 */  mtc1    $at, $f10                  ## $f10 = -1.00
/* 00DB4 80B0CB64 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00DB8 80B0CB68 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00DBC 80B0CB6C 3C0980B1 */  lui     $t1, %hi(func_80B0DB00)    ## $t1 = 80B10000
/* 00DC0 80B0CB70 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00DC4 80B0CB74 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00DC8 80B0CB78 2529DB00 */  addiu   $t1, $t1, %lo(func_80B0DB00) ## $t1 = 80B0DB00
/* 00DCC 80B0CB7C 03214024 */  and     $t0, $t9, $at              
/* 00DD0 80B0CB80 AE0E00C0 */  sw      $t6, 0x00C0($s0)           ## 000000C0
/* 00DD4 80B0CB84 A20F00C8 */  sb      $t7, 0x00C8($s0)           ## 000000C8
/* 00DD8 80B0CB88 A618038A */  sh      $t8, 0x038A($s0)           ## 0000038A
/* 00DDC 80B0CB8C AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00DE0 80B0CB90 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 00DE4 80B0CB94 E60800C4 */  swc1    $f8, 0x00C4($s0)           ## 000000C4
/* 00DE8 80B0CB98 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
.L80B0CB9C:
/* 00DEC 80B0CB9C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DF0 80B0CBA0 24053885 */  addiu   $a1, $zero, 0x3885         ## $a1 = 00003885
/* 00DF4 80B0CBA4 1000000B */  beq     $zero, $zero, .L80B0CBD4   
/* 00DF8 80B0CBA8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00DFC 80B0CBAC 860A0390 */  lh      $t2, 0x0390($s0)           ## 00000390
.L80B0CBB0:
/* 00E00 80B0CBB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00E04 80B0CBB4 15400007 */  bne     $t2, $zero, .L80B0CBD4     
/* 00E08 80B0CBB8 00000000 */  nop
/* 00E0C 80B0CBBC 920B01A4 */  lbu     $t3, 0x01A4($s0)           ## 000001A4
/* 00E10 80B0CBC0 240D001E */  addiu   $t5, $zero, 0x001E         ## $t5 = 0000001E
/* 00E14 80B0CBC4 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 00E18 80B0CBC8 11800002 */  beq     $t4, $zero, .L80B0CBD4     
/* 00E1C 80B0CBCC 00000000 */  nop
/* 00E20 80B0CBD0 A60D0390 */  sh      $t5, 0x0390($s0)           ## 00000390
.L80B0CBD4:
/* 00E24 80B0CBD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E28 80B0CBD8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00E2C 80B0CBDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00E30 80B0CBE0 03E00008 */  jr      $ra                        
/* 00E34 80B0CBE4 00000000 */  nop
