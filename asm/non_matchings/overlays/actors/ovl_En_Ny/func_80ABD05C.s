glabel func_80ABD05C
/* 004AC 80ABD05C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004B0 80ABD060 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 004B4 80ABD064 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.25
/* 004B8 80ABD068 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004BC 80ABD06C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 004C0 80ABD070 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 004C4 80ABD074 C48001E0 */  lwc1    $f0, 0x01E0($a0)           ## 000001E0
/* 004C8 80ABD078 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 004CC 80ABD07C 00000000 */  nop
/* 004D0 80ABD080 46040001 */  sub.s   $f0, $f0, $f4              
/* 004D4 80ABD084 4602003E */  c.le.s  $f0, $f2                   
/* 004D8 80ABD088 00000000 */  nop
/* 004DC 80ABD08C 4502001F */  bc1fl   .L80ABD10C                 
/* 004E0 80ABD090 E48001E0 */  swc1    $f0, 0x01E0($a0)           ## 000001E0
/* 004E4 80ABD094 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 004E8 80ABD098 46001006 */  mov.s   $f0, $f2                   
/* 004EC 80ABD09C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 004F0 80ABD0A0 51C0001A */  beql    $t6, $zero, .L80ABD10C     
/* 004F4 80ABD0A4 E48001E0 */  swc1    $f0, 0x01E0($a0)           ## 000001E0
/* 004F8 80ABD0A8 C48601F0 */  lwc1    $f6, 0x01F0($a0)           ## 000001F0
/* 004FC 80ABD0AC C4880084 */  lwc1    $f8, 0x0084($a0)           ## 00000084
/* 00500 80ABD0B0 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 00504 80ABD0B4 4608303C */  c.lt.s  $f6, $f8                   
/* 00508 80ABD0B8 00000000 */  nop
/* 0050C 80ABD0BC 45030008 */  bc1tl   .L80ABD0E0                 
/* 00510 80ABD0C0 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00514 80ABD0C4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00518 80ABD0C8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0051C 80ABD0CC E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00520 80ABD0D0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00524 80ABD0D4 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00528 80ABD0D8 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 0052C 80ABD0DC 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80ABD0E0:
/* 00530 80ABD0E0 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00534 80ABD0E4 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 00538 80ABD0E8 A48F0088 */  sh      $t7, 0x0088($a0)           ## 00000088
/* 0053C 80ABD0EC E48A0068 */  swc1    $f10, 0x0068($a0)          ## 00000068
/* 00540 80ABD0F0 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 00544 80ABD0F4 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00548 80ABD0F8 0C2AF38E */  jal     func_80ABCE38              
/* 0054C 80ABD0FC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00550 80ABD100 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00554 80ABD104 C7A0001C */  lwc1    $f0, 0x001C($sp)           
/* 00558 80ABD108 E48001E0 */  swc1    $f0, 0x01E0($a0)           ## 000001E0
.L80ABD10C:
/* 0055C 80ABD10C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00560 80ABD110 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00564 80ABD114 03E00008 */  jr      $ra                        
/* 00568 80ABD118 00000000 */  nop


