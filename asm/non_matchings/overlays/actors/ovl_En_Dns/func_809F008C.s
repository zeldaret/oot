glabel func_809F008C
/* 00D3C 809F008C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D40 809F0090 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D44 809F0094 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D48 809F0098 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D4C 809F009C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D50 809F00A0 0C042F6F */  jal     func_8010BDBC              
/* 00D54 809F00A4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00D58 809F00A8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00D5C 809F00AC 54410010 */  bnel    $v0, $at, .L809F00F0       
/* 00D60 809F00B0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D64 809F00B4 0C041AF2 */  jal     func_80106BC8              
/* 00D68 809F00B8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D6C 809F00BC 1040000B */  beq     $v0, $zero, .L809F00EC     
/* 00D70 809F00C0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00D74 809F00C4 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00D78 809F00C8 A20002BB */  sb      $zero, 0x02BB($s0)         ## 000002BB
/* 00D7C 809F00CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D80 809F00D0 01C17824 */  and     $t7, $t6, $at              
/* 00D84 809F00D4 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00D88 809F00D8 0C27BD47 */  jal     func_809EF51C              
/* 00D8C 809F00DC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D90 809F00E0 3C18809F */  lui     $t8, %hi(func_809F0100)    ## $t8 = 809F0000
/* 00D94 809F00E4 27180100 */  addiu   $t8, $t8, %lo(func_809F0100) ## $t8 = 809F0100
/* 00D98 809F00E8 AE180268 */  sw      $t8, 0x0268($s0)           ## 00000268
.L809F00EC:
/* 00D9C 809F00EC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809F00F0:
/* 00DA0 809F00F0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DA4 809F00F4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DA8 809F00F8 03E00008 */  jr      $ra                        
/* 00DAC 809F00FC 00000000 */  nop


