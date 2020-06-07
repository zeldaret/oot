glabel func_809EFF98
/* 00C48 809EFF98 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C4C 809EFF9C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C50 809EFFA0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C54 809EFFA4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00C58 809EFFA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C5C 809EFFAC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00C60 809EFFB0 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 00C64 809EFFB4 31CF0400 */  andi    $t7, $t6, 0x0400           ## $t7 = 00000000
/* 00C68 809EFFB8 51E0001E */  beql    $t7, $zero, .L809F0034     
/* 00C6C 809EFFBC 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
/* 00C70 809EFFC0 0C042F6F */  jal     func_8010BDBC              
/* 00C74 809EFFC4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C78 809EFFC8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00C7C 809EFFCC 1441002A */  bne     $v0, $at, .L809F0078       
/* 00C80 809EFFD0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00C84 809EFFD4 0C041AF2 */  jal     func_80106BC8              
/* 00C88 809EFFD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C8C 809EFFDC 50400027 */  beql    $v0, $zero, .L809F007C     
/* 00C90 809EFFE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C94 809EFFE4 8E1802C0 */  lw      $t8, 0x02C0($s0)           ## 000002C0
/* 00C98 809EFFE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C9C 809EFFEC 8F19000C */  lw      $t9, 0x000C($t8)           ## 0000000C
/* 00CA0 809EFFF0 0320F809 */  jalr    $ra, $t9                   
/* 00CA4 809EFFF4 00000000 */  nop
/* 00CA8 809EFFF8 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00CAC 809EFFFC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00CB0 809F0000 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00CB4 809F0004 01215024 */  and     $t2, $t1, $at              
/* 00CB8 809F0008 A20802BD */  sb      $t0, 0x02BD($s0)           ## 000002BD
/* 00CBC 809F000C A20002BB */  sb      $zero, 0x02BB($s0)         ## 000002BB
/* 00CC0 809F0010 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00CC4 809F0014 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC8 809F0018 0C27BD47 */  jal     func_809EF51C              
/* 00CCC 809F001C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CD0 809F0020 3C0B809F */  lui     $t3, %hi(func_809F0100)    ## $t3 = 809F0000
/* 00CD4 809F0024 256B0100 */  addiu   $t3, $t3, %lo(func_809F0100) ## $t3 = 809F0100
/* 00CD8 809F0028 10000013 */  beq     $zero, $zero, .L809F0078   
/* 00CDC 809F002C AE0B0268 */  sw      $t3, 0x0268($s0)           ## 00000268
/* 00CE0 809F0030 8E0C02C0 */  lw      $t4, 0x02C0($s0)           ## 000002C0
.L809F0034:
/* 00CE4 809F0034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CE8 809F0038 8D99000C */  lw      $t9, 0x000C($t4)           ## 0000000C
/* 00CEC 809F003C 0320F809 */  jalr    $ra, $t9                   
/* 00CF0 809F0040 00000000 */  nop
/* 00CF4 809F0044 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00CF8 809F0048 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00CFC 809F004C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00D00 809F0050 01C17824 */  and     $t7, $t6, $at              
/* 00D04 809F0054 A20D02BD */  sb      $t5, 0x02BD($s0)           ## 000002BD
/* 00D08 809F0058 A20002BB */  sb      $zero, 0x02BB($s0)         ## 000002BB
/* 00D0C 809F005C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00D10 809F0060 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D14 809F0064 0C27BD47 */  jal     func_809EF51C              
/* 00D18 809F0068 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D1C 809F006C 3C18809F */  lui     $t8, %hi(func_809F0100)    ## $t8 = 809F0000
/* 00D20 809F0070 27180100 */  addiu   $t8, $t8, %lo(func_809F0100) ## $t8 = 809F0100
/* 00D24 809F0074 AE180268 */  sw      $t8, 0x0268($s0)           ## 00000268
.L809F0078:
/* 00D28 809F0078 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809F007C:
/* 00D2C 809F007C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D30 809F0080 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D34 809F0084 03E00008 */  jr      $ra                        
/* 00D38 809F0088 00000000 */  nop
