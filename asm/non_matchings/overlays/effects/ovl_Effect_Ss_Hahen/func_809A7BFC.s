glabel func_809A7BFC
/* 0020C 809A7BFC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00210 809A7C00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00214 809A7C04 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00218 809A7C08 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0021C 809A7C0C AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00220 809A7C10 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00224 809A7C14 84CF0046 */  lh      $t7, 0x0046($a2)           ## 00000046
/* 00228 809A7C18 3C01809B */  lui     $at, %hi(D_809A8098)       ## $at = 809B0000
/* 0022C 809A7C1C C4288098 */  lwc1    $f8, %lo(D_809A8098)($at)  
/* 00230 809A7C20 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00234 809A7C24 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 00238 809A7C28 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 0023C 809A7C2C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00240 809A7C30 3C06809B */  lui     $a2, %hi(D_809A8020)       ## $a2 = 809B0000
/* 00244 809A7C34 24C68020 */  addiu   $a2, $a2, %lo(D_809A8020)  ## $a2 = 809A8020
/* 00248 809A7C38 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 0024C 809A7C3C 240700D0 */  addiu   $a3, $zero, 0x00D0         ## $a3 = 000000D0
/* 00250 809A7C40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00254 809A7C44 46083282 */  mul.s   $f10, $f6, $f8             
/* 00258 809A7C48 0C031AB1 */  jal     Graph_OpenDisps              
/* 0025C 809A7C4C E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 00260 809A7C50 86380048 */  lh      $t8, 0x0048($s1)           ## 00000048
/* 00264 809A7C54 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00268 809A7C58 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0026C 809A7C5C 53010012 */  beql    $t8, $at, .L809A7CA8       
/* 00270 809A7C60 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000000
/* 00274 809A7C64 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00278 809A7C68 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 0027C 809A7C6C 35080018 */  ori     $t0, $t0, 0x0018           ## $t0 = DB060018
/* 00280 809A7C70 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00284 809A7C74 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 00288 809A7C78 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0028C 809A7C7C 862A004A */  lh      $t2, 0x004A($s1)           ## 0000004A
/* 00290 809A7C80 8FA90050 */  lw      $t1, 0x0050($sp)           
/* 00294 809A7C84 3C0D0001 */  lui     $t5, 0x0001                ## $t5 = 00010000
/* 00298 809A7C88 000A5900 */  sll     $t3, $t2,  4               
/* 0029C 809A7C8C 016A5821 */  addu    $t3, $t3, $t2              
/* 002A0 809A7C90 000B5880 */  sll     $t3, $t3,  2               
/* 002A4 809A7C94 012B6021 */  addu    $t4, $t1, $t3              
/* 002A8 809A7C98 01AC6821 */  addu    $t5, $t5, $t4              
/* 002AC 809A7C9C 8DAD17B4 */  lw      $t5, 0x17B4($t5)           ## 000117B4
/* 002B0 809A7CA0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 002B4 809A7CA4 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000000
.L809A7CA8:
/* 002B8 809A7CA8 C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 00000004
/* 002BC 809A7CAC 0C034261 */  jal     Matrix_Translate              
/* 002C0 809A7CB0 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000008
/* 002C4 809A7CB4 862E0042 */  lh      $t6, 0x0042($s1)           ## 00000042
/* 002C8 809A7CB8 3C01809B */  lui     $at, %hi(D_809A809C)       ## $at = 809B0000
/* 002CC 809A7CBC C424809C */  lwc1    $f4, %lo(D_809A809C)($at)  
/* 002D0 809A7CC0 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 002D4 809A7CC4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 002D8 809A7CC8 468084A0 */  cvt.s.w $f18, $f16                 
/* 002DC 809A7CCC 46049302 */  mul.s   $f12, $f18, $f4            
/* 002E0 809A7CD0 0C034348 */  jal     Matrix_RotateY              
/* 002E4 809A7CD4 00000000 */  nop
/* 002E8 809A7CD8 862F0040 */  lh      $t7, 0x0040($s1)           ## 00000040
/* 002EC 809A7CDC 3C01809B */  lui     $at, %hi(D_809A80A0)       ## $at = 809B0000
/* 002F0 809A7CE0 C42A80A0 */  lwc1    $f10, %lo(D_809A80A0)($at) 
/* 002F4 809A7CE4 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 002F8 809A7CE8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 002FC 809A7CEC 46803220 */  cvt.s.w $f8, $f6                   
/* 00300 809A7CF0 460A4302 */  mul.s   $f12, $f8, $f10            
/* 00304 809A7CF4 0C0342DC */  jal     Matrix_RotateX              
/* 00308 809A7CF8 00000000 */  nop
/* 0030C 809A7CFC C7AC0044 */  lwc1    $f12, 0x0044($sp)          
/* 00310 809A7D00 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00314 809A7D04 44066000 */  mfc1    $a2, $f12                  
/* 00318 809A7D08 0C0342A3 */  jal     Matrix_Scale              
/* 0031C 809A7D0C 46006386 */  mov.s   $f14, $f12                 
/* 00320 809A7D10 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00324 809A7D14 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00328 809A7D18 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 0032C 809A7D1C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00330 809A7D20 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00334 809A7D24 3C05809B */  lui     $a1, %hi(D_809A8034)       ## $a1 = 809B0000
/* 00338 809A7D28 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0033C 809A7D2C 24A58034 */  addiu   $a1, $a1, %lo(D_809A8034)  ## $a1 = 809A8034
/* 00340 809A7D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00344 809A7D34 240600E4 */  addiu   $a2, $zero, 0x00E4         ## $a2 = 000000E4
/* 00348 809A7D38 0C0346A2 */  jal     Matrix_NewMtx              
/* 0034C 809A7D3C AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00350 809A7D40 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00354 809A7D44 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00358 809A7D48 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 0035C 809A7D4C 0C024F46 */  jal     func_80093D18              
/* 00360 809A7D50 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00364 809A7D54 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00368 809A7D58 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 0036C 809A7D5C 3C06809B */  lui     $a2, %hi(D_809A8048)       ## $a2 = 809B0000
/* 00370 809A7D60 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00374 809A7D64 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 00378 809A7D68 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0037C 809A7D6C 8E2B0038 */  lw      $t3, 0x0038($s1)           ## 00000038
/* 00380 809A7D70 24C68048 */  addiu   $a2, $a2, %lo(D_809A8048)  ## $a2 = 809A8048
/* 00384 809A7D74 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE0
/* 00388 809A7D78 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0038C 809A7D7C 240700EC */  addiu   $a3, $zero, 0x00EC         ## $a3 = 000000EC
/* 00390 809A7D80 0C031AD5 */  jal     Graph_CloseDisps              
/* 00394 809A7D84 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00398 809A7D88 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0039C 809A7D8C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 003A0 809A7D90 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 003A4 809A7D94 03E00008 */  jr      $ra                        
/* 003A8 809A7D98 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
