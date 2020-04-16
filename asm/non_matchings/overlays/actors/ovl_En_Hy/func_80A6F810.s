.late_rodata
glabel jtbl_80A72870
.word L80A6F8A0
.word L80A6F994
.word L80A6F9FC
.word L80A6FAB0
.word L80A6FAFC
.word L80A6FB48
.word L80A6FB58
.word L80A6FBA4
.word L80A6FC1C
.word L80A6FC84
.word L80A6FD50
.word L80A6FE1C
.word L80A6FE68
.word L80A6FED0
.word L80A6FED8
.word L80A6FEE0
.word L80A6FEE8
.word L80A6FEF0
.word L80A6FF9C
.word L80A70038
.word L80A70040

.text
glabel func_80A6F810
/* 00260 80A6F810 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00264 80A6F814 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00268 80A6F818 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0026C 80A6F81C 84A5001C */  lh      $a1, 0x001C($a1)           ## 0000001C
/* 00270 80A6F820 8C831C44 */  lw      $v1, 0x1C44($a0)           ## 00001C44
/* 00274 80A6F824 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 00278 80A6F828 30A5007F */  andi    $a1, $a1, 0x007F           ## $a1 = 00000000
/* 0027C 80A6F82C 24A50025 */  addiu   $a1, $a1, 0x0025           ## $a1 = 00000025
/* 00280 80A6F830 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00284 80A6F834 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00288 80A6F838 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0028C 80A6F83C 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00290 80A6F840 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00294 80A6F844 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 00298 80A6F848 1040000A */  beq     $v0, $zero, .L80A6F874     
/* 0029C 80A6F84C 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00000000
/* 002A0 80A6F850 84CE001C */  lh      $t6, 0x001C($a2)           ## 0000001C
/* 002A4 80A6F854 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 002A8 80A6F858 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 002AC 80A6F85C 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 002B0 80A6F860 15E10002 */  bne     $t7, $at, .L80A6F86C       
/* 002B4 80A6F864 00000000 */  nop
/* 002B8 80A6F868 A0780693 */  sb      $t8, 0x0693($v1)           ## 00000693
.L80A6F86C:
/* 002BC 80A6F86C 100001F6 */  beq     $zero, $zero, .L80A70048   
/* 002C0 80A6F870 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
.L80A6F874:
/* 002C4 80A6F874 84D9001C */  lh      $t9, 0x001C($a2)           ## 0000001C
/* 002C8 80A6F878 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002CC 80A6F87C 3328007F */  andi    $t0, $t9, 0x007F           ## $t0 = 00000000
/* 002D0 80A6F880 2D010015 */  sltiu   $at, $t0, 0x0015           
/* 002D4 80A6F884 102001F0 */  beq     $at, $zero, .L80A70048     
/* 002D8 80A6F888 00084080 */  sll     $t0, $t0,  2               
/* 002DC 80A6F88C 3C0180A7 */  lui     $at, %hi(jtbl_80A72870)       ## $at = 80A70000
/* 002E0 80A6F890 00280821 */  addu    $at, $at, $t0              
/* 002E4 80A6F894 8C282870 */  lw      $t0, %lo(jtbl_80A72870)($at)  
/* 002E8 80A6F898 01000008 */  jr      $t0                        
/* 002EC 80A6F89C 00000000 */  nop
glabel L80A6F8A0
/* 002F0 80A6F8A0 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 002F4 80A6F8A4 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 002F8 80A6F8A8 54410014 */  bnel    $v0, $at, .L80A6F8FC       
/* 002FC 80A6F8AC 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
/* 00300 80A6F8B0 94C90330 */  lhu     $t1, 0x0330($a2)           ## 00000330
/* 00304 80A6F8B4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00308 80A6F8B8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0030C 80A6F8BC 312A0800 */  andi    $t2, $t1, 0x0800           ## $t2 = 00000000
/* 00310 80A6F8C0 11400003 */  beq     $t2, $zero, .L80A6F8D0     
/* 00314 80A6F8C4 2403508D */  addiu   $v1, $zero, 0x508D         ## $v1 = 0000508D
/* 00318 80A6F8C8 100001DF */  beq     $zero, $zero, .L80A70048   
/* 0031C 80A6F8CC 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000508D
.L80A6F8D0:
/* 00320 80A6F8D0 944B0F10 */  lhu     $t3, 0x0F10($v0)           ## 00005F9D
/* 00324 80A6F8D4 2402508B */  addiu   $v0, $zero, 0x508B         ## $v0 = 0000508B
/* 00328 80A6F8D8 316C0800 */  andi    $t4, $t3, 0x0800           ## $t4 = 00000000
/* 0032C 80A6F8DC 11800003 */  beq     $t4, $zero, .L80A6F8EC     
/* 00330 80A6F8E0 00000000 */  nop
/* 00334 80A6F8E4 10000001 */  beq     $zero, $zero, .L80A6F8EC   
/* 00338 80A6F8E8 2402508C */  addiu   $v0, $zero, 0x508C         ## $v0 = 0000508C
.L80A6F8EC:
/* 0033C 80A6F8EC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 0000508C
/* 00340 80A6F8F0 100001D5 */  beq     $zero, $zero, .L80A70048   
/* 00344 80A6F8F4 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000508C
/* 00348 80A6F8F8 24010020 */  addiu   $at, $zero, 0x0020         ## $at = 00000020
.L80A6F8FC:
/* 0034C 80A6F8FC 1441000C */  bne     $v0, $at, .L80A6F930       
/* 00350 80A6F900 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00354 80A6F904 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00358 80A6F908 944D1400 */  lhu     $t5, 0x1400($v0)           ## 8015FA60
/* 0035C 80A6F90C 2403709C */  addiu   $v1, $zero, 0x709C         ## $v1 = 0000709C
/* 00360 80A6F910 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 00364 80A6F914 11C00004 */  beq     $t6, $zero, .L80A6F928     
/* 00368 80A6F918 00000000 */  nop
/* 0036C 80A6F91C 2403709B */  addiu   $v1, $zero, 0x709B         ## $v1 = 0000709B
/* 00370 80A6F920 100001C9 */  beq     $zero, $zero, .L80A70048   
/* 00374 80A6F924 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000709B
.L80A6F928:
/* 00378 80A6F928 100001C7 */  beq     $zero, $zero, .L80A70048   
/* 0037C 80A6F92C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000709B
.L80A6F930:
/* 00380 80A6F930 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00384 80A6F934 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00388 80A6F938 904F141C */  lbu     $t7, 0x141C($v0)           ## 8015FA7C
/* 0038C 80A6F93C 11E00013 */  beq     $t7, $zero, .L80A6F98C     
/* 00390 80A6F940 00000000 */  nop
/* 00394 80A6F944 844313C4 */  lh      $v1, 0x13C4($v0)           ## 8015FA24
/* 00398 80A6F948 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0039C 80A6F94C 30630F00 */  andi    $v1, $v1, 0x0F00           ## $v1 = 00000000
/* 003A0 80A6F950 00031A03 */  sra     $v1, $v1,  8               
/* 003A4 80A6F954 00031C00 */  sll     $v1, $v1, 16               
/* 003A8 80A6F958 00031C03 */  sra     $v1, $v1, 16               
/* 003AC 80A6F95C 10600009 */  beq     $v1, $zero, .L80A6F984     
/* 003B0 80A6F960 00000000 */  nop
/* 003B4 80A6F964 14610004 */  bne     $v1, $at, .L80A6F978       
/* 003B8 80A6F968 A0C00215 */  sb      $zero, 0x0215($a2)         ## 00000215
/* 003BC 80A6F96C 2403709F */  addiu   $v1, $zero, 0x709F         ## $v1 = 0000709F
/* 003C0 80A6F970 100001B5 */  beq     $zero, $zero, .L80A70048   
/* 003C4 80A6F974 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000709F
.L80A6F978:
/* 003C8 80A6F978 2403709E */  addiu   $v1, $zero, 0x709E         ## $v1 = 0000709E
/* 003CC 80A6F97C 100001B2 */  beq     $zero, $zero, .L80A70048   
/* 003D0 80A6F980 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000709E
.L80A6F984:
/* 003D4 80A6F984 100001B0 */  beq     $zero, $zero, .L80A70048   
/* 003D8 80A6F988 2402709D */  addiu   $v0, $zero, 0x709D         ## $v0 = 0000709D
.L80A6F98C:
/* 003DC 80A6F98C 100001AE */  beq     $zero, $zero, .L80A70048   
/* 003E0 80A6F990 240270A0 */  addiu   $v0, $zero, 0x70A0         ## $v0 = 000070A0
glabel L80A6F994
/* 003E4 80A6F994 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 003E8 80A6F998 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 003EC 80A6F99C 94580EE4 */  lhu     $t8, 0x0EE4($v0)           ## 8015F544
/* 003F0 80A6F9A0 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000001
/* 003F4 80A6F9A4 5320000C */  beql    $t9, $zero, .L80A6F9D8     
/* 003F8 80A6F9A8 944A0F10 */  lhu     $t2, 0x0F10($v0)           ## 8015F570
/* 003FC 80A6F9AC 94480F10 */  lhu     $t0, 0x0F10($v0)           ## 8015F570
/* 00400 80A6F9B0 24037045 */  addiu   $v1, $zero, 0x7045         ## $v1 = 00007045
/* 00404 80A6F9B4 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 00408 80A6F9B8 11200004 */  beq     $t1, $zero, .L80A6F9CC     
/* 0040C 80A6F9BC 00000000 */  nop
/* 00410 80A6F9C0 24037017 */  addiu   $v1, $zero, 0x7017         ## $v1 = 00007017
/* 00414 80A6F9C4 100001A0 */  beq     $zero, $zero, .L80A70048   
/* 00418 80A6F9C8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007017
.L80A6F9CC:
/* 0041C 80A6F9CC 1000019E */  beq     $zero, $zero, .L80A70048   
/* 00420 80A6F9D0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007017
/* 00424 80A6F9D4 944A0F10 */  lhu     $t2, 0x0F10($v0)           ## 00007F27
.L80A6F9D8:
/* 00428 80A6F9D8 24037016 */  addiu   $v1, $zero, 0x7016         ## $v1 = 00007016
/* 0042C 80A6F9DC 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 00430 80A6F9E0 11600004 */  beq     $t3, $zero, .L80A6F9F4     
/* 00434 80A6F9E4 00000000 */  nop
/* 00438 80A6F9E8 24037017 */  addiu   $v1, $zero, 0x7017         ## $v1 = 00007017
/* 0043C 80A6F9EC 10000196 */  beq     $zero, $zero, .L80A70048   
/* 00440 80A6F9F0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007017
.L80A6F9F4:
/* 00444 80A6F9F4 10000194 */  beq     $zero, $zero, .L80A70048   
/* 00448 80A6F9F8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007017
glabel L80A6F9FC
/* 0044C 80A6F9FC 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 00450 80A6FA00 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 00454 80A6FA04 54410004 */  bnel    $v0, $at, .L80A6FA18       
/* 00458 80A6FA08 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 0045C 80A6FA0C 1000018E */  beq     $zero, $zero, .L80A70048   
/* 00460 80A6FA10 24025086 */  addiu   $v0, $zero, 0x5086         ## $v0 = 00005086
/* 00464 80A6FA14 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
.L80A6FA18:
/* 00468 80A6FA18 14410003 */  bne     $v0, $at, .L80A6FA28       
/* 0046C 80A6FA1C 00000000 */  nop
/* 00470 80A6FA20 10000189 */  beq     $zero, $zero, .L80A70048   
/* 00474 80A6FA24 24025085 */  addiu   $v0, $zero, 0x5085         ## $v0 = 00005085
.L80A6FA28:
/* 00478 80A6FA28 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0047C 80A6FA2C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00480 80A6FA30 944C0EE4 */  lhu     $t4, 0x0EE4($v0)           ## 8015F544
/* 00484 80A6FA34 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 00488 80A6FA38 51A0000C */  beql    $t5, $zero, .L80A6FA6C     
/* 0048C 80A6FA3C 94430ED6 */  lhu     $v1, 0x0ED6($v0)           ## 8015F536
/* 00490 80A6FA40 944E0F10 */  lhu     $t6, 0x0F10($v0)           ## 8015F570
/* 00494 80A6FA44 24037047 */  addiu   $v1, $zero, 0x7047         ## $v1 = 00007047
/* 00498 80A6FA48 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 0049C 80A6FA4C 11E00004 */  beq     $t7, $zero, .L80A6FA60     
/* 004A0 80A6FA50 00000000 */  nop
/* 004A4 80A6FA54 2403701A */  addiu   $v1, $zero, 0x701A         ## $v1 = 0000701A
/* 004A8 80A6FA58 1000017B */  beq     $zero, $zero, .L80A70048   
/* 004AC 80A6FA5C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701A
.L80A6FA60:
/* 004B0 80A6FA60 10000179 */  beq     $zero, $zero, .L80A70048   
/* 004B4 80A6FA64 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701A
/* 004B8 80A6FA68 94430ED6 */  lhu     $v1, 0x0ED6($v0)           ## 00007EF0
.L80A6FA6C:
/* 004BC 80A6FA6C 30780010 */  andi    $t8, $v1, 0x0010           ## $t8 = 00000010
/* 004C0 80A6FA70 13000003 */  beq     $t8, $zero, .L80A6FA80     
/* 004C4 80A6FA74 30790001 */  andi    $t9, $v1, 0x0001           ## $t9 = 00000000
/* 004C8 80A6FA78 10000173 */  beq     $zero, $zero, .L80A70048   
/* 004CC 80A6FA7C 2402701A */  addiu   $v0, $zero, 0x701A         ## $v0 = 0000701A
.L80A6FA80:
/* 004D0 80A6FA80 53200004 */  beql    $t9, $zero, .L80A6FA94     
/* 004D4 80A6FA84 94480F10 */  lhu     $t0, 0x0F10($v0)           ## 00007F2A
/* 004D8 80A6FA88 1000016F */  beq     $zero, $zero, .L80A70048   
/* 004DC 80A6FA8C 2402701B */  addiu   $v0, $zero, 0x701B         ## $v0 = 0000701B
/* 004E0 80A6FA90 94480F10 */  lhu     $t0, 0x0F10($v0)           ## 00007F2B
.L80A6FA94:
/* 004E4 80A6FA94 31090004 */  andi    $t1, $t0, 0x0004           ## $t1 = 00000000
/* 004E8 80A6FA98 11200003 */  beq     $t1, $zero, .L80A6FAA8     
/* 004EC 80A6FA9C 00000000 */  nop
/* 004F0 80A6FAA0 10000169 */  beq     $zero, $zero, .L80A70048   
/* 004F4 80A6FAA4 2402701C */  addiu   $v0, $zero, 0x701C         ## $v0 = 0000701C
.L80A6FAA8:
/* 004F8 80A6FAA8 10000167 */  beq     $zero, $zero, .L80A70048   
/* 004FC 80A6FAAC 2402701A */  addiu   $v0, $zero, 0x701A         ## $v0 = 0000701A
glabel L80A6FAB0
/* 00500 80A6FAB0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00504 80A6FAB4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00508 80A6FAB8 944A0EE4 */  lhu     $t2, 0x0EE4($v0)           ## 8015F544
/* 0050C 80A6FABC 24037001 */  addiu   $v1, $zero, 0x7001         ## $v1 = 00007001
/* 00510 80A6FAC0 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 00514 80A6FAC4 1160000B */  beq     $t3, $zero, .L80A6FAF4     
/* 00518 80A6FAC8 00000000 */  nop
/* 0051C 80A6FACC 944C0F10 */  lhu     $t4, 0x0F10($v0)           ## 8015F570
/* 00520 80A6FAD0 240270EB */  addiu   $v0, $zero, 0x70EB         ## $v0 = 000070EB
/* 00524 80A6FAD4 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 00528 80A6FAD8 11A00004 */  beq     $t5, $zero, .L80A6FAEC     
/* 0052C 80A6FADC 00000000 */  nop
/* 00530 80A6FAE0 24027001 */  addiu   $v0, $zero, 0x7001         ## $v0 = 00007001
/* 00534 80A6FAE4 10000158 */  beq     $zero, $zero, .L80A70048   
/* 00538 80A6FAE8 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00007001
.L80A6FAEC:
/* 0053C 80A6FAEC 10000156 */  beq     $zero, $zero, .L80A70048   
/* 00540 80A6FAF0 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00007001
.L80A6FAF4:
/* 00544 80A6FAF4 10000154 */  beq     $zero, $zero, .L80A70048   
/* 00548 80A6FAF8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007001
glabel L80A6FAFC
/* 0054C 80A6FAFC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00550 80A6FB00 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00554 80A6FB04 944E0EE4 */  lhu     $t6, 0x0EE4($v0)           ## 8015F544
/* 00558 80A6FB08 2403704B */  addiu   $v1, $zero, 0x704B         ## $v1 = 0000704B
/* 0055C 80A6FB0C 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00560 80A6FB10 51E00004 */  beql    $t7, $zero, .L80A6FB24     
/* 00564 80A6FB14 94580F10 */  lhu     $t8, 0x0F10($v0)           ## 8015F570
/* 00568 80A6FB18 1000014B */  beq     $zero, $zero, .L80A70048   
/* 0056C 80A6FB1C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000704B
/* 00570 80A6FB20 94580F10 */  lhu     $t8, 0x0F10($v0)           ## 00007F5B
.L80A6FB24:
/* 00574 80A6FB24 24027023 */  addiu   $v0, $zero, 0x7023         ## $v0 = 00007023
/* 00578 80A6FB28 33190020 */  andi    $t9, $t8, 0x0020           ## $t9 = 00000000
/* 0057C 80A6FB2C 13200003 */  beq     $t9, $zero, .L80A6FB3C     
/* 00580 80A6FB30 00000000 */  nop
/* 00584 80A6FB34 10000001 */  beq     $zero, $zero, .L80A6FB3C   
/* 00588 80A6FB38 24027024 */  addiu   $v0, $zero, 0x7024         ## $v0 = 00007024
.L80A6FB3C:
/* 0058C 80A6FB3C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00007024
/* 00590 80A6FB40 10000141 */  beq     $zero, $zero, .L80A70048   
/* 00594 80A6FB44 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007024
glabel L80A6FB48
/* 00598 80A6FB48 24080019 */  addiu   $t0, $zero, 0x0019         ## $t0 = 00000019
/* 0059C 80A6FB4C A0680693 */  sb      $t0, 0x0693($v1)           ## 000076B7
/* 005A0 80A6FB50 1000013D */  beq     $zero, $zero, .L80A70048   
/* 005A4 80A6FB54 2402700C */  addiu   $v0, $zero, 0x700C         ## $v0 = 0000700C
glabel L80A6FB58
/* 005A8 80A6FB58 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 005AC 80A6FB5C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 005B0 80A6FB60 94490EE4 */  lhu     $t1, 0x0EE4($v0)           ## 8015F544
/* 005B4 80A6FB64 2403704A */  addiu   $v1, $zero, 0x704A         ## $v1 = 0000704A
/* 005B8 80A6FB68 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 005BC 80A6FB6C 51400004 */  beql    $t2, $zero, .L80A6FB80     
/* 005C0 80A6FB70 944B0F10 */  lhu     $t3, 0x0F10($v0)           ## 8015F570
/* 005C4 80A6FB74 10000134 */  beq     $zero, $zero, .L80A70048   
/* 005C8 80A6FB78 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000704A
/* 005CC 80A6FB7C 944B0F10 */  lhu     $t3, 0x0F10($v0)           ## 00007F5A
.L80A6FB80:
/* 005D0 80A6FB80 24027021 */  addiu   $v0, $zero, 0x7021         ## $v0 = 00007021
/* 005D4 80A6FB84 316C0040 */  andi    $t4, $t3, 0x0040           ## $t4 = 00000000
/* 005D8 80A6FB88 11800003 */  beq     $t4, $zero, .L80A6FB98     
/* 005DC 80A6FB8C 00000000 */  nop
/* 005E0 80A6FB90 10000001 */  beq     $zero, $zero, .L80A6FB98   
/* 005E4 80A6FB94 24027022 */  addiu   $v0, $zero, 0x7022         ## $v0 = 00007022
.L80A6FB98:
/* 005E8 80A6FB98 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00007022
/* 005EC 80A6FB9C 1000012A */  beq     $zero, $zero, .L80A70048   
/* 005F0 80A6FBA0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007022
glabel L80A6FBA4
/* 005F4 80A6FBA4 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 005F8 80A6FBA8 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 005FC 80A6FBAC 54410004 */  bnel    $v0, $at, .L80A6FBC0       
/* 00600 80A6FBB0 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 00604 80A6FBB4 10000124 */  beq     $zero, $zero, .L80A70048   
/* 00608 80A6FBB8 24025088 */  addiu   $v0, $zero, 0x5088         ## $v0 = 00005088
/* 0060C 80A6FBBC 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
.L80A6FBC0:
/* 00610 80A6FBC0 14410003 */  bne     $v0, $at, .L80A6FBD0       
/* 00614 80A6FBC4 00000000 */  nop
/* 00618 80A6FBC8 1000011F */  beq     $zero, $zero, .L80A70048   
/* 0061C 80A6FBCC 24025087 */  addiu   $v0, $zero, 0x5087         ## $v0 = 00005087
.L80A6FBD0:
/* 00620 80A6FBD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00624 80A6FBD4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00628 80A6FBD8 944D0EE4 */  lhu     $t5, 0x0EE4($v0)           ## 8015F544
/* 0062C 80A6FBDC 2403704D */  addiu   $v1, $zero, 0x704D         ## $v1 = 0000704D
/* 00630 80A6FBE0 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 00634 80A6FBE4 51C00004 */  beql    $t6, $zero, .L80A6FBF8     
/* 00638 80A6FBE8 944F0F10 */  lhu     $t7, 0x0F10($v0)           ## 8015F570
/* 0063C 80A6FBEC 10000116 */  beq     $zero, $zero, .L80A70048   
/* 00640 80A6FBF0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000704D
/* 00644 80A6FBF4 944F0F10 */  lhu     $t7, 0x0F10($v0)           ## 00007F5D
.L80A6FBF8:
/* 00648 80A6FBF8 24027027 */  addiu   $v0, $zero, 0x7027         ## $v0 = 00007027
/* 0064C 80A6FBFC 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 00650 80A6FC00 13000003 */  beq     $t8, $zero, .L80A6FC10     
/* 00654 80A6FC04 00000000 */  nop
/* 00658 80A6FC08 10000001 */  beq     $zero, $zero, .L80A6FC10   
/* 0065C 80A6FC0C 24027028 */  addiu   $v0, $zero, 0x7028         ## $v0 = 00007028
.L80A6FC10:
/* 00660 80A6FC10 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00007028
/* 00664 80A6FC14 1000010C */  beq     $zero, $zero, .L80A70048   
/* 00668 80A6FC18 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007028
glabel L80A6FC1C
/* 0066C 80A6FC1C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00670 80A6FC20 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00674 80A6FC24 94590EE4 */  lhu     $t9, 0x0EE4($v0)           ## 8015F544
/* 00678 80A6FC28 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 0067C 80A6FC2C 5100000C */  beql    $t0, $zero, .L80A6FC60     
/* 00680 80A6FC30 944B0F10 */  lhu     $t3, 0x0F10($v0)           ## 8015F570
/* 00684 80A6FC34 94490F10 */  lhu     $t1, 0x0F10($v0)           ## 8015F570
/* 00688 80A6FC38 24037048 */  addiu   $v1, $zero, 0x7048         ## $v1 = 00007048
/* 0068C 80A6FC3C 312A0200 */  andi    $t2, $t1, 0x0200           ## $t2 = 00000000
/* 00690 80A6FC40 11400004 */  beq     $t2, $zero, .L80A6FC54     
/* 00694 80A6FC44 00000000 */  nop
/* 00698 80A6FC48 2403701E */  addiu   $v1, $zero, 0x701E         ## $v1 = 0000701E
/* 0069C 80A6FC4C 100000FE */  beq     $zero, $zero, .L80A70048   
/* 006A0 80A6FC50 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701E
.L80A6FC54:
/* 006A4 80A6FC54 100000FC */  beq     $zero, $zero, .L80A70048   
/* 006A8 80A6FC58 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701E
/* 006AC 80A6FC5C 944B0F10 */  lhu     $t3, 0x0F10($v0)           ## 00007F2E
.L80A6FC60:
/* 006B0 80A6FC60 2403701D */  addiu   $v1, $zero, 0x701D         ## $v1 = 0000701D
/* 006B4 80A6FC64 316C0100 */  andi    $t4, $t3, 0x0100           ## $t4 = 00000000
/* 006B8 80A6FC68 11800004 */  beq     $t4, $zero, .L80A6FC7C     
/* 006BC 80A6FC6C 00000000 */  nop
/* 006C0 80A6FC70 2403701E */  addiu   $v1, $zero, 0x701E         ## $v1 = 0000701E
/* 006C4 80A6FC74 100000F4 */  beq     $zero, $zero, .L80A70048   
/* 006C8 80A6FC78 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701E
.L80A6FC7C:
/* 006CC 80A6FC7C 100000F2 */  beq     $zero, $zero, .L80A70048   
/* 006D0 80A6FC80 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000701E
glabel L80A6FC84
/* 006D4 80A6FC84 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 006D8 80A6FC88 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 006DC 80A6FC8C 5441000E */  bnel    $v0, $at, .L80A6FCC8       
/* 006E0 80A6FC90 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 006E4 80A6FC94 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 006E8 80A6FC98 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 006EC 80A6FC9C 944D0EE8 */  lhu     $t5, 0x0EE8($v0)           ## 8015F548
/* 006F0 80A6FCA0 24035081 */  addiu   $v1, $zero, 0x5081         ## $v1 = 00005081
/* 006F4 80A6FCA4 31AE0400 */  andi    $t6, $t5, 0x0400           ## $t6 = 00000000
/* 006F8 80A6FCA8 11C00004 */  beq     $t6, $zero, .L80A6FCBC     
/* 006FC 80A6FCAC 00000000 */  nop
/* 00700 80A6FCB0 24035082 */  addiu   $v1, $zero, 0x5082         ## $v1 = 00005082
/* 00704 80A6FCB4 100000E4 */  beq     $zero, $zero, .L80A70048   
/* 00708 80A6FCB8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005082
.L80A6FCBC:
/* 0070C 80A6FCBC 100000E2 */  beq     $zero, $zero, .L80A70048   
/* 00710 80A6FCC0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005082
/* 00714 80A6FCC4 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
.L80A6FCC8:
/* 00718 80A6FCC8 1441000E */  bne     $v0, $at, .L80A6FD04       
/* 0071C 80A6FCCC 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00720 80A6FCD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00724 80A6FCD4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00728 80A6FCD8 8C5800A4 */  lw      $t8, 0x00A4($v0)           ## 8015E704
/* 0072C 80A6FCDC 8DEF7130 */  lw      $t7, 0x7130($t7)           ## 80127130
/* 00730 80A6FCE0 2403507F */  addiu   $v1, $zero, 0x507F         ## $v1 = 0000507F
/* 00734 80A6FCE4 01F8C824 */  and     $t9, $t7, $t8              
/* 00738 80A6FCE8 13200004 */  beq     $t9, $zero, .L80A6FCFC     
/* 0073C 80A6FCEC 00000000 */  nop
/* 00740 80A6FCF0 24035080 */  addiu   $v1, $zero, 0x5080         ## $v1 = 00005080
/* 00744 80A6FCF4 100000D4 */  beq     $zero, $zero, .L80A70048   
/* 00748 80A6FCF8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005080
.L80A6FCFC:
/* 0074C 80A6FCFC 100000D2 */  beq     $zero, $zero, .L80A70048   
/* 00750 80A6FD00 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005080
.L80A6FD04:
/* 00754 80A6FD04 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00758 80A6FD08 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0075C 80A6FD0C 94480EE4 */  lhu     $t0, 0x0EE4($v0)           ## 8015F544
/* 00760 80A6FD10 24037049 */  addiu   $v1, $zero, 0x7049         ## $v1 = 00007049
/* 00764 80A6FD14 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 00768 80A6FD18 51200004 */  beql    $t1, $zero, .L80A6FD2C     
/* 0076C 80A6FD1C 944A0F10 */  lhu     $t2, 0x0F10($v0)           ## 8015F570
/* 00770 80A6FD20 100000C9 */  beq     $zero, $zero, .L80A70048   
/* 00774 80A6FD24 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007049
/* 00778 80A6FD28 944A0F10 */  lhu     $t2, 0x0F10($v0)           ## 00007F59
.L80A6FD2C:
/* 0077C 80A6FD2C 2402701F */  addiu   $v0, $zero, 0x701F         ## $v0 = 0000701F
/* 00780 80A6FD30 314B0400 */  andi    $t3, $t2, 0x0400           ## $t3 = 00000000
/* 00784 80A6FD34 11600003 */  beq     $t3, $zero, .L80A6FD44     
/* 00788 80A6FD38 00000000 */  nop
/* 0078C 80A6FD3C 10000001 */  beq     $zero, $zero, .L80A6FD44   
/* 00790 80A6FD40 24027020 */  addiu   $v0, $zero, 0x7020         ## $v0 = 00007020
.L80A6FD44:
/* 00794 80A6FD44 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00007020
/* 00798 80A6FD48 100000BF */  beq     $zero, $zero, .L80A70048   
/* 0079C 80A6FD4C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007020
glabel L80A6FD50
/* 007A0 80A6FD50 848200A4 */  lh      $v0, 0x00A4($a0)           ## 000000A4
/* 007A4 80A6FD54 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 007A8 80A6FD58 5441000E */  bnel    $v0, $at, .L80A6FD94       
/* 007AC 80A6FD5C 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 007B0 80A6FD60 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007B4 80A6FD64 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 007B8 80A6FD68 944C0EE8 */  lhu     $t4, 0x0EE8($v0)           ## 8015F548
/* 007BC 80A6FD6C 2403507D */  addiu   $v1, $zero, 0x507D         ## $v1 = 0000507D
/* 007C0 80A6FD70 318D0400 */  andi    $t5, $t4, 0x0400           ## $t5 = 00000000
/* 007C4 80A6FD74 11A00004 */  beq     $t5, $zero, .L80A6FD88     
/* 007C8 80A6FD78 00000000 */  nop
/* 007CC 80A6FD7C 2403507E */  addiu   $v1, $zero, 0x507E         ## $v1 = 0000507E
/* 007D0 80A6FD80 100000B1 */  beq     $zero, $zero, .L80A70048   
/* 007D4 80A6FD84 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000507E
.L80A6FD88:
/* 007D8 80A6FD88 100000AF */  beq     $zero, $zero, .L80A70048   
/* 007DC 80A6FD8C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000507E
/* 007E0 80A6FD90 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
.L80A6FD94:
/* 007E4 80A6FD94 1441000E */  bne     $v0, $at, .L80A6FDD0       
/* 007E8 80A6FD98 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 007EC 80A6FD9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007F0 80A6FDA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 007F4 80A6FDA4 8C4F00A4 */  lw      $t7, 0x00A4($v0)           ## 8015E704
/* 007F8 80A6FDA8 8DCE7130 */  lw      $t6, 0x7130($t6)           ## 80127130
/* 007FC 80A6FDAC 2403507B */  addiu   $v1, $zero, 0x507B         ## $v1 = 0000507B
/* 00800 80A6FDB0 01CFC024 */  and     $t8, $t6, $t7              
/* 00804 80A6FDB4 13000004 */  beq     $t8, $zero, .L80A6FDC8     
/* 00808 80A6FDB8 00000000 */  nop
/* 0080C 80A6FDBC 2403507C */  addiu   $v1, $zero, 0x507C         ## $v1 = 0000507C
/* 00810 80A6FDC0 100000A1 */  beq     $zero, $zero, .L80A70048   
/* 00814 80A6FDC4 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000507C
.L80A6FDC8:
/* 00818 80A6FDC8 1000009F */  beq     $zero, $zero, .L80A70048   
/* 0081C 80A6FDCC 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000507C
.L80A6FDD0:
/* 00820 80A6FDD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00824 80A6FDD4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00828 80A6FDD8 94590EE4 */  lhu     $t9, 0x0EE4($v0)           ## 8015F544
/* 0082C 80A6FDDC 24037046 */  addiu   $v1, $zero, 0x7046         ## $v1 = 00007046
/* 00830 80A6FDE0 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00834 80A6FDE4 51000004 */  beql    $t0, $zero, .L80A6FDF8     
/* 00838 80A6FDE8 94490F10 */  lhu     $t1, 0x0F10($v0)           ## 8015F570
/* 0083C 80A6FDEC 10000096 */  beq     $zero, $zero, .L80A70048   
/* 00840 80A6FDF0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007046
/* 00844 80A6FDF4 94490F10 */  lhu     $t1, 0x0F10($v0)           ## 00007F56
.L80A6FDF8:
/* 00848 80A6FDF8 24027018 */  addiu   $v0, $zero, 0x7018         ## $v0 = 00007018
/* 0084C 80A6FDFC 312A2000 */  andi    $t2, $t1, 0x2000           ## $t2 = 00000000
/* 00850 80A6FE00 11400003 */  beq     $t2, $zero, .L80A6FE10     
/* 00854 80A6FE04 00000000 */  nop
/* 00858 80A6FE08 10000001 */  beq     $zero, $zero, .L80A6FE10   
/* 0085C 80A6FE0C 24027019 */  addiu   $v0, $zero, 0x7019         ## $v0 = 00007019
.L80A6FE10:
/* 00860 80A6FE10 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00007019
/* 00864 80A6FE14 1000008C */  beq     $zero, $zero, .L80A70048   
/* 00868 80A6FE18 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007019
glabel L80A6FE1C
/* 0086C 80A6FE1C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00870 80A6FE20 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00874 80A6FE24 944B0F08 */  lhu     $t3, 0x0F08($v0)           ## 8015F568
/* 00878 80A6FE28 24037014 */  addiu   $v1, $zero, 0x7014         ## $v1 = 00007014
/* 0087C 80A6FE2C 316C0800 */  andi    $t4, $t3, 0x0800           ## $t4 = 00000000
/* 00880 80A6FE30 1180000B */  beq     $t4, $zero, .L80A6FE60     
/* 00884 80A6FE34 00000000 */  nop
/* 00888 80A6FE38 944D0F10 */  lhu     $t5, 0x0F10($v0)           ## 8015F570
/* 0088C 80A6FE3C 240270A4 */  addiu   $v0, $zero, 0x70A4         ## $v0 = 000070A4
/* 00890 80A6FE40 31AE1000 */  andi    $t6, $t5, 0x1000           ## $t6 = 00000000
/* 00894 80A6FE44 11C00004 */  beq     $t6, $zero, .L80A6FE58     
/* 00898 80A6FE48 00000000 */  nop
/* 0089C 80A6FE4C 24027014 */  addiu   $v0, $zero, 0x7014         ## $v0 = 00007014
/* 008A0 80A6FE50 1000007D */  beq     $zero, $zero, .L80A70048   
/* 008A4 80A6FE54 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00007014
.L80A6FE58:
/* 008A8 80A6FE58 1000007B */  beq     $zero, $zero, .L80A70048   
/* 008AC 80A6FE5C 3042FFFF */  andi    $v0, $v0, 0xFFFF           ## $v0 = 00007014
.L80A6FE60:
/* 008B0 80A6FE60 10000079 */  beq     $zero, $zero, .L80A70048   
/* 008B4 80A6FE64 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007014
glabel L80A6FE68
/* 008B8 80A6FE68 848F00A4 */  lh      $t7, 0x00A4($a0)           ## 000000A4
/* 008BC 80A6FE6C 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 008C0 80A6FE70 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 008C4 80A6FE74 15E1000C */  bne     $t7, $at, .L80A6FEA8       
/* 008C8 80A6FE78 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 008CC 80A6FE7C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 008D0 80A6FE80 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 008D4 80A6FE84 8C580010 */  lw      $t8, 0x0010($v0)           ## 8015E670
/* 008D8 80A6FE88 24035083 */  addiu   $v1, $zero, 0x5083         ## $v1 = 00005083
/* 008DC 80A6FE8C 13000004 */  beq     $t8, $zero, .L80A6FEA0     
/* 008E0 80A6FE90 00000000 */  nop
/* 008E4 80A6FE94 24035084 */  addiu   $v1, $zero, 0x5084         ## $v1 = 00005084
/* 008E8 80A6FE98 1000006B */  beq     $zero, $zero, .L80A70048   
/* 008EC 80A6FE9C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005084
.L80A6FEA0:
/* 008F0 80A6FEA0 10000069 */  beq     $zero, $zero, .L80A70048   
/* 008F4 80A6FEA4 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005084
.L80A6FEA8:
/* 008F8 80A6FEA8 94590EE4 */  lhu     $t9, 0x0EE4($v0)           ## 00005F68
/* 008FC 80A6FEAC 24037015 */  addiu   $v1, $zero, 0x7015         ## $v1 = 00007015
/* 00900 80A6FEB0 33280001 */  andi    $t0, $t9, 0x0001           ## $t0 = 00000000
/* 00904 80A6FEB4 11000004 */  beq     $t0, $zero, .L80A6FEC8     
/* 00908 80A6FEB8 00000000 */  nop
/* 0090C 80A6FEBC 24037044 */  addiu   $v1, $zero, 0x7044         ## $v1 = 00007044
/* 00910 80A6FEC0 10000061 */  beq     $zero, $zero, .L80A70048   
/* 00914 80A6FEC4 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007044
.L80A6FEC8:
/* 00918 80A6FEC8 1000005F */  beq     $zero, $zero, .L80A70048   
/* 0091C 80A6FECC 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00007044
glabel L80A6FED0
/* 00920 80A6FED0 1000005D */  beq     $zero, $zero, .L80A70048   
/* 00924 80A6FED4 24027055 */  addiu   $v0, $zero, 0x7055         ## $v0 = 00007055
glabel L80A6FED8
/* 00928 80A6FED8 1000005B */  beq     $zero, $zero, .L80A70048   
/* 0092C 80A6FEDC 24027089 */  addiu   $v0, $zero, 0x7089         ## $v0 = 00007089
glabel L80A6FEE0
/* 00930 80A6FEE0 10000059 */  beq     $zero, $zero, .L80A70048   
/* 00934 80A6FEE4 2402708A */  addiu   $v0, $zero, 0x708A         ## $v0 = 0000708A
glabel L80A6FEE8
/* 00938 80A6FEE8 10000057 */  beq     $zero, $zero, .L80A70048   
/* 0093C 80A6FEEC 2402700E */  addiu   $v0, $zero, 0x700E         ## $v0 = 0000700E
glabel L80A6FEF0
/* 00940 80A6FEF0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00944 80A6FEF4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00948 80A6FEF8 8C490004 */  lw      $t1, 0x0004($v0)           ## 8015E664
/* 0094C 80A6FEFC 51200019 */  beql    $t1, $zero, .L80A6FF64     
/* 00950 80A6FF00 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 8015E670
/* 00954 80A6FF04 8C4A0010 */  lw      $t2, 0x0010($v0)           ## 8015E670
/* 00958 80A6FF08 5540000C */  bnel    $t2, $zero, .L80A6FF3C     
/* 0095C 80A6FF0C 944D0F24 */  lhu     $t5, 0x0F24($v0)           ## 8015F584
/* 00960 80A6FF10 944B0F24 */  lhu     $t3, 0x0F24($v0)           ## 8015F584
/* 00964 80A6FF14 24035057 */  addiu   $v1, $zero, 0x5057         ## $v1 = 00005057
/* 00968 80A6FF18 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 0096C 80A6FF1C 11800004 */  beq     $t4, $zero, .L80A6FF30     
/* 00970 80A6FF20 00000000 */  nop
/* 00974 80A6FF24 24035058 */  addiu   $v1, $zero, 0x5058         ## $v1 = 00005058
/* 00978 80A6FF28 10000047 */  beq     $zero, $zero, .L80A70048   
/* 0097C 80A6FF2C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005058
.L80A6FF30:
/* 00980 80A6FF30 10000045 */  beq     $zero, $zero, .L80A70048   
/* 00984 80A6FF34 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005058
/* 00988 80A6FF38 944D0F24 */  lhu     $t5, 0x0F24($v0)           ## 00005F7C
.L80A6FF3C:
/* 0098C 80A6FF3C 24035059 */  addiu   $v1, $zero, 0x5059         ## $v1 = 00005059
/* 00990 80A6FF40 31AE0002 */  andi    $t6, $t5, 0x0002           ## $t6 = 00000000
/* 00994 80A6FF44 11C00004 */  beq     $t6, $zero, .L80A6FF58     
/* 00998 80A6FF48 00000000 */  nop
/* 0099C 80A6FF4C 2403505A */  addiu   $v1, $zero, 0x505A         ## $v1 = 0000505A
/* 009A0 80A6FF50 1000003D */  beq     $zero, $zero, .L80A70048   
/* 009A4 80A6FF54 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505A
.L80A6FF58:
/* 009A8 80A6FF58 1000003B */  beq     $zero, $zero, .L80A70048   
/* 009AC 80A6FF5C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505A
/* 009B0 80A6FF60 8C4F0010 */  lw      $t7, 0x0010($v0)           ## 0000506A
.L80A6FF64:
/* 009B4 80A6FF64 15E0000B */  bne     $t7, $zero, .L80A6FF94     
/* 009B8 80A6FF68 00000000 */  nop
/* 009BC 80A6FF6C 94580F24 */  lhu     $t8, 0x0F24($v0)           ## 00005F7E
/* 009C0 80A6FF70 2403505B */  addiu   $v1, $zero, 0x505B         ## $v1 = 0000505B
/* 009C4 80A6FF74 33190004 */  andi    $t9, $t8, 0x0004           ## $t9 = 00000000
/* 009C8 80A6FF78 13200004 */  beq     $t9, $zero, .L80A6FF8C     
/* 009CC 80A6FF7C 00000000 */  nop
/* 009D0 80A6FF80 2403505C */  addiu   $v1, $zero, 0x505C         ## $v1 = 0000505C
/* 009D4 80A6FF84 10000030 */  beq     $zero, $zero, .L80A70048   
/* 009D8 80A6FF88 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505C
.L80A6FF8C:
/* 009DC 80A6FF8C 1000002E */  beq     $zero, $zero, .L80A70048   
/* 009E0 80A6FF90 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505C
.L80A6FF94:
/* 009E4 80A6FF94 1000002C */  beq     $zero, $zero, .L80A70048   
/* 009E8 80A6FF98 24025058 */  addiu   $v0, $zero, 0x5058         ## $v0 = 00005058
glabel L80A6FF9C
/* 009EC 80A6FF9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 009F0 80A6FFA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 009F4 80A6FFA4 8C480004 */  lw      $t0, 0x0004($v0)           ## 8015E664
/* 009F8 80A6FFA8 51000013 */  beql    $t0, $zero, .L80A6FFF8     
/* 009FC 80A6FFAC 94CD0330 */  lhu     $t5, 0x0330($a2)           ## 00000330
/* 00A00 80A6FFB0 94490EE4 */  lhu     $t1, 0x0EE4($v0)           ## 8015F544
/* 00A04 80A6FFB4 2403505F */  addiu   $v1, $zero, 0x505F         ## $v1 = 0000505F
/* 00A08 80A6FFB8 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 00A0C 80A6FFBC 51400004 */  beql    $t2, $zero, .L80A6FFD0     
/* 00A10 80A6FFC0 944B0F24 */  lhu     $t3, 0x0F24($v0)           ## 8015F584
/* 00A14 80A6FFC4 10000020 */  beq     $zero, $zero, .L80A70048   
/* 00A18 80A6FFC8 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505F
/* 00A1C 80A6FFCC 944B0F24 */  lhu     $t3, 0x0F24($v0)           ## 00005F83
.L80A6FFD0:
/* 00A20 80A6FFD0 2402505D */  addiu   $v0, $zero, 0x505D         ## $v0 = 0000505D
/* 00A24 80A6FFD4 316C0008 */  andi    $t4, $t3, 0x0008           ## $t4 = 00000000
/* 00A28 80A6FFD8 11800003 */  beq     $t4, $zero, .L80A6FFE8     
/* 00A2C 80A6FFDC 00000000 */  nop
/* 00A30 80A6FFE0 10000001 */  beq     $zero, $zero, .L80A6FFE8   
/* 00A34 80A6FFE4 2402505E */  addiu   $v0, $zero, 0x505E         ## $v0 = 0000505E
.L80A6FFE8:
/* 00A38 80A6FFE8 00401825 */  or      $v1, $v0, $zero            ## $v1 = 0000505E
/* 00A3C 80A6FFEC 10000016 */  beq     $zero, $zero, .L80A70048   
/* 00A40 80A6FFF0 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 0000505E
/* 00A44 80A6FFF4 94CD0330 */  lhu     $t5, 0x0330($a2)           ## 00000330
.L80A6FFF8:
/* 00A48 80A6FFF8 24035062 */  addiu   $v1, $zero, 0x5062         ## $v1 = 00005062
/* 00A4C 80A6FFFC 31AE0800 */  andi    $t6, $t5, 0x0800           ## $t6 = 00000000
/* 00A50 80A70000 51C00004 */  beql    $t6, $zero, .L80A70014     
/* 00A54 80A70004 944F0F24 */  lhu     $t7, 0x0F24($v0)           ## 00005F82
/* 00A58 80A70008 1000000F */  beq     $zero, $zero, .L80A70048   
/* 00A5C 80A7000C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005062
/* 00A60 80A70010 944F0F24 */  lhu     $t7, 0x0F24($v0)           ## 00005F86
.L80A70014:
/* 00A64 80A70014 24025060 */  addiu   $v0, $zero, 0x5060         ## $v0 = 00005060
/* 00A68 80A70018 31F80010 */  andi    $t8, $t7, 0x0010           ## $t8 = 00000000
/* 00A6C 80A7001C 13000003 */  beq     $t8, $zero, .L80A7002C     
/* 00A70 80A70020 00000000 */  nop
/* 00A74 80A70024 10000001 */  beq     $zero, $zero, .L80A7002C   
/* 00A78 80A70028 24025061 */  addiu   $v0, $zero, 0x5061         ## $v0 = 00005061
.L80A7002C:
/* 00A7C 80A7002C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00005061
/* 00A80 80A70030 10000005 */  beq     $zero, $zero, .L80A70048   
/* 00A84 80A70034 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00005061
glabel L80A70038
/* 00A88 80A70038 10000003 */  beq     $zero, $zero, .L80A70048   
/* 00A8C 80A7003C 24027120 */  addiu   $v0, $zero, 0x7120         ## $v0 = 00007120
glabel L80A70040
/* 00A90 80A70040 10000001 */  beq     $zero, $zero, .L80A70048   
/* 00A94 80A70044 24027121 */  addiu   $v0, $zero, 0x7121         ## $v0 = 00007121
.L80A70048:
/* 00A98 80A70048 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A9C 80A7004C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AA0 80A70050 03E00008 */  jr      $ra                        
/* 00AA4 80A70054 00000000 */  nop
