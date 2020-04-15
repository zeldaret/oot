glabel func_80AB6A38
/* 012B8 80AB6A38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 012BC 80AB6A3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 012C0 80AB6A40 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 012C4 80AB6A44 848202E8 */  lh      $v0, 0x02E8($a0)           ## 000002E8
/* 012C8 80AB6A48 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 012CC 80AB6A4C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 012D0 80AB6A50 2446FFFF */  addiu   $a2, $v0, 0xFFFF           ## $a2 = FFFFFFFF
/* 012D4 80AB6A54 00063400 */  sll     $a2, $a2, 16               
/* 012D8 80AB6A58 1440001A */  bne     $v0, $zero, .L80AB6AC4     
/* 012DC 80AB6A5C 00063403 */  sra     $a2, $a2, 16               
/* 012E0 80AB6A60 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 012E4 80AB6A64 C4900024 */  lwc1    $f16, 0x0024($a0)          ## 00000024
/* 012E8 80AB6A68 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 012EC 80AB6A6C C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 012F0 80AB6A70 A480029E */  sh      $zero, 0x029E($a0)         ## 0000029E
/* 012F4 80AB6A74 8482029E */  lh      $v0, 0x029E($a0)           ## 0000029E
/* 012F8 80AB6A78 3C0E80AB */  lui     $t6, %hi(func_80AB627C)    ## $t6 = 80AB0000
/* 012FC 80AB6A7C 25CE627C */  addiu   $t6, $t6, %lo(func_80AB627C) ## $t6 = 80AB627C
/* 01300 80AB6A80 E49002B8 */  swc1    $f16, 0x02B8($a0)          ## 000002B8
/* 01304 80AB6A84 E49002AC */  swc1    $f16, 0x02AC($a0)          ## 000002AC
/* 01308 80AB6A88 E48E02BC */  swc1    $f14, 0x02BC($a0)          ## 000002BC
/* 0130C 80AB6A8C E48E02B0 */  swc1    $f14, 0x02B0($a0)          ## 000002B0
/* 01310 80AB6A90 E48C02C0 */  swc1    $f12, 0x02C0($a0)          ## 000002C0
/* 01314 80AB6A94 E48C02B4 */  swc1    $f12, 0x02B4($a0)          ## 000002B4
/* 01318 80AB6A98 A482025A */  sh      $v0, 0x025A($a0)           ## 0000025A
/* 0131C 80AB6A9C A482025C */  sh      $v0, 0x025C($a0)           ## 0000025C
/* 01320 80AB6AA0 E4920300 */  swc1    $f18, 0x0300($a0)          ## 00000300
/* 01324 80AB6AA4 E49202FC */  swc1    $f18, 0x02FC($a0)          ## 000002FC
/* 01328 80AB6AA8 E4920068 */  swc1    $f18, 0x0068($a0)          ## 00000068
/* 0132C 80AB6AAC E492028C */  swc1    $f18, 0x028C($a0)          ## 0000028C
/* 01330 80AB6AB0 E4920284 */  swc1    $f18, 0x0284($a0)          ## 00000284
/* 01334 80AB6AB4 E4920280 */  swc1    $f18, 0x0280($a0)          ## 00000280
/* 01338 80AB6AB8 E4920288 */  swc1    $f18, 0x0288($a0)          ## 00000288
/* 0133C 80AB6ABC 1000004A */  beq     $zero, $zero, .L80AB6BE8   
/* 01340 80AB6AC0 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
.L80AB6AC4:
/* 01344 80AB6AC4 030FC021 */  addu    $t8, $t8, $t7              
/* 01348 80AB6AC8 8F181E08 */  lw      $t8, 0x1E08($t8)           ## 00011E08
/* 0134C 80AB6ACC 0006C8C0 */  sll     $t9, $a2,  3               
/* 01350 80AB6AD0 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 01354 80AB6AD4 03192821 */  addu    $a1, $t8, $t9              
/* 01358 80AB6AD8 8CA30004 */  lw      $v1, 0x0004($a1)           ## 00000004
/* 0135C 80AB6ADC 848D02EA */  lh      $t5, 0x02EA($a0)           ## 000002EA
/* 01360 80AB6AE0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01364 80AB6AE4 00034100 */  sll     $t0, $v1,  4               
/* 01368 80AB6AE8 00084F02 */  srl     $t1, $t0, 28               
/* 0136C 80AB6AEC 00095080 */  sll     $t2, $t1,  2               
/* 01370 80AB6AF0 016A5821 */  addu    $t3, $t3, $t2              
/* 01374 80AB6AF4 8D6B6FA8 */  lw      $t3, 0x6FA8($t3)           ## 80166FA8
/* 01378 80AB6AF8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0137C 80AB6AFC 00616024 */  and     $t4, $v1, $at              
/* 01380 80AB6B00 000D7080 */  sll     $t6, $t5,  2               
/* 01384 80AB6B04 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01388 80AB6B08 01CD7023 */  subu    $t6, $t6, $t5              
/* 0138C 80AB6B0C 016C1021 */  addu    $v0, $t3, $t4              
/* 01390 80AB6B10 00411021 */  addu    $v0, $v0, $at              
/* 01394 80AB6B14 000E7040 */  sll     $t6, $t6,  1               
/* 01398 80AB6B18 004E1021 */  addu    $v0, $v0, $t6              
/* 0139C 80AB6B1C 844F0000 */  lh      $t7, 0x0000($v0)           ## 00000000
/* 013A0 80AB6B20 84580004 */  lh      $t8, 0x0004($v0)           ## 00000004
/* 013A4 80AB6B24 C4880024 */  lwc1    $f8, 0x0024($a0)           ## 00000024
/* 013A8 80AB6B28 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 013AC 80AB6B2C 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 013B0 80AB6B30 C492002C */  lwc1    $f18, 0x002C($a0)          ## 0000002C
/* 013B4 80AB6B34 468021A0 */  cvt.s.w $f6, $f4                   
/* 013B8 80AB6B38 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 013BC 80AB6B3C 46805420 */  cvt.s.w $f16, $f10                 
/* 013C0 80AB6B40 46083301 */  sub.s   $f12, $f6, $f8             
/* 013C4 80AB6B44 46128381 */  sub.s   $f14, $f16, $f18           
/* 013C8 80AB6B48 E7AC001C */  swc1    $f12, 0x001C($sp)          
/* 013CC 80AB6B4C 0C03F494 */  jal     Math_atan2f              
/* 013D0 80AB6B50 E7AE0018 */  swc1    $f14, 0x0018($sp)          
/* 013D4 80AB6B54 3C0180AC */  lui     $at, %hi(D_80AB8AE4)       ## $at = 80AC0000
/* 013D8 80AB6B58 C4248AE4 */  lwc1    $f4, %lo(D_80AB8AE4)($at)  
/* 013DC 80AB6B5C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 013E0 80AB6B60 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 013E4 80AB6B64 46040182 */  mul.s   $f6, $f0, $f4              
/* 013E8 80AB6B68 4600320D */  trunc.w.s $f8, $f6                   
/* 013EC 80AB6B6C 44084000 */  mfc1    $t0, $f8                   
/* 013F0 80AB6B70 00000000 */  nop
/* 013F4 80AB6B74 A48802E4 */  sh      $t0, 0x02E4($a0)           ## 000002E4
/* 013F8 80AB6B78 0C2AD840 */  jal     func_80AB6100              
/* 013FC 80AB6B7C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01400 80AB6B80 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 01404 80AB6B84 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01408 80AB6B88 44811000 */  mtc1    $at, $f2                   ## $f2 = 30.00
/* 0140C 80AB6B8C 46000005 */  abs.s   $f0, $f0                   
/* 01410 80AB6B90 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01414 80AB6B94 4602003C */  c.lt.s  $f0, $f2                   
/* 01418 80AB6B98 C7A00018 */  lwc1    $f0, 0x0018($sp)           
/* 0141C 80AB6B9C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01420 80AB6BA0 4500000F */  bc1f    .L80AB6BE0                 
/* 01424 80AB6BA4 00000000 */  nop
/* 01428 80AB6BA8 46000005 */  abs.s   $f0, $f0                   
/* 0142C 80AB6BAC 4602003C */  c.lt.s  $f0, $f2                   
/* 01430 80AB6BB0 00000000 */  nop
/* 01434 80AB6BB4 4500000A */  bc1f    .L80AB6BE0                 
/* 01438 80AB6BB8 00000000 */  nop
/* 0143C 80AB6BBC 848902EA */  lh      $t1, 0x02EA($a0)           ## 000002EA
/* 01440 80AB6BC0 848C02EC */  lh      $t4, 0x02EC($a0)           ## 000002EC
/* 01444 80AB6BC4 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01448 80AB6BC8 A48A02EA */  sh      $t2, 0x02EA($a0)           ## 000002EA
/* 0144C 80AB6BCC 848B02EA */  lh      $t3, 0x02EA($a0)           ## 000002EA
/* 01450 80AB6BD0 016C082A */  slt     $at, $t3, $t4              
/* 01454 80AB6BD4 14200002 */  bne     $at, $zero, .L80AB6BE0     
/* 01458 80AB6BD8 00000000 */  nop
/* 0145C 80AB6BDC A48002EA */  sh      $zero, 0x02EA($a0)         ## 000002EA
.L80AB6BE0:
/* 01460 80AB6BE0 0C2AD6FE */  jal     func_80AB5BF8              
/* 01464 80AB6BE4 8FA5002C */  lw      $a1, 0x002C($sp)           
.L80AB6BE8:
/* 01468 80AB6BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0146C 80AB6BEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01470 80AB6BF0 03E00008 */  jr      $ra                        
/* 01474 80AB6BF4 00000000 */  nop
