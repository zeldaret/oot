glabel OceffWipe4_Draw
/* 000F4 80BACD04 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 000F8 80BACD08 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 000FC 80BACD0C AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00100 80BACD10 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00104 80BACD14 AFA400B0 */  sw      $a0, 0x00B0($sp)           
/* 00108 80BACD18 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 0010C 80BACD1C 27B8008C */  addiu   $t8, $sp, 0x008C           ## $t8 = FFFFFFDC
/* 00110 80BACD20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00114 80BACD24 31CF0FFF */  andi    $t7, $t6, 0x0FFF           ## $t7 = 00000000
/* 00118 80BACD28 AFAF00AC */  sw      $t7, 0x00AC($sp)           
/* 0011C 80BACD2C 84B907A0 */  lh      $t9, 0x07A0($a1)           ## 000007A0
/* 00120 80BACD30 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFCC
/* 00124 80BACD34 00195080 */  sll     $t2, $t9,  2               
/* 00128 80BACD38 00AA5821 */  addu    $t3, $a1, $t2              
/* 0012C 80BACD3C 8D6C0790 */  lw      $t4, 0x0790($t3)           ## 00000790
/* 00130 80BACD40 8D8E005C */  lw      $t6, 0x005C($t4)           ## 0000005C
/* 00134 80BACD44 AF0E0000 */  sw      $t6, 0x0000($t8)           ## FFFFFFDC
/* 00138 80BACD48 8D8D0060 */  lw      $t5, 0x0060($t4)           ## 00000060
/* 0013C 80BACD4C AF0D0004 */  sw      $t5, 0x0004($t8)           ## FFFFFFE0
/* 00140 80BACD50 8D8E0064 */  lw      $t6, 0x0064($t4)           ## 00000064
/* 00144 80BACD54 AF0E0008 */  sw      $t6, 0x0008($t8)           ## FFFFFFE4
/* 00148 80BACD58 84AF07A0 */  lh      $t7, 0x07A0($a1)           ## 000007A0
/* 0014C 80BACD5C 000FC880 */  sll     $t9, $t7,  2               
/* 00150 80BACD60 00B95021 */  addu    $t2, $a1, $t9              
/* 00154 80BACD64 0C016BED */  jal     func_8005AFB4              
/* 00158 80BACD68 8D450790 */  lw      $a1, 0x0790($t2)           ## 00000790
/* 0015C 80BACD6C 8FA900B0 */  lw      $t1, 0x00B0($sp)           
/* 00160 80BACD70 8523014C */  lh      $v1, 0x014C($t1)           ## 0000014C
/* 00164 80BACD74 28610010 */  slti    $at, $v1, 0x0010           
/* 00168 80BACD78 1020000B */  beq     $at, $zero, .L80BACDA8     
/* 0016C 80BACD7C 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
/* 00170 80BACD80 00042680 */  sll     $a0, $a0, 26               
/* 00174 80BACD84 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00178 80BACD88 00042403 */  sra     $a0, $a0, 16               
/* 0017C 80BACD8C 3C0180BB */  lui     $at, %hi(D_80BADBBC)       ## $at = 80BB0000
/* 00180 80BACD90 C424DBBC */  lwc1    $f4, %lo(D_80BADBBC)($at)  
/* 00184 80BACD94 8FAB00B0 */  lw      $t3, 0x00B0($sp)           
/* 00188 80BACD98 46040182 */  mul.s   $f6, $f0, $f4              
/* 0018C 80BACD9C E7A600A4 */  swc1    $f6, 0x00A4($sp)           
/* 00190 80BACDA0 10000004 */  beq     $zero, $zero, .L80BACDB4   
/* 00194 80BACDA4 8563014C */  lh      $v1, 0x014C($t3)           ## 0000014C
.L80BACDA8:
/* 00198 80BACDA8 3C0180BB */  lui     $at, %hi(D_80BADBC0)       ## $at = 80BB0000
/* 0019C 80BACDAC C428DBC0 */  lwc1    $f8, %lo(D_80BADBC0)($at)  
/* 001A0 80BACDB0 E7A800A4 */  swc1    $f8, 0x00A4($sp)           
.L80BACDB4:
/* 001A4 80BACDB4 2861001E */  slti    $at, $v1, 0x001E           
/* 001A8 80BACDB8 14200009 */  bne     $at, $zero, .L80BACDE0     
/* 001AC 80BACDBC 3C0280BB */  lui     $v0, %hi(D_80BAD9CF)       ## $v0 = 80BB0000
/* 001B0 80BACDC0 00034023 */  subu    $t0, $zero, $v1            
/* 001B4 80BACDC4 01000821 */  addu    $at, $t0, $zero            
/* 001B8 80BACDC8 00084080 */  sll     $t0, $t0,  2               
/* 001BC 80BACDCC 01014023 */  subu    $t0, $t0, $at              
/* 001C0 80BACDD0 00084080 */  sll     $t0, $t0,  2               
/* 001C4 80BACDD4 25080258 */  addiu   $t0, $t0, 0x0258           ## $t0 = 00000258
/* 001C8 80BACDD8 10000002 */  beq     $zero, $zero, .L80BACDE4   
/* 001CC 80BACDDC 310800FF */  andi    $t0, $t0, 0x00FF           ## $t0 = 00000058
.L80BACDE0:
/* 001D0 80BACDE0 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
.L80BACDE4:
/* 001D4 80BACDE4 3C0180BB */  lui     $at, %hi(D_80BAD9CF)       ## $at = 80BB0000
/* 001D8 80BACDE8 A028D9CF */  sb      $t0, %lo(D_80BAD9CF)($at)  
/* 001DC 80BACDEC 9042D9CF */  lbu     $v0, %lo(D_80BAD9CF)($v0)  
/* 001E0 80BACDF0 3C0180BB */  lui     $at, %hi(D_80BAD9AF)       ## $at = 80BB0000
/* 001E4 80BACDF4 3C0680BB */  lui     $a2, %hi(D_80BADB80)       ## $a2 = 80BB0000
/* 001E8 80BACDF8 A022D9AF */  sb      $v0, %lo(D_80BAD9AF)($at)  
/* 001EC 80BACDFC 3C0180BB */  lui     $at, %hi(D_80BAD98F)       ## $at = 80BB0000
/* 001F0 80BACE00 A022D98F */  sb      $v0, %lo(D_80BAD98F)($at)  
/* 001F4 80BACE04 3C0180BB */  lui     $at, %hi(D_80BAD96F)       ## $at = 80BB0000
/* 001F8 80BACE08 A022D96F */  sb      $v0, %lo(D_80BAD96F)($at)  
/* 001FC 80BACE0C 3C0180BB */  lui     $at, %hi(D_80BAD94F)       ## $at = 80BB0000
/* 00200 80BACE10 A022D94F */  sb      $v0, %lo(D_80BAD94F)($at)  
/* 00204 80BACE14 3C0180BB */  lui     $at, %hi(D_80BAD92F)       ## $at = 80BB0000
/* 00208 80BACE18 A022D92F */  sb      $v0, %lo(D_80BAD92F)($at)  
/* 0020C 80BACE1C 3C0180BB */  lui     $at, %hi(D_80BAD90F)       ## $at = 80BB0000
/* 00210 80BACE20 A022D90F */  sb      $v0, %lo(D_80BAD90F)($at)  
/* 00214 80BACE24 3C0180BB */  lui     $at, %hi(D_80BAD8EF)       ## $at = 80BB0000
/* 00218 80BACE28 A022D8EF */  sb      $v0, %lo(D_80BAD8EF)($at)  
/* 0021C 80BACE2C 3C0180BB */  lui     $at, %hi(D_80BAD8CF)       ## $at = 80BB0000
/* 00220 80BACE30 A022D8CF */  sb      $v0, %lo(D_80BAD8CF)($at)  
/* 00224 80BACE34 3C0180BB */  lui     $at, %hi(D_80BAD8AF)       ## $at = 80BB0000
/* 00228 80BACE38 A022D8AF */  sb      $v0, %lo(D_80BAD8AF)($at)  
/* 0022C 80BACE3C 3C0180BB */  lui     $at, %hi(D_80BAD88F)       ## $at = 80BB0000
/* 00230 80BACE40 A022D88F */  sb      $v0, %lo(D_80BAD88F)($at)  
/* 00234 80BACE44 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00238 80BACE48 24C6DB80 */  addiu   $a2, $a2, %lo(D_80BADB80)  ## $a2 = 80BADB80
/* 0023C 80BACE4C 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 00240 80BACE50 2407013A */  addiu   $a3, $zero, 0x013A         ## $a3 = 0000013A
/* 00244 80BACE54 0C031AB1 */  jal     Graph_OpenDisp              
/* 00248 80BACE58 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0024C 80BACE5C 0C024F61 */  jal     func_80093D84              
/* 00250 80BACE60 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00254 80BACE64 C7AA008C */  lwc1    $f10, 0x008C($sp)          
/* 00258 80BACE68 C7B0007C */  lwc1    $f16, 0x007C($sp)          
/* 0025C 80BACE6C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 00260 80BACE70 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 00264 80BACE74 46105300 */  add.s   $f12, $f10, $f16           
/* 00268 80BACE78 C7B20090 */  lwc1    $f18, 0x0090($sp)          
/* 0026C 80BACE7C C7A40080 */  lwc1    $f4, 0x0080($sp)           
/* 00270 80BACE80 46083280 */  add.s   $f10, $f6, $f8             
/* 00274 80BACE84 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00278 80BACE88 46049380 */  add.s   $f14, $f18, $f4            
/* 0027C 80BACE8C 44065000 */  mfc1    $a2, $f10                  
/* 00280 80BACE90 0C034261 */  jal     Matrix_Translate              
/* 00284 80BACE94 00000000 */  nop
/* 00288 80BACE98 3C0180BB */  lui     $at, %hi(D_80BADBC4)       ## $at = 80BB0000
/* 0028C 80BACE9C C42CDBC4 */  lwc1    $f12, %lo(D_80BADBC4)($at) 
/* 00290 80BACEA0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00294 80BACEA4 44066000 */  mfc1    $a2, $f12                  
/* 00298 80BACEA8 0C0342A3 */  jal     Matrix_Scale              
/* 0029C 80BACEAC 46006386 */  mov.s   $f14, $f12                 
/* 002A0 80BACEB0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002A4 80BACEB4 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 002A8 80BACEB8 0C0347F5 */  jal     func_800D1FD4              
/* 002AC 80BACEBC 02212021 */  addu    $a0, $s1, $at              
/* 002B0 80BACEC0 C7B000A4 */  lwc1    $f16, 0x00A4($sp)          
/* 002B4 80BACEC4 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 002B8 80BACEC8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002BC 80BACECC 46008487 */  neg.s   $f18, $f16                 
/* 002C0 80BACED0 46006386 */  mov.s   $f14, $f12                 
/* 002C4 80BACED4 44069000 */  mfc1    $a2, $f18                  
/* 002C8 80BACED8 0C034261 */  jal     Matrix_Translate              
/* 002CC 80BACEDC 00000000 */  nop
/* 002D0 80BACEE0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 002D4 80BACEE4 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 002D8 80BACEE8 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 002DC 80BACEEC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 002E0 80BACEF0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 002E4 80BACEF4 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 002E8 80BACEF8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 002EC 80BACEFC 3C0580BB */  lui     $a1, %hi(D_80BADB94)       ## $a1 = 80BB0000
/* 002F0 80BACF00 24A5DB94 */  addiu   $a1, $a1, %lo(D_80BADB94)  ## $a1 = 80BADB94
/* 002F4 80BACF04 24060144 */  addiu   $a2, $zero, 0x0144         ## $a2 = 00000144
/* 002F8 80BACF08 0C0346A2 */  jal     Matrix_NewMtx              
/* 002FC 80BACF0C AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00300 80BACF10 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00304 80BACF14 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00308 80BACF18 3C0C80BB */  lui     $t4, %hi(D_80BADAA0)       ## $t4 = 80BB0000
/* 0030C 80BACF1C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00310 80BACF20 8FAD00B0 */  lw      $t5, 0x00B0($sp)           
/* 00314 80BACF24 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00318 80BACF28 3C1980BB */  lui     $t9, %hi(D_80BADA38)       ## $t9 = 80BB0000
/* 0031C 80BACF2C 85AE001C */  lh      $t6, 0x001C($t5)           ## 0000001C
/* 00320 80BACF30 258CDAA0 */  addiu   $t4, $t4, %lo(D_80BADAA0)  ## $t4 = 80BADAA0
/* 00324 80BACF34 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00328 80BACF38 55C1000A */  bnel    $t6, $at, .L80BACF64       
/* 0032C 80BACF3C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00330 80BACF40 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00334 80BACF44 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00338 80BACF48 2739DA38 */  addiu   $t9, $t9, %lo(D_80BADA38)  ## $t9 = 80BADA38
/* 0033C 80BACF4C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00340 80BACF50 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00344 80BACF54 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00348 80BACF58 10000008 */  beq     $zero, $zero, .L80BACF7C   
/* 0034C 80BACF5C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00350 80BACF60 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
.L80BACF64:
/* 00354 80BACF64 3C0B80BB */  lui     $t3, %hi(D_80BAD9D0)       ## $t3 = 80BB0000
/* 00358 80BACF68 256BD9D0 */  addiu   $t3, $t3, %lo(D_80BAD9D0)  ## $t3 = 80BAD9D0
/* 0035C 80BACF6C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00360 80BACF70 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00364 80BACF74 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00368 80BACF78 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
.L80BACF7C:
/* 0036C 80BACF7C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00370 80BACF80 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00374 80BACF84 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 00378 80BACF88 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0037C 80BACF8C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00380 80BACF90 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00384 80BACF94 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00388 80BACF98 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0038C 80BACF9C 8FA900AC */  lw      $t1, 0x00AC($sp)           
/* 00390 80BACFA0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00394 80BACFA4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00398 80BACFA8 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 0039C 80BACFAC AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 003A0 80BACFB0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003A4 80BACFB4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 003A8 80BACFB8 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 003AC 80BACFBC 00090823 */  subu    $at, $zero, $t1            
/* 003B0 80BACFC0 00095023 */  subu    $t2, $zero, $t1            
/* 003B4 80BACFC4 AFAA001C */  sw      $t2, 0x001C($sp)           
/* 003B8 80BACFC8 00013840 */  sll     $a3, $at,  1               
/* 003BC 80BACFCC AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 003C0 80BACFD0 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 003C4 80BACFD4 AFB80028 */  sw      $t8, 0x0028($sp)           
/* 003C8 80BACFD8 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 003CC 80BACFDC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 003D0 80BACFE0 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 003D4 80BACFE4 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 003D8 80BACFE8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 003DC 80BACFEC 00093040 */  sll     $a2, $t1,  1               
/* 003E0 80BACFF0 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 003E4 80BACFF4 3C0D80BB */  lui     $t5, %hi(D_80BADAF8)       ## $t5 = 80BB0000
/* 003E8 80BACFF8 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 003EC 80BACFFC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 003F0 80BAD000 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 003F4 80BAD004 25ADDAF8 */  addiu   $t5, $t5, %lo(D_80BADAF8)  ## $t5 = 80BADAF8
/* 003F8 80BAD008 3C0680BB */  lui     $a2, %hi(D_80BADBA8)       ## $a2 = 80BB0000
/* 003FC 80BAD00C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00400 80BAD010 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00404 80BAD014 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00408 80BAD018 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0040C 80BAD01C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00410 80BAD020 24C6DBA8 */  addiu   $a2, $a2, %lo(D_80BADBA8)  ## $a2 = 80BADBA8
/* 00414 80BAD024 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 00418 80BAD028 0C031AD5 */  jal     Graph_CloseDisp              
/* 0041C 80BAD02C 24070158 */  addiu   $a3, $zero, 0x0158         ## $a3 = 00000158
/* 00420 80BAD030 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00424 80BAD034 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00428 80BAD038 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 0042C 80BAD03C 03E00008 */  jr      $ra                        
/* 00430 80BAD040 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
/* 00434 80BAD044 00000000 */  nop
/* 00438 80BAD048 00000000 */  nop
/* 0043C 80BAD04C 00000000 */  nop

