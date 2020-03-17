glabel func_80AFB290
/* 00B70 80AFB290 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00B74 80AFB294 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00B78 80AFB298 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B7C 80AFB29C AFA40050 */  sw      $a0, 0x0050($sp)           
/* 00B80 80AFB2A0 AFA60058 */  sw      $a2, 0x0058($sp)           
/* 00B84 80AFB2A4 14A1006D */  bne     $a1, $at, .L80AFB45C       
/* 00B88 80AFB2A8 AFA7005C */  sw      $a3, 0x005C($sp)           
/* 00B8C 80AFB2AC 8FAF0060 */  lw      $t7, 0x0060($sp)           
/* 00B90 80AFB2B0 3C0E80B0 */  lui     $t6, %hi(func_80AFAE28)    ## $t6 = 80B00000
/* 00B94 80AFB2B4 25CEAE28 */  addiu   $t6, $t6, %lo(func_80AFAE28) ## $t6 = 80AFAE28
/* 00B98 80AFB2B8 8DF80190 */  lw      $t8, 0x0190($t7)           ## 00000190
/* 00B9C 80AFB2BC 3C0680B0 */  lui     $a2, %hi(D_80AFB520)       ## $a2 = 80B00000
/* 00BA0 80AFB2C0 24C6B520 */  addiu   $a2, $a2, %lo(D_80AFB520)  ## $a2 = 80AFB520
/* 00BA4 80AFB2C4 15D80065 */  bne     $t6, $t8, .L80AFB45C       
/* 00BA8 80AFB2C8 240702AA */  addiu   $a3, $zero, 0x02AA         ## $a3 = 000002AA
/* 00BAC 80AFB2CC 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 00BB0 80AFB2D0 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFD8
/* 00BB4 80AFB2D4 0C031AB1 */  jal     func_800C6AC4              
/* 00BB8 80AFB2D8 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00BBC 80AFB2DC 8FA80060 */  lw      $t0, 0x0060($sp)           
/* 00BC0 80AFB2E0 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00BC4 80AFB2E4 44819000 */  mtc1    $at, $f18                  ## $f18 = 6.00
/* 00BC8 80AFB2E8 C5000164 */  lwc1    $f0, 0x0164($t0)           ## 00000164
/* 00BCC 80AFB2EC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 00BD0 80AFB2F0 4612003E */  c.le.s  $f0, $f18                  
/* 00BD4 80AFB2F4 00000000 */  nop
/* 00BD8 80AFB2F8 4502000F */  bc1fl   .L80AFB338                 
/* 00BDC 80AFB2FC 44811000 */  mtc1    $at, $f2                   ## $f2 = 7.00
/* 00BE0 80AFB300 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BE4 80AFB304 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00BE8 80AFB308 3C0180B0 */  lui     $at, %hi(D_80AFB55C)       ## $at = 80B00000
/* 00BEC 80AFB30C C424B55C */  lwc1    $f4, %lo(D_80AFB55C)($at)  
/* 00BF0 80AFB310 3C0180B0 */  lui     $at, %hi(D_80AFB560)       ## $at = 80B00000
/* 00BF4 80AFB314 C428B560 */  lwc1    $f8, %lo(D_80AFB560)($at)  
/* 00BF8 80AFB318 46040182 */  mul.s   $f6, $f0, $f4              
/* 00BFC 80AFB31C 00000000 */  nop
/* 00C00 80AFB320 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C04 80AFB324 46069381 */  sub.s   $f14, $f18, $f6            
/* 00C08 80AFB328 46125300 */  add.s   $f12, $f10, $f18           
/* 00C0C 80AFB32C 10000028 */  beq     $zero, $zero, .L80AFB3D0   
/* 00C10 80AFB330 46006406 */  mov.s   $f16, $f12                 
/* 00C14 80AFB334 44811000 */  mtc1    $at, $f2                   ## $f2 = -0.00
.L80AFB338:
/* 00C18 80AFB338 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C1C 80AFB33C 4602003E */  c.le.s  $f0, $f2                   
/* 00C20 80AFB340 00000000 */  nop
/* 00C24 80AFB344 4502000E */  bc1fl   .L80AFB380                 
/* 00C28 80AFB348 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00C2C 80AFB34C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00C30 80AFB350 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00C34 80AFB354 3C0180B0 */  lui     $at, %hi(D_80AFB564)       ## $at = 80B00000
/* 00C38 80AFB358 C426B564 */  lwc1    $f6, %lo(D_80AFB564)($at)  
/* 00C3C 80AFB35C 46120001 */  sub.s   $f0, $f0, $f18             
/* 00C40 80AFB360 3C0180B0 */  lui     $at, %hi(D_80AFB568)       ## $at = 80B00000
/* 00C44 80AFB364 C428B568 */  lwc1    $f8, %lo(D_80AFB568)($at)  
/* 00C48 80AFB368 46002380 */  add.s   $f14, $f4, $f0             
/* 00C4C 80AFB36C 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C50 80AFB370 460A3301 */  sub.s   $f12, $f6, $f10            
/* 00C54 80AFB374 10000016 */  beq     $zero, $zero, .L80AFB3D0   
/* 00C58 80AFB378 46006406 */  mov.s   $f16, $f12                 
/* 00C5C 80AFB37C 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.00
.L80AFB380:
/* 00C60 80AFB380 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C64 80AFB384 4604003E */  c.le.s  $f0, $f4                   
/* 00C68 80AFB388 00000000 */  nop
/* 00C6C 80AFB38C 4502000D */  bc1fl   .L80AFB3C4                 
/* 00C70 80AFB390 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00C74 80AFB394 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C78 80AFB398 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00C7C 80AFB39C 46020201 */  sub.s   $f8, $f0, $f2              
/* 00C80 80AFB3A0 3C0180B0 */  lui     $at, %hi(D_80AFB56C)       ## $at = 80B00000
/* 00C84 80AFB3A4 C426B56C */  lwc1    $f6, %lo(D_80AFB56C)($at)  
/* 00C88 80AFB3A8 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00C8C 80AFB3AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00C90 80AFB3B0 46064282 */  mul.s   $f10, $f8, $f6             
/* 00C94 80AFB3B4 46006406 */  mov.s   $f16, $f12                 
/* 00C98 80AFB3B8 10000005 */  beq     $zero, $zero, .L80AFB3D0   
/* 00C9C 80AFB3BC 460A2381 */  sub.s   $f14, $f4, $f10            
/* 00CA0 80AFB3C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
.L80AFB3C4:
/* 00CA4 80AFB3C4 00000000 */  nop
/* 00CA8 80AFB3C8 46006406 */  mov.s   $f16, $f12                 
/* 00CAC 80AFB3CC 46006386 */  mov.s   $f14, $f12                 
.L80AFB3D0:
/* 00CB0 80AFB3D0 44068000 */  mfc1    $a2, $f16                  
/* 00CB4 80AFB3D4 0C0342A3 */  jal     Matrix_Scale              
/* 00CB8 80AFB3D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00CBC 80AFB3DC 8FA70038 */  lw      $a3, 0x0038($sp)           
/* 00CC0 80AFB3E0 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 00CC4 80AFB3E4 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 00CC8 80AFB3E8 8CE202C0 */  lw      $v0, 0x02C0($a3)           ## 000002C0
/* 00CCC 80AFB3EC 3C0580B0 */  lui     $a1, %hi(D_80AFB534)       ## $a1 = 80B00000
/* 00CD0 80AFB3F0 24A5B534 */  addiu   $a1, $a1, %lo(D_80AFB534)  ## $a1 = 80AFB534
/* 00CD4 80AFB3F4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00CD8 80AFB3F8 ACE902C0 */  sw      $t1, 0x02C0($a3)           ## 000002C0
/* 00CDC 80AFB3FC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00CE0 80AFB400 8FAB0050 */  lw      $t3, 0x0050($sp)           
/* 00CE4 80AFB404 240602CA */  addiu   $a2, $zero, 0x02CA         ## $a2 = 000002CA
/* 00CE8 80AFB408 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 00CEC 80AFB40C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00CF0 80AFB410 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00CF4 80AFB414 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00CF8 80AFB418 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 00CFC 80AFB41C 25CE3B68 */  addiu   $t6, $t6, 0x3B68           ## $t6 = 06003B68
/* 00D00 80AFB420 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00D04 80AFB424 8FAC0038 */  lw      $t4, 0x0038($sp)           
/* 00D08 80AFB428 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 00D0C 80AFB42C 3C0680B0 */  lui     $a2, %hi(D_80AFB548)       ## $a2 = 80B00000
/* 00D10 80AFB430 8D8202C0 */  lw      $v0, 0x02C0($t4)           ## 000002C0
/* 00D14 80AFB434 24C6B548 */  addiu   $a2, $a2, %lo(D_80AFB548)  ## $a2 = 80AFB548
/* 00D18 80AFB438 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFD8
/* 00D1C 80AFB43C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00D20 80AFB440 AD8D02C0 */  sw      $t5, 0x02C0($t4)           ## 000002C0
/* 00D24 80AFB444 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00D28 80AFB448 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00D2C 80AFB44C 8FB80050 */  lw      $t8, 0x0050($sp)           
/* 00D30 80AFB450 240702CD */  addiu   $a3, $zero, 0x02CD         ## $a3 = 000002CD
/* 00D34 80AFB454 0C031AD5 */  jal     func_800C6B54              
/* 00D38 80AFB458 8F050000 */  lw      $a1, 0x0000($t8)           ## 00000000
.L80AFB45C:
/* 00D3C 80AFB45C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D40 80AFB460 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00D44 80AFB464 03E00008 */  jr      $ra                        
/* 00D48 80AFB468 00000000 */  nop


