glabel func_80B97400
/* 00860 80B97400 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00864 80B97404 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00868 80B97408 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0086C 80B9740C 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 00870 80B97410 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00874 80B97414 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00878 80B97418 00031103 */  sra     $v0, $v1,  4               
/* 0087C 80B9741C 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00880 80B97420 10400008 */  beq     $v0, $zero, .L80B97444     
/* 00884 80B97424 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00888 80B97428 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0088C 80B9742C 1041000E */  beq     $v0, $at, .L80B97468       
/* 00890 80B97430 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00894 80B97434 5041001D */  beql    $v0, $at, .L80B974AC       
/* 00898 80B97438 92080161 */  lbu     $t0, 0x0161($s0)           ## 00000161
/* 0089C 80B9743C 1000002E */  beq     $zero, $zero, .L80B974F8   
/* 008A0 80B97440 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
.L80B97444:
/* 008A4 80B97444 00032A03 */  sra     $a1, $v1,  8               
/* 008A8 80B97448 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 008AC 80B9744C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 008B0 80B97450 54400029 */  bnel    $v0, $zero, .L80B974F8     
/* 008B4 80B97454 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
/* 008B8 80B97458 0C2E5D46 */  jal     func_80B97518              
/* 008BC 80B9745C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C0 80B97460 10000025 */  beq     $zero, $zero, .L80B974F8   
/* 008C4 80B97464 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
.L80B97468:
/* 008C8 80B97468 920E0161 */  lbu     $t6, 0x0161($s0)           ## 00000161
/* 008CC 80B9746C 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 008D0 80B97470 51E00021 */  beql    $t7, $zero, .L80B974F8     
/* 008D4 80B97474 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
/* 008D8 80B97478 921801C2 */  lbu     $t8, 0x01C2($s0)           ## 000001C2
/* 008DC 80B9747C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E0 80B97480 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 008E4 80B97484 5720001C */  bnel    $t9, $zero, .L80B974F8     
/* 008E8 80B97488 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
/* 008EC 80B9748C 0C2E5D46 */  jal     func_80B97518              
/* 008F0 80B97490 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 008F4 80B97494 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 008F8 80B97498 0C2E5B40 */  jal     func_80B96D00              
/* 008FC 80B9749C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00900 80B974A0 10000015 */  beq     $zero, $zero, .L80B974F8   
/* 00904 80B974A4 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
/* 00908 80B974A8 92080161 */  lbu     $t0, 0x0161($s0)           ## 00000161
.L80B974AC:
/* 0090C 80B974AC 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 00910 80B974B0 55200010 */  bnel    $t1, $zero, .L80B974F4     
/* 00914 80B974B4 A60001B0 */  sh      $zero, 0x01B0($s0)         ## 000001B0
/* 00918 80B974B8 860201B0 */  lh      $v0, 0x01B0($s0)           ## 000001B0
/* 0091C 80B974BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00920 80B974C0 28410007 */  slti    $at, $v0, 0x0007           
/* 00924 80B974C4 14200008 */  bne     $at, $zero, .L80B974E8     
/* 00928 80B974C8 244A0001 */  addiu   $t2, $v0, 0x0001           ## $t2 = 00000001
/* 0092C 80B974CC 0C2E5D46 */  jal     func_80B97518              
/* 00930 80B974D0 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00934 80B974D4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00938 80B974D8 0C2E5B40 */  jal     func_80B96D00              
/* 0093C 80B974DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00940 80B974E0 10000005 */  beq     $zero, $zero, .L80B974F8   
/* 00944 80B974E4 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
.L80B974E8:
/* 00948 80B974E8 10000002 */  beq     $zero, $zero, .L80B974F4   
/* 0094C 80B974EC A60A01B0 */  sh      $t2, 0x01B0($s0)           ## 000001B0
/* 00950 80B974F0 A60001B0 */  sh      $zero, 0x01B0($s0)         ## 000001B0
.L80B974F4:
/* 00954 80B974F4 860B01BE */  lh      $t3, 0x01BE($s0)           ## 000001BE
.L80B974F8:
/* 00958 80B974F8 860C01C0 */  lh      $t4, 0x01C0($s0)           ## 000001C0
/* 0095C 80B974FC 016C6821 */  addu    $t5, $t3, $t4              
/* 00960 80B97500 A60D01BE */  sh      $t5, 0x01BE($s0)           ## 000001BE
/* 00964 80B97504 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00968 80B97508 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0096C 80B9750C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00970 80B97510 03E00008 */  jr      $ra                        
/* 00974 80B97514 00000000 */  nop
