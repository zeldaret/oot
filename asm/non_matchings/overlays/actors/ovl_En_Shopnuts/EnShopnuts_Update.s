glabel EnShopnuts_Update
/* 00A04 80AFB124 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A08 80AFB128 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A0C 80AFB12C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00A10 80AFB130 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00A14 80AFB134 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A18 80AFB138 0C2BEC31 */  jal     func_80AFB0C4              
/* 00A1C 80AFB13C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A20 80AFB140 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 00A24 80AFB144 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A28 80AFB148 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A2C 80AFB14C 0320F809 */  jalr    $ra, $t9                   
/* 00A30 80AFB150 00000000 */  nop
/* 00A34 80AFB154 860E02B0 */  lh      $t6, 0x02B0($s0)           ## 000002B0
/* 00A38 80AFB158 860F02B2 */  lh      $t7, 0x02B2($s0)           ## 000002B2
/* 00A3C 80AFB15C 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00A40 80AFB160 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00A44 80AFB164 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00A48 80AFB168 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00A4C 80AFB16C 46802120 */  cvt.s.w $f4, $f4                   
/* 00A50 80AFB170 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A54 80AFB174 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A58 80AFB178 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 00A5C 80AFB17C 46803220 */  cvt.s.w $f8, $f6                   
/* 00A60 80AFB180 44072000 */  mfc1    $a3, $f4                   
/* 00A64 80AFB184 0C00B92D */  jal     func_8002E4B4              
/* 00A68 80AFB188 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00A6C 80AFB18C 92080281 */  lbu     $t0, 0x0281($s0)           ## 00000281
/* 00A70 80AFB190 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A74 80AFB194 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A78 80AFB198 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00A7C 80AFB19C 11200004 */  beq     $t1, $zero, .L80AFB1B0     
/* 00A80 80AFB1A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A84 80AFB1A4 02212821 */  addu    $a1, $s1, $at              
/* 00A88 80AFB1A8 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00A8C 80AFB1AC 26060270 */  addiu   $a2, $s0, 0x0270           ## $a2 = 00000270
.L80AFB1B0:
/* 00A90 80AFB1B0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A94 80AFB1B4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00A98 80AFB1B8 02212821 */  addu    $a1, $s1, $at              
/* 00A9C 80AFB1BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AA0 80AFB1C0 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 00AA4 80AFB1C4 26060270 */  addiu   $a2, $s0, 0x0270           ## $a2 = 00000270
/* 00AA8 80AFB1C8 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 00AAC 80AFB1CC 3C0A80B0 */  lui     $t2, %hi(func_80AFAA7C)    ## $t2 = 80B00000
/* 00AB0 80AFB1D0 254AAA7C */  addiu   $t2, $t2, %lo(func_80AFAA7C) ## $t2 = 80AFAA7C
/* 00AB4 80AFB1D4 15430006 */  bne     $t2, $v1, .L80AFB1F0       
/* 00AB8 80AFB1D8 3C0B80B0 */  lui     $t3, %hi(func_80AFAF64)    ## $t3 = 80B00000
/* 00ABC 80AFB1DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC0 80AFB1E0 0C00B56E */  jal     Actor_SetHeight
              
/* 00AC4 80AFB1E4 8E050164 */  lw      $a1, 0x0164($s0)           ## 00000164
/* 00AC8 80AFB1E8 10000018 */  beq     $zero, $zero, .L80AFB24C   
/* 00ACC 80AFB1EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFB1F0:
/* 00AD0 80AFB1F0 256BAF64 */  addiu   $t3, $t3, %lo(func_80AFAF64) ## $t3 = FFFFAF64
/* 00AD4 80AFB1F4 15630012 */  bne     $t3, $v1, .L80AFB240       
/* 00AD8 80AFB1F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ADC 80AFB1FC 3C040600 */  lui     $a0, %hi(D_0600039C)                ## $a0 = 06000000
/* 00AE0 80AFB200 0C028800 */  jal     Animation_GetLastFrame
              
/* 00AE4 80AFB204 2484039C */  addiu   $a0, $a0, %lo(D_0600039C)           ## $a0 = 0600039C
/* 00AE8 80AFB208 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00AEC 80AFB20C 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 00AF0 80AFB210 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
/* 00AF4 80AFB214 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00AF8 80AFB218 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AFC 80AFB21C 46005402 */  mul.s   $f16, $f10, $f0            
/* 00B00 80AFB220 46809120 */  cvt.s.w $f4, $f18                  
/* 00B04 80AFB224 46048183 */  div.s   $f6, $f16, $f4             
/* 00B08 80AFB228 46060201 */  sub.s   $f8, $f0, $f6              
/* 00B0C 80AFB22C 44054000 */  mfc1    $a1, $f8                   
/* 00B10 80AFB230 0C00B56E */  jal     Actor_SetHeight
              
/* 00B14 80AFB234 00000000 */  nop
/* 00B18 80AFB238 10000004 */  beq     $zero, $zero, .L80AFB24C   
/* 00B1C 80AFB23C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFB240:
/* 00B20 80AFB240 0C00B56E */  jal     Actor_SetHeight
              
/* 00B24 80AFB244 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 00B28 80AFB248 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFB24C:
/* 00B2C 80AFB24C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B30 80AFB250 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B34 80AFB254 03E00008 */  jr      $ra                        
/* 00B38 80AFB258 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
