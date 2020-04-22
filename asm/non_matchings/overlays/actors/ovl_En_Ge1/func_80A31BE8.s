glabel func_80A31BE8
/* 01278 80A31BE8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0127C 80A31BEC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01280 80A31BF0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01284 80A31BF4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01288 80A31BF8 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0128C 80A31BFC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01290 80A31C00 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01294 80A31C04 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01298 80A31C08 0C042F6F */  jal     func_8010BDBC              
/* 0129C 80A31C0C AFAE002C */  sw      $t6, 0x002C($sp)           
/* 012A0 80A31C10 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 012A4 80A31C14 54410058 */  bnel    $v0, $at, .L80A31D78       
/* 012A8 80A31C18 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 012AC 80A31C1C 0C041AF2 */  jal     func_80106BC8              
/* 012B0 80A31C20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012B4 80A31C24 10400053 */  beq     $v0, $zero, .L80A31D74     
/* 012B8 80A31C28 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 012BC 80A31C2C 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000004
/* 012C0 80A31C30 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 012C4 80A31C34 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 012C8 80A31C38 01E1C024 */  and     $t8, $t7, $at              
/* 012CC 80A31C3C AE380004 */  sw      $t8, 0x0004($s1)           ## 00000004
/* 012D0 80A31C40 00501021 */  addu    $v0, $v0, $s0              
/* 012D4 80A31C44 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 012D8 80A31C48 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 012DC 80A31C4C 10400005 */  beq     $v0, $zero, .L80A31C64     
/* 012E0 80A31C50 00000000 */  nop
/* 012E4 80A31C54 10410043 */  beq     $v0, $at, .L80A31D64       
/* 012E8 80A31C58 3C0B80A3 */  lui     $t3, %hi(func_80A31FE0)    ## $t3 = 80A30000
/* 012EC 80A31C5C 10000046 */  beq     $zero, $zero, .L80A31D78   
/* 012F0 80A31C60 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A31C64:
/* 012F4 80A31C64 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 012F8 80A31C68 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 012FC 80A31C6C 84590034 */  lh      $t9, 0x0034($v0)           ## 8015E694
/* 01300 80A31C70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01304 80A31C74 2B210014 */  slti    $at, $t9, 0x0014           
/* 01308 80A31C78 10200007 */  beq     $at, $zero, .L80A31C98     
/* 0130C 80A31C7C 00000000 */  nop
/* 01310 80A31C80 0C042DC8 */  jal     func_8010B720              
/* 01314 80A31C84 24050085 */  addiu   $a1, $zero, 0x0085         ## $a1 = 00000085
/* 01318 80A31C88 3C0880A3 */  lui     $t0, %hi(func_80A31B7C)    ## $t0 = 80A30000
/* 0131C 80A31C8C 25081B7C */  addiu   $t0, $t0, %lo(func_80A31B7C) ## $t0 = 80A31B7C
/* 01320 80A31C90 10000038 */  beq     $zero, $zero, .L80A31D74   
/* 01324 80A31C94 AE2802B4 */  sw      $t0, 0x02B4($s1)           ## 000002B4
.L80A31C98:
/* 01328 80A31C98 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0132C 80A31C9C 2404FFEC */  addiu   $a0, $zero, 0xFFEC         ## $a0 = FFFFFFEC
/* 01330 80A31CA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01334 80A31CA4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01338 80A31CA8 00300821 */  addu    $at, $at, $s0              
/* 0133C 80A31CAC 24090129 */  addiu   $t1, $zero, 0x0129         ## $t1 = 00000129
/* 01340 80A31CB0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01344 80A31CB4 A4291E1A */  sh      $t1, 0x1E1A($at)           ## 00011E1A
/* 01348 80A31CB8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 0134C 80A31CBC 340AFFF0 */  ori     $t2, $zero, 0xFFF0         ## $t2 = 0000FFF0
/* 01350 80A31CC0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01354 80A31CC4 A44A1412 */  sh      $t2, 0x1412($v0)           ## 8015FA72
/* 01358 80A31CC8 00300821 */  addu    $at, $at, $s0              
/* 0135C 80A31CCC 240B0026 */  addiu   $t3, $zero, 0x0026         ## $t3 = 00000026
/* 01360 80A31CD0 A02B1E5E */  sb      $t3, 0x1E5E($at)           ## 00011E5E
/* 01364 80A31CD4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01368 80A31CD8 00300821 */  addu    $at, $at, $s0              
/* 0136C 80A31CDC 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 01370 80A31CE0 A02C1E15 */  sb      $t4, 0x1E15($at)           ## 00011E15
/* 01374 80A31CE4 944D13FA */  lhu     $t5, 0x13FA($v0)           ## 8015FA5A
/* 01378 80A31CE8 944F0EE0 */  lhu     $t7, 0x0EE0($v0)           ## 8015F540
/* 0137C 80A31CEC 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 01380 80A31CF0 35AE0100 */  ori     $t6, $t5, 0x0100           ## $t6 = 00000100
/* 01384 80A31CF4 35F80100 */  ori     $t8, $t7, 0x0100           ## $t8 = 00000100
/* 01388 80A31CF8 A44E13FA */  sh      $t6, 0x13FA($v0)           ## 8015FA5A
/* 0138C 80A31CFC A4580EE0 */  sh      $t8, 0x0EE0($v0)           ## 8015F540
/* 01390 80A31D00 8CB9067C */  lw      $t9, 0x067C($a1)           ## 0000067C
/* 01394 80A31D04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01398 80A31D08 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 0139C 80A31D0C 00194200 */  sll     $t0, $t9,  8               
/* 013A0 80A31D10 05020008 */  bltzl   $t0, .L80A31D34            
/* 013A4 80A31D14 44812000 */  mtc1    $at, $f4                   ## $f4 = 1200.00
/* 013A8 80A31D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013AC 80A31D1C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 013B0 80A31D20 0C00B7D5 */  jal     func_8002DF54              
/* 013B4 80A31D24 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 013B8 80A31D28 1000000A */  beq     $zero, $zero, .L80A31D54   
/* 013BC 80A31D2C 00000000 */  nop
/* 013C0 80A31D30 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
.L80A31D34:
/* 013C4 80A31D34 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 013C8 80A31D38 0C00D4FD */  jal     Actor_FindNearby
              
/* 013CC 80A31D3C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 013D0 80A31D40 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 013D4 80A31D44 240304B0 */  addiu   $v1, $zero, 0x04B0         ## $v1 = 000004B0
/* 013D8 80A31D48 10400002 */  beq     $v0, $zero, .L80A31D54     
/* 013DC 80A31D4C A5230110 */  sh      $v1, 0x0110($t1)           ## 00000110
/* 013E0 80A31D50 A4430110 */  sh      $v1, 0x0110($v0)           ## 00000110
.L80A31D54:
/* 013E4 80A31D54 3C0A80A3 */  lui     $t2, %hi(func_80A31BDC)    ## $t2 = 80A30000
/* 013E8 80A31D58 254A1BDC */  addiu   $t2, $t2, %lo(func_80A31BDC) ## $t2 = 80A31BDC
/* 013EC 80A31D5C 10000005 */  beq     $zero, $zero, .L80A31D74   
/* 013F0 80A31D60 AE2A02B4 */  sw      $t2, 0x02B4($s1)           ## 000002B4
.L80A31D64:
/* 013F4 80A31D64 256B1FE0 */  addiu   $t3, $t3, %lo(func_80A31FE0) ## $t3 = 00001FE0
/* 013F8 80A31D68 AE2B02B4 */  sw      $t3, 0x02B4($s1)           ## 000002B4
/* 013FC 80A31D6C 0C041B33 */  jal     func_80106CCC              
/* 01400 80A31D70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A31D74:
/* 01404 80A31D74 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A31D78:
/* 01408 80A31D78 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0140C 80A31D7C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01410 80A31D80 03E00008 */  jr      $ra                        
/* 01414 80A31D84 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
