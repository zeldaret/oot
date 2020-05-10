glabel func_80A3EE8C
/* 0091C 80A3EE8C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00920 80A3EE90 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00924 80A3EE94 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00928 80A3EE98 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 0092C 80A3EE9C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00930 80A3EEA0 304E00F0 */  andi    $t6, $v0, 0x00F0           ## $t6 = 00000000
/* 00934 80A3EEA4 15C10003 */  bne     $t6, $at, .L80A3EEB4       
/* 00938 80A3EEA8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0093C 80A3EEAC 1000004A */  beq     $zero, $zero, .L80A3EFD8   
/* 00940 80A3EEB0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3EEB4:
/* 00944 80A3EEB4 84EF00A4 */  lh      $t7, 0x00A4($a3)           ## 000000A4
/* 00948 80A3EEB8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0094C 80A3EEBC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00950 80A3EEC0 15E10013 */  bne     $t7, $at, .L80A3EF10       
/* 00954 80A3EEC4 00022A03 */  sra     $a1, $v0,  8               
/* 00958 80A3EEC8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0095C 80A3EECC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00960 80A3EED0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00964 80A3EED4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00968 80A3EED8 1440000D */  bne     $v0, $zero, .L80A3EF10     
/* 0096C 80A3EEDC 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00970 80A3EEE0 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 00974 80A3EEE4 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 00978 80A3EEE8 8C980004 */  lw      $t8, 0x0004($a0)           ## 8015E664
/* 0097C 80A3EEEC 57000009 */  bnel    $t8, $zero, .L80A3EF14     
/* 00980 80A3EEF0 84E300A4 */  lh      $v1, 0x00A4($a3)           ## 000000A4
/* 00984 80A3EEF4 84D9001C */  lh      $t9, 0x001C($a2)           ## 0000001C
/* 00988 80A3EEF8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 0098C 80A3EEFC 332800F0 */  andi    $t0, $t9, 0x00F0           ## $t0 = 00000000
/* 00990 80A3EF00 55010004 */  bnel    $t0, $at, .L80A3EF14       
/* 00994 80A3EF04 84E300A4 */  lh      $v1, 0x00A4($a3)           ## 000000A4
/* 00998 80A3EF08 10000033 */  beq     $zero, $zero, .L80A3EFD8   
/* 0099C 80A3EF0C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3EF10:
/* 009A0 80A3EF10 84E300A4 */  lh      $v1, 0x00A4($a3)           ## 000000A4
.L80A3EF14:
/* 009A4 80A3EF14 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 009A8 80A3EF18 24050062 */  addiu   $a1, $zero, 0x0062         ## $a1 = 00000062
/* 009AC 80A3EF1C 14A3000A */  bne     $a1, $v1, .L80A3EF48       
/* 009B0 80A3EF20 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 009B4 80A3EF24 8C890004 */  lw      $t1, 0x0004($a0)           ## 8015E664
/* 009B8 80A3EF28 55200008 */  bnel    $t1, $zero, .L80A3EF4C     
/* 009BC 80A3EF2C 24070060 */  addiu   $a3, $zero, 0x0060         ## $a3 = 00000060
/* 009C0 80A3EF30 84CA001C */  lh      $t2, 0x001C($a2)           ## 0000001C
/* 009C4 80A3EF34 314B00F0 */  andi    $t3, $t2, 0x00F0           ## $t3 = 00000000
/* 009C8 80A3EF38 55600004 */  bnel    $t3, $zero, .L80A3EF4C     
/* 009CC 80A3EF3C 24070060 */  addiu   $a3, $zero, 0x0060         ## $a3 = 00000060
/* 009D0 80A3EF40 10000025 */  beq     $zero, $zero, .L80A3EFD8   
/* 009D4 80A3EF44 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3EF48:
/* 009D8 80A3EF48 24070060 */  addiu   $a3, $zero, 0x0060         ## $a3 = 00000060
.L80A3EF4C:
/* 009DC 80A3EF4C 14E30010 */  bne     $a3, $v1, .L80A3EF90       
/* 009E0 80A3EF50 00000000 */  nop
/* 009E4 80A3EF54 8C8C0004 */  lw      $t4, 0x0004($a0)           ## 8015E664
/* 009E8 80A3EF58 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 009EC 80A3EF5C 1581000C */  bne     $t4, $at, .L80A3EF90       
/* 009F0 80A3EF60 00000000 */  nop
/* 009F4 80A3EF64 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
/* 009F8 80A3EF68 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 009FC 80A3EF6C 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 00A00 80A3EF70 10410005 */  beq     $v0, $at, .L80A3EF88       
/* 00A04 80A3EF74 24010030 */  addiu   $at, $zero, 0x0030         ## $at = 00000030
/* 00A08 80A3EF78 10410003 */  beq     $v0, $at, .L80A3EF88       
/* 00A0C 80A3EF7C 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 00A10 80A3EF80 14410003 */  bne     $v0, $at, .L80A3EF90       
/* 00A14 80A3EF84 00000000 */  nop
.L80A3EF88:
/* 00A18 80A3EF88 10000013 */  beq     $zero, $zero, .L80A3EFD8   
/* 00A1C 80A3EF8C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3EF90:
/* 00A20 80A3EF90 54A30011 */  bnel    $a1, $v1, .L80A3EFD8       
/* 00A24 80A3EF94 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A28 80A3EF98 8C8D0004 */  lw      $t5, 0x0004($a0)           ## 8015E664
/* 00A2C 80A3EF9C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A30 80A3EFA0 55A1000D */  bnel    $t5, $at, .L80A3EFD8       
/* 00A34 80A3EFA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A38 80A3EFA8 84C2001C */  lh      $v0, 0x001C($a2)           ## 0000001C
/* 00A3C 80A3EFAC 24010050 */  addiu   $at, $zero, 0x0050         ## $at = 00000050
/* 00A40 80A3EFB0 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 00A44 80A3EFB4 10410005 */  beq     $v0, $at, .L80A3EFCC       
/* 00A48 80A3EFB8 00000000 */  nop
/* 00A4C 80A3EFBC 10E20003 */  beq     $a3, $v0, .L80A3EFCC       
/* 00A50 80A3EFC0 24010070 */  addiu   $at, $zero, 0x0070         ## $at = 00000070
/* 00A54 80A3EFC4 54410004 */  bnel    $v0, $at, .L80A3EFD8       
/* 00A58 80A3EFC8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3EFCC:
/* 00A5C 80A3EFCC 10000002 */  beq     $zero, $zero, .L80A3EFD8   
/* 00A60 80A3EFD0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A64 80A3EFD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A3EFD8:
/* 00A68 80A3EFD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A6C 80A3EFDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A70 80A3EFE0 03E00008 */  jr      $ra                        
/* 00A74 80A3EFE4 00000000 */  nop
