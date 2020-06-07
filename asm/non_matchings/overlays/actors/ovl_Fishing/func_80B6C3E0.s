.late_rodata
glabel D_80B7B3D4
    .float 0.97

glabel D_80B7B3D8
    .float 0.001

glabel D_80B7B3DC
    .float 0.299999982119

glabel D_80B7B3E0
    .float 846400.0

glabel D_80B7B3E4
    .float 0.11

glabel D_80B7B3E8
    .float 0.147

glabel D_80B7B3EC
    .float 0.05

glabel D_80B7B3F0
    .float 0.02

glabel D_80B7B3F4
    .float 0.2

.text
glabel func_80B6C3E0
/* 02A40 80B6C3E0 27BDFF08 */  addiu   $sp, $sp, 0xFF08           ## $sp = FFFFFF08
/* 02A44 80B6C3E4 3C0F80B8 */  lui     $t7, %hi(D_80B7AE58)       ## $t7 = 80B80000
/* 02A48 80B6C3E8 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 02A4C 80B6C3EC AFB60060 */  sw      $s6, 0x0060($sp)           
/* 02A50 80B6C3F0 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 02A54 80B6C3F4 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 02A58 80B6C3F8 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 02A5C 80B6C3FC AFB20050 */  sw      $s2, 0x0050($sp)           
/* 02A60 80B6C400 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 02A64 80B6C404 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 02A68 80B6C408 F7BE0040 */  sdc1    $f30, 0x0040($sp)          
/* 02A6C 80B6C40C F7BC0038 */  sdc1    $f28, 0x0038($sp)          
/* 02A70 80B6C410 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 02A74 80B6C414 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 02A78 80B6C418 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 02A7C 80B6C41C F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 02A80 80B6C420 AFA500FC */  sw      $a1, 0x00FC($sp)           
/* 02A84 80B6C424 AFA70104 */  sw      $a3, 0x0104($sp)           
/* 02A88 80B6C428 25EFAE58 */  addiu   $t7, $t7, %lo(D_80B7AE58)  ## $t7 = 80B7AE58
/* 02A8C 80B6C42C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B7AE58
/* 02A90 80B6C430 27AE00C0 */  addiu   $t6, $sp, 0x00C0           ## $t6 = FFFFFFC8
/* 02A94 80B6C434 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B7AE5C
/* 02A98 80B6C438 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFC8
/* 02A9C 80B6C43C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B7AE60
/* 02AA0 80B6C440 3C0880B8 */  lui     $t0, %hi(D_80B7A6A4)       ## $t0 = 80B80000
/* 02AA4 80B6C444 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFCC
/* 02AA8 80B6C448 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFD0
/* 02AAC 80B6C44C 9108A6A4 */  lbu     $t0, %lo(D_80B7A6A4)($t0)  
/* 02AB0 80B6C450 00C0A025 */  or      $s4, $a2, $zero            ## $s4 = 00000000
/* 02AB4 80B6C454 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 02AB8 80B6C458 11000035 */  beq     $t0, $zero, .L80B6C530     
/* 02ABC 80B6C45C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 02AC0 80B6C460 8FAA00FC */  lw      $t2, 0x00FC($sp)           
/* 02AC4 80B6C464 27A900A4 */  addiu   $t1, $sp, 0x00A4           ## $t1 = FFFFFFAC
/* 02AC8 80B6C468 27AD0098 */  addiu   $t5, $sp, 0x0098           ## $t5 = FFFFFFA0
/* 02ACC 80B6C46C 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 00000000
/* 02AD0 80B6C470 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 02AD4 80B6C474 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1000.00
/* 02AD8 80B6C478 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFAC
/* 02ADC 80B6C47C 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 00000004
/* 02AE0 80B6C480 3C0180B8 */  lui     $at, %hi(D_80B7B3D4)       ## $at = 80B80000
/* 02AE4 80B6C484 AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFB0
/* 02AE8 80B6C488 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 00000008
/* 02AEC 80B6C48C AD2C0008 */  sw      $t4, 0x0008($t1)           ## FFFFFFB4
/* 02AF0 80B6C490 8CCF0954 */  lw      $t7, 0x0954($a2)           ## 00000954
/* 02AF4 80B6C494 ADAF0000 */  sw      $t7, 0x0000($t5)           ## FFFFFFA0
/* 02AF8 80B6C498 8CCE0958 */  lw      $t6, 0x0958($a2)           ## 00000958
/* 02AFC 80B6C49C ADAE0004 */  sw      $t6, 0x0004($t5)           ## FFFFFFA4
/* 02B00 80B6C4A0 8CCF095C */  lw      $t7, 0x095C($a2)           ## 0000095C
/* 02B04 80B6C4A4 ADAF0008 */  sw      $t7, 0x0008($t5)           ## FFFFFFA8
/* 02B08 80B6C4A8 C7A600A4 */  lwc1    $f6, 0x00A4($sp)           
/* 02B0C 80B6C4AC C7A40098 */  lwc1    $f4, 0x0098($sp)           
/* 02B10 80B6C4B0 C7AA00A8 */  lwc1    $f10, 0x00A8($sp)          
/* 02B14 80B6C4B4 C7A8009C */  lwc1    $f8, 0x009C($sp)           
/* 02B18 80B6C4B8 46062681 */  sub.s   $f26, $f4, $f6             
/* 02B1C 80B6C4BC C7A600AC */  lwc1    $f6, 0x00AC($sp)           
/* 02B20 80B6C4C0 C7A400A0 */  lwc1    $f4, 0x00A0($sp)           
/* 02B24 80B6C4C4 460A4301 */  sub.s   $f12, $f8, $f10            
/* 02B28 80B6C4C8 461AD202 */  mul.s   $f8, $f26, $f26            
/* 02B2C 80B6C4CC 46062381 */  sub.s   $f14, $f4, $f6             
/* 02B30 80B6C4D0 460C6282 */  mul.s   $f10, $f12, $f12           
/* 02B34 80B6C4D4 E7AC0090 */  swc1    $f12, 0x0090($sp)          
/* 02B38 80B6C4D8 460E7182 */  mul.s   $f6, $f14, $f14            
/* 02B3C 80B6C4DC E7AE008C */  swc1    $f14, 0x008C($sp)          
/* 02B40 80B6C4E0 460A4100 */  add.s   $f4, $f8, $f10             
/* 02B44 80B6C4E4 C428B3D4 */  lwc1    $f8, %lo(D_80B7B3D4)($at)  
/* 02B48 80B6C4E8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02B4C 80B6C4EC 46062000 */  add.s   $f0, $f4, $f6              
/* 02B50 80B6C4F0 46000004 */  sqrt.s  $f0, $f0                   
/* 02B54 80B6C4F4 46080482 */  mul.s   $f18, $f0, $f8             
/* 02B58 80B6C4F8 44810000 */  mtc1    $at, $f0                   ## $f0 = 200.00
/* 02B5C 80B6C4FC 4612A03C */  c.lt.s  $f20, $f18                 
/* 02B60 80B6C500 00000000 */  nop
/* 02B64 80B6C504 45000002 */  bc1f    .L80B6C510                 
/* 02B68 80B6C508 00000000 */  nop
/* 02B6C 80B6C50C 4600A486 */  mov.s   $f18, $f20                 
.L80B6C510:
/* 02B70 80B6C510 46009282 */  mul.s   $f10, $f18, $f0            
/* 02B74 80B6C514 3C0180B8 */  lui     $at, %hi(D_80B7B3D8)       ## $at = 80B80000
/* 02B78 80B6C518 C424B3D8 */  lwc1    $f4, %lo(D_80B7B3D8)($at)  
/* 02B7C 80B6C51C 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 02B80 80B6C520 E7BA0094 */  swc1    $f26, 0x0094($sp)          
/* 02B84 80B6C524 46045182 */  mul.s   $f6, $f10, $f4             
/* 02B88 80B6C528 46060201 */  sub.s   $f8, $f0, $f6              
/* 02B8C 80B6C52C E428E144 */  swc1    $f8, %lo(D_80B7E144)($at)  
.L80B6C530:
/* 02B90 80B6C530 3C0180B8 */  lui     $at, %hi(D_80B7E144)       ## $at = 80B80000
/* 02B94 80B6C534 C42AE144 */  lwc1    $f10, %lo(D_80B7E144)($at) 
/* 02B98 80B6C538 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02B9C 80B6C53C 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 02BA0 80B6C540 4600510D */  trunc.w.s $f4, $f10                  
/* 02BA4 80B6C544 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02BA8 80B6C548 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 02BAC 80B6C54C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 02BB0 80B6C550 44122000 */  mfc1    $s2, $f4                   
/* 02BB4 80B6C554 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 02BB8 80B6C558 C7BA0094 */  lwc1    $f26, 0x0094($sp)          
/* 02BBC 80B6C55C 00129400 */  sll     $s2, $s2, 16               
/* 02BC0 80B6C560 00129403 */  sra     $s2, $s2, 16               
/* 02BC4 80B6C564 2413000C */  addiu   $s3, $zero, 0x000C         ## $s3 = 0000000C
/* 02BC8 80B6C568 E7A600C8 */  swc1    $f6, 0x00C8($sp)           
/* 02BCC 80B6C56C 0251082A */  slt     $at, $s2, $s1              
.L80B6C570:
/* 02BD0 80B6C570 1420000C */  bne     $at, $zero, .L80B6C5A4     
/* 02BD4 80B6C574 3C0C80B8 */  lui     $t4, %hi(D_80B7A6A4)       ## $t4 = 80B80000
/* 02BD8 80B6C578 02330019 */  multu   $s1, $s3                   
/* 02BDC 80B6C57C 8FA900FC */  lw      $t1, 0x00FC($sp)           
/* 02BE0 80B6C580 8D2B0000 */  lw      $t3, 0x0000($t1)           ## FFFFFFAC
/* 02BE4 80B6C584 0000C812 */  mflo    $t9                        
/* 02BE8 80B6C588 02994021 */  addu    $t0, $s4, $t9              
/* 02BEC 80B6C58C AD0B0000 */  sw      $t3, 0x0000($t0)           ## 80B80000
/* 02BF0 80B6C590 8D2A0004 */  lw      $t2, 0x0004($t1)           ## FFFFFFB0
/* 02BF4 80B6C594 AD0A0004 */  sw      $t2, 0x0004($t0)           ## 80B80004
/* 02BF8 80B6C598 8D2B0008 */  lw      $t3, 0x0008($t1)           ## FFFFFFB4
/* 02BFC 80B6C59C 1000002B */  beq     $zero, $zero, .L80B6C64C   
/* 02C00 80B6C5A0 AD0B0008 */  sw      $t3, 0x0008($t0)           ## 80B80008
.L80B6C5A4:
/* 02C04 80B6C5A4 918CA6A4 */  lbu     $t4, %lo(D_80B7A6A4)($t4)  
/* 02C08 80B6C5A8 240F00C9 */  addiu   $t7, $zero, 0x00C9         ## $t7 = 000000C9
/* 02C0C 80B6C5AC 01F2C023 */  subu    $t8, $t7, $s2              
/* 02C10 80B6C5B0 11800026 */  beq     $t4, $zero, .L80B6C64C     
/* 02C14 80B6C5B4 02327023 */  subu    $t6, $s1, $s2              
/* 02C18 80B6C5B8 448E4000 */  mtc1    $t6, $f8                   ## $f8 = NaN
/* 02C1C 80B6C5BC 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02C20 80B6C5C0 02330019 */  multu   $s1, $s3                   
/* 02C24 80B6C5C4 468042A0 */  cvt.s.w $f10, $f8                  
/* 02C28 80B6C5C8 4406B000 */  mfc1    $a2, $f22                  
/* 02C2C 80B6C5CC 4407C000 */  mfc1    $a3, $f24                  
/* 02C30 80B6C5D0 468021A0 */  cvt.s.w $f6, $f4                   
/* 02C34 80B6C5D4 C7A400A4 */  lwc1    $f4, 0x00A4($sp)           
/* 02C38 80B6C5D8 00006812 */  mflo    $t5                        
/* 02C3C 80B6C5DC 01B48021 */  addu    $s0, $t5, $s4              
/* 02C40 80B6C5E0 46065503 */  div.s   $f20, $f10, $f6            
/* 02C44 80B6C5E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C48 80B6C5E8 4614D202 */  mul.s   $f8, $f26, $f20            
/* 02C4C 80B6C5EC 46044280 */  add.s   $f10, $f8, $f4             
/* 02C50 80B6C5F0 44055000 */  mfc1    $a1, $f10                  
/* 02C54 80B6C5F4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02C58 80B6C5F8 00000000 */  nop
/* 02C5C 80B6C5FC C7A60090 */  lwc1    $f6, 0x0090($sp)           
/* 02C60 80B6C600 C7A400A8 */  lwc1    $f4, 0x00A8($sp)           
/* 02C64 80B6C604 4406B000 */  mfc1    $a2, $f22                  
/* 02C68 80B6C608 46143202 */  mul.s   $f8, $f6, $f20             
/* 02C6C 80B6C60C 4407C000 */  mfc1    $a3, $f24                  
/* 02C70 80B6C610 26040004 */  addiu   $a0, $s0, 0x0004           ## $a0 = 00000004
/* 02C74 80B6C614 46044280 */  add.s   $f10, $f8, $f4             
/* 02C78 80B6C618 44055000 */  mfc1    $a1, $f10                  
/* 02C7C 80B6C61C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02C80 80B6C620 00000000 */  nop
/* 02C84 80B6C624 C7A6008C */  lwc1    $f6, 0x008C($sp)           
/* 02C88 80B6C628 C7A400AC */  lwc1    $f4, 0x00AC($sp)           
/* 02C8C 80B6C62C 4406B000 */  mfc1    $a2, $f22                  
/* 02C90 80B6C630 46143202 */  mul.s   $f8, $f6, $f20             
/* 02C94 80B6C634 4407C000 */  mfc1    $a3, $f24                  
/* 02C98 80B6C638 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 02C9C 80B6C63C 46044280 */  add.s   $f10, $f8, $f4             
/* 02CA0 80B6C640 44055000 */  mfc1    $a1, $f10                  
/* 02CA4 80B6C644 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02CA8 80B6C648 00000000 */  nop
.L80B6C64C:
/* 02CAC 80B6C64C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 02CB0 80B6C650 00118C00 */  sll     $s1, $s1, 16               
/* 02CB4 80B6C654 00118C03 */  sra     $s1, $s1, 16               
/* 02CB8 80B6C658 2A2100C8 */  slti    $at, $s1, 0x00C8           
/* 02CBC 80B6C65C 5420FFC4 */  bnel    $at, $zero, .L80B6C570     
/* 02CC0 80B6C660 0251082A */  slt     $at, $s2, $s1              
/* 02CC4 80B6C664 26420001 */  addiu   $v0, $s2, 0x0001           ## $v0 = 00000001
/* 02CC8 80B6C668 0002CC00 */  sll     $t9, $v0, 16               
/* 02CCC 80B6C66C 00194403 */  sra     $t0, $t9, 16               
/* 02CD0 80B6C670 290100C8 */  slti    $at, $t0, 0x00C8           
/* 02CD4 80B6C674 00028C00 */  sll     $s1, $v0, 16               
/* 02CD8 80B6C678 00118C03 */  sra     $s1, $s1, 16               
/* 02CDC 80B6C67C 102000A8 */  beq     $at, $zero, .L80B6C920     
/* 02CE0 80B6C680 0000A825 */  or      $s5, $zero, $zero          ## $s5 = 00000000
/* 02CE4 80B6C684 3C0180B8 */  lui     $at, %hi(D_80B7B3DC)       ## $at = 80B80000
/* 02CE8 80B6C688 C43EB3DC */  lwc1    $f30, %lo(D_80B7B3DC)($at) 
/* 02CEC 80B6C68C 3C014466 */  lui     $at, 0x4466                ## $at = 44660000
/* 02CF0 80B6C690 4481E000 */  mtc1    $at, $f28                  ## $f28 = 920.00
/* 02CF4 80B6C694 00000000 */  nop
.L80B6C698:
/* 02CF8 80B6C698 02330019 */  multu   $s1, $s3                   
/* 02CFC 80B6C69C 3C0180B8 */  lui     $at, %hi(D_80B7E148)       ## $at = 80B80000
/* 02D00 80B6C6A0 C422E148 */  lwc1    $f2, %lo(D_80B7E148)($at)  
/* 02D04 80B6C6A4 3C0180B8 */  lui     $at, %hi(D_80B7B3E0)       ## $at = 80B80000
/* 02D08 80B6C6A8 C42AB3E0 */  lwc1    $f10, %lo(D_80B7B3E0)($at) 
/* 02D0C 80B6C6AC 3C0F80B8 */  lui     $t7, %hi(D_80B7E0B6)       ## $t7 = 80B80000
/* 02D10 80B6C6B0 46021480 */  add.s   $f18, $f2, $f2             
/* 02D14 80B6C6B4 00009012 */  mflo    $s2                        
/* 02D18 80B6C6B8 02548021 */  addu    $s0, $s2, $s4              
/* 02D1C 80B6C6BC C6000000 */  lwc1    $f0, 0x0000($s0)           ## 00000000
/* 02D20 80B6C6C0 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 02D24 80B6C6C4 C606FFF4 */  lwc1    $f6, -0x000C($s0)          ## FFFFFFF4
/* 02D28 80B6C6C8 46000202 */  mul.s   $f8, $f0, $f0              
/* 02D2C 80B6C6CC C6100004 */  lwc1    $f16, 0x0004($s0)          ## 00000004
/* 02D30 80B6C6D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D34 80B6C6D4 460C6102 */  mul.s   $f4, $f12, $f12            
/* 02D38 80B6C6D8 46060681 */  sub.s   $f26, $f0, $f6             
/* 02D3C 80B6C6DC 46044380 */  add.s   $f14, $f8, $f4             
/* 02D40 80B6C6E0 460E503C */  c.lt.s  $f10, $f14                 
/* 02D44 80B6C6E4 00000000 */  nop
/* 02D48 80B6C6E8 4502000F */  bc1fl   .L80B6C728                 
/* 02D4C 80B6C6EC 8ECC07C0 */  lw      $t4, 0x07C0($s6)           ## 000007C0
/* 02D50 80B6C6F0 46007004 */  sqrt.s  $f0, $f14                  
/* 02D54 80B6C6F4 8EC907C0 */  lw      $t1, 0x07C0($s6)           ## 000007C0
/* 02D58 80B6C6F8 3C0180B8 */  lui     $at, %hi(D_80B7B3E4)       ## $at = 80B80000
/* 02D5C 80B6C6FC C424B3E4 */  lwc1    $f4, %lo(D_80B7B3E4)($at)  
/* 02D60 80B6C700 8D2A0028 */  lw      $t2, 0x0028($t1)           ## 00000028
/* 02D64 80B6C704 854B0002 */  lh      $t3, 0x0002($t2)           ## 00000002
/* 02D68 80B6C708 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 02D6C 80B6C70C 00000000 */  nop
/* 02D70 80B6C710 468030A0 */  cvt.s.w $f2, $f6                   
/* 02D74 80B6C714 461C0201 */  sub.s   $f8, $f0, $f28             
/* 02D78 80B6C718 46044282 */  mul.s   $f10, $f8, $f4             
/* 02D7C 80B6C71C 10000008 */  beq     $zero, $zero, .L80B6C740   
/* 02D80 80B6C720 46025300 */  add.s   $f12, $f10, $f2            
/* 02D84 80B6C724 8ECC07C0 */  lw      $t4, 0x07C0($s6)           ## 000007C0
.L80B6C728:
/* 02D88 80B6C728 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 00000028
/* 02D8C 80B6C72C 85AE0002 */  lh      $t6, 0x0002($t5)           ## 00000002
/* 02D90 80B6C730 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 02D94 80B6C734 00000000 */  nop
/* 02D98 80B6C738 468030A0 */  cvt.s.w $f2, $f6                   
/* 02D9C 80B6C73C 46001306 */  mov.s   $f12, $f2                  
.L80B6C740:
/* 02DA0 80B6C740 91EFE0B6 */  lbu     $t7, %lo(D_80B7E0B6)($t7)  
/* 02DA4 80B6C744 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02DA8 80B6C748 55E10028 */  bnel    $t7, $at, .L80B6C7EC       
/* 02DAC 80B6C74C 2A2100BF */  slti    $at, $s1, 0x00BF           
/* 02DB0 80B6C750 460C803C */  c.lt.s  $f16, $f12                 
/* 02DB4 80B6C754 00000000 */  nop
/* 02DB8 80B6C758 45000021 */  bc1f    .L80B6C7E0                 
/* 02DBC 80B6C75C 00000000 */  nop
/* 02DC0 80B6C760 46007004 */  sqrt.s  $f0, $f14                  
/* 02DC4 80B6C764 3C0180B8 */  lui     $at, %hi(D_80B7B3E8)       ## $at = 80B80000
/* 02DC8 80B6C768 C424B3E8 */  lwc1    $f4, %lo(D_80B7B3E8)($at)  
/* 02DCC 80B6C76C 3C0180B8 */  lui     $at, %hi(D_80B7B3EC)       ## $at = 80B80000
/* 02DD0 80B6C770 461C0201 */  sub.s   $f8, $f0, $f28             
/* 02DD4 80B6C774 46044282 */  mul.s   $f10, $f8, $f4             
/* 02DD8 80B6C778 46025300 */  add.s   $f12, $f10, $f2            
/* 02DDC 80B6C77C 4610603C */  c.lt.s  $f12, $f16                 
/* 02DE0 80B6C780 00000000 */  nop
/* 02DE4 80B6C784 4500002E */  bc1f    .L80B6C840                 
/* 02DE8 80B6C788 00000000 */  nop
/* 02DEC 80B6C78C 460C8181 */  sub.s   $f6, $f16, $f12            
/* 02DF0 80B6C790 C428B3EC */  lwc1    $f8, %lo(D_80B7B3EC)($at)  
/* 02DF4 80B6C794 2A210064 */  slti    $at, $s1, 0x0064           
/* 02DF8 80B6C798 2638FF9C */  addiu   $t8, $s1, 0xFF9C           ## $t8 = FFFFFF9D
/* 02DFC 80B6C79C 46083082 */  mul.s   $f2, $f6, $f8              
/* 02E00 80B6C7A0 4602F03C */  c.lt.s  $f30, $f2                  
/* 02E04 80B6C7A4 00000000 */  nop
/* 02E08 80B6C7A8 45000002 */  bc1f    .L80B6C7B4                 
/* 02E0C 80B6C7AC 00000000 */  nop
/* 02E10 80B6C7B0 4600F086 */  mov.s   $f2, $f30                  
.L80B6C7B4:
/* 02E14 80B6C7B4 14200022 */  bne     $at, $zero, .L80B6C840     
/* 02E18 80B6C7B8 00000000 */  nop
/* 02E1C 80B6C7BC 44982000 */  mtc1    $t8, $f4                   ## $f4 = NaN
/* 02E20 80B6C7C0 3C0180B8 */  lui     $at, %hi(D_80B7B3F0)       ## $at = 80B80000
/* 02E24 80B6C7C4 C426B3F0 */  lwc1    $f6, %lo(D_80B7B3F0)($at)  
/* 02E28 80B6C7C8 468022A0 */  cvt.s.w $f10, $f4                  
/* 02E2C 80B6C7CC 46065202 */  mul.s   $f8, $f10, $f6             
/* 02E30 80B6C7D0 00000000 */  nop
/* 02E34 80B6C7D4 46081082 */  mul.s   $f2, $f2, $f8              
/* 02E38 80B6C7D8 10000019 */  beq     $zero, $zero, .L80B6C840   
/* 02E3C 80B6C7DC 46028401 */  sub.s   $f16, $f16, $f2            
.L80B6C7E0:
/* 02E40 80B6C7E0 10000017 */  beq     $zero, $zero, .L80B6C840   
/* 02E44 80B6C7E4 46128401 */  sub.s   $f16, $f16, $f18           
/* 02E48 80B6C7E8 2A2100BF */  slti    $at, $s1, 0x00BF           
.L80B6C7EC:
/* 02E4C 80B6C7EC 54200010 */  bnel    $at, $zero, .L80B6C830     
/* 02E50 80B6C7F0 4610603C */  c.lt.s  $f12, $f16                 
/* 02E54 80B6C7F4 4610603C */  c.lt.s  $f12, $f16                 
/* 02E58 80B6C7F8 3C0180B8 */  lui     $at, %hi(D_80B7B3F4)       ## $at = 80B80000
/* 02E5C 80B6C7FC 45000010 */  bc1f    .L80B6C840                 
/* 02E60 80B6C800 00000000 */  nop
/* 02E64 80B6C804 460C8101 */  sub.s   $f4, $f16, $f12            
/* 02E68 80B6C808 C42AB3F4 */  lwc1    $f10, %lo(D_80B7B3F4)($at) 
/* 02E6C 80B6C80C 460A2082 */  mul.s   $f2, $f4, $f10             
/* 02E70 80B6C810 4602903C */  c.lt.s  $f18, $f2                  
/* 02E74 80B6C814 00000000 */  nop
/* 02E78 80B6C818 45000002 */  bc1f    .L80B6C824                 
/* 02E7C 80B6C81C 00000000 */  nop
/* 02E80 80B6C820 46009086 */  mov.s   $f2, $f18                  
.L80B6C824:
/* 02E84 80B6C824 10000006 */  beq     $zero, $zero, .L80B6C840   
/* 02E88 80B6C828 46028401 */  sub.s   $f16, $f16, $f2            
/* 02E8C 80B6C82C 4610603C */  c.lt.s  $f12, $f16                 
.L80B6C830:
/* 02E90 80B6C830 00000000 */  nop
/* 02E94 80B6C834 45000002 */  bc1f    .L80B6C840                 
/* 02E98 80B6C838 00000000 */  nop
/* 02E9C 80B6C83C 46128401 */  sub.s   $f16, $f16, $f18           
.L80B6C840:
/* 02EA0 80B6C840 0C2DB0BB */  jal     func_80B6C2EC              
/* 02EA4 80B6C844 E7B000D8 */  swc1    $f16, 0x00D8($sp)          
/* 02EA8 80B6C848 10400004 */  beq     $v0, $zero, .L80B6C85C     
/* 02EAC 80B6C84C C7B000D8 */  lwc1    $f16, 0x00D8($sp)          
/* 02EB0 80B6C850 3C014228 */  lui     $at, 0x4228                ## $at = 42280000
/* 02EB4 80B6C854 44818000 */  mtc1    $at, $f16                  ## $f16 = 42.00
/* 02EB8 80B6C858 00000000 */  nop
.L80B6C85C:
/* 02EBC 80B6C85C C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 02EC0 80B6C860 C604FFFC */  lwc1    $f4, -0x0004($s0)          ## FFFFFFFC
/* 02EC4 80B6C864 C606FFF8 */  lwc1    $f6, -0x0008($s0)          ## FFFFFFF8
/* 02EC8 80B6C868 4600D386 */  mov.s   $f14, $f26                 
/* 02ECC 80B6C86C 46044501 */  sub.s   $f20, $f8, $f4             
/* 02ED0 80B6C870 46068601 */  sub.s   $f24, $f16, $f6            
/* 02ED4 80B6C874 0C0341F5 */  jal     atan2f
              
/* 02ED8 80B6C878 4600A306 */  mov.s   $f12, $f20                 
/* 02EDC 80B6C87C 461AD282 */  mul.s   $f10, $f26, $f26           
/* 02EE0 80B6C880 46000586 */  mov.s   $f22, $f0                  
/* 02EE4 80B6C884 4600C386 */  mov.s   $f14, $f24                 
/* 02EE8 80B6C888 4614A182 */  mul.s   $f6, $f20, $f20            
/* 02EEC 80B6C88C 46065000 */  add.s   $f0, $f10, $f6             
/* 02EF0 80B6C890 0C0341F5 */  jal     atan2f
              
/* 02EF4 80B6C894 46000304 */  sqrt.s  $f12, $f0                  
/* 02EF8 80B6C898 8FB90104 */  lw      $t9, 0x0104($sp)           
/* 02EFC 80B6C89C 46000507 */  neg.s   $f20, $f0                  
/* 02F00 80B6C8A0 4600B306 */  mov.s   $f12, $f22                 
/* 02F04 80B6C8A4 03321021 */  addu    $v0, $t9, $s2              
/* 02F08 80B6C8A8 E456FFF8 */  swc1    $f22, -0x0008($v0)         ## FFFFFFF8
/* 02F0C 80B6C8AC E454FFF4 */  swc1    $f20, -0x000C($v0)         ## FFFFFFF4
/* 02F10 80B6C8B0 0C034348 */  jal     Matrix_RotateY              
/* 02F14 80B6C8B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02F18 80B6C8B8 4600A306 */  mov.s   $f12, $f20                 
/* 02F1C 80B6C8BC 0C0342DC */  jal     Matrix_RotateX              
/* 02F20 80B6C8C0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02F24 80B6C8C4 27A400C0 */  addiu   $a0, $sp, 0x00C0           ## $a0 = FFFFFFC8
/* 02F28 80B6C8C8 0C0346BD */  jal     Matrix_MultVec3f              
/* 02F2C 80B6C8CC 27A500B4 */  addiu   $a1, $sp, 0x00B4           ## $a1 = FFFFFFBC
/* 02F30 80B6C8D0 C608FFF4 */  lwc1    $f8, -0x000C($s0)          ## FFFFFFF4
/* 02F34 80B6C8D4 C7A400B4 */  lwc1    $f4, 0x00B4($sp)           
/* 02F38 80B6C8D8 C606FFF8 */  lwc1    $f6, -0x0008($s0)          ## FFFFFFF8
/* 02F3C 80B6C8DC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 02F40 80B6C8E0 46044280 */  add.s   $f10, $f8, $f4             
/* 02F44 80B6C8E4 00118C00 */  sll     $s1, $s1, 16               
/* 02F48 80B6C8E8 00118C03 */  sra     $s1, $s1, 16               
/* 02F4C 80B6C8EC 26B50001 */  addiu   $s5, $s5, 0x0001           ## $s5 = 00000001
/* 02F50 80B6C8F0 E60A0000 */  swc1    $f10, 0x0000($s0)          ## 00000000
/* 02F54 80B6C8F4 C7A800B8 */  lwc1    $f8, 0x00B8($sp)           
/* 02F58 80B6C8F8 C60AFFFC */  lwc1    $f10, -0x0004($s0)         ## FFFFFFFC
/* 02F5C 80B6C8FC 0015AC00 */  sll     $s5, $s5, 16               
/* 02F60 80B6C900 46083100 */  add.s   $f4, $f6, $f8              
/* 02F64 80B6C904 2A2100C8 */  slti    $at, $s1, 0x00C8           
/* 02F68 80B6C908 0015AC03 */  sra     $s5, $s5, 16               
/* 02F6C 80B6C90C E6040004 */  swc1    $f4, 0x0004($s0)           ## 00000004
/* 02F70 80B6C910 C7A600BC */  lwc1    $f6, 0x00BC($sp)           
/* 02F74 80B6C914 46065200 */  add.s   $f8, $f10, $f6             
/* 02F78 80B6C918 1420FF5F */  bne     $at, $zero, .L80B6C698     
/* 02F7C 80B6C91C E6080008 */  swc1    $f8, 0x0008($s0)           ## 00000008
.L80B6C920:
/* 02F80 80B6C920 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 02F84 80B6C924 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 02F88 80B6C928 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 02F8C 80B6C92C D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 02F90 80B6C930 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 02F94 80B6C934 D7BC0038 */  ldc1    $f28, 0x0038($sp)          
/* 02F98 80B6C938 D7BE0040 */  ldc1    $f30, 0x0040($sp)          
/* 02F9C 80B6C93C 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 02FA0 80B6C940 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 02FA4 80B6C944 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 02FA8 80B6C948 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 02FAC 80B6C94C 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 02FB0 80B6C950 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 02FB4 80B6C954 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 02FB8 80B6C958 03E00008 */  jr      $ra                        
/* 02FBC 80B6C95C 27BD00F8 */  addiu   $sp, $sp, 0x00F8           ## $sp = 00000000
