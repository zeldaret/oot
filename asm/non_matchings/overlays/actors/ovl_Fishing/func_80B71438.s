glabel func_80B71438
/* 07A98 80B71438 3C0E80B8 */  lui     $t6, %hi(D_80B7E075)       ## $t6 = 80B80000
/* 07A9C 80B7143C 91CEE075 */  lbu     $t6, %lo(D_80B7E075)($t6)  
/* 07AA0 80B71440 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 07AA4 80B71444 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 07AA8 80B71448 15C10010 */  bne     $t6, $at, .L80B7148C       
/* 07AAC 80B7144C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 07AB0 80B71450 3C028016 */  lui     $v0, %hi(gSaveContext+0xec0)
/* 07AB4 80B71454 8C42F520 */  lw      $v0, %lo(gSaveContext+0xec0)($v0)
/* 07AB8 80B71458 240940AE */  addiu   $t1, $zero, 0x40AE         ## $t1 = 000040AE
/* 07ABC 80B7145C 304F007F */  andi    $t7, $v0, 0x007F           ## $t7 = 00000000
/* 07AC0 80B71460 11E00008 */  beq     $t7, $zero, .L80B71484     
/* 07AC4 80B71464 30580080 */  andi    $t8, $v0, 0x0080           ## $t8 = 00000000
/* 07AC8 80B71468 13000004 */  beq     $t8, $zero, .L80B7147C     
/* 07ACC 80B7146C 24084089 */  addiu   $t0, $zero, 0x4089         ## $t0 = 00004089
/* 07AD0 80B71470 241940B1 */  addiu   $t9, $zero, 0x40B1         ## $t9 = 000040B1
/* 07AD4 80B71474 10000014 */  beq     $zero, $zero, .L80B714C8   
/* 07AD8 80B71478 A499010E */  sh      $t9, 0x010E($a0)           ## 0000010E
.L80B7147C:
/* 07ADC 80B7147C 10000012 */  beq     $zero, $zero, .L80B714C8   
/* 07AE0 80B71480 A488010E */  sh      $t0, 0x010E($a0)           ## 0000010E
.L80B71484:
/* 07AE4 80B71484 10000010 */  beq     $zero, $zero, .L80B714C8   
/* 07AE8 80B71488 A489010E */  sh      $t1, 0x010E($a0)           ## 0000010E
.L80B7148C:
/* 07AEC 80B7148C 3C028016 */  lui     $v0, %hi(gSaveContext+0xec0)
/* 07AF0 80B71490 8C42F520 */  lw      $v0, %lo(gSaveContext+0xec0)($v0)
/* 07AF4 80B71494 3C017F00 */  lui     $at, 0x7F00                ## $at = 7F000000
/* 07AF8 80B71498 240E40AE */  addiu   $t6, $zero, 0x40AE         ## $t6 = 000040AE
/* 07AFC 80B7149C 00415024 */  and     $t2, $v0, $at              
/* 07B00 80B714A0 11400008 */  beq     $t2, $zero, .L80B714C4     
/* 07B04 80B714A4 00025800 */  sll     $t3, $v0,  0               
/* 07B08 80B714A8 05610004 */  bgez    $t3, .L80B714BC            
/* 07B0C 80B714AC 240D4089 */  addiu   $t5, $zero, 0x4089         ## $t5 = 00004089
/* 07B10 80B714B0 240C40B1 */  addiu   $t4, $zero, 0x40B1         ## $t4 = 000040B1
/* 07B14 80B714B4 10000004 */  beq     $zero, $zero, .L80B714C8   
/* 07B18 80B714B8 A48C010E */  sh      $t4, 0x010E($a0)           ## 0000010E
.L80B714BC:
/* 07B1C 80B714BC 10000002 */  beq     $zero, $zero, .L80B714C8   
/* 07B20 80B714C0 A48D010E */  sh      $t5, 0x010E($a0)           ## 0000010E
.L80B714C4:
/* 07B24 80B714C4 A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
.L80B714C8:
/* 07B28 80B714C8 908F01D3 */  lbu     $t7, 0x01D3($a0)           ## 000001D3
/* 07B2C 80B714CC 15E0003E */  bne     $t7, $zero, .L80B715C8     
/* 07B30 80B714D0 00000000 */  nop
/* 07B34 80B714D4 908201D4 */  lbu     $v0, 0x01D4($a0)           ## 000001D4
/* 07B38 80B714D8 14400035 */  bne     $v0, $zero, .L80B715B0     
/* 07B3C 80B714DC 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = 8015FFFF
/* 07B40 80B714E0 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 07B44 80B714E4 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 07B48 80B714E8 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 07B4C 80B714EC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 07B50 80B714F0 0C00BC65 */  jal     Actor_IsTalking              
/* 07B54 80B714F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07B58 80B714F8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07B5C 80B714FC 10400028 */  beq     $v0, $zero, .L80B715A0     
/* 07B60 80B71500 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 07B64 80B71504 3C0180B8 */  lui     $at, %hi(D_80B7E078)       ## $at = 80B80000
/* 07B68 80B71508 4448F800 */  cfc1    $t0, $31
/* 07B6C 80B7150C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 07B70 80B71510 44C9F800 */  ctc1    $t1, $31
/* 07B74 80B71514 C424E078 */  lwc1    $f4, %lo(D_80B7E078)($at)  
/* 07B78 80B71518 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 07B7C 80B7151C 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 07B80 80B71520 460021A4 */  cvt.w.s $f6, $f4                   
/* 07B84 80B71524 4449F800 */  cfc1    $t1, $31
/* 07B88 80B71528 00000000 */  nop
/* 07B8C 80B7152C 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 07B90 80B71530 51200013 */  beql    $t1, $zero, .L80B71580     
/* 07B94 80B71534 44093000 */  mfc1    $t1, $f6                   
/* 07B98 80B71538 44813000 */  mtc1    $at, $f6                   ## $f6 = 2147483648.00
/* 07B9C 80B7153C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 07BA0 80B71540 46062181 */  sub.s   $f6, $f4, $f6              
/* 07BA4 80B71544 44C9F800 */  ctc1    $t1, $31
/* 07BA8 80B71548 00000000 */  nop
/* 07BAC 80B7154C 460031A4 */  cvt.w.s $f6, $f6                   
/* 07BB0 80B71550 4449F800 */  cfc1    $t1, $31
/* 07BB4 80B71554 00000000 */  nop
/* 07BB8 80B71558 31290078 */  andi    $t1, $t1, 0x0078           ## $t1 = 00000000
/* 07BBC 80B7155C 15200005 */  bne     $t1, $zero, .L80B71574     
/* 07BC0 80B71560 00000000 */  nop
/* 07BC4 80B71564 44093000 */  mfc1    $t1, $f6                   
/* 07BC8 80B71568 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 07BCC 80B7156C 10000007 */  beq     $zero, $zero, .L80B7158C   
/* 07BD0 80B71570 01214825 */  or      $t1, $t1, $at              ## $t1 = 80000000
.L80B71574:
/* 07BD4 80B71574 10000005 */  beq     $zero, $zero, .L80B7158C   
/* 07BD8 80B71578 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 07BDC 80B7157C 44093000 */  mfc1    $t1, $f6                   
.L80B71580:
/* 07BE0 80B71580 00000000 */  nop
/* 07BE4 80B71584 0520FFFB */  bltz    $t1, .L80B71574            
/* 07BE8 80B71588 00000000 */  nop
.L80B7158C:
/* 07BEC 80B7158C 3C0180B8 */  lui     $at, %hi(D_80B7A678)       ## $at = 80B80000
/* 07BF0 80B71590 A429A678 */  sh      $t1, %lo(D_80B7A678)($at)  
/* 07BF4 80B71594 44C8F800 */  ctc1    $t0, $31
/* 07BF8 80B71598 10000012 */  beq     $zero, $zero, .L80B715E4   
/* 07BFC 80B7159C A08A01D3 */  sb      $t2, 0x01D3($a0)           ## 000001D3
.L80B715A0:
/* 07C00 80B715A0 0C00BCBD */  jal     Actor_RequestToTalk              
/* 07C04 80B715A4 00000000 */  nop
/* 07C08 80B715A8 1000000F */  beq     $zero, $zero, .L80B715E8   
/* 07C0C 80B715AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B715B0:
/* 07C10 80B715B0 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 00000004
/* 07C14 80B715B4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 07C18 80B715B8 A08B01D4 */  sb      $t3, 0x01D4($a0)           ## 000001D4
/* 07C1C 80B715BC 01816824 */  and     $t5, $t4, $at              
/* 07C20 80B715C0 10000008 */  beq     $zero, $zero, .L80B715E4   
/* 07C24 80B715C4 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
.L80B715C8:
/* 07C28 80B715C8 0C00BCCD */  jal     Actor_IsDoneTalking              
/* 07C2C 80B715CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 07C30 80B715D0 10400004 */  beq     $v0, $zero, .L80B715E4     
/* 07C34 80B715D4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 07C38 80B715D8 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 07C3C 80B715DC A08001D3 */  sb      $zero, 0x01D3($a0)         ## 000001D3
/* 07C40 80B715E0 A08E01D4 */  sb      $t6, 0x01D4($a0)           ## 000001D4
.L80B715E4:
/* 07C44 80B715E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B715E8:
/* 07C48 80B715E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 07C4C 80B715EC 03E00008 */  jr      $ra                        
/* 07C50 80B715F0 00000000 */  nop
