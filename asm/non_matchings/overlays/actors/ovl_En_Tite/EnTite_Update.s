glabel EnTite_Update
/* 02314 80B1AD94 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02318 80B1AD98 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0231C 80B1AD9C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02320 80B1ADA0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02324 80B1ADA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02328 80B1ADA8 0C2C6AEF */  jal     func_80B1ABBC              
/* 0232C 80B1ADAC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02330 80B1ADB0 920E00B1 */  lbu     $t6, 0x00B1($s0)           ## 000000B1
/* 02334 80B1ADB4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 02338 80B1ADB8 51C100D4 */  beql    $t6, $at, .L80B1B10C       
/* 0233C 80B1ADBC 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 02340 80B1ADC0 8E1902C0 */  lw      $t9, 0x02C0($s0)           ## 000002C0
/* 02344 80B1ADC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02348 80B1ADC8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0234C 80B1ADCC 0320F809 */  jalr    $ra, $t9                   
/* 02350 80B1ADD0 00000000 */  nop
/* 02354 80B1ADD4 0C00B638 */  jal     Actor_MoveForward
              
/* 02358 80B1ADD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0235C 80B1ADDC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02360 80B1ADE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 02364 80B1ADE4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02368 80B1ADE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0236C 80B1ADEC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 02370 80B1ADF0 8E0F02DC */  lw      $t7, 0x02DC($s0)           ## 000002DC
/* 02374 80B1ADF4 3C0641C8 */  lui     $a2, 0x41C8                ## $a2 = 41C80000
/* 02378 80B1ADF8 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 0237C 80B1ADFC 0C00B92D */  jal     func_8002E4B4              
/* 02380 80B1AE00 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 02384 80B1AE04 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 02388 80B1AE08 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0238C 80B1AE0C 57010096 */  bnel    $t8, $at, .L80B1B068       
/* 02390 80B1AE10 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 02394 80B1AE14 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 02398 80B1AE18 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0239C 80B1AE1C 31090020 */  andi    $t1, $t0, 0x0020           ## $t1 = 00000000
/* 023A0 80B1AE20 51200091 */  beql    $t1, $zero, .L80B1B068     
/* 023A4 80B1AE24 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 023A8 80B1AE28 8E0A0078 */  lw      $t2, 0x0078($s0)           ## 00000078
/* 023AC 80B1AE2C 02215821 */  addu    $t3, $s1, $at              
/* 023B0 80B1AE30 AFAB0030 */  sw      $t3, 0x0030($sp)           
/* 023B4 80B1AE34 AFAA003C */  sw      $t2, 0x003C($sp)           
/* 023B8 80B1AE38 8D6D1DE4 */  lw      $t5, 0x1DE4($t3)           ## 00001DE4
/* 023BC 80B1AE3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 023C0 80B1AE40 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 023C4 80B1AE44 31AE0007 */  andi    $t6, $t5, 0x0007           ## $t6 = 00000000
/* 023C8 80B1AE48 11C00008 */  beq     $t6, $zero, .L80B1AE6C     
/* 023CC 80B1AE4C 27B90034 */  addiu   $t9, $sp, 0x0034           ## $t9 = FFFFFFEC
/* 023D0 80B1AE50 C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 023D4 80B1AE54 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 023D8 80B1AE58 00000000 */  nop
/* 023DC 80B1AE5C 4608303C */  c.lt.s  $f6, $f8                   
/* 023E0 80B1AE60 00000000 */  nop
/* 023E4 80B1AE64 45020015 */  bc1fl   .L80B1AEBC                 
/* 023E8 80B1AE68 8FB80030 */  lw      $t8, 0x0030($sp)           
.L80B1AE6C:
/* 023EC 80B1AE6C 8E060360 */  lw      $a2, 0x0360($s0)           ## 00000360
/* 023F0 80B1AE70 8E070368 */  lw      $a3, 0x0368($s0)           ## 00000368
/* 023F4 80B1AE74 27AF0038 */  addiu   $t7, $sp, 0x0038           ## $t7 = FFFFFFF0
/* 023F8 80B1AE78 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 023FC 80B1AE7C 0C010891 */  jal     WaterBox_GetSurfaceImpl              
/* 02400 80B1AE80 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 02404 80B1AE84 1040000C */  beq     $v0, $zero, .L80B1AEB8     
/* 02408 80B1AE88 C7AA0034 */  lwc1    $f10, 0x0034($sp)          
/* 0240C 80B1AE8C C6100364 */  lwc1    $f16, 0x0364($s0)          ## 00000364
/* 02410 80B1AE90 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02414 80B1AE94 26050360 */  addiu   $a1, $s0, 0x0360           ## $a1 = 00000360
/* 02418 80B1AE98 460A803E */  c.le.s  $f16, $f10                 
/* 0241C 80B1AE9C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02420 80B1AEA0 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 02424 80B1AEA4 45020005 */  bc1fl   .L80B1AEBC                 
/* 02428 80B1AEA8 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 0242C 80B1AEAC E60A0364 */  swc1    $f10, 0x0364($s0)          ## 00000364
/* 02430 80B1AEB0 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 02434 80B1AEB4 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B1AEB8:
/* 02438 80B1AEB8 8FB80030 */  lw      $t8, 0x0030($sp)           
.L80B1AEBC:
/* 0243C 80B1AEBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02440 80B1AEC0 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 02444 80B1AEC4 8F081DE4 */  lw      $t0, 0x1DE4($t8)           ## 00001DE4
/* 02448 80B1AEC8 27AB0034 */  addiu   $t3, $sp, 0x0034           ## $t3 = FFFFFFEC
/* 0244C 80B1AECC 27AC0038 */  addiu   $t4, $sp, 0x0038           ## $t4 = FFFFFFF0
/* 02450 80B1AED0 25090002 */  addiu   $t1, $t0, 0x0002           ## $t1 = 00000002
/* 02454 80B1AED4 312A0007 */  andi    $t2, $t1, 0x0007           ## $t2 = 00000002
/* 02458 80B1AED8 51400009 */  beql    $t2, $zero, .L80B1AF00     
/* 0245C 80B1AEDC 8E06036C */  lw      $a2, 0x036C($s0)           ## 0000036C
/* 02460 80B1AEE0 C6120060 */  lwc1    $f18, 0x0060($s0)          ## 00000060
/* 02464 80B1AEE4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02468 80B1AEE8 00000000 */  nop
/* 0246C 80B1AEEC 4604903C */  c.lt.s  $f18, $f4                  
/* 02470 80B1AEF0 00000000 */  nop
/* 02474 80B1AEF4 45020014 */  bc1fl   .L80B1AF48                 
/* 02478 80B1AEF8 8FAD0030 */  lw      $t5, 0x0030($sp)           
/* 0247C 80B1AEFC 8E06036C */  lw      $a2, 0x036C($s0)           ## 0000036C
.L80B1AF00:
/* 02480 80B1AF00 8E070374 */  lw      $a3, 0x0374($s0)           ## 00000374
/* 02484 80B1AF04 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 02488 80B1AF08 0C010891 */  jal     WaterBox_GetSurfaceImpl              
/* 0248C 80B1AF0C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 02490 80B1AF10 1040000C */  beq     $v0, $zero, .L80B1AF44     
/* 02494 80B1AF14 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 02498 80B1AF18 C6080370 */  lwc1    $f8, 0x0370($s0)           ## 00000370
/* 0249C 80B1AF1C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 024A0 80B1AF20 2605036C */  addiu   $a1, $s0, 0x036C           ## $a1 = 0000036C
/* 024A4 80B1AF24 4606403E */  c.le.s  $f8, $f6                   
/* 024A8 80B1AF28 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 024AC 80B1AF2C 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 024B0 80B1AF30 45020005 */  bc1fl   .L80B1AF48                 
/* 024B4 80B1AF34 8FAD0030 */  lw      $t5, 0x0030($sp)           
/* 024B8 80B1AF38 E6060370 */  swc1    $f6, 0x0370($s0)           ## 00000370
/* 024BC 80B1AF3C 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 024C0 80B1AF40 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B1AF44:
/* 024C4 80B1AF44 8FAD0030 */  lw      $t5, 0x0030($sp)           
.L80B1AF48:
/* 024C8 80B1AF48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 024CC 80B1AF4C 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 024D0 80B1AF50 8DAE1DE4 */  lw      $t6, 0x1DE4($t5)           ## 00001DE4
/* 024D4 80B1AF54 27B80034 */  addiu   $t8, $sp, 0x0034           ## $t8 = FFFFFFEC
/* 024D8 80B1AF58 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFF0
/* 024DC 80B1AF5C 25D90004 */  addiu   $t9, $t6, 0x0004           ## $t9 = 00000004
/* 024E0 80B1AF60 332F0007 */  andi    $t7, $t9, 0x0007           ## $t7 = 00000004
/* 024E4 80B1AF64 51E00009 */  beql    $t7, $zero, .L80B1AF8C     
/* 024E8 80B1AF68 8E060348 */  lw      $a2, 0x0348($s0)           ## 00000348
/* 024EC 80B1AF6C C6100060 */  lwc1    $f16, 0x0060($s0)          ## 00000060
/* 024F0 80B1AF70 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 024F4 80B1AF74 00000000 */  nop
/* 024F8 80B1AF78 460A803C */  c.lt.s  $f16, $f10                 
/* 024FC 80B1AF7C 00000000 */  nop
/* 02500 80B1AF80 45020014 */  bc1fl   .L80B1AFD4                 
/* 02504 80B1AF84 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 02508 80B1AF88 8E060348 */  lw      $a2, 0x0348($s0)           ## 00000348
.L80B1AF8C:
/* 0250C 80B1AF8C 8E070350 */  lw      $a3, 0x0350($s0)           ## 00000350
/* 02510 80B1AF90 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 02514 80B1AF94 0C010891 */  jal     WaterBox_GetSurfaceImpl              
/* 02518 80B1AF98 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0251C 80B1AF9C 1040000C */  beq     $v0, $zero, .L80B1AFD0     
/* 02520 80B1AFA0 C7B20034 */  lwc1    $f18, 0x0034($sp)          
/* 02524 80B1AFA4 C604034C */  lwc1    $f4, 0x034C($s0)           ## 0000034C
/* 02528 80B1AFA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0252C 80B1AFAC 26050348 */  addiu   $a1, $s0, 0x0348           ## $a1 = 00000348
/* 02530 80B1AFB0 4612203E */  c.le.s  $f4, $f18                  
/* 02534 80B1AFB4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02538 80B1AFB8 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 0253C 80B1AFBC 45020005 */  bc1fl   .L80B1AFD4                 
/* 02540 80B1AFC0 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 02544 80B1AFC4 E612034C */  swc1    $f18, 0x034C($s0)          ## 0000034C
/* 02548 80B1AFC8 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 0254C 80B1AFCC AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B1AFD0:
/* 02550 80B1AFD0 8FA90030 */  lw      $t1, 0x0030($sp)           
.L80B1AFD4:
/* 02554 80B1AFD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02558 80B1AFD8 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 0255C 80B1AFDC 8D2A1DE4 */  lw      $t2, 0x1DE4($t1)           ## 00001DE4
/* 02560 80B1AFE0 27AD0034 */  addiu   $t5, $sp, 0x0034           ## $t5 = FFFFFFEC
/* 02564 80B1AFE4 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 02568 80B1AFE8 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 0256C 80B1AFEC 316C0007 */  andi    $t4, $t3, 0x0007           ## $t4 = 00000001
/* 02570 80B1AFF0 51800009 */  beql    $t4, $zero, .L80B1B018     
/* 02574 80B1AFF4 8E060354 */  lw      $a2, 0x0354($s0)           ## 00000354
/* 02578 80B1AFF8 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 0257C 80B1AFFC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02580 80B1B000 00000000 */  nop
/* 02584 80B1B004 4606403C */  c.lt.s  $f8, $f6                   
/* 02588 80B1B008 00000000 */  nop
/* 0258C 80B1B00C 45020014 */  bc1fl   .L80B1B060                 
/* 02590 80B1B010 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 02594 80B1B014 8E060354 */  lw      $a2, 0x0354($s0)           ## 00000354
.L80B1B018:
/* 02598 80B1B018 8E07035C */  lw      $a3, 0x035C($s0)           ## 0000035C
/* 0259C 80B1B01C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 025A0 80B1B020 0C010891 */  jal     WaterBox_GetSurfaceImpl              
/* 025A4 80B1B024 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 025A8 80B1B028 1040000C */  beq     $v0, $zero, .L80B1B05C     
/* 025AC 80B1B02C C7B00034 */  lwc1    $f16, 0x0034($sp)          
/* 025B0 80B1B030 C60A0358 */  lwc1    $f10, 0x0358($s0)          ## 00000358
/* 025B4 80B1B034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 025B8 80B1B038 26050354 */  addiu   $a1, $s0, 0x0354           ## $a1 = 00000354
/* 025BC 80B1B03C 4610503E */  c.le.s  $f10, $f16                 
/* 025C0 80B1B040 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 025C4 80B1B044 240700DC */  addiu   $a3, $zero, 0x00DC         ## $a3 = 000000DC
/* 025C8 80B1B048 45020005 */  bc1fl   .L80B1B060                 
/* 025CC 80B1B04C 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 025D0 80B1B050 E6100358 */  swc1    $f16, 0x0358($s0)          ## 00000358
/* 025D4 80B1B054 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 025D8 80B1B058 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B1B05C:
/* 025DC 80B1B05C 8FB9003C */  lw      $t9, 0x003C($sp)           
.L80B1B060:
/* 025E0 80B1B060 AE190078 */  sw      $t9, 0x0078($s0)           ## 00000078
/* 025E4 80B1B064 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
.L80B1B068:
/* 025E8 80B1B068 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 025EC 80B1B06C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 025F0 80B1B070 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 025F4 80B1B074 1300000D */  beq     $t8, $zero, .L80B1B0AC     
/* 025F8 80B1B078 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 025FC 80B1B07C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02600 80B1B080 860500B6 */  lh      $a1, 0x00B6($s0)           ## 000000B6
/* 02604 80B1B084 0C00D66E */  jal     func_800359B8              
/* 02608 80B1B088 260600B4 */  addiu   $a2, $s0, 0x00B4           ## $a2 = 000000B4
/* 0260C 80B1B08C 920802BD */  lbu     $t0, 0x02BD($s0)           ## 000002BD
/* 02610 80B1B090 29010002 */  slti    $at, $t0, 0x0002           
/* 02614 80B1B094 5420001D */  bnel    $at, $zero, .L80B1B10C     
/* 02618 80B1B098 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 0261C 80B1B09C 860900B8 */  lh      $t1, 0x00B8($s0)           ## 000000B8
/* 02620 80B1B0A0 252A7FFF */  addiu   $t2, $t1, 0x7FFF           ## $t2 = 00007FFF
/* 02624 80B1B0A4 10000018 */  beq     $zero, $zero, .L80B1B108   
/* 02628 80B1B0A8 A60A00B8 */  sh      $t2, 0x00B8($s0)           ## 000000B8
.L80B1B0AC:
/* 0262C 80B1B0AC 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 02630 80B1B0B0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02634 80B1B0B4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02638 80B1B0B8 920B02BD */  lbu     $t3, 0x02BD($s0)           ## 000002BD
/* 0263C 80B1B0BC 260400B8 */  addiu   $a0, $s0, 0x00B8           ## $a0 = 000000B8
/* 02640 80B1B0C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02644 80B1B0C4 29610002 */  slti    $at, $t3, 0x0002           
/* 02648 80B1B0C8 1020000F */  beq     $at, $zero, .L80B1B108     
/* 0264C 80B1B0CC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02650 80B1B0D0 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 02654 80B1B0D4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02658 80B1B0D8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0265C 80B1B0DC C60000BC */  lwc1    $f0, 0x00BC($s0)           ## 000000BC
/* 02660 80B1B0E0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02664 80B1B0E4 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 02668 80B1B0E8 4600203C */  c.lt.s  $f4, $f0                   
/* 0266C 80B1B0EC 00000000 */  nop
/* 02670 80B1B0F0 45020006 */  bc1fl   .L80B1B10C                 
/* 02674 80B1B0F4 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 02678 80B1B0F8 44819000 */  mtc1    $at, $f18                  ## $f18 = 400.00
/* 0267C 80B1B0FC 00000000 */  nop
/* 02680 80B1B100 46120201 */  sub.s   $f8, $f0, $f18             
/* 02684 80B1B104 E60800BC */  swc1    $f8, 0x00BC($s0)           ## 000000BC
.L80B1B108:
/* 02688 80B1B108 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
.L80B1B10C:
/* 0268C 80B1B10C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02690 80B1B110 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 02694 80B1B114 AE0C003C */  sw      $t4, 0x003C($s0)           ## 0000003C
/* 02698 80B1B118 C606003C */  lwc1    $f6, 0x003C($s0)           ## 0000003C
/* 0269C 80B1B11C 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 026A0 80B1B120 AE0D0038 */  sw      $t5, 0x0038($s0)           ## 00000038
/* 026A4 80B1B124 8E0D002C */  lw      $t5, 0x002C($s0)           ## 0000002C
/* 026A8 80B1B128 460A3400 */  add.s   $f16, $f6, $f10            
/* 026AC 80B1B12C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 026B0 80B1B130 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 026B4 80B1B134 02212821 */  addu    $a1, $s1, $at              
/* 026B8 80B1B138 E610003C */  swc1    $f16, 0x003C($s0)          ## 0000003C
/* 026BC 80B1B13C 260602E8 */  addiu   $a2, $s0, 0x02E8           ## $a2 = 000002E8
/* 026C0 80B1B140 AE0D0040 */  sw      $t5, 0x0040($s0)           ## 00000040
/* 026C4 80B1B144 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 026C8 80B1B148 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 026CC 80B1B14C 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 026D0 80B1B150 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 026D4 80B1B154 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 026D8 80B1B158 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 026DC 80B1B15C 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 026E0 80B1B160 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 026E4 80B1B164 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 026E8 80B1B168 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 026EC 80B1B16C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 026F0 80B1B170 03E00008 */  jr      $ra                        
/* 026F4 80B1B174 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
