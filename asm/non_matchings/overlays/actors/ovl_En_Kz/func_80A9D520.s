glabel func_80A9D520
/* 00FD0 80A9D520 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FD4 80A9D524 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FD8 80A9D528 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00FDC 80A9D52C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00FE0 80A9D530 0C042F6F */  jal     func_8010BDBC              
/* 00FE4 80A9D534 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00FE8 80A9D538 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00FEC 80A9D53C 5441001A */  bnel    $v0, $at, .L80A9D5A8       
/* 00FF0 80A9D540 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00FF4 80A9D544 0C041AF2 */  jal     func_80106BC8              
/* 00FF8 80A9D548 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00FFC 80A9D54C 10400015 */  beq     $v0, $zero, .L80A9D5A4     
/* 01000 80A9D550 3C0E8012 */  lui     $t6, %hi(gItemSlots+0x2d)
/* 01004 80A9D554 91CE7491 */  lbu     $t6, %lo(gItemSlots+0x2d)($t6)
/* 01008 80A9D558 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 0100C 80A9D55C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01010 80A9D560 004E7821 */  addu    $t7, $v0, $t6              
/* 01014 80A9D564 91F80074 */  lbu     $t8, 0x0074($t7)           ## 00000074
/* 01018 80A9D568 24010035 */  addiu   $at, $zero, 0x0035         ## $at = 00000035
/* 0101C 80A9D56C 57010009 */  bnel    $t8, $at, .L80A9D594       
/* 01020 80A9D570 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 01024 80A9D574 0C0222A8 */  jal     func_80088AA0              
/* 01028 80A9D578 240400B4 */  addiu   $a0, $zero, 0x00B4         ## $a0 = 000000B4
/* 0102C 80A9D57C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01030 80A9D580 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01034 80A9D584 945913FC */  lhu     $t9, 0x13FC($v0)           ## 8015FA5C
/* 01038 80A9D588 3328FFFE */  andi    $t0, $t9, 0xFFFE           ## $t0 = 00000000
/* 0103C 80A9D58C A44813FC */  sh      $t0, 0x13FC($v0)           ## 8015FA5C
/* 01040 80A9D590 8FA20018 */  lw      $v0, 0x0018($sp)           
.L80A9D594:
/* 01044 80A9D594 3C0980AA */  lui     $t1, %hi(func_80A9D42C)    ## $t1 = 80AA0000
/* 01048 80A9D598 2529D42C */  addiu   $t1, $t1, %lo(func_80A9D42C) ## $t1 = 80A9D42C
/* 0104C 80A9D59C A44001E0 */  sh      $zero, 0x01E0($v0)         ## 8015E840
/* 01050 80A9D5A0 AC490190 */  sw      $t1, 0x0190($v0)           ## 8015E7F0
.L80A9D5A4:
/* 01054 80A9D5A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9D5A8:
/* 01058 80A9D5A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0105C 80A9D5AC 03E00008 */  jr      $ra                        
/* 01060 80A9D5B0 00000000 */  nop
