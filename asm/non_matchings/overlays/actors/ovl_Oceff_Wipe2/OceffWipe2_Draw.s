glabel OceffWipe2_Draw
/* 0011C 80BA9CCC 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 00120 80BA9CD0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00124 80BA9CD4 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00128 80BA9CD8 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 0012C 80BA9CDC 8CAE009C */  lw      $t6, 0x009C($a1)           ## 0000009C
/* 00130 80BA9CE0 27B8008C */  addiu   $t8, $sp, 0x008C           ## $t8 = FFFFFFDC
/* 00134 80BA9CE4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00138 80BA9CE8 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 0013C 80BA9CEC AFAF00AC */  sw      $t7, 0x00AC($sp)           
/* 00140 80BA9CF0 84B907A0 */  lh      $t9, 0x07A0($a1)           ## 000007A0
/* 00144 80BA9CF4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00148 80BA9CF8 27A4007C */  addiu   $a0, $sp, 0x007C           ## $a0 = FFFFFFCC
/* 0014C 80BA9CFC 00195080 */  sll     $t2, $t9,  2               
/* 00150 80BA9D00 00AA5821 */  addu    $t3, $a1, $t2              
/* 00154 80BA9D04 8D6C0790 */  lw      $t4, 0x0790($t3)           ## 00000790
/* 00158 80BA9D08 8D8E005C */  lw      $t6, 0x005C($t4)           ## 0000005C
/* 0015C 80BA9D0C AF0E0000 */  sw      $t6, 0x0000($t8)           ## FFFFFFDC
/* 00160 80BA9D10 8D8D0060 */  lw      $t5, 0x0060($t4)           ## 00000060
/* 00164 80BA9D14 AF0D0004 */  sw      $t5, 0x0004($t8)           ## FFFFFFE0
/* 00168 80BA9D18 8D8E0064 */  lw      $t6, 0x0064($t4)           ## 00000064
/* 0016C 80BA9D1C AF0E0008 */  sw      $t6, 0x0008($t8)           ## FFFFFFE4
/* 00170 80BA9D20 84AF07A0 */  lh      $t7, 0x07A0($a1)           ## 000007A0
/* 00174 80BA9D24 000FC880 */  sll     $t9, $t7,  2               
/* 00178 80BA9D28 00B95021 */  addu    $t2, $a1, $t9              
/* 0017C 80BA9D2C 8D450790 */  lw      $a1, 0x0790($t2)           ## 00000790
/* 00180 80BA9D30 0C016BED */  jal     func_8005AFB4              
/* 00184 80BA9D34 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 00188 80BA9D38 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 0018C 80BA9D3C 84D0014C */  lh      $s0, 0x014C($a2)           ## 0000014C
/* 00190 80BA9D40 2A010020 */  slti    $at, $s0, 0x0020           
/* 00194 80BA9D44 1020000C */  beq     $at, $zero, .L80BA9D78     
/* 00198 80BA9D48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0019C 80BA9D4C 00042640 */  sll     $a0, $a0, 25               
/* 001A0 80BA9D50 00042403 */  sra     $a0, $a0, 16               
/* 001A4 80BA9D54 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 001A8 80BA9D58 AFA600B0 */  sw      $a2, 0x00B0($sp)           
/* 001AC 80BA9D5C 3C0180BB */  lui     $at, %hi(D_80BAB2FC)       ## $at = 80BB0000
/* 001B0 80BA9D60 C424B2FC */  lwc1    $f4, %lo(D_80BAB2FC)($at)  
/* 001B4 80BA9D64 8FA600B0 */  lw      $a2, 0x00B0($sp)           
/* 001B8 80BA9D68 46040182 */  mul.s   $f6, $f0, $f4              
/* 001BC 80BA9D6C E7A600A4 */  swc1    $f6, 0x00A4($sp)           
/* 001C0 80BA9D70 10000004 */  beq     $zero, $zero, .L80BA9D84   
/* 001C4 80BA9D74 84D0014C */  lh      $s0, 0x014C($a2)           ## 0000014C
.L80BA9D78:
/* 001C8 80BA9D78 3C0180BB */  lui     $at, %hi(D_80BAB300)       ## $at = 80BB0000
/* 001CC 80BA9D7C C428B300 */  lwc1    $f8, %lo(D_80BAB300)($at)  
/* 001D0 80BA9D80 E7A800A4 */  swc1    $f8, 0x00A4($sp)           
.L80BA9D84:
/* 001D4 80BA9D84 2A010050 */  slti    $at, $s0, 0x0050           
/* 001D8 80BA9D88 14200009 */  bne     $at, $zero, .L80BA9DB0     
/* 001DC 80BA9D8C 3C0280BB */  lui     $v0, %hi(D_80BAB17F)       ## $v0 = 80BB0000
/* 001E0 80BA9D90 00101823 */  subu    $v1, $zero, $s0            
/* 001E4 80BA9D94 00600821 */  addu    $at, $v1, $zero            
/* 001E8 80BA9D98 00031880 */  sll     $v1, $v1,  2               
/* 001EC 80BA9D9C 00611823 */  subu    $v1, $v1, $at              
/* 001F0 80BA9DA0 00031880 */  sll     $v1, $v1,  2               
/* 001F4 80BA9DA4 246304B0 */  addiu   $v1, $v1, 0x04B0           ## $v1 = 000004B0
/* 001F8 80BA9DA8 10000002 */  beq     $zero, $zero, .L80BA9DB4   
/* 001FC 80BA9DAC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 000000B0
.L80BA9DB0:
/* 00200 80BA9DB0 240300FF */  addiu   $v1, $zero, 0x00FF         ## $v1 = 000000FF
.L80BA9DB4:
/* 00204 80BA9DB4 3C0180BB */  lui     $at, %hi(D_80BAB17F)       ## $at = 80BB0000
/* 00208 80BA9DB8 A023B17F */  sb      $v1, %lo(D_80BAB17F)($at)  
/* 0020C 80BA9DBC 9042B17F */  lbu     $v0, %lo(D_80BAB17F)($v0)  
/* 00210 80BA9DC0 3C0180BB */  lui     $at, %hi(D_80BAB15F)       ## $at = 80BB0000
/* 00214 80BA9DC4 3C0680BB */  lui     $a2, %hi(D_80BAB2C0)       ## $a2 = 80BB0000
/* 00218 80BA9DC8 A022B15F */  sb      $v0, %lo(D_80BAB15F)($at)  
/* 0021C 80BA9DCC 3C0180BB */  lui     $at, %hi(D_80BAB13F)       ## $at = 80BB0000
/* 00220 80BA9DD0 A022B13F */  sb      $v0, %lo(D_80BAB13F)($at)  
/* 00224 80BA9DD4 3C0180BB */  lui     $at, %hi(D_80BAB12F)       ## $at = 80BB0000
/* 00228 80BA9DD8 A022B12F */  sb      $v0, %lo(D_80BAB12F)($at)  
/* 0022C 80BA9DDC 3C0180BB */  lui     $at, %hi(D_80BAB10F)       ## $at = 80BB0000
/* 00230 80BA9DE0 A022B10F */  sb      $v0, %lo(D_80BAB10F)($at)  
/* 00234 80BA9DE4 3C0180BB */  lui     $at, %hi(D_80BAB0EF)       ## $at = 80BB0000
/* 00238 80BA9DE8 A022B0EF */  sb      $v0, %lo(D_80BAB0EF)($at)  
/* 0023C 80BA9DEC 3C0180BB */  lui     $at, %hi(D_80BAB0CF)       ## $at = 80BB0000
/* 00240 80BA9DF0 A022B0CF */  sb      $v0, %lo(D_80BAB0CF)($at)  
/* 00244 80BA9DF4 3C0180BB */  lui     $at, %hi(D_80BAB0AF)       ## $at = 80BB0000
/* 00248 80BA9DF8 A022B0AF */  sb      $v0, %lo(D_80BAB0AF)($at)  
/* 0024C 80BA9DFC 3C0180BB */  lui     $at, %hi(D_80BAB08F)       ## $at = 80BB0000
/* 00250 80BA9E00 A022B08F */  sb      $v0, %lo(D_80BAB08F)($at)  
/* 00254 80BA9E04 3C0180BB */  lui     $at, %hi(D_80BAB06F)       ## $at = 80BB0000
/* 00258 80BA9E08 A022B06F */  sb      $v0, %lo(D_80BAB06F)($at)  
/* 0025C 80BA9E0C 3C0180BB */  lui     $at, %hi(D_80BAB04F)       ## $at = 80BB0000
/* 00260 80BA9E10 A022B04F */  sb      $v0, %lo(D_80BAB04F)($at)  
/* 00264 80BA9E14 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00268 80BA9E18 24C6B2C0 */  addiu   $a2, $a2, %lo(D_80BAB2C0)  ## $a2 = 80BAB2C0
/* 0026C 80BA9E1C 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 00270 80BA9E20 24070186 */  addiu   $a3, $zero, 0x0186         ## $a3 = 00000186
/* 00274 80BA9E24 0C031AB1 */  jal     func_800C6AC4              
/* 00278 80BA9E28 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0027C 80BA9E2C 0C024F61 */  jal     func_80093D84              
/* 00280 80BA9E30 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00284 80BA9E34 C7AA008C */  lwc1    $f10, 0x008C($sp)          
/* 00288 80BA9E38 C7B0007C */  lwc1    $f16, 0x007C($sp)          
/* 0028C 80BA9E3C C7A60094 */  lwc1    $f6, 0x0094($sp)           
/* 00290 80BA9E40 C7A80084 */  lwc1    $f8, 0x0084($sp)           
/* 00294 80BA9E44 46105300 */  add.s   $f12, $f10, $f16           
/* 00298 80BA9E48 C7B20090 */  lwc1    $f18, 0x0090($sp)          
/* 0029C 80BA9E4C C7A40080 */  lwc1    $f4, 0x0080($sp)           
/* 002A0 80BA9E50 46083280 */  add.s   $f10, $f6, $f8             
/* 002A4 80BA9E54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002A8 80BA9E58 46049380 */  add.s   $f14, $f18, $f4            
/* 002AC 80BA9E5C 44065000 */  mfc1    $a2, $f10                  
/* 002B0 80BA9E60 0C034261 */  jal     Matrix_Translate              
/* 002B4 80BA9E64 00000000 */  nop
/* 002B8 80BA9E68 3C0180BB */  lui     $at, %hi(D_80BAB304)       ## $at = 80BB0000
/* 002BC 80BA9E6C C42CB304 */  lwc1    $f12, %lo(D_80BAB304)($at) 
/* 002C0 80BA9E70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002C4 80BA9E74 44066000 */  mfc1    $a2, $f12                  
/* 002C8 80BA9E78 0C0342A3 */  jal     Matrix_Scale              
/* 002CC 80BA9E7C 46006386 */  mov.s   $f14, $f12                 
/* 002D0 80BA9E80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 002D4 80BA9E84 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 002D8 80BA9E88 0C0347F5 */  jal     func_800D1FD4              
/* 002DC 80BA9E8C 02212021 */  addu    $a0, $s1, $at              
/* 002E0 80BA9E90 C7B000A4 */  lwc1    $f16, 0x00A4($sp)          
/* 002E4 80BA9E94 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 002E8 80BA9E98 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002EC 80BA9E9C 46008487 */  neg.s   $f18, $f16                 
/* 002F0 80BA9EA0 46006386 */  mov.s   $f14, $f12                 
/* 002F4 80BA9EA4 44069000 */  mfc1    $a2, $f18                  
/* 002F8 80BA9EA8 0C034261 */  jal     Matrix_Translate              
/* 002FC 80BA9EAC 00000000 */  nop
/* 00300 80BA9EB0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00304 80BA9EB4 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00308 80BA9EB8 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 0030C 80BA9EBC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00310 80BA9EC0 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00314 80BA9EC4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00318 80BA9EC8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0031C 80BA9ECC 3C0580BB */  lui     $a1, %hi(D_80BAB2D4)       ## $a1 = 80BB0000
/* 00320 80BA9ED0 24A5B2D4 */  addiu   $a1, $a1, %lo(D_80BAB2D4)  ## $a1 = 80BAB2D4
/* 00324 80BA9ED4 24060190 */  addiu   $a2, $zero, 0x0190         ## $a2 = 00000190
/* 00328 80BA9ED8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0032C 80BA9EDC AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00330 80BA9EE0 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 00334 80BA9EE4 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 00338 80BA9EE8 240EAAFF */  addiu   $t6, $zero, 0xAAFF         ## $t6 = FFFFAAFF
/* 0033C 80BA9EEC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00340 80BA9EF0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00344 80BA9EF4 3C0AFF64 */  lui     $t2, 0xFF64                ## $t2 = FF640000
/* 00348 80BA9EF8 354A0080 */  ori     $t2, $t2, 0x0080           ## $t2 = FF640080
/* 0034C 80BA9EFC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00350 80BA9F00 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00354 80BA9F04 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00358 80BA9F08 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 0035C 80BA9F0C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00360 80BA9F10 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 00364 80BA9F14 3C1880BB */  lui     $t8, %hi(D_80BAB190)       ## $t8 = 80BB0000
/* 00368 80BA9F18 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0036C 80BA9F1C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00370 80BA9F20 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00374 80BA9F24 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00378 80BA9F28 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0037C 80BA9F2C 2718B190 */  addiu   $t8, $t8, %lo(D_80BAB190)  ## $t8 = 80BAB190
/* 00380 80BA9F30 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00384 80BA9F34 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00388 80BA9F38 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0038C 80BA9F3C AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00390 80BA9F40 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00394 80BA9F44 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00398 80BA9F48 8FA900AC */  lw      $t1, 0x00AC($sp)           
/* 0039C 80BA9F4C 240A0040 */  addiu   $t2, $zero, 0x0040         ## $t2 = 00000040
/* 003A0 80BA9F50 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 003A4 80BA9F54 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 003A8 80BA9F58 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 003AC 80BA9F5C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 003B0 80BA9F60 00090823 */  subu    $at, $zero, $t1            
/* 003B4 80BA9F64 00013880 */  sll     $a3, $at,  2               
/* 003B8 80BA9F68 00E13823 */  subu    $a3, $a3, $at              
/* 003BC 80BA9F6C 00093080 */  sll     $a2, $t1,  2               
/* 003C0 80BA9F70 00073840 */  sll     $a3, $a3,  1               
/* 003C4 80BA9F74 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 003C8 80BA9F78 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 003CC 80BA9F7C 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 003D0 80BA9F80 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 003D4 80BA9F84 00C93023 */  subu    $a2, $a2, $t1              
/* 003D8 80BA9F88 00063040 */  sll     $a2, $a2,  1               
/* 003DC 80BA9F8C AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 003E0 80BA9F90 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 003E4 80BA9F94 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 003E8 80BA9F98 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 003EC 80BA9F9C AFA7001C */  sw      $a3, 0x001C($sp)           
/* 003F0 80BA9FA0 AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 003F4 80BA9FA4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 003F8 80BA9FA8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003FC 80BA9FAC 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00400 80BA9FB0 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 00404 80BA9FB4 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00408 80BA9FB8 3C0C80BB */  lui     $t4, %hi(D_80BAB238)       ## $t4 = 80BB0000
/* 0040C 80BA9FBC 258CB238 */  addiu   $t4, $t4, %lo(D_80BAB238)  ## $t4 = 80BAB238
/* 00410 80BA9FC0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00414 80BA9FC4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00418 80BA9FC8 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 0041C 80BA9FCC 3C0680BB */  lui     $a2, %hi(D_80BAB2E8)       ## $a2 = 80BB0000
/* 00420 80BA9FD0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00424 80BA9FD4 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00428 80BA9FD8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0042C 80BA9FDC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00430 80BA9FE0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 00434 80BA9FE4 24C6B2E8 */  addiu   $a2, $a2, %lo(D_80BAB2E8)  ## $a2 = 80BAB2E8
/* 00438 80BA9FE8 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFB8
/* 0043C 80BA9FEC 0C031AD5 */  jal     func_800C6B54              
/* 00440 80BA9FF0 240701A1 */  addiu   $a3, $zero, 0x01A1         ## $a3 = 000001A1
/* 00444 80BA9FF4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00448 80BA9FF8 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 0044C 80BA9FFC 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00450 80BAA000 03E00008 */  jr      $ra                        
/* 00454 80BAA004 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000
/* 00458 80BAA008 00000000 */  nop
/* 0045C 80BAA00C 00000000 */  nop

