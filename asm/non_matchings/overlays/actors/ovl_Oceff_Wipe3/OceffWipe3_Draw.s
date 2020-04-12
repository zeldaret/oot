.rdata
glabel D_80BACAE0
    .asciz "../z_oceff_wipe3.c"
    .balign 4

glabel D_80BACAF4
    .asciz "../z_oceff_wipe3.c"
    .balign 4

glabel D_80BACB08
    .asciz "../z_oceff_wipe3.c"
    .balign 4

.late_rodata
glabel D_80BACB1C
    .float 1330.0
glabel D_80BACB20
    .float 1330.0
glabel D_80BACB24
    .float 0.1
 
.text
glabel OceffWipe3_Draw
/* 0011C 80BAB50C 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00120 80BAB510 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00124 80BAB514 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00128 80BAB518 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 0012C 80BAB51C 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 00130 80BAB520 27B8008C */  addiu   $t8, $sp, 0x008C           ## $t8 = FFFFFFDC
/* 00134 80BAB524 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00138 80BAB528 31CF0FFF */  andi    $t7, $t6, 0x0FFF           ## $t7 = 00000000
/* 0013C 80BAB52C AFAF00AC */  sw      $t7, 0x00AC($sp)           
/* 00140 80BAB530 84B907A0 */  lh      $t9, 0x07A0($a1)           ## 000007A0
/* 00144 80BAB534 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00148 80BAB538 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFCC
/* 0014C 80BAB53C 00195080 */  sll     $t2, $t9,  2               
/* 00150 80BAB540 00AA5821 */  addu    $t3, $a1, $t2              
/* 00154 80BAB544 8D6C0790 */  lw      $t4, 0x0790($t3)           ## 00000790
/* 00158 80BAB548 8D8E005C */  lw      $t6, 0x005C($t4)           ## 0000005C
/* 0015C 80BAB54C AF0E0000 */  sw      $t6, 0x0000($t8)           ## FFFFFFDC
/* 00160 80BAB550 8D8D0060 */  lw      $t5, 0x0060($t4)           ## 00000060
/* 00164 80BAB554 AF0D0004 */  sw      $t5, 0x0004($t8)           ## FFFFFFE0
/* 00168 80BAB558 8D8E0064 */  lw      $t6, 0x0064($t4)           ## 00000064
/* 0016C 80BAB55C AF0E0008 */  sw      $t6, 0x0008($t8)           ## FFFFFFE4
/* 00170 80BAB560 84AF07A0 */  lh      $t7, 0x07A0($a1)           ## 000007A0
/* 00174 80BAB564 000FC880 */  sll     $t9, $t7,  2               
/* 00178 80BAB568 00B95021 */  addu    $t2, $a1, $t9              
/* 0017C 80BAB56C 8D450790 */  lw      $a1, 0x0790($t2)           ## 00000790
/* 00180 80BAB570 0C016BED */  jal     func_8005AFB4              
/* 00184 80BAB574 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 00188 80BAB578 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 0018C 80BAB57C 84D0014C */  lh      $s0, 0x014C($a2)           ## 0000014C
/* 00190 80BAB580 2A010020 */  slti    $at, $s0, 0x0020           
/* 00194 80BAB584 1020000C */  beq     $at, $zero, .L80BAB5B8     
/* 00198 80BAB588 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0019C 80BAB58C 00042640 */  sll     $a0, $a0, 25               
/* 001A0 80BAB590 00042403 */  sra     $a0, $a0, 16               
/* 001A4 80BAB594 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001A8 80BAB598 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 001AC 80BAB59C 3C0180BB */  lui     $at, %hi(D_80BACB1C)       ## $at = 80BB0000
/* 001B0 80BAB5A0 C424CB1C */  lwc1    $f4, %lo(D_80BACB1C)($at)  
/* 001B4 80BAB5A4 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 001B8 80BAB5A8 46040182 */  mul.s   $f6, $f0, $f4              
/* 001BC 80BAB5AC E7A600A4 */  swc1    $f6, 0x00A4($sp)           
/* 001C0 80BAB5B0 10000004 */  beq     $zero, $zero, .L80BAB5C4   
/* 001C4 80BAB5B4 84D0014C */  lh      $s0, 0x014C($a2)           ## 0000014C
.L80BAB5B8:
/* 001C8 80BAB5B8 3C0180BB */  lui     $at, %hi(D_80BACB20)       ## $at = 80BB0000
/* 001CC 80BAB5BC C428CB20 */  lwc1    $f8, %lo(D_80BACB20)($at)  
/* 001D0 80BAB5C0 E7A800A4 */  swc1    $f8, 0x00A4($sp)           
.L80BAB5C4:
/* 001D4 80BAB5C4 2A010050 */  slti    $at, $s0, 0x0050           
/* 001D8 80BAB5C8 14200009 */  bne     $at, $zero, .L80BAB5F0     
/* 001DC 80BAB5CC 3C0280BB */  lui     $v0, %hi(D_80BAC9CF)       ## $v0 = 80BB0000
/* 001E0 80BAB5D0 00101823 */  subu    $v1, $zero, $s0            
/* 001E4 80BAB5D4 00600821 */  addu    $at, $v1, $zero            
/* 001E8 80BAB5D8 00031880 */  sll     $v1, $v1,  2               
/* 001EC 80BAB5DC 00611823 */  subu    $v1, $v1, $at              
/* 001F0 80BAB5E0 00031880 */  sll     $v1, $v1,  2               
/* 001F4 80BAB5E4 246304B0 */  addiu   $v1, $v1, 0x04B0           ## $v1 = 000004B0
/* 001F8 80BAB5E8 10000002 */  beq     $zero, $zero, .L80BAB5F4   
/* 001FC 80BAB5EC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 000000B0
.L80BAB5F0:
/* 00200 80BAB5F0 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
.L80BAB5F4:
/* 00204 80BAB5F4 3C0180BB */  lui     $at, %hi(D_80BAC9CF)       ## $at = 80BB0000
/* 00208 80BAB5F8 A023C9CF */  sb      $v1, %lo(D_80BAC9CF)($at)  
/* 0020C 80BAB5FC 9042C9CF */  lbu     $v0, %lo(D_80BAC9CF)($v0)  
/* 00210 80BAB600 3C0180BB */  lui     $at, %hi(D_80BAC9AF)       ## $at = 80BB0000
/* 00214 80BAB604 3C0680BB */  lui     $a2, %hi(D_80BACAE0)       ## $a2 = 80BB0000
/* 00218 80BAB608 A022C9AF */  sb      $v0, %lo(D_80BAC9AF)($at)  
/* 0021C 80BAB60C 3C0180BB */  lui     $at, %hi(D_80BAC98F)       ## $at = 80BB0000
/* 00220 80BAB610 A022C98F */  sb      $v0, %lo(D_80BAC98F)($at)  
/* 00224 80BAB614 3C0180BB */  lui     $at, %hi(D_80BAC96F)       ## $at = 80BB0000
/* 00228 80BAB618 A022C96F */  sb      $v0, %lo(D_80BAC96F)($at)  
/* 0022C 80BAB61C 3C0180BB */  lui     $at, %hi(D_80BAC94F)       ## $at = 80BB0000
/* 00230 80BAB620 A022C94F */  sb      $v0, %lo(D_80BAC94F)($at)  
/* 00234 80BAB624 3C0180BB */  lui     $at, %hi(D_80BAC92F)       ## $at = 80BB0000
/* 00238 80BAB628 A022C92F */  sb      $v0, %lo(D_80BAC92F)($at)  
/* 0023C 80BAB62C 3C0180BB */  lui     $at, %hi(D_80BAC90F)       ## $at = 80BB0000
/* 00240 80BAB630 A022C90F */  sb      $v0, %lo(D_80BAC90F)($at)  
/* 00244 80BAB634 3C0180BB */  lui     $at, %hi(D_80BAC8EF)       ## $at = 80BB0000
/* 00248 80BAB638 A022C8EF */  sb      $v0, %lo(D_80BAC8EF)($at)  
/* 0024C 80BAB63C 3C0180BB */  lui     $at, %hi(D_80BAC8CF)       ## $at = 80BB0000
/* 00250 80BAB640 A022C8CF */  sb      $v0, %lo(D_80BAC8CF)($at)  
/* 00254 80BAB644 3C0180BB */  lui     $at, %hi(D_80BAC8AF)       ## $at = 80BB0000
/* 00258 80BAB648 A022C8AF */  sb      $v0, %lo(D_80BAC8AF)($at)  
/* 0025C 80BAB64C 3C0180BB */  lui     $at, %hi(D_80BAC88F)       ## $at = 80BB0000
/* 00260 80BAB650 A022C88F */  sb      $v0, %lo(D_80BAC88F)($at)  
/* 00264 80BAB654 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00268 80BAB658 24C6CAE0 */  addiu   $a2, $a2, %lo(D_80BACAE0)  ## $a2 = 80BACAE0
/* 0026C 80BAB65C 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 00270 80BAB660 24070157 */  addiu   $a3, $zero, 0x0157         ## $a3 = 00000157
/* 00274 80BAB664 0C031AB1 */  jal     Graph_OpenDisps              
/* 00278 80BAB668 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0027C 80BAB66C 0C024F61 */  jal     func_80093D84              
/* 00280 80BAB670 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00284 80BAB674 C7AA008C */  lwc1    $f10, 0x008C($sp)          
/* 00288 80BAB678 C7B0007C */  lwc1    $f16, 0x007C($sp)          
/* 0028C 80BAB67C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 00290 80BAB680 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 00294 80BAB684 46105300 */  add.s   $f12, $f10, $f16           
/* 00298 80BAB688 C7B20090 */  lwc1    $f18, 0x0090($sp)          
/* 0029C 80BAB68C C7A40080 */  lwc1    $f4, 0x0080($sp)           
/* 002A0 80BAB690 46083280 */  add.s   $f10, $f6, $f8             
/* 002A4 80BAB694 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002A8 80BAB698 46049380 */  add.s   $f14, $f18, $f4            
/* 002AC 80BAB69C 44065000 */  mfc1    $a2, $f10                  
/* 002B0 80BAB6A0 0C034261 */  jal     Matrix_Translate              
/* 002B4 80BAB6A4 00000000 */  nop
/* 002B8 80BAB6A8 3C0180BB */  lui     $at, %hi(D_80BACB24)       ## $at = 80BB0000
/* 002BC 80BAB6AC C42CCB24 */  lwc1    $f12, %lo(D_80BACB24)($at) 
/* 002C0 80BAB6B0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002C4 80BAB6B4 44066000 */  mfc1    $a2, $f12                  
/* 002C8 80BAB6B8 0C0342A3 */  jal     Matrix_Scale              
/* 002CC 80BAB6BC 46006386 */  mov.s   $f14, $f12                 
/* 002D0 80BAB6C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002D4 80BAB6C4 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 002D8 80BAB6C8 0C0347F5 */  jal     func_800D1FD4              
/* 002DC 80BAB6CC 02212021 */  addu    $a0, $s1, $at              
/* 002E0 80BAB6D0 C7B000A4 */  lwc1    $f16, 0x00A4($sp)          
/* 002E4 80BAB6D4 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 002E8 80BAB6D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002EC 80BAB6DC 46008487 */  neg.s   $f18, $f16                 
/* 002F0 80BAB6E0 46006386 */  mov.s   $f14, $f12                 
/* 002F4 80BAB6E4 44069000 */  mfc1    $a2, $f18                  
/* 002F8 80BAB6E8 0C034261 */  jal     Matrix_Translate              
/* 002FC 80BAB6EC 00000000 */  nop
/* 00300 80BAB6F0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00304 80BAB6F4 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00308 80BAB6F8 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 0030C 80BAB6FC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00310 80BAB700 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00314 80BAB704 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00318 80BAB708 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0031C 80BAB70C 3C0580BB */  lui     $a1, %hi(D_80BACAF4)       ## $a1 = 80BB0000
/* 00320 80BAB710 24A5CAF4 */  addiu   $a1, $a1, %lo(D_80BACAF4)  ## $a1 = 80BACAF4
/* 00324 80BAB714 24060161 */  addiu   $a2, $zero, 0x0161         ## $a2 = 00000161
/* 00328 80BAB718 0C0346A2 */  jal     Matrix_NewMtx              
/* 0032C 80BAB71C AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00330 80BAB720 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00334 80BAB724 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 00338 80BAB728 240EAAFF */  addiu   $t6, $zero, 0xAAFF         ## $t6 = FFFFAAFF
/* 0033C 80BAB72C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00340 80BAB730 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00344 80BAB734 3C0A64C8 */  lui     $t2, 0x64C8                ## $t2 = 64C80000
/* 00348 80BAB738 354A0080 */  ori     $t2, $t2, 0x0080           ## $t2 = 64C80080
/* 0034C 80BAB73C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00350 80BAB740 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00354 80BAB744 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00358 80BAB748 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0035C 80BAB74C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00360 80BAB750 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00364 80BAB754 3C1880BB */  lui     $t8, %hi(D_80BAC9D0)       ## $t8 = 80BB0000
/* 00368 80BAB758 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0036C 80BAB75C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00370 80BAB760 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00374 80BAB764 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00378 80BAB768 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0037C 80BAB76C 2718C9D0 */  addiu   $t8, $t8, %lo(D_80BAC9D0)  ## $t8 = 80BAC9D0
/* 00380 80BAB770 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00384 80BAB774 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00388 80BAB778 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0038C 80BAB77C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00390 80BAB780 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00394 80BAB784 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00398 80BAB788 8FA900AC */  lw      $t1, 0x00AC($sp)           
/* 0039C 80BAB78C 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 003A0 80BAB790 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 003A4 80BAB794 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 003A8 80BAB798 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 003AC 80BAB79C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003B0 80BAB7A0 00090823 */  subu    $at, $zero, $t1            
/* 003B4 80BAB7A4 00013880 */  sll     $a3, $at,  2               
/* 003B8 80BAB7A8 00093080 */  sll     $a2, $t1,  2               
/* 003BC 80BAB7AC 00E13823 */  subu    $a3, $a3, $at              
/* 003C0 80BAB7B0 000150C0 */  sll     $t2, $at,  3               
/* 003C4 80BAB7B4 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 003C8 80BAB7B8 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 003CC 80BAB7BC 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 003D0 80BAB7C0 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 003D4 80BAB7C4 00C93023 */  subu    $a2, $a2, $t1              
/* 003D8 80BAB7C8 0009C8C0 */  sll     $t9, $t1,  3               
/* 003DC 80BAB7CC AFB9001C */  sw      $t9, 0x001C($sp)           
/* 003E0 80BAB7D0 00063080 */  sll     $a2, $a2,  2               
/* 003E4 80BAB7D4 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 003E8 80BAB7D8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 003EC 80BAB7DC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 003F0 80BAB7E0 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 003F4 80BAB7E4 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 003F8 80BAB7E8 00073880 */  sll     $a3, $a3,  2               
/* 003FC 80BAB7EC AFB80028 */  sw      $t8, 0x0028($sp)           
/* 00400 80BAB7F0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00404 80BAB7F4 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00408 80BAB7F8 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 0040C 80BAB7FC 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00410 80BAB800 3C0E80BB */  lui     $t6, %hi(D_80BACA58)       ## $t6 = 80BB0000
/* 00414 80BAB804 25CECA58 */  addiu   $t6, $t6, %lo(D_80BACA58)  ## $t6 = 80BACA58
/* 00418 80BAB808 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0041C 80BAB80C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00420 80BAB810 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 00424 80BAB814 3C0680BB */  lui     $a2, %hi(D_80BACB08)       ## $a2 = 80BB0000
/* 00428 80BAB818 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0042C 80BAB81C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00430 80BAB820 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00434 80BAB824 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00438 80BAB828 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0043C 80BAB82C 24C6CB08 */  addiu   $a2, $a2, %lo(D_80BACB08)  ## $a2 = 80BACB08
/* 00440 80BAB830 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 00444 80BAB834 0C031AD5 */  jal     Graph_CloseDisps              
/* 00448 80BAB838 24070172 */  addiu   $a3, $zero, 0x0172         ## $a3 = 00000172
/* 0044C 80BAB83C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00450 80BAB840 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00454 80BAB844 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00458 80BAB848 03E00008 */  jr      $ra                        
/* 0045C 80BAB84C 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
