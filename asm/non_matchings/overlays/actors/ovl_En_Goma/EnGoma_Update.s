.late_rodata
glabel D_80A4B940
    .float 9.99999997475e-07

glabel D_80A4B944
    .float 9.99999997475e-07

glabel D_80A4B948
    .float 9.99999997475e-07

.text
glabel EnGoma_Update
/* 01BB4 80A4AA74 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01BB8 80A4AA78 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BBC 80A4AA7C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01BC0 80A4AA80 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 01BC4 80A4AA84 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01BC8 80A4AA88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BCC 80A4AA8C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01BD0 80A4AA90 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 01BD4 80A4AA94 848202CC */  lh      $v0, 0x02CC($a0)           ## 000002CC
/* 01BD8 80A4AA98 10400002 */  beq     $v0, $zero, .L80A4AAA4     
/* 01BDC 80A4AA9C 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 01BE0 80A4AAA0 A48F02CC */  sh      $t7, 0x02CC($a0)           ## 000002CC
.L80A4AAA4:
/* 01BE4 80A4AAA4 860202CA */  lh      $v0, 0x02CA($s0)           ## 000002CA
/* 01BE8 80A4AAA8 10400002 */  beq     $v0, $zero, .L80A4AAB4     
/* 01BEC 80A4AAAC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01BF0 80A4AAB0 A61802CA */  sh      $t8, 0x02CA($s0)           ## 000002CA
.L80A4AAB4:
/* 01BF4 80A4AAB4 8E1902B0 */  lw      $t9, 0x02B0($s0)           ## 000002B0
/* 01BF8 80A4AAB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BFC 80A4AABC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01C00 80A4AAC0 0320F809 */  jalr    $ra, $t9                   
/* 01C04 80A4AAC4 00000000 */  nop
/* 01C08 80A4AAC8 0C00B638 */  jal     Actor_MoveForward
              
/* 01C0C 80A4AACC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C10 80A4AAD0 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01C14 80A4AAD4 C60602FC */  lwc1    $f6, 0x02FC($s0)           ## 000002FC
/* 01C18 80A4AAD8 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01C1C 80A4AADC C6100304 */  lwc1    $f16, 0x0304($s0)          ## 00000304
/* 01C20 80A4AAE0 46062200 */  add.s   $f8, $f4, $f6              
/* 01C24 80A4AAE4 260402FC */  addiu   $a0, $s0, 0x02FC           ## $a0 = 000002FC
/* 01C28 80A4AAE8 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01C2C 80A4AAEC 46105480 */  add.s   $f18, $f10, $f16           
/* 01C30 80A4AAF0 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 01C34 80A4AAF4 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 01C38 80A4AAF8 0C01E123 */  jal     Math_ApproachZeroF
              
/* 01C3C 80A4AAFC E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 01C40 80A4AB00 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 01C44 80A4AB04 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 01C48 80A4AB08 0C01E123 */  jal     Math_ApproachZeroF
              
/* 01C4C 80A4AB0C 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 01C50 80A4AB10 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 01C54 80A4AB14 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 01C58 80A4AB18 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01C5C 80A4AB1C 2901000A */  slti    $at, $t0, 0x000A           
/* 01C60 80A4AB20 10200062 */  beq     $at, $zero, .L80A4ACAC     
/* 01C64 80A4AB24 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 01C68 80A4AB28 860902C0 */  lh      $t1, 0x02C0($s0)           ## 000002C0
/* 01C6C 80A4AB2C 3C0180A5 */  lui     $at, %hi(D_80A4B940)       ## $at = 80A50000
/* 01C70 80A4AB30 3C073A44 */  lui     $a3, 0x3A44                ## $a3 = 3A440000
/* 01C74 80A4AB34 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01C78 80A4AB38 A60A02C0 */  sh      $t2, 0x02C0($s0)           ## 000002C0
/* 01C7C 80A4AB3C C424B940 */  lwc1    $f4, %lo(D_80A4B940)($at)  
/* 01C80 80A4AB40 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3A449BA6
/* 01C84 80A4AB44 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01C88 80A4AB48 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01C8C 80A4AB4C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01C90 80A4AB50 3C0180A5 */  lui     $at, %hi(D_80A4B944)       ## $at = 80A50000
/* 01C94 80A4AB54 C426B944 */  lwc1    $f6, %lo(D_80A4B944)($at)  
/* 01C98 80A4AB58 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 01C9C 80A4AB5C 3C073A44 */  lui     $a3, 0x3A44                ## $a3 = 3A440000
/* 01CA0 80A4AB60 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3A449BA6
/* 01CA4 80A4AB64 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01CA8 80A4AB68 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 01CAC 80A4AB6C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CB0 80A4AB70 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01CB4 80A4AB74 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01CB8 80A4AB78 3C0180A5 */  lui     $at, %hi(D_80A4B948)       ## $at = 80A50000
/* 01CBC 80A4AB7C C428B948 */  lwc1    $f8, %lo(D_80A4B948)($at)  
/* 01CC0 80A4AB80 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 01CC4 80A4AB84 3C073A44 */  lui     $a3, 0x3A44                ## $a3 = 3A440000
/* 01CC8 80A4AB88 34E79BA6 */  ori     $a3, $a3, 0x9BA6           ## $a3 = 3A449BA6
/* 01CCC 80A4AB8C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 01CD0 80A4AB90 26040058 */  addiu   $a0, $s0, 0x0058           ## $a0 = 00000058
/* 01CD4 80A4AB94 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CD8 80A4AB98 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 01CDC 80A4AB9C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01CE0 80A4ABA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 80A4ABA4 0C2929AB */  jal     func_80A4A6AC              
/* 01CE8 80A4ABA8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01CEC 80A4ABAC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01CF0 80A4ABB0 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 01CF4 80A4ABB4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01CF8 80A4ABB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01CFC 80A4ABBC 240B0005 */  addiu   $t3, $zero, 0x0005         ## $t3 = 00000005
/* 01D00 80A4ABC0 44060000 */  mfc1    $a2, $f0                   
/* 01D04 80A4ABC4 44070000 */  mfc1    $a3, $f0                   
/* 01D08 80A4ABC8 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01D0C 80A4ABCC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01D10 80A4ABD0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D14 80A4ABD4 0C00B92D */  jal     func_8002E4B4              
/* 01D18 80A4ABD8 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01D1C 80A4ABDC 0C292A59 */  jal     func_80A4A964              
/* 01D20 80A4ABE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D24 80A4ABE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D28 80A4ABE8 0C00B56E */  jal     Actor_SetHeight
              
/* 01D2C 80A4ABEC 3C0541A0 */  lui     $a1, 0x41A0                ## $a1 = 41A00000
/* 01D30 80A4ABF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D34 80A4ABF4 0C292982 */  jal     func_80A4A608              
/* 01D38 80A4ABF8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01D3C 80A4ABFC 0C292A35 */  jal     func_80A4A8D4              
/* 01D40 80A4AC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D44 80A4AC04 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01D48 80A4AC08 A60C02C4 */  sh      $t4, 0x02C4($s0)           ## 000002C4
/* 01D4C 80A4AC0C 8FAD0034 */  lw      $t5, 0x0034($sp)           
/* 01D50 80A4AC10 24020023 */  addiu   $v0, $zero, 0x0023         ## $v0 = 00000023
/* 01D54 80A4AC14 240F000F */  addiu   $t7, $zero, 0x000F         ## $t7 = 0000000F
/* 01D58 80A4AC18 81AE0843 */  lb      $t6, 0x0843($t5)           ## 00000843
/* 01D5C 80A4AC1C 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 01D60 80A4AC20 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 01D64 80A4AC24 11C00005 */  beq     $t6, $zero, .L80A4AC3C     
/* 01D68 80A4AC28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D6C 80A4AC2C A6020398 */  sh      $v0, 0x0398($s0)           ## 00000398
/* 01D70 80A4AC30 A602039A */  sh      $v0, 0x039A($s0)           ## 0000039A
/* 01D74 80A4AC34 10000004 */  beq     $zero, $zero, .L80A4AC48   
/* 01D78 80A4AC38 A600039C */  sh      $zero, 0x039C($s0)         ## 0000039C
.L80A4AC3C:
/* 01D7C 80A4AC3C A60F0398 */  sh      $t7, 0x0398($s0)           ## 00000398
/* 01D80 80A4AC40 A618039A */  sh      $t8, 0x039A($s0)           ## 0000039A
/* 01D84 80A4AC44 A619039C */  sh      $t9, 0x039C($s0)           ## 0000039C
.L80A4AC48:
/* 01D88 80A4AC48 860802CA */  lh      $t0, 0x02CA($s0)           ## 000002CA
/* 01D8C 80A4AC4C 2605030C */  addiu   $a1, $s0, 0x030C           ## $a1 = 0000030C
/* 01D90 80A4AC50 55000017 */  bnel    $t0, $zero, .L80A4ACB0     
/* 01D94 80A4AC54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D98 80A4AC58 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 01D9C 80A4AC5C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01DA0 80A4AC60 26050358 */  addiu   $a1, $s0, 0x0358           ## $a1 = 00000358
/* 01DA4 80A4AC64 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 01DA8 80A4AC68 0C0189B7 */  jal     Collider_UpdateCylinder
              
/* 01DAC 80A4AC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DB0 80A4AC70 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01DB4 80A4AC74 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01DB8 80A4AC78 02212821 */  addu    $a1, $s1, $at              
/* 01DBC 80A4AC7C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01DC0 80A4AC80 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01DC4 80A4AC84 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 01DC8 80A4AC88 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01DCC 80A4AC8C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01DD0 80A4AC90 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01DD4 80A4AC94 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01DD8 80A4AC98 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 01DDC 80A4AC9C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01DE0 80A4ACA0 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 01DE4 80A4ACA4 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01DE8 80A4ACA8 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80A4ACAC:
/* 01DEC 80A4ACAC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A4ACB0:
/* 01DF0 80A4ACB0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01DF4 80A4ACB4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01DF8 80A4ACB8 03E00008 */  jr      $ra                        
/* 01DFC 80A4ACBC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
