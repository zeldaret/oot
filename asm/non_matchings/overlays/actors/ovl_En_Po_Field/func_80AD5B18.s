glabel func_80AD5B18
/* 02018 80AD5B18 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0201C 80AD5B1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02020 80AD5B20 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02024 80AD5B24 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02028 80AD5B28 948E010E */  lhu     $t6, 0x010E($a0)           ## 0000010E
/* 0202C 80AD5B2C 24015005 */  addiu   $at, $zero, 0x5005         ## $at = 00005005
/* 02030 80AD5B30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02034 80AD5B34 11C10005 */  beq     $t6, $at, .L80AD5B4C       
/* 02038 80AD5B38 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 0203C 80AD5B3C 0C2B5535 */  jal     func_80AD54D4              
/* 02040 80AD5B40 2405FFF3 */  addiu   $a1, $zero, 0xFFF3         ## $a1 = FFFFFFF3
/* 02044 80AD5B44 10000004 */  beq     $zero, $zero, .L80AD5B58   
/* 02048 80AD5B48 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AD5B4C:
/* 0204C 80AD5B4C 0C00BE5D */  jal     func_8002F974              
/* 02050 80AD5B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02054 80AD5B54 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AD5B58:
/* 02058 80AD5B58 0C042F6F */  jal     func_8010BDBC              
/* 0205C 80AD5B5C 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 02060 80AD5B60 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02064 80AD5B64 14410038 */  bne     $v0, $at, .L80AD5C48       
/* 02068 80AD5B68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0206C 80AD5B6C 0C041AF2 */  jal     func_80106BC8              
/* 02070 80AD5B70 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02074 80AD5B74 1040003A */  beq     $v0, $zero, .L80AD5C60     
/* 02078 80AD5B78 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 0207C 80AD5B7C 0C03E291 */  jal     func_800F8A44              
/* 02080 80AD5B80 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 02084 80AD5B84 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 02088 80AD5B88 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 0208C 80AD5B8C 240C5007 */  addiu   $t4, $zero, 0x5007         ## $t4 = 00005007
/* 02090 80AD5B90 030FC021 */  addu    $t8, $t8, $t7              
/* 02094 80AD5B94 931804BD */  lbu     $t8, 0x04BD($t8)           ## 000104BD
/* 02098 80AD5B98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0209C 80AD5B9C 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 020A0 80AD5BA0 17000022 */  bne     $t8, $zero, .L80AD5C2C     
/* 020A4 80AD5BA4 00000000 */  nop
/* 020A8 80AD5BA8 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 020AC 80AD5BAC 00000000 */  nop
/* 020B0 80AD5BB0 10400019 */  beq     $v0, $zero, .L80AD5C18     
/* 020B4 80AD5BB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020B8 80AD5BB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020BC 80AD5BBC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 020C0 80AD5BC0 24053883 */  addiu   $a1, $zero, 0x3883         ## $a1 = 00003883
/* 020C4 80AD5BC4 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 020C8 80AD5BC8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 020CC 80AD5BCC 2409508F */  addiu   $t1, $zero, 0x508F         ## $t1 = 0000508F
/* 020D0 80AD5BD0 17200006 */  bne     $t9, $zero, .L80AD5BEC     
/* 020D4 80AD5BD4 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 020D8 80AD5BD8 0C021344 */  jal     Item_Give              
/* 020DC 80AD5BDC 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 020E0 80AD5BE0 24085008 */  addiu   $t0, $zero, 0x5008         ## $t0 = 00005008
/* 020E4 80AD5BE4 10000013 */  beq     $zero, $zero, .L80AD5C34   
/* 020E8 80AD5BE8 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
.L80AD5BEC:
/* 020EC 80AD5BEC A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 020F0 80AD5BF0 0C021344 */  jal     Item_Give              
/* 020F4 80AD5BF4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 020F8 80AD5BF8 920A0195 */  lbu     $t2, 0x0195($s0)           ## 00000195
/* 020FC 80AD5BFC 3C0580AD */  lui     $a1, %hi(D_80AD76F0)       ## $a1 = 80AD0000
/* 02100 80AD5C00 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02104 80AD5C04 00AA2821 */  addu    $a1, $a1, $t2              
/* 02108 80AD5C08 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0210C 80AD5C0C 90A576F0 */  lbu     $a1, %lo(D_80AD76F0)($a1)  
/* 02110 80AD5C10 10000009 */  beq     $zero, $zero, .L80AD5C38   
/* 02114 80AD5C14 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AD5C18:
/* 02118 80AD5C18 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0211C 80AD5C1C 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 02120 80AD5C20 240B5006 */  addiu   $t3, $zero, 0x5006         ## $t3 = 00005006
/* 02124 80AD5C24 10000003 */  beq     $zero, $zero, .L80AD5C34   
/* 02128 80AD5C28 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
.L80AD5C2C:
/* 0212C 80AD5C2C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02130 80AD5C30 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
.L80AD5C34:
/* 02134 80AD5C34 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AD5C38:
/* 02138 80AD5C38 0C042DC8 */  jal     func_8010B720              
/* 0213C 80AD5C3C 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 02140 80AD5C40 10000008 */  beq     $zero, $zero, .L80AD5C64   
/* 02144 80AD5C44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5C48:
/* 02148 80AD5C48 0C00BCCD */  jal     func_8002F334              
/* 0214C 80AD5C4C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02150 80AD5C50 50400004 */  beql    $v0, $zero, .L80AD5C64     
/* 02154 80AD5C54 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02158 80AD5C58 0C2B510F */  jal     func_80AD443C              
/* 0215C 80AD5C5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD5C60:
/* 02160 80AD5C60 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5C64:
/* 02164 80AD5C64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02168 80AD5C68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0216C 80AD5C6C 03E00008 */  jr      $ra                        
/* 02170 80AD5C70 00000000 */  nop
