glabel func_808BC8B8
/* 003B8 808BC8B8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 003BC 808BC8BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 003C0 808BC8C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003C4 808BC8C4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 003C8 808BC8C8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 003CC 808BC8CC 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 003D0 808BC8D0 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 003D4 808BC8D4 10400004 */  beq     $v0, $zero, .L808BC8E8     
/* 003D8 808BC8D8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 003DC 808BC8DC 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 003E0 808BC8E0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003E4 808BC8E4 15C00039 */  bne     $t6, $zero, .L808BC9CC     
.L808BC8E8:
/* 003E8 808BC8E8 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 003EC 808BC8EC 8DEFE664 */  lw      $t7, -0x199C($t7)          ## 8015E664
/* 003F0 808BC8F0 51E0003A */  beql    $t7, $zero, .L808BC9DC     
/* 003F4 808BC8F4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003F8 808BC8F8 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 003FC 808BC8FC 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 00400 808BC900 1040001D */  beq     $v0, $zero, .L808BC978     
/* 00404 808BC904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00408 808BC908 3C0544CF */  lui     $a1, 0x44CF                ## $a1 = 44CF0000
/* 0040C 808BC90C 34A54000 */  ori     $a1, $a1, 0x4000           ## $a1 = 44CF4000
/* 00410 808BC910 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00414 808BC914 0C00B84B */  jal     func_8002E12C              
/* 00418 808BC918 24067530 */  addiu   $a2, $zero, 0x7530         ## $a2 = 00007530
/* 0041C 808BC91C 5040002F */  beql    $v0, $zero, .L808BC9DC     
/* 00420 808BC920 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00424 808BC924 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00428 808BC928 9208010C */  lbu     $t0, 0x010C($s0)           ## 0000010C
/* 0042C 808BC92C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00430 808BC930 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00434 808BC934 11000028 */  beq     $t0, $zero, .L808BC9D8     
/* 00438 808BC938 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 0043C 808BC93C 03215024 */  and     $t2, $t9, $at              
/* 00440 808BC940 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 00444 808BC944 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 00448 808BC948 3C0B808C */  lui     $t3, %hi(D_808BD2A0)       ## $t3 = 808C0000
/* 0044C 808BC94C 256BD2A0 */  addiu   $t3, $t3, %lo(D_808BD2A0)  ## $t3 = 808BD2A0
/* 00450 808BC950 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00454 808BC954 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00458 808BC958 3C05808C */  lui     $a1, %hi(func_808BC9EC)    ## $a1 = 808C0000
/* 0045C 808BC95C AD8B1D68 */  sw      $t3, 0x1D68($t4)           ## 00001D68
/* 00460 808BC960 A02DFA74 */  sb      $t5, -0x058C($at)          ## 8015FA74
/* 00464 808BC964 24A5C9EC */  addiu   $a1, $a1, %lo(func_808BC9EC) ## $a1 = 808BC9EC
/* 00468 808BC968 0C22F140 */  jal     func_808BC500              
/* 0046C 808BC96C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00470 808BC970 1000001A */  beq     $zero, $zero, .L808BC9DC   
/* 00474 808BC974 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BC978:
/* 00478 808BC978 3C0544CF */  lui     $a1, 0x44CF                ## $a1 = 44CF0000
/* 0047C 808BC97C 34A54000 */  ori     $a1, $a1, 0x4000           ## $a1 = 44CF4000
/* 00480 808BC980 0C00B84B */  jal     func_8002E12C              
/* 00484 808BC984 24064E20 */  addiu   $a2, $zero, 0x4E20         ## $a2 = 00004E20
/* 00488 808BC988 50400014 */  beql    $v0, $zero, .L808BC9DC     
/* 0048C 808BC98C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00490 808BC990 0C00D6DD */  jal     Flags_SetEventChkInf
              
/* 00494 808BC994 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 00498 808BC998 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 0049C 808BC99C 3C0E808C */  lui     $t6, %hi(D_808BCE20)       ## $t6 = 808C0000
/* 004A0 808BC9A0 25CECE20 */  addiu   $t6, $t6, %lo(D_808BCE20)  ## $t6 = 808BCE20
/* 004A4 808BC9A4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 004A8 808BC9A8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 004AC 808BC9AC 3C05808C */  lui     $a1, %hi(func_808BC9EC)    ## $a1 = 808C0000
/* 004B0 808BC9B0 ADEE1D68 */  sw      $t6, 0x1D68($t7)           ## 00001D68
/* 004B4 808BC9B4 A038FA74 */  sb      $t8, -0x058C($at)          ## 8015FA74
/* 004B8 808BC9B8 24A5C9EC */  addiu   $a1, $a1, %lo(func_808BC9EC) ## $a1 = 808BC9EC
/* 004BC 808BC9BC 0C22F140 */  jal     func_808BC500              
/* 004C0 808BC9C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004C4 808BC9C4 10000005 */  beq     $zero, $zero, .L808BC9DC   
/* 004C8 808BC9C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BC9CC:
/* 004CC 808BC9CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 004D0 808BC9D0 00000000 */  nop
/* 004D4 808BC9D4 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
.L808BC9D8:
/* 004D8 808BC9D8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BC9DC:
/* 004DC 808BC9DC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004E0 808BC9E0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 004E4 808BC9E4 03E00008 */  jr      $ra                        
/* 004E8 808BC9E8 00000000 */  nop


