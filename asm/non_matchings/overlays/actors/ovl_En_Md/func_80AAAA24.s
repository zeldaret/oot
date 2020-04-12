.late_rodata
glabel jtbl_80AAC4FC
.word L80AAAA68
.word L80AAABCC
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAB18
.word L80AAABCC
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAABCC
.word L80AAABFC

.text
glabel func_80AAAA24
/* 007D4 80AAAA24 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007D8 80AAAA28 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007DC 80AAAA2C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007E0 80AAAA30 848E01E0 */  lh      $t6, 0x01E0($a0)           ## 000001E0
/* 007E4 80AAAA34 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007E8 80AAAA38 51C0007D */  beql    $t6, $zero, .L80AAAC30     
/* 007EC 80AAAA3C 8E0A0154 */  lw      $t2, 0x0154($s0)           ## 00000154
/* 007F0 80AAAA40 948F010E */  lhu     $t7, 0x010E($a0)           ## 0000010E
/* 007F4 80AAAA44 25F8EFD1 */  addiu   $t8, $t7, 0xEFD1           ## $t8 = FFFFEFD1
/* 007F8 80AAAA48 2F010018 */  sltiu   $at, $t8, 0x0018           
/* 007FC 80AAAA4C 10200083 */  beq     $at, $zero, .L80AAAC5C     
/* 00800 80AAAA50 0018C080 */  sll     $t8, $t8,  2               
/* 00804 80AAAA54 3C0180AB */  lui     $at, %hi(jtbl_80AAC4FC)       ## $at = 80AB0000
/* 00808 80AAAA58 00380821 */  addu    $at, $at, $t8              
/* 0080C 80AAAA5C 8C38C4FC */  lw      $t8, %lo(jtbl_80AAC4FC)($at)  
/* 00810 80AAAA60 03000008 */  jr      $t8                        
/* 00814 80AAAA64 00000000 */  nop
glabel L80AAAA68
/* 00818 80AAAA68 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 0081C 80AAAA6C 5440000A */  bnel    $v0, $zero, .L80AAAA98     
/* 00820 80AAAA70 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00824 80AAAA74 9219020B */  lbu     $t9, 0x020B($s0)           ## 0000020B
/* 00828 80AAAA78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0082C 80AAAA7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00830 80AAAA80 53210005 */  beql    $t9, $at, .L80AAAA98       
/* 00834 80AAAA84 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00838 80AAAA88 0C2AAA4B */  jal     func_80AAA92C              
/* 0083C 80AAAA8C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00840 80AAAA90 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 00844 80AAAA94 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
.L80AAAA98:
/* 00848 80AAAA98 54620009 */  bnel    $v1, $v0, .L80AAAAC0       
/* 0084C 80AAAA9C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00850 80AAAAA0 9208020B */  lbu     $t0, 0x020B($s0)           ## 0000020B
/* 00854 80AAAAA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00858 80AAAAA8 50680005 */  beql    $v1, $t0, .L80AAAAC0       
/* 0085C 80AAAAAC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00860 80AAAAB0 0C2AAA4B */  jal     func_80AAA92C              
/* 00864 80AAAAB4 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00868 80AAAAB8 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 0086C 80AAAABC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80AAAAC0:
/* 00870 80AAAAC0 5441000A */  bnel    $v0, $at, .L80AAAAEC       
/* 00874 80AAAAC4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00878 80AAAAC8 9209020B */  lbu     $t1, 0x020B($s0)           ## 0000020B
/* 0087C 80AAAACC 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00880 80AAAAD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00884 80AAAAD4 51210005 */  beql    $t1, $at, .L80AAAAEC       
/* 00888 80AAAAD8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0088C 80AAAADC 0C2AAA4B */  jal     func_80AAA92C              
/* 00890 80AAAAE0 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 00894 80AAAAE4 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 00898 80AAAAE8 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80AAAAEC:
/* 0089C 80AAAAEC 1441005B */  bne     $v0, $at, .L80AAAC5C       
/* 008A0 80AAAAF0 00000000 */  nop
/* 008A4 80AAAAF4 920A020B */  lbu     $t2, 0x020B($s0)           ## 0000020B
/* 008A8 80AAAAF8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 008AC 80AAAAFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008B0 80AAAB00 11410056 */  beq     $t2, $at, .L80AAAC5C       
/* 008B4 80AAAB04 00000000 */  nop
/* 008B8 80AAAB08 0C2AAA4B */  jal     func_80AAA92C              
/* 008BC 80AAAB0C 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 008C0 80AAAB10 10000052 */  beq     $zero, $zero, .L80AAAC5C   
/* 008C4 80AAAB14 00000000 */  nop
glabel L80AAAB18
/* 008C8 80AAAB18 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 008CC 80AAAB1C 5440000A */  bnel    $v0, $zero, .L80AAAB48     
/* 008D0 80AAAB20 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008D4 80AAAB24 920B020B */  lbu     $t3, 0x020B($s0)           ## 0000020B
/* 008D8 80AAAB28 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008DC 80AAAB2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E0 80AAAB30 51610005 */  beql    $t3, $at, .L80AAAB48       
/* 008E4 80AAAB34 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008E8 80AAAB38 0C2AAA4B */  jal     func_80AAA92C              
/* 008EC 80AAAB3C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 008F0 80AAAB40 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 008F4 80AAAB44 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80AAAB48:
/* 008F8 80AAAB48 5441000A */  bnel    $v0, $at, .L80AAAB74       
/* 008FC 80AAAB4C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00900 80AAAB50 920C020B */  lbu     $t4, 0x020B($s0)           ## 0000020B
/* 00904 80AAAB54 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00908 80AAAB58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0090C 80AAAB5C 506C0005 */  beql    $v1, $t4, .L80AAAB74       
/* 00910 80AAAB60 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00914 80AAAB64 0C2AAA4B */  jal     func_80AAA92C              
/* 00918 80AAAB68 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0091C 80AAAB6C 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 00920 80AAAB70 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
.L80AAAB74:
/* 00924 80AAAB74 5441000A */  bnel    $v0, $at, .L80AAABA0       
/* 00928 80AAAB78 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0092C 80AAAB7C 920D020B */  lbu     $t5, 0x020B($s0)           ## 0000020B
/* 00930 80AAAB80 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00934 80AAAB84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00938 80AAAB88 51A10005 */  beql    $t5, $at, .L80AAABA0       
/* 0093C 80AAAB8C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00940 80AAAB90 0C2AAA4B */  jal     func_80AAA92C              
/* 00944 80AAAB94 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00948 80AAAB98 92020208 */  lbu     $v0, 0x0208($s0)           ## 00000208
/* 0094C 80AAAB9C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L80AAABA0:
/* 00950 80AAABA0 1441002E */  bne     $v0, $at, .L80AAAC5C       
/* 00954 80AAABA4 00000000 */  nop
/* 00958 80AAABA8 920E020B */  lbu     $t6, 0x020B($s0)           ## 0000020B
/* 0095C 80AAABAC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00960 80AAABB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00964 80AAABB4 11C10029 */  beq     $t6, $at, .L80AAAC5C       
/* 00968 80AAABB8 00000000 */  nop
/* 0096C 80AAABBC 0C2AAA4B */  jal     func_80AAA92C              
/* 00970 80AAABC0 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 00974 80AAABC4 10000025 */  beq     $zero, $zero, .L80AAAC5C   
/* 00978 80AAABC8 00000000 */  nop
glabel L80AAABCC
/* 0097C 80AAABCC 920F0208 */  lbu     $t7, 0x0208($s0)           ## 00000208
/* 00980 80AAABD0 15E00022 */  bne     $t7, $zero, .L80AAAC5C     
/* 00984 80AAABD4 00000000 */  nop
/* 00988 80AAABD8 9218020B */  lbu     $t8, 0x020B($s0)           ## 0000020B
/* 0098C 80AAABDC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00990 80AAABE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00994 80AAABE4 1301001D */  beq     $t8, $at, .L80AAAC5C       
/* 00998 80AAABE8 00000000 */  nop
/* 0099C 80AAABEC 0C2AAA4B */  jal     func_80AAA92C              
/* 009A0 80AAABF0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 009A4 80AAABF4 10000019 */  beq     $zero, $zero, .L80AAAC5C   
/* 009A8 80AAABF8 00000000 */  nop
glabel L80AAABFC
/* 009AC 80AAABFC 92190208 */  lbu     $t9, 0x0208($s0)           ## 00000208
/* 009B0 80AAAC00 17200016 */  bne     $t9, $zero, .L80AAAC5C     
/* 009B4 80AAAC04 00000000 */  nop
/* 009B8 80AAAC08 9208020B */  lbu     $t0, 0x020B($s0)           ## 0000020B
/* 009BC 80AAAC0C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 009C0 80AAAC10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009C4 80AAAC14 11010011 */  beq     $t0, $at, .L80AAAC5C       
/* 009C8 80AAAC18 00000000 */  nop
/* 009CC 80AAAC1C 0C2AAA4B */  jal     func_80AAA92C              
/* 009D0 80AAAC20 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 009D4 80AAAC24 1000000D */  beq     $zero, $zero, .L80AAAC5C   
/* 009D8 80AAAC28 00000000 */  nop
/* 009DC 80AAAC2C 8E0A0154 */  lw      $t2, 0x0154($s0)           ## 00000154
.L80AAAC30:
/* 009E0 80AAAC30 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 009E4 80AAAC34 252902C8 */  addiu   $t1, $t1, 0x02C8           ## $t1 = 060002C8
/* 009E8 80AAAC38 112A0008 */  beq     $t1, $t2, .L80AAAC5C       
/* 009EC 80AAAC3C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 009F0 80AAAC40 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 009F4 80AAAC44 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 009F8 80AAAC48 0C00D3B0 */  jal     func_80034EC0              
/* 009FC 80AAAC4C 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00A00 80AAAC50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A04 80AAAC54 0C2AAA4B */  jal     func_80AAA92C              
/* 00A08 80AAAC58 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
glabel L80AAAC5C
.L80AAAC5C:
/* 00A0C 80AAAC5C 0C2AAA4F */  jal     func_80AAA93C              
/* 00A10 80AAAC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A14 80AAAC64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A18 80AAAC68 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00A1C 80AAAC6C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A20 80AAAC70 03E00008 */  jr      $ra                        
/* 00A24 80AAAC74 00000000 */  nop
