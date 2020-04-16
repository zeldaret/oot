.late_rodata
glabel D_80B1FA58
    .float 0.3

.text
glabel func_80B1DBD8
/* 00258 80B1DBD8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0025C 80B1DBDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00260 80B1DBE0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00264 80B1DBE4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00268 80B1DBE8 C4C40838 */  lwc1    $f4, 0x0838($a2)           ## 00000838
/* 0026C 80B1DBEC 24020007 */  addiu   $v0, $zero, 0x0007         ## $v0 = 00000007
/* 00270 80B1DBF0 8C831C44 */  lw      $v1, 0x1C44($a0)           ## 00001C44
/* 00274 80B1DBF4 4600203C */  c.lt.s  $f4, $f0                   
/* 00278 80B1DBF8 46000086 */  mov.s   $f2, $f0                   
/* 0027C 80B1DBFC 45010009 */  bc1t    .L80B1DC24                 
/* 00280 80B1DC00 00000000 */  nop
/* 00284 80B1DC04 C4660838 */  lwc1    $f6, 0x0838($v1)           ## 00000838
/* 00288 80B1DC08 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 0028C 80B1DC0C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00290 80B1DC10 4600303C */  c.lt.s  $f6, $f0                   
/* 00294 80B1DC14 3C0F80B2 */  lui     $t7, %hi(D_80B20165)       ## $t7 = 80B20000
/* 00298 80B1DC18 0304C021 */  addu    $t8, $t8, $a0              
/* 0029C 80B1DC1C 45000003 */  bc1f    .L80B1DC2C                 
/* 002A0 80B1DC20 00000000 */  nop
.L80B1DC24:
/* 002A4 80B1DC24 1000004E */  beq     $zero, $zero, .L80B1DD60   
/* 002A8 80B1DC28 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B1DC2C:
/* 002AC 80B1DC2C 85CEE690 */  lh      $t6, -0x1970($t6)          ## 8015E690
/* 002B0 80B1DC30 3C0880B2 */  lui     $t0, %hi(D_80B20148)       ## $t0 = 80B20000
/* 002B4 80B1DC34 29C10050 */  slti    $at, $t6, 0x0050           
/* 002B8 80B1DC38 10200004 */  beq     $at, $zero, .L80B1DC4C     
/* 002BC 80B1DC3C 3C0180B2 */  lui     $at, %hi(D_80B1FA58)       ## $at = 80B20000
/* 002C0 80B1DC40 C428FA58 */  lwc1    $f8, %lo(D_80B1FA58)($at)  
/* 002C4 80B1DC44 2402000F */  addiu   $v0, $zero, 0x000F         ## $v0 = 0000000F
/* 002C8 80B1DC48 46080080 */  add.s   $f2, $f0, $f8              
.L80B1DC4C:
/* 002CC 80B1DC4C 91EF0165 */  lbu     $t7, %lo(D_80B20165)($t7)  
/* 002D0 80B1DC50 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 002D4 80B1DC54 11E10004 */  beq     $t7, $at, .L80B1DC68       
/* 002D8 80B1DC58 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 002DC 80B1DC5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 002E0 80B1DC60 00000000 */  nop
/* 002E4 80B1DC64 460A1080 */  add.s   $f2, $f2, $f10             
.L80B1DC68:
/* 002E8 80B1DC68 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 002EC 80B1DC6C 0302C824 */  and     $t9, $t8, $v0              
/* 002F0 80B1DC70 13200004 */  beq     $t9, $zero, .L80B1DC84     
/* 002F4 80B1DC74 00000000 */  nop
/* 002F8 80B1DC78 91080148 */  lbu     $t0, %lo(D_80B20148)($t0)  
/* 002FC 80B1DC7C 51000038 */  beql    $t0, $zero, .L80B1DD60     
/* 00300 80B1DC80 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B1DC84:
/* 00304 80B1DC84 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00308 80B1DC88 E7A2001C */  swc1    $f2, 0x001C($sp)           
/* 0030C 80B1DC8C C7A2001C */  lwc1    $f2, 0x001C($sp)           
/* 00310 80B1DC90 3C0980B2 */  lui     $t1, %hi(D_80B20148)       ## $t1 = 80B20000
/* 00314 80B1DC94 4600103E */  c.le.s  $f2, $f0                   
/* 00318 80B1DC98 00000000 */  nop
/* 0031C 80B1DC9C 45020030 */  bc1fl   .L80B1DD60                 
/* 00320 80B1DCA0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00324 80B1DCA4 91290148 */  lbu     $t1, %lo(D_80B20148)($t1)  
/* 00328 80B1DCA8 55200028 */  bnel    $t1, $zero, .L80B1DD4C     
/* 0032C 80B1DCAC 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 00330 80B1DCB0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00334 80B1DCB4 00000000 */  nop
/* 00338 80B1DCB8 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 0033C 80B1DCBC 44818000 */  mtc1    $at, $f16                  ## $f16 = 7.00
/* 00340 80B1DCC0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00344 80B1DCC4 46100482 */  mul.s   $f18, $f0, $f16            
/* 00348 80B1DCC8 4600910D */  trunc.w.s $f4, $f18                  
/* 0034C 80B1DCCC 44022000 */  mfc1    $v0, $f4                   
/* 00350 80B1DCD0 00000000 */  nop
/* 00354 80B1DCD4 10410009 */  beq     $v0, $at, .L80B1DCFC       
/* 00358 80B1DCD8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0035C 80B1DCDC 10410011 */  beq     $v0, $at, .L80B1DD24       
/* 00360 80B1DCE0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00364 80B1DCE4 10410005 */  beq     $v0, $at, .L80B1DCFC       
/* 00368 80B1DCE8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 0036C 80B1DCEC 1041000D */  beq     $v0, $at, .L80B1DD24       
/* 00370 80B1DCF0 00000000 */  nop
/* 00374 80B1DCF4 10000015 */  beq     $zero, $zero, .L80B1DD4C   
/* 00378 80B1DCF8 8FB80024 */  lw      $t8, 0x0024($sp)           
.L80B1DCFC:
/* 0037C 80B1DCFC 3C0280B2 */  lui     $v0, %hi(D_80B1F9F4)       ## $v0 = 80B20000
/* 00380 80B1DD00 2442F9F4 */  addiu   $v0, $v0, %lo(D_80B1F9F4)  ## $v0 = 80B1F9F4
/* 00384 80B1DD04 844B0000 */  lh      $t3, 0x0000($v0)           ## 80B1F9F4
/* 00388 80B1DD08 3C0142FE */  lui     $at, 0x42FE                ## $at = 42FE0000
/* 0038C 80B1DD0C 44813000 */  mtc1    $at, $f6                   ## $f6 = 127.00
/* 00390 80B1DD10 256C4000 */  addiu   $t4, $t3, 0x4000           ## $t4 = 00004000
/* 00394 80B1DD14 A44C0000 */  sh      $t4, 0x0000($v0)           ## 80B1F9F4
/* 00398 80B1DD18 3C0180B2 */  lui     $at, %hi(D_80B1F9F0)       ## $at = 80B20000
/* 0039C 80B1DD1C 1000000A */  beq     $zero, $zero, .L80B1DD48   
/* 003A0 80B1DD20 E426F9F0 */  swc1    $f6, %lo(D_80B1F9F0)($at)  
.L80B1DD24:
/* 003A4 80B1DD24 3C0280B2 */  lui     $v0, %hi(D_80B1F9F4)       ## $v0 = 80B20000
/* 003A8 80B1DD28 2442F9F4 */  addiu   $v0, $v0, %lo(D_80B1F9F4)  ## $v0 = 80B1F9F4
/* 003AC 80B1DD2C 844D0000 */  lh      $t5, 0x0000($v0)           ## 80B1F9F4
/* 003B0 80B1DD30 3C0142FE */  lui     $at, 0x42FE                ## $at = 42FE0000
/* 003B4 80B1DD34 44814000 */  mtc1    $at, $f8                   ## $f8 = 127.00
/* 003B8 80B1DD38 25AEC000 */  addiu   $t6, $t5, 0xC000           ## $t6 = FFFFC000
/* 003BC 80B1DD3C A44E0000 */  sh      $t6, 0x0000($v0)           ## 80B1F9F4
/* 003C0 80B1DD40 3C0180B2 */  lui     $at, %hi(D_80B1F9F0)       ## $at = 80B20000
/* 003C4 80B1DD44 E428F9F0 */  swc1    $f8, %lo(D_80B1F9F0)($at)  
.L80B1DD48:
/* 003C8 80B1DD48 8FB80024 */  lw      $t8, 0x0024($sp)           
.L80B1DD4C:
/* 003CC 80B1DD4C 240F4000 */  addiu   $t7, $zero, 0x4000         ## $t7 = 00004000
/* 003D0 80B1DD50 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003D4 80B1DD54 10000002 */  beq     $zero, $zero, .L80B1DD60   
/* 003D8 80B1DD58 A70F0000 */  sh      $t7, 0x0000($t8)           ## 00000000
/* 003DC 80B1DD5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B1DD60:
/* 003E0 80B1DD60 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E4 80B1DD64 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003E8 80B1DD68 03E00008 */  jr      $ra                        
/* 003EC 80B1DD6C 00000000 */  nop
