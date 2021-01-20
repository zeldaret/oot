.late_rodata
glabel D_80AAEC7C
 .word 0x38000100
glabel D_80AAEC80
 .word 0x3F7C1BDA
glabel D_80AAEC84
 .word 0xBF7C1BDA

.text
glabel func_80AAE294
/* 00B24 80AAE294 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00B28 80AAE298 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00B2C 80AAE29C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B30 80AAE2A0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00B34 80AAE2A4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00B38 80AAE2A8 0C023A62 */  jal     Player_InCsMode              
/* 00B3C 80AAE2AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00B40 80AAE2B0 54400092 */  bnel    $v0, $zero, .L80AAE4FC     
/* 00B44 80AAE2B4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00B48 80AAE2B8 0C02927F */  jal     SkelAnime_Update
              
/* 00B4C 80AAE2BC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00B50 80AAE2C0 8E030258 */  lw      $v1, 0x0258($s0)           ## 00000258
/* 00B54 80AAE2C4 5460000F */  bnel    $v1, $zero, .L80AAE304     
/* 00B58 80AAE2C8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B5C 80AAE2CC C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 00B60 80AAE2D0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00B64 80AAE2D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B68 80AAE2D8 4600218D */  trunc.w.s $f6, $f4                   
/* 00B6C 80AAE2DC 44023000 */  mfc1    $v0, $f6                   
/* 00B70 80AAE2E0 00000000 */  nop
/* 00B74 80AAE2E4 10410003 */  beq     $v0, $at, .L80AAE2F4       
/* 00B78 80AAE2E8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00B7C 80AAE2EC 54410005 */  bnel    $v0, $at, .L80AAE304       
/* 00B80 80AAE2F0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80AAE2F4:
/* 00B84 80AAE2F4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B88 80AAE2F8 24050800 */  addiu   $a1, $zero, 0x0800         ## $a1 = 00000800
/* 00B8C 80AAE2FC 8E030258 */  lw      $v1, 0x0258($s0)           ## 00000258
/* 00B90 80AAE300 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L80AAE304:
/* 00B94 80AAE304 1461001B */  bne     $v1, $at, .L80AAE374       
/* 00B98 80AAE308 00000000 */  nop
/* 00B9C 80AAE30C C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00BA0 80AAE310 C6080168 */  lwc1    $f8, 0x0168($s0)           ## 00000168
/* 00BA4 80AAE314 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 00BA8 80AAE318 44816000 */  mtc1    $at, $f12                  ## $f12 = 9.00
/* 00BAC 80AAE31C 46080081 */  sub.s   $f2, $f0, $f8              
/* 00BB0 80AAE320 3C014198 */  lui     $at, 0x4198                ## $at = 41980000
/* 00BB4 80AAE324 460C103C */  c.lt.s  $f2, $f12                  
/* 00BB8 80AAE328 00000000 */  nop
/* 00BBC 80AAE32C 45020006 */  bc1fl   .L80AAE348                 
/* 00BC0 80AAE330 44816000 */  mtc1    $at, $f12                  ## $f12 = 19.00
/* 00BC4 80AAE334 4600603E */  c.le.s  $f12, $f0                  
/* 00BC8 80AAE338 00000000 */  nop
/* 00BCC 80AAE33C 4503000B */  bc1tl   .L80AAE36C                 
/* 00BD0 80AAE340 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD4 80AAE344 44816000 */  mtc1    $at, $f12                  ## $f12 = 19.00
.L80AAE348:
/* 00BD8 80AAE348 00000000 */  nop
/* 00BDC 80AAE34C 460C103C */  c.lt.s  $f2, $f12                  
/* 00BE0 80AAE350 00000000 */  nop
/* 00BE4 80AAE354 45000007 */  bc1f    .L80AAE374                 
/* 00BE8 80AAE358 00000000 */  nop
/* 00BEC 80AAE35C 4600603E */  c.le.s  $f12, $f0                  
/* 00BF0 80AAE360 00000000 */  nop
/* 00BF4 80AAE364 45000003 */  bc1f    .L80AAE374                 
/* 00BF8 80AAE368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AAE36C:
/* 00BFC 80AAE36C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C00 80AAE370 240538B8 */  addiu   $a1, $zero, 0x38B8         ## $a1 = 000038B8
.L80AAE374:
/* 00C04 80AAE374 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xef6)
/* 00C08 80AAE378 95EFF556 */  lhu     $t7, %lo(gSaveContext+0xef6)($t7)
/* 00C0C 80AAE37C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00C10 80AAE380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 80AAE384 31F80800 */  andi    $t8, $t7, 0x0800           ## $t8 = 00000000
/* 00C18 80AAE388 53000009 */  beql    $t8, $zero, .L80AAE3B0     
/* 00C1C 80AAE38C 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 00C20 80AAE390 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C24 80AAE394 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00C28 80AAE398 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00C2C 80AAE39C 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 00C30 80AAE3A0 E60A0200 */  swc1    $f10, 0x0200($s0)          ## 00000200
/* 00C34 80AAE3A4 10000006 */  beq     $zero, $zero, .L80AAE3C0   
/* 00C38 80AAE3A8 E6100168 */  swc1    $f16, 0x0168($s0)          ## 00000168
/* 00C3C 80AAE3AC 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
.L80AAE3B0:
/* 00C40 80AAE3B0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C44 80AAE3B4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 00C48 80AAE3B8 E6120200 */  swc1    $f18, 0x0200($s0)          ## 00000200
/* 00C4C 80AAE3BC E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
.L80AAE3C0:
/* 00C50 80AAE3C0 0C2AB7BC */  jal     func_80AADEF0              
/* 00C54 80AAE3C4 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00C58 80AAE3C8 0C2AB69C */  jal     func_80AADA70              
/* 00C5C 80AAE3CC 00000000 */  nop
/* 00C60 80AAE3D0 14400025 */  bne     $v0, $zero, .L80AAE468     
/* 00C64 80AAE3D4 00000000 */  nop
/* 00C68 80AAE3D8 8E020078 */  lw      $v0, 0x0078($s0)           ## 00000078
/* 00C6C 80AAE3DC 10400022 */  beq     $v0, $zero, .L80AAE468     
/* 00C70 80AAE3E0 00000000 */  nop
/* 00C74 80AAE3E4 8459000A */  lh      $t9, 0x000A($v0)           ## 0000000A
/* 00C78 80AAE3E8 3C0180AB */  lui     $at, %hi(D_80AAEC7C)       ## $at = 80AB0000
/* 00C7C 80AAE3EC C42AEC7C */  lwc1    $f10, %lo(D_80AAEC7C)($at) 
/* 00C80 80AAE3F0 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00C84 80AAE3F4 3C0180AB */  lui     $at, %hi(D_80AAEC80)       ## $at = 80AB0000
/* 00C88 80AAE3F8 C430EC80 */  lwc1    $f16, %lo(D_80AAEC80)($at) 
/* 00C8C 80AAE3FC 46803220 */  cvt.s.w $f8, $f6                   
/* 00C90 80AAE400 3C0180AB */  lui     $at, %hi(D_80AAEC84)       ## $at = 80AB0000
/* 00C94 80AAE404 460A4002 */  mul.s   $f0, $f8, $f10             
/* 00C98 80AAE408 4600803C */  c.lt.s  $f16, $f0                  
/* 00C9C 80AAE40C 00000000 */  nop
/* 00CA0 80AAE410 45030007 */  bc1tl   .L80AAE430                 
/* 00CA4 80AAE414 8E02025C */  lw      $v0, 0x025C($s0)           ## 0000025C
/* 00CA8 80AAE418 C432EC84 */  lwc1    $f18, %lo(D_80AAEC84)($at) 
/* 00CAC 80AAE41C 4612003C */  c.lt.s  $f0, $f18                  
/* 00CB0 80AAE420 00000000 */  nop
/* 00CB4 80AAE424 45020010 */  bc1fl   .L80AAE468                 
/* 00CB8 80AAE428 AE00025C */  sw      $zero, 0x025C($s0)         ## 0000025C
/* 00CBC 80AAE42C 8E02025C */  lw      $v0, 0x025C($s0)           ## 0000025C
.L80AAE430:
/* 00CC0 80AAE430 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC4 80AAE434 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CC8 80AAE438 2841001F */  slti    $at, $v0, 0x001F           
/* 00CCC 80AAE43C 14200007 */  bne     $at, $zero, .L80AAE45C     
/* 00CD0 80AAE440 24490001 */  addiu   $t1, $v0, 0x0001           ## $t1 = 00000001
/* 00CD4 80AAE444 0C2AB5DC */  jal     func_80AAD770              
/* 00CD8 80AAE448 26060258 */  addiu   $a2, $s0, 0x0258           ## $a2 = 00000258
/* 00CDC 80AAE44C 3C0880AB */  lui     $t0, %hi(func_80AAE224)    ## $t0 = 80AB0000
/* 00CE0 80AAE450 2508E224 */  addiu   $t0, $t0, %lo(func_80AAE224) ## $t0 = 80AAE224
/* 00CE4 80AAE454 10000004 */  beq     $zero, $zero, .L80AAE468   
/* 00CE8 80AAE458 AE080190 */  sw      $t0, 0x0190($s0)           ## 00000190
.L80AAE45C:
/* 00CEC 80AAE45C 10000002 */  beq     $zero, $zero, .L80AAE468   
/* 00CF0 80AAE460 AE09025C */  sw      $t1, 0x025C($s0)           ## 0000025C
/* 00CF4 80AAE464 AE00025C */  sw      $zero, 0x025C($s0)         ## 0000025C
.L80AAE468:
/* 00CF8 80AAE468 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00CFC 80AAE46C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00D00 80AAE470 944A0EF6 */  lhu     $t2, 0x0EF6($v0)           ## 8015F556
/* 00D04 80AAE474 314B0800 */  andi    $t3, $t2, 0x0800           ## $t3 = 00000000
/* 00D08 80AAE478 51600020 */  beql    $t3, $zero, .L80AAE4FC     
/* 00D0C 80AAE47C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00D10 80AAE480 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00D14 80AAE484 8C4C135C */  lw      $t4, 0x135C($v0)           ## 8015F9BC
/* 00D18 80AAE488 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00D1C 80AAE48C E7A40038 */  swc1    $f4, 0x0038($sp)           
/* 00D20 80AAE490 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D24 80AAE494 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00D28 80AAE498 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF0
/* 00D2C 80AAE49C E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00D30 80AAE4A0 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00D34 80AAE4A4 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 00D38 80AAE4A8 11810008 */  beq     $t4, $at, .L80AAE4CC       
/* 00D3C 80AAE4AC E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00D40 80AAE4B0 240D015E */  addiu   $t5, $zero, 0x015E         ## $t5 = 0000015E
/* 00D44 80AAE4B4 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 00D48 80AAE4B8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00D4C 80AAE4BC AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00D50 80AAE4C0 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00D54 80AAE4C4 0C00CD20 */  jal     func_80033480              
/* 00D58 80AAE4C8 AFA00018 */  sw      $zero, 0x0018($sp)         
.L80AAE4CC:
/* 00D5C 80AAE4CC 920F01A7 */  lbu     $t7, 0x01A7($s0)           ## 000001A7
/* 00D60 80AAE4D0 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00D64 80AAE4D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D68 80AAE4D8 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 00D6C 80AAE4DC 13000006 */  beq     $t8, $zero, .L80AAE4F8     
/* 00D70 80AAE4E0 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00D74 80AAE4E4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00D78 80AAE4E8 44815000 */  mtc1    $at, $f10                  ## $f10 = 4.00
/* 00D7C 80AAE4EC 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00D80 80AAE4F0 0C00BDC7 */  jal     func_8002F71C              
/* 00D84 80AAE4F4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
.L80AAE4F8:
/* 00D88 80AAE4F8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80AAE4FC:
/* 00D8C 80AAE4FC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00D90 80AAE500 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00D94 80AAE504 03E00008 */  jr      $ra                        
/* 00D98 80AAE508 00000000 */  nop
