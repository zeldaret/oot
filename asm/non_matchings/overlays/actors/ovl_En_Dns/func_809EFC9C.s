glabel func_809EFC9C
/* 0094C 809EFC9C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00950 809EFCA0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00954 809EFCA4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00958 809EFCA8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0095C 809EFCAC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00960 809EFCB0 0C042F6F */  jal     func_8010BDBC              
/* 00964 809EFCB4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00968 809EFCB8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0096C 809EFCBC 1441003F */  bne     $v0, $at, .L809EFDBC       
/* 00970 809EFCC0 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00974 809EFCC4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00978 809EFCC8 0C041AF2 */  jal     func_80106BC8              
/* 0097C 809EFCCC AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00980 809EFCD0 1040003A */  beq     $v0, $zero, .L809EFDBC     
/* 00984 809EFCD4 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00988 809EFCD8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0098C 809EFCDC 00461021 */  addu    $v0, $v0, $a2              
/* 00990 809EFCE0 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00994 809EFCE4 10400005 */  beq     $v0, $zero, .L809EFCFC     
/* 00998 809EFCE8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0099C 809EFCEC 1041002E */  beq     $v0, $at, .L809EFDA8       
/* 009A0 809EFCF0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009A4 809EFCF4 10000032 */  beq     $zero, $zero, .L809EFDC0   
/* 009A8 809EFCF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFCFC:
/* 009AC 809EFCFC AFA60024 */  sw      $a2, 0x0024($sp)           
/* 009B0 809EFD00 8E0E02C0 */  lw      $t6, 0x02C0($s0)           ## 000002C0
/* 009B4 809EFD04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B8 809EFD08 8DD90008 */  lw      $t9, 0x0008($t6)           ## 00000008
/* 009BC 809EFD0C 0320F809 */  jalr    $ra, $t9                   
/* 009C0 809EFD10 00000000 */  nop
/* 009C4 809EFD14 2C410005 */  sltiu   $at, $v0, 0x0005           
/* 009C8 809EFD18 10200028 */  beq     $at, $zero, .L809EFDBC     
/* 009CC 809EFD1C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 009D0 809EFD20 00027880 */  sll     $t7, $v0,  2               
/* 009D4 809EFD24 3C01809F */  lui     $at, %hi(jtbl_809F06F0)       ## $at = 809F0000
/* 009D8 809EFD28 002F0821 */  addu    $at, $at, $t7              
/* 009DC 809EFD2C 8C2F06F0 */  lw      $t7, %lo(jtbl_809F06F0)($at)  
/* 009E0 809EFD30 01E00008 */  jr      $t7                        
/* 009E4 809EFD34 00000000 */  nop
glabel L809EFD38
/* 009E8 809EFD38 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 009EC 809EFD3C 0C042DC8 */  jal     func_8010B720              
/* 009F0 809EFD40 240510A5 */  addiu   $a1, $zero, 0x10A5         ## $a1 = 000010A5
/* 009F4 809EFD44 3C18809F */  lui     $t8, %hi(func_809F008C)    ## $t8 = 809F0000
/* 009F8 809EFD48 2718008C */  addiu   $t8, $t8, %lo(func_809F008C) ## $t8 = 809F008C
/* 009FC 809EFD4C 1000001B */  beq     $zero, $zero, .L809EFDBC   
/* 00A00 809EFD50 AE180268 */  sw      $t8, 0x0268($s0)           ## 00000268
glabel L809EFD54
/* 00A04 809EFD54 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00A08 809EFD58 0C042DC8 */  jal     func_8010B720              
/* 00A0C 809EFD5C 240510A6 */  addiu   $a1, $zero, 0x10A6         ## $a1 = 000010A6
/* 00A10 809EFD60 3C08809F */  lui     $t0, %hi(func_809F008C)    ## $t0 = 809F0000
/* 00A14 809EFD64 2508008C */  addiu   $t0, $t0, %lo(func_809F008C) ## $t0 = 809F008C
/* 00A18 809EFD68 10000014 */  beq     $zero, $zero, .L809EFDBC   
/* 00A1C 809EFD6C AE080268 */  sw      $t0, 0x0268($s0)           ## 00000268
glabel L809EFD70
/* 00A20 809EFD70 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00A24 809EFD74 0C042DC8 */  jal     func_8010B720              
/* 00A28 809EFD78 240510DE */  addiu   $a1, $zero, 0x10DE         ## $a1 = 000010DE
/* 00A2C 809EFD7C 3C09809F */  lui     $t1, %hi(func_809F008C)    ## $t1 = 809F0000
/* 00A30 809EFD80 2529008C */  addiu   $t1, $t1, %lo(func_809F008C) ## $t1 = 809F008C
/* 00A34 809EFD84 1000000D */  beq     $zero, $zero, .L809EFDBC   
/* 00A38 809EFD88 AE090268 */  sw      $t1, 0x0268($s0)           ## 00000268
glabel L809EFD8C
/* 00A3C 809EFD8C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00A40 809EFD90 0C042DC8 */  jal     func_8010B720              
/* 00A44 809EFD94 240510A7 */  addiu   $a1, $zero, 0x10A7         ## $a1 = 000010A7
/* 00A48 809EFD98 3C0A809F */  lui     $t2, %hi(func_809EFEE8)    ## $t2 = 809F0000
/* 00A4C 809EFD9C 254AFEE8 */  addiu   $t2, $t2, %lo(func_809EFEE8) ## $t2 = 809EFEE8
/* 00A50 809EFDA0 10000006 */  beq     $zero, $zero, .L809EFDBC   
/* 00A54 809EFDA4 AE0A0268 */  sw      $t2, 0x0268($s0)           ## 00000268
.L809EFDA8:
/* 00A58 809EFDA8 0C042DC8 */  jal     func_8010B720              
/* 00A5C 809EFDAC 240510A4 */  addiu   $a1, $zero, 0x10A4         ## $a1 = 000010A4
/* 00A60 809EFDB0 3C0B809F */  lui     $t3, %hi(func_809F008C)    ## $t3 = 809F0000
/* 00A64 809EFDB4 256B008C */  addiu   $t3, $t3, %lo(func_809F008C) ## $t3 = 809F008C
/* 00A68 809EFDB8 AE0B0268 */  sw      $t3, 0x0268($s0)           ## 00000268
.L809EFDBC:
/* 00A6C 809EFDBC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFDC0:
/* 00A70 809EFDC0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A74 809EFDC4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A78 809EFDC8 03E00008 */  jr      $ra                        
/* 00A7C 809EFDCC 00000000 */  nop


