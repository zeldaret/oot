glabel func_809F4EF4
/* 01C34 809F4EF4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01C38 809F4EF8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01C3C 809F4EFC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01C40 809F4F00 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01C44 809F4F04 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 01C48 809F4F08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C4C 809F4F0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01C50 809F4F10 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01C54 809F4F14 E7A40040 */  swc1    $f4, 0x0040($sp)           
/* 01C58 809F4F18 860E026E */  lh      $t6, 0x026E($s0)           ## 0000026E
/* 01C5C 809F4F1C C7A60040 */  lwc1    $f6, 0x0040($sp)           
/* 01C60 809F4F20 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01C64 809F4F24 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 01C68 809F4F28 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01C6C 809F4F2C 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 01C70 809F4F30 468042A0 */  cvt.s.w $f10, $f8                  
/* 01C74 809F4F34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01C78 809F4F38 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 01C7C 809F4F3C 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 01C80 809F4F40 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 01C84 809F4F44 2408FFFF */  addiu   $t0, $zero, 0xFFFF         ## $t0 = FFFFFFFF
/* 01C88 809F4F48 4606503E */  c.le.s  $f10, $f6                  
/* 01C8C 809F4F4C 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 01C90 809F4F50 45020055 */  bc1fl   .L809F50A8                 
/* 01C94 809F4F54 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01C98 809F4F58 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01C9C 809F4F5C AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01CA0 809F4F60 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 01CA4 809F4F64 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 01CA8 809F4F68 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 01CAC 809F4F6C 0C00A5E9 */  jal     func_800297A4              
/* 01CB0 809F4F70 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01CB4 809F4F74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CB8 809F4F78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01CBC 809F4F7C 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 01CC0 809F4F80 86020274 */  lh      $v0, 0x0274($s0)           ## 00000274
/* 01CC4 809F4F84 3C0A809F */  lui     $t2, %hi(func_809F4310)    ## $t2 = 809F0000
/* 01CC8 809F4F88 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01CCC 809F4F8C 1040000A */  beq     $v0, $zero, .L809F4FB8     
/* 01CD0 809F4F90 254A4310 */  addiu   $t2, $t2, %lo(func_809F4310) ## $t2 = 809F4310
/* 01CD4 809F4F94 1041000A */  beq     $v0, $at, .L809F4FC0       
/* 01CD8 809F4F98 3C0B809F */  lui     $t3, %hi(func_809F50B8)    ## $t3 = 809F0000
/* 01CDC 809F4F9C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01CE0 809F4FA0 1041000A */  beq     $v0, $at, .L809F4FCC       
/* 01CE4 809F4FA4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01CE8 809F4FA8 50410009 */  beql    $v0, $at, .L809F4FD0       
/* 01CEC 809F4FAC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01CF0 809F4FB0 1000003D */  beq     $zero, $zero, .L809F50A8   
/* 01CF4 809F4FB4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809F4FB8:
/* 01CF8 809F4FB8 1000003A */  beq     $zero, $zero, .L809F50A4   
/* 01CFC 809F4FBC AE0A0214 */  sw      $t2, 0x0214($s0)           ## 00000214
.L809F4FC0:
/* 01D00 809F4FC0 256B50B8 */  addiu   $t3, $t3, %lo(func_809F50B8) ## $t3 = 809F50B8
/* 01D04 809F4FC4 10000037 */  beq     $zero, $zero, .L809F50A4   
/* 01D08 809F4FC8 AE0B0214 */  sw      $t3, 0x0214($s0)           ## 00000214
.L809F4FCC:
/* 01D0C 809F4FCC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
.L809F4FD0:
/* 01D10 809F4FD0 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 01D14 809F4FD4 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01D18 809F4FD8 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 01D1C 809F4FDC 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01D20 809F4FE0 46128100 */  add.s   $f4, $f16, $f18            
/* 01D24 809F4FE4 240D0003 */  addiu   $t5, $zero, 0x0003         ## $t5 = 00000003
/* 01D28 809F4FE8 24060131 */  addiu   $a2, $zero, 0x0131         ## $a2 = 00000131
/* 01D2C 809F4FEC 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01D30 809F4FF0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01D34 809F4FF4 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 01D38 809F4FF8 AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 01D3C 809F4FFC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01D40 809F5000 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01D44 809F5004 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01D48 809F5008 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01D4C 809F500C E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 01D50 809F5010 10400020 */  beq     $v0, $zero, .L809F5094     
/* 01D54 809F5014 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 01D58 809F5018 86020274 */  lh      $v0, 0x0274($s0)           ## 00000274
/* 01D5C 809F501C 3C01809F */  lui     $at, %hi(D_809F6058)       ## $at = 809F0000
/* 01D60 809F5020 2442FFFD */  addiu   $v0, $v0, 0xFFFD           ## $v0 = FFFFFFFD
/* 01D64 809F5024 00021400 */  sll     $v0, $v0, 16               
/* 01D68 809F5028 00021403 */  sra     $v0, $v0, 16               
/* 01D6C 809F502C A4620150 */  sh      $v0, 0x0150($v1)           ## 00000150
/* 01D70 809F5030 AFA30044 */  sw      $v1, 0x0044($sp)           
/* 01D74 809F5034 A7A2003E */  sh      $v0, 0x003E($sp)           
/* 01D78 809F5038 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01D7C 809F503C C42C6058 */  lwc1    $f12, %lo(D_809F6058)($at) 
/* 01D80 809F5040 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01D84 809F5044 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 01D88 809F5048 87A2003E */  lh      $v0, 0x003E($sp)           
/* 01D8C 809F504C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01D90 809F5050 4606003C */  c.lt.s  $f0, $f6                   
/* 01D94 809F5054 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 01D98 809F5058 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 01D9C 809F505C 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 01DA0 809F5060 45020003 */  bc1fl   .L809F5070                 
/* 01DA4 809F5064 846F0150 */  lh      $t7, 0x0150($v1)           ## 00000150
/* 01DA8 809F5068 A46E0150 */  sh      $t6, 0x0150($v1)           ## 00000150
/* 01DAC 809F506C 846F0150 */  lh      $t7, 0x0150($v1)           ## 00000150
.L809F5070:
/* 01DB0 809F5070 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01DB4 809F5074 E46A0060 */  swc1    $f10, 0x0060($v1)          ## 00000060
/* 01DB8 809F5078 15E10004 */  bne     $t7, $at, .L809F508C       
/* 01DBC 809F507C 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01DC0 809F5080 44818000 */  mtc1    $at, $f16                  ## $f16 = 7.00
/* 01DC4 809F5084 00000000 */  nop
/* 01DC8 809F5088 E4700060 */  swc1    $f16, 0x0060($v1)          ## 00000060
.L809F508C:
/* 01DCC 809F508C 0C01E221 */  jal     func_80078884              
/* 01DD0 809F5090 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
.L809F5094:
/* 01DD4 809F5094 3C18809F */  lui     $t8, %hi(func_809F4310)    ## $t8 = 809F0000
/* 01DD8 809F5098 27184310 */  addiu   $t8, $t8, %lo(func_809F4310) ## $t8 = 809F4310
/* 01DDC 809F509C A6000274 */  sh      $zero, 0x0274($s0)         ## 00000274
/* 01DE0 809F50A0 AE180214 */  sw      $t8, 0x0214($s0)           ## 00000214
.L809F50A4:
/* 01DE4 809F50A4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809F50A8:
/* 01DE8 809F50A8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01DEC 809F50AC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01DF0 809F50B0 03E00008 */  jr      $ra                        
/* 01DF4 809F50B4 00000000 */  nop


