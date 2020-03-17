glabel func_80AD7B34
/* 003F4 80AD7B34 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003F8 80AD7B38 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003FC 80AD7B3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00400 80AD7B40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00404 80AD7B44 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00408 80AD7B48 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 0040C 80AD7B4C 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00410 80AD7B50 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00414 80AD7B54 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00418 80AD7B58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0041C 80AD7B5C 0C00BC65 */  jal     func_8002F194              
/* 00420 80AD7B60 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00424 80AD7B64 1040000A */  beq     $v0, $zero, .L80AD7B90     
/* 00428 80AD7B68 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 0042C 80AD7B6C 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00430 80AD7B70 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00434 80AD7B74 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00438 80AD7B78 3C1880AD */  lui     $t8, %hi(func_80AD7BF0)    ## $t8 = 80AD0000
/* 0043C 80AD7B7C 27187BF0 */  addiu   $t8, $t8, %lo(func_80AD7BF0) ## $t8 = 80AD7BF0
/* 00440 80AD7B80 01C17824 */  and     $t7, $t6, $at              
/* 00444 80AD7B84 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00448 80AD7B88 10000011 */  beq     $zero, $zero, .L80AD7BD0   
/* 0044C 80AD7B8C AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80AD7B90:
/* 00450 80AD7B90 44810000 */  mtc1    $at, $f0                   ## $f0 = NaN
/* 00454 80AD7B94 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00458 80AD7B98 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0045C 80AD7B9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00460 80AD7BA0 4600203C */  c.lt.s  $f4, $f0                   
/* 00464 80AD7BA4 00000000 */  nop
/* 00468 80AD7BA8 4502000A */  bc1fl   .L80AD7BD4                 
/* 0046C 80AD7BAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00470 80AD7BB0 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 00474 80AD7BB4 9609019C */  lhu     $t1, 0x019C($s0)           ## 0000019C
/* 00478 80AD7BB8 44060000 */  mfc1    $a2, $f0                   
/* 0047C 80AD7BBC 03214025 */  or      $t0, $t9, $at              ## $t0 = 00010000
/* 00480 80AD7BC0 AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
/* 00484 80AD7BC4 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 00488 80AD7BC8 0C00BCB3 */  jal     func_8002F2CC              
/* 0048C 80AD7BCC 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80AD7BD0:
/* 00490 80AD7BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD7BD4:
/* 00494 80AD7BD4 0C00BE5D */  jal     func_8002F974              
/* 00498 80AD7BD8 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 0049C 80AD7BDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004A0 80AD7BE0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004A4 80AD7BE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004A8 80AD7BE8 03E00008 */  jr      $ra                        
/* 004AC 80AD7BEC 00000000 */  nop


