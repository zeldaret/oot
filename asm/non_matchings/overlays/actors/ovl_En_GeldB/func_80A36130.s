.late_rodata
glabel D_80A3A228
    .float 0.7

glabel D_80A3A22C
    .float 0.03

.text
glabel func_80A36130
/* 00E20 80A36130 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00E24 80A36134 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E28 80A36138 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E2C 80A3613C 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00E30 80A36140 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E34 80A36144 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00E38 80A36148 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00E3C 80A3614C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E40 80A36150 AFA6004C */  sw      $a2, 0x004C($sp)           
/* 00E44 80A36154 0C28E78B */  jal     func_80A39E2C              
/* 00E48 80A36158 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00E4C 80A3615C 1440011A */  bne     $v0, $zero, .L80A365C8     
/* 00E50 80A36160 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00E54 80A36164 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00E58 80A36168 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00E5C 80A3616C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00E60 80A36170 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00E64 80A36174 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 00E68 80A36178 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00E6C 80A3617C 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 00E70 80A36180 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00E74 80A36184 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00E78 80A36188 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00E7C 80A3618C 4604003E */  c.le.s  $f0, $f4                   
/* 00E80 80A36190 3C05C100 */  lui     $a1, 0xC100                ## $a1 = C1000000
/* 00E84 80A36194 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00E88 80A36198 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 00E8C 80A3619C 45000007 */  bc1f    .L80A361BC                 
/* 00E90 80A361A0 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00E94 80A361A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00E98 80A361A8 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 00E9C 80A361AC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EA0 80A361B0 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00EA4 80A361B4 10000017 */  beq     $zero, $zero, .L80A36214   
/* 00EA8 80A361B8 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
.L80A361BC:
/* 00EAC 80A361BC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.12
/* 00EB0 80A361C0 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 00EB4 80A361C4 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 00EB8 80A361C8 4600303C */  c.lt.s  $f6, $f0                   
/* 00EBC 80A361CC 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00EC0 80A361D0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00EC4 80A361D4 45020009 */  bc1fl   .L80A361FC                 
/* 00EC8 80A361D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00ECC 80A361DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00ED0 80A361E0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00ED4 80A361E4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00ED8 80A361E8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EDC 80A361EC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00EE0 80A361F0 10000008 */  beq     $zero, $zero, .L80A36214   
/* 00EE4 80A361F4 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 00EE8 80A361F8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A361FC:
/* 00EEC 80A361FC 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 00EF0 80A36200 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 40D4CCCD
/* 00EF4 80A36204 44050000 */  mfc1    $a1, $f0                   
/* 00EF8 80A36208 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00EFC 80A3620C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00F00 80A36210 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
.L80A36214:
/* 00F04 80A36214 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.12
/* 00F08 80A36218 C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00F0C 80A3621C 8FA20034 */  lw      $v0, 0x0034($sp)           
/* 00F10 80A36220 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00F14 80A36224 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00F18 80A36228 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00F1C 80A3622C 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 00F20 80A36230 E61001A4 */  swc1    $f16, 0x01A4($s0)          ## 000001A4
/* 00F24 80A36234 845800B6 */  lh      $t8, 0x00B6($v0)           ## 000000B6
/* 00F28 80A36238 03191823 */  subu    $v1, $t8, $t9              
/* 00F2C 80A3623C 00031C00 */  sll     $v1, $v1, 16               
/* 00F30 80A36240 00031C03 */  sra     $v1, $v1, 16               
/* 00F34 80A36244 04630005 */  bgezl   $v1, .L80A3625C            
/* 00F38 80A36248 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00F3C 80A3624C 00031823 */  subu    $v1, $zero, $v1            
/* 00F40 80A36250 00031C00 */  sll     $v1, $v1, 16               
/* 00F44 80A36254 00031C03 */  sra     $v1, $v1, 16               
/* 00F48 80A36258 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
.L80A3625C:
/* 00F4C 80A3625C 4604903C */  c.lt.s  $f18, $f4                  
/* 00F50 80A36260 00000000 */  nop
/* 00F54 80A36264 45020018 */  bc1fl   .L80A362C8                 
/* 00F58 80A36268 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 00F5C 80A3626C 80480843 */  lb      $t0, 0x0843($v0)           ## 00000843
/* 00F60 80A36270 28611F40 */  slti    $at, $v1, 0x1F40           
/* 00F64 80A36274 51000014 */  beql    $t0, $zero, .L80A362C8     
/* 00F68 80A36278 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 00F6C 80A3627C 54200012 */  bnel    $at, $zero, .L80A362C8     
/* 00F70 80A36280 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 00F74 80A36284 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00F78 80A36288 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00F7C 80A3628C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00F80 80A36290 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00F84 80A36294 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 00F88 80A36298 3C0180A4 */  lui     $at, %hi(D_80A3A228)       ## $at = 80A40000
/* 00F8C 80A3629C C426A228 */  lwc1    $f6, %lo(D_80A3A228)($at)  
/* 00F90 80A362A0 87A3003A */  lh      $v1, 0x003A($sp)           
/* 00F94 80A362A4 4600303C */  c.lt.s  $f6, $f0                   
/* 00F98 80A362A8 00000000 */  nop
/* 00F9C 80A362AC 45020006 */  bc1fl   .L80A362C8                 
/* 00FA0 80A362B0 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 00FA4 80A362B4 0C28DA84 */  jal     func_80A36A10              
/* 00FA8 80A362B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FAC 80A362BC 100000C3 */  beq     $zero, $zero, .L80A365CC   
/* 00FB0 80A362C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FB4 80A362C4 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
.L80A362C8:
/* 00FB8 80A362C8 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 00FBC 80A362CC 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00FC0 80A362D0 4600428D */  trunc.w.s $f10, $f8                  
/* 00FC4 80A362D4 440A5000 */  mfc1    $t2, $f10                  
/* 00FC8 80A362D8 0C02927F */  jal     SkelAnime_Update
              
/* 00FCC 80A362DC AFAA0044 */  sw      $t2, 0x0044($sp)           
/* 00FD0 80A362E0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00FD4 80A362E4 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 00FD8 80A362E8 87A3003A */  lh      $v1, 0x003A($sp)           
/* 00FDC 80A362EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FE0 80A362F0 4600103E */  c.le.s  $f2, $f0                   
/* 00FE4 80A362F4 240511C7 */  addiu   $a1, $zero, 0x11C7         ## $a1 = 000011C7
/* 00FE8 80A362F8 45020004 */  bc1fl   .L80A3630C                 
/* 00FEC 80A362FC 46000407 */  neg.s   $f16, $f0                  
/* 00FF0 80A36300 10000003 */  beq     $zero, $zero, .L80A36310   
/* 00FF4 80A36304 E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 00FF8 80A36308 46000407 */  neg.s   $f16, $f0                  
.L80A3630C:
/* 00FFC 80A3630C E7B00028 */  swc1    $f16, 0x0028($sp)          
.L80A36310:
/* 01000 80A36310 C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 01004 80A36314 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 01008 80A36318 4600103E */  c.le.s  $f2, $f0                   
/* 0100C 80A3631C 46049181 */  sub.s   $f6, $f18, $f4             
/* 01010 80A36320 4600320D */  trunc.w.s $f8, $f6                   
/* 01014 80A36324 440C4000 */  mfc1    $t4, $f8                   
/* 01018 80A36328 45000003 */  bc1f    .L80A36338                 
/* 0101C 80A3632C AFAC0040 */  sw      $t4, 0x0040($sp)           
/* 01020 80A36330 10000003 */  beq     $zero, $zero, .L80A36340   
/* 01024 80A36334 E7A00028 */  swc1    $f0, 0x0028($sp)           
.L80A36338:
/* 01028 80A36338 46000287 */  neg.s   $f10, $f0                  
/* 0102C 80A3633C E7AA0028 */  swc1    $f10, 0x0028($sp)          
.L80A36340:
/* 01030 80A36340 0C00B821 */  jal     func_8002E084              
/* 01034 80A36344 A7A3003A */  sh      $v1, 0x003A($sp)           
/* 01038 80A36348 14400012 */  bne     $v0, $zero, .L80A36394     
/* 0103C 80A3634C 87A3003A */  lh      $v1, 0x003A($sp)           
/* 01040 80A36350 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01044 80A36354 00000000 */  nop
/* 01048 80A36358 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0104C 80A3635C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01050 80A36360 00000000 */  nop
/* 01054 80A36364 4600803C */  c.lt.s  $f16, $f0                  
/* 01058 80A36368 00000000 */  nop
/* 0105C 80A3636C 45000005 */  bc1f    .L80A36384                 
/* 01060 80A36370 00000000 */  nop
/* 01064 80A36374 0C28DA84 */  jal     func_80A36A10              
/* 01068 80A36378 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0106C 80A3637C 1000003E */  beq     $zero, $zero, .L80A36478   
/* 01070 80A36380 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36384:
/* 01074 80A36384 0C28D752 */  jal     func_80A35D48              
/* 01078 80A36388 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0107C 80A3638C 1000003A */  beq     $zero, $zero, .L80A36478   
/* 01080 80A36390 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36394:
/* 01084 80A36394 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01088 80A36398 44812000 */  mtc1    $at, $f4                   ## $f4 = 90.00
/* 0108C 80A3639C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 01090 80A363A0 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01094 80A363A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01098 80A363A8 4604903C */  c.lt.s  $f18, $f4                  
/* 0109C 80A363AC 00000000 */  nop
/* 010A0 80A363B0 45020031 */  bc1fl   .L80A36478                 
/* 010A4 80A363B4 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 010A8 80A363B8 0C00CEAE */  jal     func_80033AB8              
/* 010AC 80A363BC A7A3003A */  sh      $v1, 0x003A($sp)           
/* 010B0 80A363C0 14400018 */  bne     $v0, $zero, .L80A36424     
/* 010B4 80A363C4 87A3003A */  lh      $v1, 0x003A($sp)           
/* 010B8 80A363C8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010BC 80A363CC A7A3003A */  sh      $v1, 0x003A($sp)           
/* 010C0 80A363D0 3C0180A4 */  lui     $at, %hi(D_80A3A22C)       ## $at = 80A40000
/* 010C4 80A363D4 C426A22C */  lwc1    $f6, %lo(D_80A3A22C)($at)  
/* 010C8 80A363D8 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 010CC 80A363DC 87A3003A */  lh      $v1, 0x003A($sp)           
/* 010D0 80A363E0 4600303C */  c.lt.s  $f6, $f0                   
/* 010D4 80A363E4 00000000 */  nop
/* 010D8 80A363E8 4501000A */  bc1t    .L80A36414                 
/* 010DC 80A363EC 00000000 */  nop
/* 010E0 80A363F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
/* 010E4 80A363F4 C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 010E8 80A363F8 286138E0 */  slti    $at, $v1, 0x38E0           
/* 010EC 80A363FC 4608503E */  c.le.s  $f10, $f8                  
/* 010F0 80A36400 00000000 */  nop
/* 010F4 80A36404 45020008 */  bc1fl   .L80A36428                 
/* 010F8 80A36408 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 010FC 80A3640C 50200006 */  beql    $at, $zero, .L80A36428     
/* 01100 80A36410 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36414:
/* 01104 80A36414 0C28DD9C */  jal     func_80A37670              
/* 01108 80A36418 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0110C 80A3641C 10000016 */  beq     $zero, $zero, .L80A36478   
/* 01110 80A36420 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36424:
/* 01114 80A36424 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36428:
/* 01118 80A36428 0C00CEAE */  jal     func_80033AB8              
/* 0111C 80A3642C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01120 80A36430 1040000E */  beq     $v0, $zero, .L80A3646C     
/* 01124 80A36434 00000000 */  nop
/* 01128 80A36438 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0112C 80A3643C 00000000 */  nop
/* 01130 80A36440 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01134 80A36444 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01138 80A36448 00000000 */  nop
/* 0113C 80A3644C 4600803C */  c.lt.s  $f16, $f0                  
/* 01140 80A36450 00000000 */  nop
/* 01144 80A36454 45000005 */  bc1f    .L80A3646C                 
/* 01148 80A36458 00000000 */  nop
/* 0114C 80A3645C 0C28DF5C */  jal     func_80A37D70              
/* 01150 80A36460 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01154 80A36464 10000004 */  beq     $zero, $zero, .L80A36478   
/* 01158 80A36468 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A3646C:
/* 0115C 80A3646C 0C28DA84 */  jal     func_80A36A10              
/* 01160 80A36470 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01164 80A36474 8FA4004C */  lw      $a0, 0x004C($sp)           
.L80A36478:
/* 01168 80A36478 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0116C 80A3647C 0C28D567 */  jal     func_80A3559C              
/* 01170 80A36480 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01174 80A36484 14400050 */  bne     $v0, $zero, .L80A365C8     
/* 01178 80A36488 3C014352 */  lui     $at, 0x4352                ## $at = 43520000
/* 0117C 80A3648C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01180 80A36490 44819000 */  mtc1    $at, $f18                  ## $f18 = 210.00
/* 01184 80A36494 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01188 80A36498 4612003C */  c.lt.s  $f0, $f18                  
/* 0118C 80A3649C 00000000 */  nop
/* 01190 80A364A0 45020025 */  bc1fl   .L80A36538                 
/* 01194 80A364A4 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 01198 80A364A8 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 0119C 80A364AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011A0 80A364B0 4600203C */  c.lt.s  $f4, $f0                   
/* 011A4 80A364B4 00000000 */  nop
/* 011A8 80A364B8 4502001F */  bc1fl   .L80A36538                 
/* 011AC 80A364BC 8FAD004C */  lw      $t5, 0x004C($sp)           
/* 011B0 80A364C0 0C00B821 */  jal     func_8002E084              
/* 011B4 80A364C4 2405071C */  addiu   $a1, $zero, 0x071C         ## $a1 = 0000071C
/* 011B8 80A364C8 1040001A */  beq     $v0, $zero, .L80A36534     
/* 011BC 80A364CC 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 011C0 80A364D0 0C00CEA1 */  jal     func_80033A84              
/* 011C4 80A364D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 011C8 80A364D8 10400012 */  beq     $v0, $zero, .L80A36524     
/* 011CC 80A364DC 00000000 */  nop
/* 011D0 80A364E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 011D4 80A364E4 00000000 */  nop
/* 011D8 80A364E8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 011DC 80A364EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 011E0 80A364F0 00000000 */  nop
/* 011E4 80A364F4 4600303C */  c.lt.s  $f6, $f0                   
/* 011E8 80A364F8 00000000 */  nop
/* 011EC 80A364FC 45000005 */  bc1f    .L80A36514                 
/* 011F0 80A36500 00000000 */  nop
/* 011F4 80A36504 0C28D977 */  jal     func_80A365DC              
/* 011F8 80A36508 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011FC 80A3650C 1000000A */  beq     $zero, $zero, .L80A36538   
/* 01200 80A36510 8FAD004C */  lw      $t5, 0x004C($sp)           
.L80A36514:
/* 01204 80A36514 0C28DE4B */  jal     func_80A3792C              
/* 01208 80A36518 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0120C 80A3651C 10000006 */  beq     $zero, $zero, .L80A36538   
/* 01210 80A36520 8FAD004C */  lw      $t5, 0x004C($sp)           
.L80A36524:
/* 01214 80A36524 0C28DA84 */  jal     func_80A36A10              
/* 01218 80A36528 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0121C 80A3652C 10000027 */  beq     $zero, $zero, .L80A365CC   
/* 01220 80A36530 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A36534:
/* 01224 80A36534 8FAD004C */  lw      $t5, 0x004C($sp)           
.L80A36538:
/* 01228 80A36538 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 0122C 80A3653C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01230 80A36540 01CD7021 */  addu    $t6, $t6, $t5              
/* 01234 80A36544 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 01238 80A36548 31CF005F */  andi    $t7, $t6, 0x005F           ## $t7 = 00000000
/* 0123C 80A3654C 55E00004 */  bnel    $t7, $zero, .L80A36560     
/* 01240 80A36550 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 01244 80A36554 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01248 80A36558 240539C6 */  addiu   $a1, $zero, 0x39C6         ## $a1 = 000039C6
/* 0124C 80A3655C C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
.L80A36560:
/* 01250 80A36560 8FA20044 */  lw      $v0, 0x0044($sp)           
/* 01254 80A36564 8FA30040 */  lw      $v1, 0x0040($sp)           
/* 01258 80A36568 4600428D */  trunc.w.s $f10, $f8                  
/* 0125C 80A3656C 44195000 */  mfc1    $t9, $f10                  
/* 01260 80A36570 00000000 */  nop
/* 01264 80A36574 50590015 */  beql    $v0, $t9, .L80A365CC       
/* 01268 80A36578 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0126C 80A3657C 04610006 */  bgez    $v1, .L80A36598            
/* 01270 80A36580 C7B00028 */  lwc1    $f16, 0x0028($sp)          
/* 01274 80A36584 4600848D */  trunc.w.s $f18, $f16                 
/* 01278 80A36588 44099000 */  mfc1    $t1, $f18                  
/* 0127C 80A3658C 00000000 */  nop
/* 01280 80A36590 01225021 */  addu    $t2, $t1, $v0              
/* 01284 80A36594 1D400009 */  bgtz    $t2, .L80A365BC            
.L80A36598:
/* 01288 80A36598 28610004 */  slti    $at, $v1, 0x0004           
/* 0128C 80A3659C 1020000A */  beq     $at, $zero, .L80A365C8     
/* 01290 80A365A0 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 01294 80A365A4 4600218D */  trunc.w.s $f6, $f4                   
/* 01298 80A365A8 440C3000 */  mfc1    $t4, $f6                   
/* 0129C 80A365AC 00000000 */  nop
/* 012A0 80A365B0 01826821 */  addu    $t5, $t4, $v0              
/* 012A4 80A365B4 29A10005 */  slti    $at, $t5, 0x0005           
/* 012A8 80A365B8 14200003 */  bne     $at, $zero, .L80A365C8     
.L80A365BC:
/* 012AC 80A365BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012B0 80A365C0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 012B4 80A365C4 240539A0 */  addiu   $a1, $zero, 0x39A0         ## $a1 = 000039A0
.L80A365C8:
/* 012B8 80A365C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A365CC:
/* 012BC 80A365CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 012C0 80A365D0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 012C4 80A365D4 03E00008 */  jr      $ra                        
/* 012C8 80A365D8 00000000 */  nop
