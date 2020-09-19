.rdata
glabel D_80B8E8E4
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E8F4
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E904
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E914
    .asciz "../z_mir_ray.c"
    .balign 4

.late_rodata
glabel D_80B8E93C
    .float 0.01

.text
glabel MirRay_Draw
/* 01094 80B8E0E4 27BDFD80 */  addiu   $sp, $sp, 0xFD80           ## $sp = FFFFFD80
/* 01098 80B8E0E8 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0109C 80B8E0EC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 010A0 80B8E0F0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 010A4 80B8E0F4 AFB40030 */  sw      $s4, 0x0030($sp)           
/* 010A8 80B8E0F8 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 010AC 80B8E0FC AFB20028 */  sw      $s2, 0x0028($sp)           
/* 010B0 80B8E100 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 010B4 80B8E104 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 010B8 80B8E108 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 010BC 80B8E10C 3C0E80B9 */  lui     $t6, %hi(D_80B8E670)       ## $t6 = 80B90000
/* 010C0 80B8E110 E494022C */  swc1    $f20, 0x022C($a0)          ## 0000022C
/* 010C4 80B8E114 91CEE670 */  lbu     $t6, %lo(D_80B8E670)($t6)  
/* 010C8 80B8E118 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 010CC 80B8E11C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 010D0 80B8E120 55C000B0 */  bnel    $t6, $zero, .L80B8E3E4     
/* 010D4 80B8E124 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 010D8 80B8E128 908F02AE */  lbu     $t7, 0x02AE($a0)           ## 000002AE
/* 010DC 80B8E12C 55E000AD */  bnel    $t7, $zero, .L80B8E3E4     
/* 010E0 80B8E130 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 010E4 80B8E134 0C023C2B */  jal     Player_HasMirrorShieldSetToDraw              
/* 010E8 80B8E138 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 010EC 80B8E13C 104000A8 */  beq     $v0, $zero, .L80B8E3E0     
/* 010F0 80B8E140 26040A20 */  addiu   $a0, $s0, 0x0A20           ## $a0 = 00000A20
/* 010F4 80B8E144 0C03424C */  jal     Matrix_Mult              
/* 010F8 80B8E148 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 010FC 80B8E14C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01100 80B8E150 0C2E35BC */  jal     func_80B8D6F0              
/* 01104 80B8E154 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01108 80B8E158 C624022C */  lwc1    $f4, 0x022C($s1)           ## 0000022C
/* 0110C 80B8E15C 3C0680B9 */  lui     $a2, %hi(D_80B8E8E4)       ## $a2 = 80B90000
/* 01110 80B8E160 24C6E8E4 */  addiu   $a2, $a2, %lo(D_80B8E8E4)  ## $a2 = 80B8E8E4
/* 01114 80B8E164 4614203E */  c.le.s  $f4, $f20                  
/* 01118 80B8E168 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFDE4
/* 0111C 80B8E16C 4503009D */  bc1tl   .L80B8E3E4                 
/* 01120 80B8E170 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01124 80B8E174 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 01128 80B8E178 240703C6 */  addiu   $a3, $zero, 0x03C6         ## $a3 = 000003C6
/* 0112C 80B8E17C 0C031AB1 */  jal     Graph_OpenDisps              
/* 01130 80B8E180 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 01134 80B8E184 0C024F61 */  jal     func_80093D84              
/* 01138 80B8E188 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 0113C 80B8E18C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01140 80B8E190 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 01144 80B8E194 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01148 80B8E198 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0114C 80B8E19C C626022C */  lwc1    $f6, 0x022C($s1)           ## 0000022C
/* 01150 80B8E1A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01154 80B8E1A4 46006386 */  mov.s   $f14, $f12                 
/* 01158 80B8E1A8 46083282 */  mul.s   $f10, $f6, $f8             
/* 0115C 80B8E1AC 44065000 */  mfc1    $a2, $f10                  
/* 01160 80B8E1B0 0C0342A3 */  jal     Matrix_Scale              
/* 01164 80B8E1B4 00000000 */  nop
/* 01168 80B8E1B8 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0116C 80B8E1BC 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 01170 80B8E1C0 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 01174 80B8E1C4 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01178 80B8E1C8 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 0117C 80B8E1CC 3C0580B9 */  lui     $a1, %hi(D_80B8E8F4)       ## $a1 = 80B90000
/* 01180 80B8E1D0 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01184 80B8E1D4 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 01188 80B8E1D8 24A5E8F4 */  addiu   $a1, $a1, %lo(D_80B8E8F4)  ## $a1 = 80B8E8F4
/* 0118C 80B8E1DC 240603CC */  addiu   $a2, $zero, 0x03CC         ## $a2 = 000003CC
/* 01190 80B8E1E0 0C0346A2 */  jal     Matrix_NewMtx              
/* 01194 80B8E1E4 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01198 80B8E1E8 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 0119C 80B8E1EC 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 011A0 80B8E1F0 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 011A4 80B8E1F4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 011A8 80B8E1F8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 011AC 80B8E1FC AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 011B0 80B8E200 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 011B4 80B8E204 C630022C */  lwc1    $f16, 0x022C($s1)          ## 0000022C
/* 011B8 80B8E208 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 011BC 80B8E20C 24019600 */  addiu   $at, $zero, 0x9600         ## $at = FFFF9600
/* 011C0 80B8E210 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 011C4 80B8E214 46128102 */  mul.s   $f4, $f16, $f18            
/* 011C8 80B8E218 27390C50 */  addiu   $t9, $t9, 0x0C50           ## $t9 = 06000C50
/* 011CC 80B8E21C 27B0007C */  addiu   $s0, $sp, 0x007C           ## $s0 = FFFFFDFC
/* 011D0 80B8E220 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 011D4 80B8E224 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFDFC
/* 011D8 80B8E228 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011DC 80B8E22C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 011E0 80B8E230 4600218D */  trunc.w.s $f6, $f4                   
/* 011E4 80B8E234 440C3000 */  mfc1    $t4, $f6                   
/* 011E8 80B8E238 00000000 */  nop
/* 011EC 80B8E23C 318D00FF */  andi    $t5, $t4, 0x00FF           ## $t5 = 00000000
/* 011F0 80B8E240 01A17025 */  or      $t6, $t5, $at              ## $t6 = FFFF9600
/* 011F4 80B8E244 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 011F8 80B8E248 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 011FC 80B8E24C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01200 80B8E250 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 01204 80B8E254 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01208 80B8E258 0C2E3628 */  jal     func_80B8D8A0              
/* 0120C 80B8E25C AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01210 80B8E260 0C2E369E */  jal     func_80B8DA78              
/* 01214 80B8E264 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFDFC
/* 01218 80B8E268 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0121C 80B8E26C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 01220 80B8E270 0C2E36DF */  jal     func_80B8DB7C              
/* 01224 80B8E274 02003025 */  or      $a2, $s0, $zero            ## $a2 = FFFFFDFC
/* 01228 80B8E278 8FA800C8 */  lw      $t0, 0x00C8($sp)           
/* 0122C 80B8E27C 27B000D0 */  addiu   $s0, $sp, 0x00D0           ## $s0 = FFFFFE50
/* 01230 80B8E280 27A30274 */  addiu   $v1, $sp, 0x0274           ## $v1 = FFFFFFF4
/* 01234 80B8E284 15000002 */  bne     $t0, $zero, .L80B8E290     
/* 01238 80B8E288 00000000 */  nop
/* 0123C 80B8E28C A3A000CC */  sb      $zero, 0x00CC($sp)         
.L80B8E290:
/* 01240 80B8E290 8E09004C */  lw      $t1, 0x004C($s0)           ## FFFFFE9C
.L80B8E294:
/* 01244 80B8E294 93AA00CC */  lbu     $t2, 0x00CC($sp)           
/* 01248 80B8E298 51200007 */  beql    $t1, $zero, .L80B8E2B8     
/* 0124C 80B8E29C 26100054 */  addiu   $s0, $s0, 0x0054           ## $s0 = FFFFFEA4
/* 01250 80B8E2A0 92020050 */  lbu     $v0, 0x0050($s0)           ## FFFFFEF4
/* 01254 80B8E2A4 0142082A */  slt     $at, $t2, $v0              
/* 01258 80B8E2A8 50200003 */  beql    $at, $zero, .L80B8E2B8     
/* 0125C 80B8E2AC 26100054 */  addiu   $s0, $s0, 0x0054           ## $s0 = FFFFFEF8
/* 01260 80B8E2B0 A3A200CC */  sb      $v0, 0x00CC($sp)           
/* 01264 80B8E2B4 26100054 */  addiu   $s0, $s0, 0x0054           ## $s0 = FFFFFF4C
.L80B8E2B8:
/* 01268 80B8E2B8 0203082B */  sltu    $at, $s0, $v1              
/* 0126C 80B8E2BC 5420FFF5 */  bnel    $at, $zero, .L80B8E294     
/* 01270 80B8E2C0 8E09004C */  lw      $t1, 0x004C($s0)           ## FFFFFF98
/* 01274 80B8E2C4 3C0180B9 */  lui     $at, %hi(D_80B8E93C)       ## $at = 80B90000
/* 01278 80B8E2C8 C434E93C */  lwc1    $f20, %lo(D_80B8E93C)($at) 
/* 0127C 80B8E2CC 27B0007C */  addiu   $s0, $sp, 0x007C           ## $s0 = FFFFFDFC
/* 01280 80B8E2D0 8E0B004C */  lw      $t3, 0x004C($s0)           ## FFFFFE48
.L80B8E2D4:
/* 01284 80B8E2D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01288 80B8E2D8 2611000C */  addiu   $s1, $s0, 0x000C           ## $s1 = FFFFFE08
/* 0128C 80B8E2DC 11600033 */  beq     $t3, $zero, .L80B8E3AC     
/* 01290 80B8E2E0 3C130600 */  lui     $s3, 0x0600                ## $s3 = 06000000
/* 01294 80B8E2E4 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## FFFFFDFC
/* 01298 80B8E2E8 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## FFFFFE00
/* 0129C 80B8E2EC 8E060008 */  lw      $a2, 0x0008($s0)           ## FFFFFE04
/* 012A0 80B8E2F0 0C034261 */  jal     Matrix_Translate              
/* 012A4 80B8E2F4 267300B0 */  addiu   $s3, $s3, 0x00B0           ## $s3 = 060000B0
/* 012A8 80B8E2F8 4406A000 */  mfc1    $a2, $f20                  
/* 012AC 80B8E2FC 4600A306 */  mov.s   $f12, $f20                 
/* 012B0 80B8E300 4600A386 */  mov.s   $f14, $f20                 
/* 012B4 80B8E304 0C0342A3 */  jal     Matrix_Scale              
/* 012B8 80B8E308 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012BC 80B8E30C 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFE08
/* 012C0 80B8E310 0C03424C */  jal     Matrix_Mult              
/* 012C4 80B8E314 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 012C8 80B8E318 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 012CC 80B8E31C 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 012D0 80B8E320 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 012D4 80B8E324 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 012D8 80B8E328 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 012DC 80B8E32C 3C0580B9 */  lui     $a1, %hi(D_80B8E904)       ## $a1 = 80B90000
/* 012E0 80B8E330 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 012E4 80B8E334 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 012E8 80B8E338 24A5E904 */  addiu   $a1, $a1, %lo(D_80B8E904)  ## $a1 = 80B8E904
/* 012EC 80B8E33C 240603EE */  addiu   $a2, $zero, 0x03EE         ## $a2 = 000003EE
/* 012F0 80B8E340 0C0346A2 */  jal     Matrix_NewMtx              
/* 012F4 80B8E344 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 012F8 80B8E348 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 012FC 80B8E34C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01300 80B8E350 3C0FE200 */  lui     $t7, 0xE200                ## $t7 = E2000000
/* 01304 80B8E354 3C18C810 */  lui     $t8, 0xC810                ## $t8 = C8100000
/* 01308 80B8E358 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0130C 80B8E35C AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 01310 80B8E360 37184DD8 */  ori     $t8, $t8, 0x4DD8           ## $t8 = C8104DD8
/* 01314 80B8E364 35EF001C */  ori     $t7, $t7, 0x001C           ## $t7 = E200001C
/* 01318 80B8E368 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0131C 80B8E36C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 01320 80B8E370 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01324 80B8E374 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 01328 80B8E378 24019600 */  addiu   $at, $zero, 0x9600         ## $at = FFFF9600
/* 0132C 80B8E37C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01330 80B8E380 AE5902D0 */  sw      $t9, 0x02D0($s2)           ## 000002D0
/* 01334 80B8E384 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01338 80B8E388 93AA00CC */  lbu     $t2, 0x00CC($sp)           
/* 0133C 80B8E38C 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 01340 80B8E390 01415825 */  or      $t3, $t2, $at              ## $t3 = FFFF9600
/* 01344 80B8E394 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 01348 80B8E398 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 0134C 80B8E39C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 01350 80B8E3A0 AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 01354 80B8E3A4 AC530004 */  sw      $s3, 0x0004($v0)           ## 00000004
/* 01358 80B8E3A8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
.L80B8E3AC:
/* 0135C 80B8E3AC 26100054 */  addiu   $s0, $s0, 0x0054           ## $s0 = FFFFFE50
/* 01360 80B8E3B0 27AE0274 */  addiu   $t6, $sp, 0x0274           ## $t6 = FFFFFFF4
/* 01364 80B8E3B4 560EFFC7 */  bnel    $s0, $t6, .L80B8E2D4       
/* 01368 80B8E3B8 8E0B004C */  lw      $t3, 0x004C($s0)           ## FFFFFE9C
/* 0136C 80B8E3BC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01370 80B8E3C0 3C0180B9 */  lui     $at, %hi(D_80B8E670)       ## $at = 80B90000
/* 01374 80B8E3C4 A02FE670 */  sb      $t7, %lo(D_80B8E670)($at)  
/* 01378 80B8E3C8 3C0680B9 */  lui     $a2, %hi(D_80B8E914)       ## $a2 = 80B90000
/* 0137C 80B8E3CC 24C6E914 */  addiu   $a2, $a2, %lo(D_80B8E914)  ## $a2 = 80B8E914
/* 01380 80B8E3D0 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 01384 80B8E3D4 27A40064 */  addiu   $a0, $sp, 0x0064           ## $a0 = FFFFFDE4
/* 01388 80B8E3D8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0138C 80B8E3DC 24070403 */  addiu   $a3, $zero, 0x0403         ## $a3 = 00000403
.L80B8E3E0:
/* 01390 80B8E3E0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B8E3E4:
/* 01394 80B8E3E4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 01398 80B8E3E8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0139C 80B8E3EC 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 013A0 80B8E3F0 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 013A4 80B8E3F4 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 013A8 80B8E3F8 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 013AC 80B8E3FC 03E00008 */  jr      $ra                        
/* 013B0 80B8E400 27BD0280 */  addiu   $sp, $sp, 0x0280           ## $sp = 00000000
