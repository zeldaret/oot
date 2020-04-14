glabel func_80A7F0A8
/* 00C48 80A7F0A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00C4C 80A7F0AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00C50 80A7F0B0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00C54 80A7F0B4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00C58 80A7F0B8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00C5C 80A7F0BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C60 80A7F0C0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00C64 80A7F0C4 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00C68 80A7F0C8 0C00BD04 */  jal     func_8002F410              
/* 00C6C 80A7F0CC A7AF0032 */  sh      $t7, 0x0032($sp)           
/* 00C70 80A7F0D0 50400017 */  beql    $v0, $zero, .L80A7F130     
/* 00C74 80A7F0D4 920B0161 */  lbu     $t3, 0x0161($s0)           ## 00000161
/* 00C78 80A7F0D8 0C29FCBE */  jal     func_80A7F2F8              
/* 00C7C 80A7F0DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C80 80A7F0E0 87B80032 */  lh      $t8, 0x0032($sp)           
/* 00C84 80A7F0E4 3C0780A8 */  lui     $a3, %hi(D_80A873E0)       ## $a3 = 80A80000
/* 00C88 80A7F0E8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00C8C 80A7F0EC 0018C840 */  sll     $t9, $t8,  1               
/* 00C90 80A7F0F0 00F93821 */  addu    $a3, $a3, $t9              
/* 00C94 80A7F0F4 94E773E0 */  lhu     $a3, %lo(D_80A873E0)($a3)  
/* 00C98 80A7F0F8 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00C9C 80A7F0FC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00CA0 80A7F100 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00CA4 80A7F104 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00CA8 80A7F108 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CAC 80A7F10C 00084903 */  sra     $t1, $t0,  4               
/* 00CB0 80A7F110 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00CB4 80A7F114 51400074 */  beql    $t2, $zero, .L80A7F2E8     
/* 00CB8 80A7F118 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CBC 80A7F11C 0C29FB87 */  jal     func_80A7EE1C              
/* 00CC0 80A7F120 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00CC4 80A7F124 10000070 */  beq     $zero, $zero, .L80A7F2E8   
/* 00CC8 80A7F128 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00CCC 80A7F12C 920B0161 */  lbu     $t3, 0x0161($s0)           ## 00000161
.L80A7F130:
/* 00CD0 80A7F130 87AD0032 */  lh      $t5, 0x0032($sp)           
/* 00CD4 80A7F134 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 00CD8 80A7F138 5180002F */  beql    $t4, $zero, .L80A7F1F8     
/* 00CDC 80A7F13C 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00CE0 80A7F140 55A0002D */  bnel    $t5, $zero, .L80A7F1F8     
/* 00CE4 80A7F144 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00CE8 80A7F148 8E0E018C */  lw      $t6, 0x018C($s0)           ## 0000018C
/* 00CEC 80A7F14C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00CF0 80A7F150 34210048 */  ori     $at, $at, 0x0048           ## $at = 40000048
/* 00CF4 80A7F154 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 00CF8 80A7F158 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CFC 80A7F15C 01E1C024 */  and     $t8, $t7, $at              
/* 00D00 80A7F160 53000025 */  beql    $t8, $zero, .L80A7F1F8     
/* 00D04 80A7F164 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00D08 80A7F168 0C29FB3E */  jal     func_80A7ECF8              
/* 00D0C 80A7F16C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D10 80A7F170 87A20032 */  lh      $v0, 0x0032($sp)           
/* 00D14 80A7F174 3C0680A8 */  lui     $a2, %hi(D_80A84AD4)       ## $a2 = 80A80000
/* 00D18 80A7F178 3C0780A8 */  lui     $a3, %hi(D_80A7FA30)       ## $a3 = 80A80000
/* 00D1C 80A7F17C 0002C840 */  sll     $t9, $v0,  1               
/* 00D20 80A7F180 00F93821 */  addu    $a3, $a3, $t9              
/* 00D24 80A7F184 00C23021 */  addu    $a2, $a2, $v0              
/* 00D28 80A7F188 90C64AD4 */  lbu     $a2, %lo(D_80A84AD4)($a2)  
/* 00D2C 80A7F18C 94E7FA30 */  lhu     $a3, %lo(D_80A7FA30)($a3)  
/* 00D30 80A7F190 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00D34 80A7F194 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00D38 80A7F198 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00D3C 80A7F19C 87A20032 */  lh      $v0, 0x0032($sp)           
/* 00D40 80A7F1A0 3C1980A8 */  lui     $t9, %hi(D_80A87328)       ## $t9 = 80A80000
/* 00D44 80A7F1A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80A7F1A8 00021080 */  sll     $v0, $v0,  2               
/* 00D4C 80A7F1AC 0322C821 */  addu    $t9, $t9, $v0              
/* 00D50 80A7F1B0 8F397328 */  lw      $t9, %lo(D_80A87328)($t9)  
/* 00D54 80A7F1B4 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00D58 80A7F1B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D5C 80A7F1BC 0320F809 */  jalr    $ra, $t9                   
/* 00D60 80A7F1C0 00000000 */  nop
/* 00D64 80A7F1C4 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 00D68 80A7F1C8 3C1980A8 */  lui     $t9, %hi(D_80A87330)       ## $t9 = 80A80000
/* 00D6C 80A7F1CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D70 80A7F1D0 0322C821 */  addu    $t9, $t9, $v0              
/* 00D74 80A7F1D4 8F397330 */  lw      $t9, %lo(D_80A87330)($t9)  
/* 00D78 80A7F1D8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00D7C 80A7F1DC 0320F809 */  jalr    $ra, $t9                   
/* 00D80 80A7F1E0 00000000 */  nop
/* 00D84 80A7F1E4 0C00B55C */  jal     Actor_Kill
              
/* 00D88 80A7F1E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D8C 80A7F1EC 1000003E */  beq     $zero, $zero, .L80A7F2E8   
/* 00D90 80A7F1F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D94 80A7F1F4 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
.L80A7F1F8:
/* 00D98 80A7F1F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 600.00
/* 00D9C 80A7F1FC C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00DA0 80A7F200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA4 80A7F204 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00DA8 80A7F208 4606203C */  c.lt.s  $f4, $f6                   
/* 00DAC 80A7F20C 00000000 */  nop
/* 00DB0 80A7F210 45020035 */  bc1fl   .L80A7F2E8                 
/* 00DB4 80A7F214 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DB8 80A7F218 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00DBC 80A7F21C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00DC0 80A7F220 92080161 */  lbu     $t0, 0x0161($s0)           ## 00000161
/* 00DC4 80A7F224 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00DC8 80A7F228 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00DCC 80A7F22C 3109FFFD */  andi    $t1, $t0, 0xFFFD           ## $t1 = 00000000
/* 00DD0 80A7F230 A2090161 */  sb      $t1, 0x0161($s0)           ## 00000161
/* 00DD4 80A7F234 02212821 */  addu    $a1, $s1, $at              
/* 00DD8 80A7F238 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00DDC 80A7F23C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00DE0 80A7F240 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00DE4 80A7F244 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DE8 80A7F248 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00DEC 80A7F24C 44815000 */  mtc1    $at, $f10                  ## $f10 = 400.00
/* 00DF0 80A7F250 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00DF4 80A7F254 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00DF8 80A7F258 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00DFC 80A7F25C 460A403C */  c.lt.s  $f8, $f10                  
/* 00E00 80A7F260 00000000 */  nop
/* 00E04 80A7F264 45020020 */  bc1fl   .L80A7F2E8                 
/* 00E08 80A7F268 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E0C 80A7F26C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00E10 80A7F270 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00E14 80A7F274 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00E18 80A7F278 44819000 */  mtc1    $at, $f18                  ## $f18 = 90.00
/* 00E1C 80A7F27C C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00E20 80A7F280 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00E24 80A7F284 87AA0032 */  lh      $t2, 0x0032($sp)           
/* 00E28 80A7F288 4612803C */  c.lt.s  $f16, $f18                 
/* 00E2C 80A7F28C 00000000 */  nop
/* 00E30 80A7F290 45020015 */  bc1fl   .L80A7F2E8                 
/* 00E34 80A7F294 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00E38 80A7F298 1541000B */  bne     $t2, $at, .L80A7F2C8       
/* 00E3C 80A7F29C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E40 80A7F2A0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00E44 80A7F2A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00E48 80A7F2A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E4C 80A7F2AC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00E50 80A7F2B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E54 80A7F2B4 3C0742A0 */  lui     $a3, 0x42A0                ## $a3 = 42A00000
/* 00E58 80A7F2B8 0C00BD0D */  jal     func_8002F434              
/* 00E5C 80A7F2BC E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E60 80A7F2C0 10000009 */  beq     $zero, $zero, .L80A7F2E8   
/* 00E64 80A7F2C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7F2C8:
/* 00E68 80A7F2C8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00E6C 80A7F2CC 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00E70 80A7F2D0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00E74 80A7F2D4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00E78 80A7F2D8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 00E7C 80A7F2DC 0C00BD0D */  jal     func_8002F434              
/* 00E80 80A7F2E0 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00E84 80A7F2E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7F2E8:
/* 00E88 80A7F2E8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00E8C 80A7F2EC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00E90 80A7F2F0 03E00008 */  jr      $ra                        
/* 00E94 80A7F2F4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
