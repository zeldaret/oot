.late_rodata
glabel D_80AD2920
 .word 0x3F866666

.text
glabel func_80AD0118
/* 00C78 80AD0118 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00C7C 80AD011C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00C80 80AD0120 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00C84 80AD0124 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00C88 80AD0128 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C8C 80AD012C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00C90 80AD0130 44050000 */  mfc1    $a1, $f0                   
/* 00C94 80AD0134 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 00C98 80AD0138 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C9C 80AD013C 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 00CA0 80AD0140 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00CA4 80AD0144 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00CA8 80AD0148 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 00CAC 80AD014C 24050FA0 */  addiu   $a1, $zero, 0x0FA0         ## $a1 = 00000FA0
/* 00CB0 80AD0150 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00CB4 80AD0154 24070320 */  addiu   $a3, $zero, 0x0320         ## $a3 = 00000320
/* 00CB8 80AD0158 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00CBC 80AD015C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00CC0 80AD0160 14400041 */  bne     $v0, $zero, .L80AD0268     
/* 00CC4 80AD0164 00000000 */  nop
/* 00CC8 80AD0168 860202FC */  lh      $v0, 0x02FC($s0)           ## 000002FC
/* 00CCC 80AD016C 10400011 */  beq     $v0, $zero, .L80AD01B4     
/* 00CD0 80AD0170 00000000 */  nop
/* 00CD4 80AD0174 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00CD8 80AD0178 C6060168 */  lwc1    $f6, 0x0168($s0)           ## 00000168
/* 00CDC 80AD017C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CE0 80AD0180 A60E02FC */  sh      $t6, 0x02FC($s0)           ## 000002FC
/* 00CE4 80AD0184 46062032 */  c.eq.s  $f4, $f6                   
/* 00CE8 80AD0188 00000000 */  nop
/* 00CEC 80AD018C 45000009 */  bc1f    .L80AD01B4                 
/* 00CF0 80AD0190 00000000 */  nop
/* 00CF4 80AD0194 860F02FC */  lh      $t7, 0x02FC($s0)           ## 000002FC
/* 00CF8 80AD0198 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00CFC 80AD019C 15E00005 */  bne     $t7, $zero, .L80AD01B4     
/* 00D00 80AD01A0 00000000 */  nop
/* 00D04 80AD01A4 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 00D08 80AD01A8 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 00D0C 80AD01AC A61802FC */  sh      $t8, 0x02FC($s0)           ## 000002FC
/* 00D10 80AD01B0 E6080168 */  swc1    $f8, 0x0168($s0)           ## 00000168
.L80AD01B4:
/* 00D14 80AD01B4 0C02927F */  jal     SkelAnime_Update
              
/* 00D18 80AD01B8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D1C 80AD01BC 14400005 */  bne     $v0, $zero, .L80AD01D4     
/* 00D20 80AD01C0 00000000 */  nop
/* 00D24 80AD01C4 861902FC */  lh      $t9, 0x02FC($s0)           ## 000002FC
/* 00D28 80AD01C8 3C0140D0 */  lui     $at, 0x40D0                ## $at = 40D00000
/* 00D2C 80AD01CC 57200006 */  bnel    $t9, $zero, .L80AD01E8     
/* 00D30 80AD01D0 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L80AD01D4:
/* 00D34 80AD01D4 0C2B43CE */  jal     func_80AD0F38              
/* 00D38 80AD01D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D3C 80AD01DC 10000007 */  beq     $zero, $zero, .L80AD01FC   
/* 00D40 80AD01E0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00D44 80AD01E4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L80AD01E8:
/* 00D48 80AD01E8 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.00
/* 00D4C 80AD01EC 00000000 */  nop
/* 00D50 80AD01F0 46105480 */  add.s   $f18, $f10, $f16           
/* 00D54 80AD01F4 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00D58 80AD01F8 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
.L80AD01FC:
/* 00D5C 80AD01FC C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 00D60 80AD0200 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00D64 80AD0204 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 00D68 80AD0208 46062201 */  sub.s   $f8, $f4, $f6              
/* 00D6C 80AD020C 460A403C */  c.lt.s  $f8, $f10                  
/* 00D70 80AD0210 00000000 */  nop
/* 00D74 80AD0214 45000014 */  bc1f    .L80AD0268                 
/* 00D78 80AD0218 00000000 */  nop
/* 00D7C 80AD021C 8E090024 */  lw      $t1, 0x0024($s0)           ## 00000024
/* 00D80 80AD0220 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 00D84 80AD0224 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 00D88 80AD0228 ACA90000 */  sw      $t1, 0x0000($a1)           ## FFFFFFF4
/* 00D8C 80AD022C 8E080028 */  lw      $t0, 0x0028($s0)           ## 00000028
/* 00D90 80AD0230 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 00D94 80AD0234 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00D98 80AD0238 ACA80004 */  sw      $t0, 0x0004($a1)           ## FFFFFFF8
/* 00D9C 80AD023C 8E09002C */  lw      $t1, 0x002C($s0)           ## 0000002C
/* 00DA0 80AD0240 3C0642B4 */  lui     $a2, 0x42B4                ## $a2 = 42B40000
/* 00DA4 80AD0244 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00DA8 80AD0248 ACA90008 */  sw      $t1, 0x0008($a1)           ## FFFFFFFC
/* 00DAC 80AD024C C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 00DB0 80AD0250 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00DB4 80AD0254 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00DB8 80AD0258 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00DBC 80AD025C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00DC0 80AD0260 0C00CD20 */  jal     func_80033480              
/* 00DC4 80AD0264 E7B00038 */  swc1    $f16, 0x0038($sp)          
.L80AD0268:
/* 00DC8 80AD0268 3C0180AD */  lui     $at, %hi(D_80AD2920)       ## $at = 80AD0000
/* 00DCC 80AD026C C4322920 */  lwc1    $f18, %lo(D_80AD2920)($at) 
/* 00DD0 80AD0270 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00DD4 80AD0274 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00DD8 80AD0278 240D0002 */  addiu   $t5, $zero, 0x0002         ## $t5 = 00000002
/* 00DDC 80AD027C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00DE0 80AD0280 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00DE4 80AD0284 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00DE8 80AD0288 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00DEC 80AD028C 3C074296 */  lui     $a3, 0x4296                ## $a3 = 42960000
/* 00DF0 80AD0290 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00DF4 80AD0294 0C2B3DE2 */  jal     func_80ACF788              
/* 00DF8 80AD0298 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 00DFC 80AD029C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00E00 80AD02A0 3C053D99 */  lui     $a1, 0x3D99                ## $a1 = 3D990000
/* 00E04 80AD02A4 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 00E08 80AD02A8 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 00E0C 80AD02AC 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3D99999A
/* 00E10 80AD02B0 260402EC */  addiu   $a0, $s0, 0x02EC           ## $a0 = 000002EC
/* 00E14 80AD02B4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E18 80AD02B8 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00E1C 80AD02BC E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00E20 80AD02C0 860E02F2 */  lh      $t6, 0x02F2($s0)           ## 000002F2
/* 00E24 80AD02C4 860F02F0 */  lh      $t7, 0x02F0($s0)           ## 000002F0
/* 00E28 80AD02C8 01CFC021 */  addu    $t8, $t6, $t7              
/* 00E2C 80AD02CC A61802F2 */  sh      $t8, 0x02F2($s0)           ## 000002F2
/* 00E30 80AD02D0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00E34 80AD02D4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00E38 80AD02D8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00E3C 80AD02DC 03E00008 */  jr      $ra                        
/* 00E40 80AD02E0 00000000 */  nop
