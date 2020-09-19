.rdata
glabel D_808AA7D0
    .asciz "../z_bg_spot00_hanebasi.c"
    .balign 4

glabel D_808AA7EC
    .asciz "../z_bg_spot00_hanebasi.c"
    .balign 4

glabel D_808AA808
    .asciz "../z_bg_spot00_hanebasi.c"
    .balign 4

.late_rodata
glabel D_808AA88C
    .float 0.008

glabel D_808AA890
 .word 0x3583126F
glabel D_808AA894
    .float 9.58738019108e-05

glabel D_808AA898
 .word 0x442C8000, 0x00000000

.text
glabel func_808AA2B0
/* 00B30 808AA2B0 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00B34 808AA2B4 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 00B38 808AA2B8 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00B3C 808AA2BC AFBF0084 */  sw      $ra, 0x0084($sp)           
/* 00B40 808AA2C0 AFBE0080 */  sw      $s8, 0x0080($sp)           
/* 00B44 808AA2C4 AFB7007C */  sw      $s7, 0x007C($sp)           
/* 00B48 808AA2C8 AFB60078 */  sw      $s6, 0x0078($sp)           
/* 00B4C 808AA2CC AFB50074 */  sw      $s5, 0x0074($sp)           
/* 00B50 808AA2D0 AFB40070 */  sw      $s4, 0x0070($sp)           
/* 00B54 808AA2D4 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 00B58 808AA2D8 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 00B5C 808AA2DC AFB00060 */  sw      $s0, 0x0060($sp)           
/* 00B60 808AA2E0 F7BC0058 */  sdc1    $f28, 0x0058($sp)          
/* 00B64 808AA2E4 F7BA0050 */  sdc1    $f26, 0x0050($sp)          
/* 00B68 808AA2E8 F7B80048 */  sdc1    $f24, 0x0048($sp)          
/* 00B6C 808AA2EC F7B60040 */  sdc1    $f22, 0x0040($sp)          
/* 00B70 808AA2F0 F7B40038 */  sdc1    $f20, 0x0038($sp)          
/* 00B74 808AA2F4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00B78 808AA2F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B7C 808AA2FC 3C06808B */  lui     $a2, %hi(D_808AA7D0)       ## $a2 = 808B0000
/* 00B80 808AA300 24C6A7D0 */  addiu   $a2, $a2, %lo(D_808AA7D0)  ## $a2 = 808AA7D0
/* 00B84 808AA304 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE0
/* 00B88 808AA308 24070279 */  addiu   $a3, $zero, 0x0279         ## $a3 = 00000279
/* 00B8C 808AA30C 0C031AB1 */  jal     Graph_OpenDisps              
/* 00B90 808AA310 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00B94 808AA314 0C024F61 */  jal     func_80093D84              
/* 00B98 808AA318 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 00B9C 808AA31C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0x1360)
/* 00BA0 808AA320 8DCEF9C0 */  lw      $t6, %lo(gSaveContext+0x1360)($t6)
/* 00BA4 808AA324 29C10004 */  slti    $at, $t6, 0x0004           
/* 00BA8 808AA328 14200005 */  bne     $at, $zero, .L808AA340     
/* 00BAC 808AA32C 3C01808B */  lui     $at, %hi(D_808AA88C)       ## $at = 808B0000
/* 00BB0 808AA330 C424A88C */  lwc1    $f4, %lo(D_808AA88C)($at)  
/* 00BB4 808AA334 3C01808B */  lui     $at, %hi(D_808AA7B0)       ## $at = 808B0000
/* 00BB8 808AA338 1000000B */  beq     $zero, $zero, .L808AA368   
/* 00BBC 808AA33C E424A7B0 */  swc1    $f4, %lo(D_808AA7B0)($at)  
.L808AA340:
/* 00BC0 808AA340 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 00BC4 808AA344 3C01808B */  lui     $at, %hi(D_808AA890)       ## $at = 808B0000
/* 00BC8 808AA348 C42AA890 */  lwc1    $f10, %lo(D_808AA890)($at) 
/* 00BCC 808AA34C 000FC023 */  subu    $t8, $zero, $t7            
/* 00BD0 808AA350 2719E000 */  addiu   $t9, $t8, 0xE000           ## $t9 = FFFFE000
/* 00BD4 808AA354 44993000 */  mtc1    $t9, $f6                   ## $f6 = NaN
/* 00BD8 808AA358 3C01808B */  lui     $at, %hi(D_808AA7B0)       ## $at = 808B0000
/* 00BDC 808AA35C 46803220 */  cvt.s.w $f8, $f6                   
/* 00BE0 808AA360 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00BE4 808AA364 E430A7B0 */  swc1    $f16, %lo(D_808AA7B0)($at) 
.L808AA368:
/* 00BE8 808AA368 866807A0 */  lh      $t0, 0x07A0($s3)           ## 000007A0
/* 00BEC 808AA36C 00084880 */  sll     $t1, $t0,  2               
/* 00BF0 808AA370 02695021 */  addu    $t2, $s3, $t1              
/* 00BF4 808AA374 0C016A7D */  jal     Camera_GetCamDirYaw              
/* 00BF8 808AA378 8D440790 */  lw      $a0, 0x0790($t2)           ## 00000790
/* 00BFC 808AA37C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00C00 808AA380 00415821 */  addu    $t3, $v0, $at              
/* 00C04 808AA384 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00C08 808AA388 3C01808B */  lui     $at, %hi(D_808AA894)       ## $at = 808B0000
/* 00C0C 808AA38C C426A894 */  lwc1    $f6, %lo(D_808AA894)($at)  
/* 00C10 808AA390 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00C14 808AA394 AE4E02D0 */  sw      $t6, 0x02D0($s2)           ## 000002D0
/* 00C18 808AA398 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 00C1C 808AA39C 3C18FFFF */  lui     $t8, 0xFFFF                ## $t8 = FFFF0000
/* 00C20 808AA3A0 371800FF */  ori     $t8, $t8, 0x00FF           ## $t8 = FFFF00FF
/* 00C24 808AA3A4 35EF8080 */  ori     $t7, $t7, 0x8080           ## $t7 = FA008080
/* 00C28 808AA3A8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00C2C 808AA3AC AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00C30 808AA3B0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00C34 808AA3B4 000B6400 */  sll     $t4, $t3, 16               
/* 00C38 808AA3B8 000C6C03 */  sra     $t5, $t4, 16               
/* 00C3C 808AA3BC 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 00C40 808AA3C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C44 808AA3C4 0261A821 */  addu    $s5, $s3, $at              
/* 00C48 808AA3C8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00C4C 808AA3CC AE5902D0 */  sw      $t9, 0x02D0($s2)           ## 000002D0
/* 00C50 808AA3D0 3C01C382 */  lui     $at, 0xC382                ## $at = C3820000
/* 00C54 808AA3D4 46809120 */  cvt.s.w $f4, $f18                  
/* 00C58 808AA3D8 3C08FB00 */  lui     $t0, 0xFB00                ## $t0 = FB000000
/* 00C5C 808AA3DC 3C09FF00 */  lui     $t1, 0xFF00                ## $t1 = FF000000
/* 00C60 808AA3E0 4481D000 */  mtc1    $at, $f26                  ## $f26 = -260.00
/* 00C64 808AA3E4 3C01808B */  lui     $at, %hi(D_808AA898)       ## $at = 808B0000
/* 00C68 808AA3E8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 00C6C 808AA3EC AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00C70 808AA3F0 C438A898 */  lwc1    $f24, %lo(D_808AA898)($at) 
/* 00C74 808AA3F4 3C014300 */  lui     $at, 0x4300                ## $at = 43000000
/* 00C78 808AA3F8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 128.00
/* 00C7C 808AA3FC 3C014382 */  lui     $at, 0x4382                ## $at = 43820000
/* 00C80 808AA400 3C140405 */  lui     $s4, 0x0405                ## $s4 = 04050000
/* 00C84 808AA404 3C1EDA38 */  lui     $s8, 0xDA38                ## $s8 = DA380000
/* 00C88 808AA408 3C16DB06 */  lui     $s6, 0xDB06                ## $s6 = DB060000
/* 00C8C 808AA40C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 260.00
/* 00C90 808AA410 46062702 */  mul.s   $f28, $f4, $f6             
/* 00C94 808AA414 36D60020 */  ori     $s6, $s6, 0x0020           ## $s6 = DB060020
/* 00C98 808AA418 37DE0003 */  ori     $s8, $s8, 0x0003           ## $s8 = DA380003
/* 00C9C 808AA41C 2694D4E0 */  addiu   $s4, $s4, 0xD4E0           ## $s4 = 0404D4E0
/* 00CA0 808AA420 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00CA4 808AA424 2417FFEC */  addiu   $s7, $zero, 0xFFEC         ## $s7 = FFFFFFEC
.L808AA428:
/* 00CA8 808AA428 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00CAC 808AA42C 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00CB0 808AA430 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 00CB4 808AA434 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00CB8 808AA438 AE4A02D0 */  sw      $t2, 0x02D0($s2)           ## 000002D0
/* 00CBC 808AA43C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 00CC0 808AA440 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 00CC4 808AA444 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00CC8 808AA448 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 00CCC 808AA44C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00CD0 808AA450 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00CD4 808AA454 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00CD8 808AA458 8EAE1DE4 */  lw      $t6, 0x1DE4($s5)           ## 00001DE4
/* 00CDC 808AA45C 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 00CE0 808AA460 24090080 */  addiu   $t1, $zero, 0x0080         ## $t1 = 00000080
/* 00CE4 808AA464 01D17821 */  addu    $t7, $t6, $s1              
/* 00CE8 808AA468 01F70019 */  multu   $t7, $s7                   
/* 00CEC 808AA46C AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00CF0 808AA470 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00CF4 808AA474 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00CF8 808AA478 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CFC 808AA47C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D00 808AA480 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00D04 808AA484 0000C012 */  mflo    $t8                        
/* 00D08 808AA488 331901FF */  andi    $t9, $t8, 0x01FF           ## $t9 = 000000FF
/* 00D0C 808AA48C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00D10 808AA490 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 00D14 808AA494 16200003 */  bne     $s1, $zero, .L808AA4A4     
/* 00D18 808AA498 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00D1C 808AA49C 10000002 */  beq     $zero, $zero, .L808AA4A8   
/* 00D20 808AA4A0 4600A306 */  mov.s   $f12, $f20                 
.L808AA4A4:
/* 00D24 808AA4A4 4600D306 */  mov.s   $f12, $f26                 
.L808AA4A8:
/* 00D28 808AA4A8 4406C000 */  mfc1    $a2, $f24                  
/* 00D2C 808AA4AC 4600B386 */  mov.s   $f14, $f22                 
/* 00D30 808AA4B0 0C034261 */  jal     Matrix_Translate              
/* 00D34 808AA4B4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00D38 808AA4B8 4600E306 */  mov.s   $f12, $f28                 
/* 00D3C 808AA4BC 0C034348 */  jal     Matrix_RotateY              
/* 00D40 808AA4C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D44 808AA4C4 3C01808B */  lui     $at, %hi(D_808AA7B0)       ## $at = 808B0000
/* 00D48 808AA4C8 C42CA7B0 */  lwc1    $f12, %lo(D_808AA7B0)($at) 
/* 00D4C 808AA4CC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D50 808AA4D0 44066000 */  mfc1    $a2, $f12                  
/* 00D54 808AA4D4 0C0342A3 */  jal     Matrix_Scale              
/* 00D58 808AA4D8 46006386 */  mov.s   $f14, $f12                 
/* 00D5C 808AA4DC 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00D60 808AA4E0 3C05808B */  lui     $a1, %hi(D_808AA7EC)       ## $a1 = 808B0000
/* 00D64 808AA4E4 24A5A7EC */  addiu   $a1, $a1, %lo(D_808AA7EC)  ## $a1 = 808AA7EC
/* 00D68 808AA4E8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00D6C 808AA4EC AE4A02D0 */  sw      $t2, 0x02D0($s2)           ## 000002D0
/* 00D70 808AA4F0 AC5E0000 */  sw      $s8, 0x0000($v0)           ## 00000000
/* 00D74 808AA4F4 8E640000 */  lw      $a0, 0x0000($s3)           ## 00000000
/* 00D78 808AA4F8 240602A2 */  addiu   $a2, $zero, 0x02A2         ## $a2 = 000002A2
/* 00D7C 808AA4FC 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D80 808AA500 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00D84 808AA504 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 00D88 808AA508 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00D8C 808AA50C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00D90 808AA510 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00D94 808AA514 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00D98 808AA518 AE4B02D0 */  sw      $t3, 0x02D0($s2)           ## 000002D0
/* 00D9C 808AA51C 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00DA0 808AA520 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00DA4 808AA524 1621FFC0 */  bne     $s1, $at, .L808AA428       
/* 00DA8 808AA528 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 00DAC 808AA52C 3C06808B */  lui     $a2, %hi(D_808AA808)       ## $a2 = 808B0000
/* 00DB0 808AA530 24C6A808 */  addiu   $a2, $a2, %lo(D_808AA808)  ## $a2 = 808AA808
/* 00DB4 808AA534 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE0
/* 00DB8 808AA538 8E650000 */  lw      $a1, 0x0000($s3)           ## 00000000
/* 00DBC 808AA53C 0C031AD5 */  jal     Graph_CloseDisps              
/* 00DC0 808AA540 240702A9 */  addiu   $a3, $zero, 0x02A9         ## $a3 = 000002A9
/* 00DC4 808AA544 8FBF0084 */  lw      $ra, 0x0084($sp)           
/* 00DC8 808AA548 D7B40038 */  ldc1    $f20, 0x0038($sp)          
/* 00DCC 808AA54C D7B60040 */  ldc1    $f22, 0x0040($sp)          
/* 00DD0 808AA550 D7B80048 */  ldc1    $f24, 0x0048($sp)          
/* 00DD4 808AA554 D7BA0050 */  ldc1    $f26, 0x0050($sp)          
/* 00DD8 808AA558 D7BC0058 */  ldc1    $f28, 0x0058($sp)          
/* 00DDC 808AA55C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 00DE0 808AA560 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 00DE4 808AA564 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 00DE8 808AA568 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 00DEC 808AA56C 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 00DF0 808AA570 8FB50074 */  lw      $s5, 0x0074($sp)           
/* 00DF4 808AA574 8FB60078 */  lw      $s6, 0x0078($sp)           
/* 00DF8 808AA578 8FB7007C */  lw      $s7, 0x007C($sp)           
/* 00DFC 808AA57C 8FBE0080 */  lw      $s8, 0x0080($sp)           
/* 00E00 808AA580 03E00008 */  jr      $ra                        
/* 00E04 808AA584 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
