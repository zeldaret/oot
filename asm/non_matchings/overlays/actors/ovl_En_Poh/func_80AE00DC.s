glabel func_80AE00DC
/* 0238C 80AE00DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02390 80AE00E0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02394 80AE00E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02398 80AE00E8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0239C 80AE00EC 948E010E */  lhu     $t6, 0x010E($a0)           ## 0000010E
/* 023A0 80AE00F0 24015005 */  addiu   $at, $zero, 0x5005         ## $at = 00005005
/* 023A4 80AE00F4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023A8 80AE00F8 11C10005 */  beq     $t6, $at, .L80AE0110       
/* 023AC 80AE00FC 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 023B0 80AE0100 0C2B7EA4 */  jal     func_80ADFA90              
/* 023B4 80AE0104 2405FFF3 */  addiu   $a1, $zero, 0xFFF3         ## $a1 = FFFFFFF3
/* 023B8 80AE0108 10000004 */  beq     $zero, $zero, .L80AE011C   
/* 023BC 80AE010C 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AE0110:
/* 023C0 80AE0110 0C00BE5D */  jal     func_8002F974              
/* 023C4 80AE0114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023C8 80AE0118 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AE011C:
/* 023CC 80AE011C 0C042F6F */  jal     func_8010BDBC              
/* 023D0 80AE0120 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 023D4 80AE0124 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 023D8 80AE0128 1441002B */  bne     $v0, $at, .L80AE01D8       
/* 023DC 80AE012C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 023E0 80AE0130 0C041AF2 */  jal     func_80106BC8              
/* 023E4 80AE0134 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 023E8 80AE0138 1040002D */  beq     $v0, $zero, .L80AE01F0     
/* 023EC 80AE013C 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 023F0 80AE0140 0C03E291 */  jal     func_800F8A44              
/* 023F4 80AE0144 240531E8 */  addiu   $a1, $zero, 0x31E8         ## $a1 = 000031E8
/* 023F8 80AE0148 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 023FC 80AE014C 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 02400 80AE0150 24095007 */  addiu   $t1, $zero, 0x5007         ## $t1 = 00005007
/* 02404 80AE0154 030FC021 */  addu    $t8, $t8, $t7              
/* 02408 80AE0158 931804BD */  lbu     $t8, 0x04BD($t8)           ## 000104BD
/* 0240C 80AE015C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02410 80AE0160 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 02414 80AE0164 17000015 */  bne     $t8, $zero, .L80AE01BC     
/* 02418 80AE0168 00000000 */  nop
/* 0241C 80AE016C 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 02420 80AE0170 00000000 */  nop
/* 02424 80AE0174 1040000B */  beq     $v0, $zero, .L80AE01A4     
/* 02428 80AE0178 24085006 */  addiu   $t0, $zero, 0x5006         ## $t0 = 00005006
/* 0242C 80AE017C 24195008 */  addiu   $t9, $zero, 0x5008         ## $t9 = 00005008
/* 02430 80AE0180 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 02434 80AE0184 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 02438 80AE0188 0C021344 */  jal     Item_Give              
/* 0243C 80AE018C 24050020 */  addiu   $a1, $zero, 0x0020         ## $a1 = 00000020
/* 02440 80AE0190 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02444 80AE0194 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02448 80AE0198 24053883 */  addiu   $a1, $zero, 0x3883         ## $a1 = 00003883
/* 0244C 80AE019C 1000000A */  beq     $zero, $zero, .L80AE01C8   
/* 02450 80AE01A0 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AE01A4:
/* 02454 80AE01A4 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
/* 02458 80AE01A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0245C 80AE01AC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02460 80AE01B0 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 02464 80AE01B4 10000004 */  beq     $zero, $zero, .L80AE01C8   
/* 02468 80AE01B8 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AE01BC:
/* 0246C 80AE01BC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02470 80AE01C0 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 02474 80AE01C4 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80AE01C8:
/* 02478 80AE01C8 0C042DC8 */  jal     func_8010B720              
/* 0247C 80AE01CC 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 02480 80AE01D0 10000008 */  beq     $zero, $zero, .L80AE01F4   
/* 02484 80AE01D4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE01D8:
/* 02488 80AE01D8 0C00BCCD */  jal     func_8002F334              
/* 0248C 80AE01DC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02490 80AE01E0 10400003 */  beq     $v0, $zero, .L80AE01F0     
/* 02494 80AE01E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02498 80AE01E8 0C2B7A54 */  jal     func_80ADE950              
/* 0249C 80AE01EC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L80AE01F0:
/* 024A0 80AE01F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AE01F4:
/* 024A4 80AE01F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 024A8 80AE01F8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 024AC 80AE01FC 03E00008 */  jr      $ra                        
/* 024B0 80AE0200 00000000 */  nop
