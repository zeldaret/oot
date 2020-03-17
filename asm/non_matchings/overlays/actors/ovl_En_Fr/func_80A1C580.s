glabel func_80A1C580
/* 01BE0 80A1C580 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01BE4 80A1C584 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01BE8 80A1C588 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01BEC 80A1C58C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01BF0 80A1C590 84820386 */  lh      $v0, 0x0386($a0)           ## 00000386
/* 01BF4 80A1C594 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BF8 80A1C598 3C0380A2 */  lui     $v1, %hi(D_80A1CFF0)       ## $v1 = 80A20000
/* 01BFC 80A1C59C 14400005 */  bne     $v0, $zero, .L80A1C5B4     
/* 01C00 80A1C5A0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01C04 80A1C5A4 0C287149 */  jal     func_80A1C524              
/* 01C08 80A1C5A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C0C 80A1C5AC 10000056 */  beq     $zero, $zero, .L80A1C708   
/* 01C10 80A1C5B0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1C5B4:
/* 01C14 80A1C5B4 A60E0386 */  sh      $t6, 0x0386($s0)           ## 00000386
/* 01C18 80A1C5B8 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 01C1C 80A1C5BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01C20 80A1C5C0 3C0680A2 */  lui     $a2, %hi(D_80A1D004)       ## $a2 = 80A20000
/* 01C24 80A1C5C4 00E13821 */  addu    $a3, $a3, $at              
/* 01C28 80A1C5C8 90E803DC */  lbu     $t0, 0x03DC($a3)           ## 000003DC
/* 01C2C 80A1C5CC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 01C30 80A1C5D0 24C6D004 */  addiu   $a2, $a2, %lo(D_80A1D004)  ## $a2 = 80A1D004
/* 01C34 80A1C5D4 1501001A */  bne     $t0, $at, .L80A1C640       
/* 01C38 80A1C5D8 2463CFF0 */  addiu   $v1, $v1, %lo(D_80A1CFF0)  ## $v1 = FFFFCFF0
/* 01C3C 80A1C5DC 3C0580A2 */  lui     $a1, %hi(func_80A1B524)    ## $a1 = 80A20000
/* 01C40 80A1C5E0 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01C44 80A1C5E4 24A5B524 */  addiu   $a1, $a1, %lo(func_80A1B524) ## $a1 = 80A1B524
/* 01C48 80A1C5E8 8C620004 */  lw      $v0, 0x0004($v1)           ## FFFFCFF4
.L80A1C5EC:
/* 01C4C 80A1C5EC 24630004 */  addiu   $v1, $v1, 0x0004           ## $v1 = FFFFCFF4
/* 01C50 80A1C5F0 50400005 */  beql    $v0, $zero, .L80A1C608     
/* 01C54 80A1C5F4 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000001
/* 01C58 80A1C5F8 8C4F0354 */  lw      $t7, 0x0354($v0)           ## 00000354
/* 01C5C 80A1C5FC 10AF0002 */  beq     $a1, $t7, .L80A1C608       
/* 01C60 80A1C600 00000000 */  nop
/* 01C64 80A1C604 24840001 */  addiu   $a0, $a0, 0x0001           ## $a0 = 00000002
.L80A1C608:
/* 01C68 80A1C608 5466FFF8 */  bnel    $v1, $a2, .L80A1C5EC       
/* 01C6C 80A1C60C 8C620004 */  lw      $v0, 0x0004($v1)           ## FFFFCFF8
/* 01C70 80A1C610 1480000B */  bne     $a0, $zero, .L80A1C640     
/* 01C74 80A1C614 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 01C78 80A1C618 97190020 */  lhu     $t9, 0x0020($t8)           ## 00000020
/* 01C7C 80A1C61C 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 01C80 80A1C620 03214827 */  nor     $t1, $t9, $at              
/* 01C84 80A1C624 55200007 */  bnel    $t1, $zero, .L80A1C644     
/* 01C88 80A1C628 24010033 */  addiu   $at, $zero, 0x0033         ## $at = 00000033
/* 01C8C 80A1C62C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C90 80A1C630 0C287149 */  jal     func_80A1C524              
/* 01C94 80A1C634 03002825 */  or      $a1, $t8, $zero            ## $a1 = 00000000
/* 01C98 80A1C638 10000033 */  beq     $zero, $zero, .L80A1C708   
/* 01C9C 80A1C63C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1C640:
/* 01CA0 80A1C640 24010033 */  addiu   $at, $zero, 0x0033         ## $at = 00000033
.L80A1C644:
/* 01CA4 80A1C644 1501002F */  bne     $t0, $at, .L80A1C704       
/* 01CA8 80A1C648 8FAB0024 */  lw      $t3, 0x0024($sp)           
/* 01CAC 80A1C64C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01CB0 80A1C650 002B0821 */  addu    $at, $at, $t3              
/* 01CB4 80A1C654 240A0031 */  addiu   $t2, $zero, 0x0031         ## $t2 = 00000031
/* 01CB8 80A1C658 A02A03DC */  sb      $t2, 0x03DC($at)           ## 000103DC
/* 01CBC 80A1C65C 90EC04E8 */  lbu     $t4, 0x04E8($a3)           ## 000004E8
/* 01CC0 80A1C660 2D810005 */  sltiu   $at, $t4, 0x0005           
/* 01CC4 80A1C664 1020001D */  beq     $at, $zero, .L80A1C6DC     
/* 01CC8 80A1C668 000C6080 */  sll     $t4, $t4,  2               
/* 01CCC 80A1C66C 3C0180A2 */  lui     $at, %hi(jtbl_80A1D2F0)       ## $at = 80A20000
/* 01CD0 80A1C670 002C0821 */  addu    $at, $at, $t4              
/* 01CD4 80A1C674 8C2CD2F0 */  lw      $t4, %lo(jtbl_80A1D2F0)($at)  
/* 01CD8 80A1C678 01800008 */  jr      $t4                        
/* 01CDC 80A1C67C 00000000 */  nop
glabel L80A1C680
/* 01CE0 80A1C680 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 80A1C684 0C286F05 */  jal     func_80A1BC14              
/* 01CE8 80A1C688 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01CEC 80A1C68C 10000014 */  beq     $zero, $zero, .L80A1C6E0   
/* 01CF0 80A1C690 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L80A1C694
/* 01CF4 80A1C694 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF8 80A1C698 0C286F05 */  jal     func_80A1BC14              
/* 01CFC 80A1C69C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01D00 80A1C6A0 1000000F */  beq     $zero, $zero, .L80A1C6E0   
/* 01D04 80A1C6A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L80A1C6A8
/* 01D08 80A1C6A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D0C 80A1C6AC 0C286F05 */  jal     func_80A1BC14              
/* 01D10 80A1C6B0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01D14 80A1C6B4 1000000A */  beq     $zero, $zero, .L80A1C6E0   
/* 01D18 80A1C6B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L80A1C6BC
/* 01D1C 80A1C6BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D20 80A1C6C0 0C286F05 */  jal     func_80A1BC14              
/* 01D24 80A1C6C4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01D28 80A1C6C8 10000005 */  beq     $zero, $zero, .L80A1C6E0   
/* 01D2C 80A1C6CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
glabel L80A1C6D0
/* 01D30 80A1C6D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D34 80A1C6D4 0C286F05 */  jal     func_80A1BC14              
/* 01D38 80A1C6D8 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
.L80A1C6DC:
/* 01D3C 80A1C6DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A1C6E0:
/* 01D40 80A1C6E0 0C28711D */  jal     func_80A1C474              
/* 01D44 80A1C6E4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D48 80A1C6E8 10400006 */  beq     $v0, $zero, .L80A1C704     
/* 01D4C 80A1C6EC 240D40AC */  addiu   $t5, $zero, 0x40AC         ## $t5 = 000040AC
/* 01D50 80A1C6F0 A60D010E */  sh      $t5, 0x010E($s0)           ## 0000010E
/* 01D54 80A1C6F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01D58 80A1C6F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D5C 80A1C6FC 0C2871C6 */  jal     func_80A1C718              
/* 01D60 80A1C700 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80A1C704:
/* 01D64 80A1C704 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A1C708:
/* 01D68 80A1C708 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01D6C 80A1C70C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01D70 80A1C710 03E00008 */  jr      $ra                        
/* 01D74 80A1C714 00000000 */  nop


