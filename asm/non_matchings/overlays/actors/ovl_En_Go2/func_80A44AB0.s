glabel func_80A44AB0
/* 01D80 80A44AB0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01D84 80A44AB4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01D88 80A44AB8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01D8C 80A44ABC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01D90 80A44AC0 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 01D94 80A44AC4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01D98 80A44AC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D9C 80A44ACC 31F8001F */  andi    $t8, $t7, 0x001F           ## $t8 = 00000000
/* 01DA0 80A44AD0 17010003 */  bne     $t8, $at, .L80A44AE0       
/* 01DA4 80A44AD4 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01DA8 80A44AD8 1000005E */  beq     $zero, $zero, .L80A44C54   
/* 01DAC 80A44ADC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44AE0:
/* 01DB0 80A44AE0 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 01DB4 80A44AE4 3C1980A4 */  lui     $t9, %hi(func_80A46E54)    ## $t9 = 80A40000
/* 01DB8 80A44AE8 27396E54 */  addiu   $t9, $t9, %lo(func_80A46E54) ## $t9 = 80A46E54
/* 01DBC 80A44AEC 13220009 */  beq     $t9, $v0, .L80A44B14       
/* 01DC0 80A44AF0 3C0880A4 */  lui     $t0, %hi(func_80A47024)    ## $t0 = 80A40000
/* 01DC4 80A44AF4 25087024 */  addiu   $t0, $t0, %lo(func_80A47024) ## $t0 = 80A47024
/* 01DC8 80A44AF8 11020006 */  beq     $t0, $v0, .L80A44B14       
/* 01DCC 80A44AFC 3C0980A4 */  lui     $t1, %hi(func_80A46DBC)    ## $t1 = 80A40000
/* 01DD0 80A44B00 25296DBC */  addiu   $t1, $t1, %lo(func_80A46DBC) ## $t1 = 80A46DBC
/* 01DD4 80A44B04 51220004 */  beql    $t1, $v0, .L80A44B18       
/* 01DD8 80A44B08 920A01CD */  lbu     $t2, 0x01CD($s0)           ## 000001CD
/* 01DDC 80A44B0C 10000051 */  beq     $zero, $zero, .L80A44C54   
/* 01DE0 80A44B10 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44B14:
/* 01DE4 80A44B14 920A01CD */  lbu     $t2, 0x01CD($s0)           ## 000001CD
.L80A44B18:
/* 01DE8 80A44B18 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01DEC 80A44B1C 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01DF0 80A44B20 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 01DF4 80A44B24 11600016 */  beq     $t3, $zero, .L80A44B80     
/* 01DF8 80A44B28 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 01DFC 80A44B2C 3C0C8013 */  lui     $t4, 0x8013                ## $t4 = 80130000
/* 01E00 80A44B30 258C33E8 */  addiu   $t4, $t4, 0x33E8           ## $t4 = 801333E8
/* 01E04 80A44B34 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 01E08 80A44B38 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 01E0C 80A44B3C AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01E10 80A44B40 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01E14 80A44B44 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01E18 80A44B48 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01E1C 80A44B4C 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 01E20 80A44B50 920F01CD */  lbu     $t7, 0x01CD($s0)           ## 000001CD
/* 01E24 80A44B54 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 01E28 80A44B58 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FEFFFFFF
/* 01E2C 80A44B5C 01A17024 */  and     $t6, $t5, $at              
/* 01E30 80A44B60 31F8FFFD */  andi    $t8, $t7, 0xFFFD           ## $t8 = 00000000
/* 01E34 80A44B64 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
/* 01E38 80A44B68 A21801CD */  sb      $t8, 0x01CD($s0)           ## 000001CD
/* 01E3C 80A44B6C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01E40 80A44B70 0C291792 */  jal     func_80A45E48              
/* 01E44 80A44B74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E48 80A44B78 10000036 */  beq     $zero, $zero, .L80A44C54   
/* 01E4C 80A44B7C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A44B80:
/* 01E50 80A44B80 80790A78 */  lb      $t9, 0x0A78($v1)           ## 00000A78
/* 01E54 80A44B84 1F200007 */  bgtz    $t9, .L80A44BA4            
/* 01E58 80A44B88 00000000 */  nop
/* 01E5C 80A44B8C 920801CE */  lbu     $t0, 0x01CE($s0)           ## 000001CE
/* 01E60 80A44B90 3C0C80A4 */  lui     $t4, %hi(func_80A46DBC)    ## $t4 = 80A40000
/* 01E64 80A44B94 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01E68 80A44B98 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 01E6C 80A44B9C 10000003 */  beq     $zero, $zero, .L80A44BAC   
/* 01E70 80A44BA0 A20901CE */  sb      $t1, 0x01CE($s0)           ## 000001CE
.L80A44BA4:
/* 01E74 80A44BA4 1000002B */  beq     $zero, $zero, .L80A44C54   
/* 01E78 80A44BA8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44BAC:
/* 01E7C 80A44BAC 920201CF */  lbu     $v0, 0x01CF($s0)           ## 000001CF
/* 01E80 80A44BB0 304A0001 */  andi    $t2, $v0, 0x0001           ## $t2 = 00000000
/* 01E84 80A44BB4 51400027 */  beql    $t2, $zero, .L80A44C54     
/* 01E88 80A44BB8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 01E8C 80A44BBC 8E0D0190 */  lw      $t5, 0x0190($s0)           ## 00000190
/* 01E90 80A44BC0 304BFFFE */  andi    $t3, $v0, 0xFFFE           ## $t3 = 00000000
/* 01E94 80A44BC4 258C6DBC */  addiu   $t4, $t4, %lo(func_80A46DBC) ## $t4 = 80A46DBC
/* 01E98 80A44BC8 158D0005 */  bne     $t4, $t5, .L80A44BE0       
/* 01E9C 80A44BCC A20B01CF */  sb      $t3, 0x01CF($s0)           ## 000001CF
/* 01EA0 80A44BD0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01EA4 80A44BD4 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.50
/* 01EA8 80A44BD8 10000007 */  beq     $zero, $zero, .L80A44BF8   
/* 01EAC 80A44BDC 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80A44BE0:
/* 01EB0 80A44BE0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 01EB4 80A44BE4 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 01EB8 80A44BE8 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 01EBC 80A44BEC 46062002 */  mul.s   $f0, $f4, $f6              
/* 01EC0 80A44BF0 00000000 */  nop
/* 01EC4 80A44BF4 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80A44BF8:
/* 01EC8 80A44BF8 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01ECC 80A44BFC E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 01ED0 80A44C00 0324C821 */  addu    $t9, $t9, $a0              
/* 01ED4 80A44C04 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 01ED8 80A44C08 2405FFFC */  addiu   $a1, $zero, 0xFFFC         ## $a1 = FFFFFFFC
/* 01EDC 80A44C0C 0320F809 */  jalr    $ra, $t9                   
/* 01EE0 80A44C10 00000000 */  nop
/* 01EE4 80A44C14 C7A00028 */  lwc1    $f0, 0x0028($sp)           
/* 01EE8 80A44C18 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 01EEC 80A44C1C 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 01EF0 80A44C20 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 01EF4 80A44C24 44060000 */  mfc1    $a2, $f0                   
/* 01EF8 80A44C28 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01EFC 80A44C2C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F00 80A44C30 0C00BDC7 */  jal     func_8002F71C              
/* 01F04 80A44C34 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01F08 80A44C38 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01F0C 80A44C3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01F10 80A44C40 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01F14 80A44C44 920F01CE */  lbu     $t7, 0x01CE($s0)           ## 000001CE
/* 01F18 80A44C48 31F8FFF7 */  andi    $t8, $t7, 0xFFF7           ## $t8 = 00000000
/* 01F1C 80A44C4C A21801CE */  sb      $t8, 0x01CE($s0)           ## 000001CE
/* 01F20 80A44C50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A44C54:
/* 01F24 80A44C54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01F28 80A44C58 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01F2C 80A44C5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01F30 80A44C60 03E00008 */  jr      $ra                        
/* 01F34 80A44C64 00000000 */  nop
