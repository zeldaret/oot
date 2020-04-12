glabel func_80B4F230
/* 008A0 80B4F230 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 008A4 80B4F234 8C8E024C */  lw      $t6, 0x024C($a0)           ## 0000024C
/* 008A8 80B4F238 00053C00 */  sll     $a3, $a1, 16               
/* 008AC 80B4F23C 00073C03 */  sra     $a3, $a3, 16               
/* 008B0 80B4F240 11C00082 */  beq     $t6, $zero, .L80B4F44C     
/* 008B4 80B4F244 00067840 */  sll     $t7, $a2,  1               
/* 008B8 80B4F248 008F2821 */  addu    $a1, $a0, $t7              
/* 008BC 80B4F24C 84B801DC */  lh      $t8, 0x01DC($a1)           ## 000001DC
/* 008C0 80B4F250 84A901AC */  lh      $t1, 0x01AC($a1)           ## 000001AC
/* 008C4 80B4F254 84B9020C */  lh      $t9, 0x020C($a1)           ## 0000020C
/* 008C8 80B4F258 03071823 */  subu    $v1, $t8, $a3              
/* 008CC 80B4F25C 00034400 */  sll     $t0, $v1, 16               
/* 008D0 80B4F260 00084403 */  sra     $t0, $t0, 16               
/* 008D4 80B4F264 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 008D8 80B4F268 01005025 */  or      $t2, $t0, $zero            ## $t2 = 00000000
/* 008DC 80B4F26C 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
/* 008E0 80B4F270 14C10004 */  bne     $a2, $at, .L80B4F284       
/* 008E4 80B4F274 00F95823 */  subu    $t3, $a3, $t9              
/* 008E8 80B4F278 00006025 */  or      $t4, $zero, $zero          ## $t4 = 00000000
/* 008EC 80B4F27C 1000003B */  beq     $zero, $zero, .L80B4F36C   
/* 008F0 80B4F280 848D01AC */  lh      $t5, 0x01AC($a0)           ## 000001AC
.L80B4F284:
/* 008F4 80B4F284 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 008F8 80B4F288 14C10003 */  bne     $a2, $at, .L80B4F298       
/* 008FC 80B4F28C 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 00900 80B4F290 10000036 */  beq     $zero, $zero, .L80B4F36C   
/* 00904 80B4F294 848D01B2 */  lh      $t5, 0x01B2($a0)           ## 000001B2
.L80B4F298:
/* 00908 80B4F298 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0090C 80B4F29C 14C10003 */  bne     $a2, $at, .L80B4F2AC       
/* 00910 80B4F2A0 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 00914 80B4F2A4 10000031 */  beq     $zero, $zero, .L80B4F36C   
/* 00918 80B4F2A8 848D01B8 */  lh      $t5, 0x01B8($a0)           ## 000001B8
.L80B4F2AC:
/* 0091C 80B4F2AC 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00920 80B4F2B0 54C1000B */  bnel    $a2, $at, .L80B4F2E0       
/* 00924 80B4F2B4 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00928 80B4F2B8 848E01BE */  lh      $t6, 0x01BE($a0)           ## 000001BE
/* 0092C 80B4F2BC 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 00930 80B4F2C0 05C20004 */  bltzl   $t6, .L80B4F2D4            
/* 00934 80B4F2C4 848D01BE */  lh      $t5, 0x01BE($a0)           ## 000001BE
/* 00938 80B4F2C8 10000028 */  beq     $zero, $zero, .L80B4F36C   
/* 0093C 80B4F2CC 848D01BE */  lh      $t5, 0x01BE($a0)           ## 000001BE
/* 00940 80B4F2D0 848D01BE */  lh      $t5, 0x01BE($a0)           ## 000001BE
.L80B4F2D4:
/* 00944 80B4F2D4 10000025 */  beq     $zero, $zero, .L80B4F36C   
/* 00948 80B4F2D8 000D6823 */  subu    $t5, $zero, $t5            
/* 0094C 80B4F2DC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
.L80B4F2E0:
/* 00950 80B4F2E0 54C1000B */  bnel    $a2, $at, .L80B4F310       
/* 00954 80B4F2E4 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 00958 80B4F2E8 848F01C4 */  lh      $t7, 0x01C4($a0)           ## 000001C4
/* 0095C 80B4F2EC 240C000C */  addiu   $t4, $zero, 0x000C         ## $t4 = 0000000C
/* 00960 80B4F2F0 05E20004 */  bltzl   $t7, .L80B4F304            
/* 00964 80B4F2F4 848D01C4 */  lh      $t5, 0x01C4($a0)           ## 000001C4
/* 00968 80B4F2F8 1000001C */  beq     $zero, $zero, .L80B4F36C   
/* 0096C 80B4F2FC 848D01C4 */  lh      $t5, 0x01C4($a0)           ## 000001C4
/* 00970 80B4F300 848D01C4 */  lh      $t5, 0x01C4($a0)           ## 000001C4
.L80B4F304:
/* 00974 80B4F304 10000019 */  beq     $zero, $zero, .L80B4F36C   
/* 00978 80B4F308 000D6823 */  subu    $t5, $zero, $t5            
/* 0097C 80B4F30C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
.L80B4F310:
/* 00980 80B4F310 54C1000D */  bnel    $a2, $at, .L80B4F348       
/* 00984 80B4F314 849901D0 */  lh      $t9, 0x01D0($a0)           ## 000001D0
/* 00988 80B4F318 849801CA */  lh      $t8, 0x01CA($a0)           ## 000001CA
/* 0098C 80B4F31C 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 00990 80B4F320 07020005 */  bltzl   $t8, .L80B4F338            
/* 00994 80B4F324 848D01CA */  lh      $t5, 0x01CA($a0)           ## 000001CA
/* 00998 80B4F328 848D01CA */  lh      $t5, 0x01CA($a0)           ## 000001CA
/* 0099C 80B4F32C 1000000F */  beq     $zero, $zero, .L80B4F36C   
/* 009A0 80B4F330 000D6823 */  subu    $t5, $zero, $t5            
/* 009A4 80B4F334 848D01CA */  lh      $t5, 0x01CA($a0)           ## 000001CA
.L80B4F338:
/* 009A8 80B4F338 000D6823 */  subu    $t5, $zero, $t5            
/* 009AC 80B4F33C 1000000B */  beq     $zero, $zero, .L80B4F36C   
/* 009B0 80B4F340 000D6823 */  subu    $t5, $zero, $t5            
/* 009B4 80B4F344 849901D0 */  lh      $t9, 0x01D0($a0)           ## 000001D0
.L80B4F348:
/* 009B8 80B4F348 240C0012 */  addiu   $t4, $zero, 0x0012         ## $t4 = 00000012
/* 009BC 80B4F34C 07220005 */  bltzl   $t9, .L80B4F364            
/* 009C0 80B4F350 848D01D0 */  lh      $t5, 0x01D0($a0)           ## 000001D0
/* 009C4 80B4F354 848D01D0 */  lh      $t5, 0x01D0($a0)           ## 000001D0
/* 009C8 80B4F358 10000004 */  beq     $zero, $zero, .L80B4F36C   
/* 009CC 80B4F35C 000D6823 */  subu    $t5, $zero, $t5            
/* 009D0 80B4F360 848D01D0 */  lh      $t5, 0x01D0($a0)           ## 000001D0
.L80B4F364:
/* 009D4 80B4F364 000D6823 */  subu    $t5, $zero, $t5            
/* 009D8 80B4F368 000D6823 */  subu    $t5, $zero, $t5            
.L80B4F36C:
/* 009DC 80B4F36C 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 009E0 80B4F370 34018001 */  ori     $at, $zero, 0x8001         ## $at = 00008001
/* 009E4 80B4F374 46802020 */  cvt.s.w $f0, $f4                   
/* 009E8 80B4F378 46000005 */  abs.s   $f0, $f0                   
/* 009EC 80B4F37C 4600018D */  trunc.w.s $f6, $f0                   
/* 009F0 80B4F380 440F3000 */  mfc1    $t7, $f6                   
/* 009F4 80B4F384 00000000 */  nop
/* 009F8 80B4F388 01E1082A */  slt     $at, $t7, $at              
/* 009FC 80B4F38C 14200007 */  bne     $at, $zero, .L80B4F3AC     
/* 00A00 80B4F390 00000000 */  nop
/* 00A04 80B4F394 18E00004 */  blez    $a3, .L80B4F3A8            
/* 00A08 80B4F398 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A0C 80B4F39C 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 00A10 80B4F3A0 10000002 */  beq     $zero, $zero, .L80B4F3AC   
/* 00A14 80B4F3A4 01615821 */  addu    $t3, $t3, $at              
.L80B4F3A8:
/* 00A18 80B4F3A8 01615821 */  addu    $t3, $t3, $at              
.L80B4F3AC:
/* 00A1C 80B4F3AC 05800005 */  bltz    $t4, .L80B4F3C4            
/* 00A20 80B4F3B0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00A24 80B4F3B4 01A1001A */  div     $zero, $t5, $at            
/* 00A28 80B4F3B8 0000C012 */  mflo    $t8                        
/* 00A2C 80B4F3BC 01785821 */  addu    $t3, $t3, $t8              
/* 00A30 80B4F3C0 00000000 */  nop
.L80B4F3C4:
/* 00A34 80B4F3C4 11600006 */  beq     $t3, $zero, .L80B4F3E0     
/* 00A38 80B4F3C8 0162C823 */  subu    $t9, $t3, $v0              
/* 00A3C 80B4F3CC 07210003 */  bgez    $t9, .L80B4F3DC            
/* 00A40 80B4F3D0 00197103 */  sra     $t6, $t9,  4               
/* 00A44 80B4F3D4 2721000F */  addiu   $at, $t9, 0x000F           ## $at = 0000000F
/* 00A48 80B4F3D8 00017103 */  sra     $t6, $at,  4               
.L80B4F3DC:
/* 00A4C 80B4F3DC 004E1021 */  addu    $v0, $v0, $t6              
.L80B4F3E0:
/* 00A50 80B4F3E0 10400005 */  beq     $v0, $zero, .L80B4F3F8     
/* 00A54 80B4F3E4 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00A58 80B4F3E8 0041001A */  div     $zero, $v0, $at            
/* 00A5C 80B4F3EC 00007812 */  mflo    $t7                        
/* 00A60 80B4F3F0 004F1023 */  subu    $v0, $v0, $t7              
/* 00A64 80B4F3F4 00000000 */  nop
.L80B4F3F8:
/* 00A68 80B4F3F8 11000005 */  beq     $t0, $zero, .L80B4F410     
/* 00A6C 80B4F3FC 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00A70 80B4F400 0101001A */  div     $zero, $t0, $at            
/* 00A74 80B4F404 0000C012 */  mflo    $t8                        
/* 00A78 80B4F408 00581023 */  subu    $v0, $v0, $t8              
/* 00A7C 80B4F40C 00000000 */  nop
.L80B4F410:
/* 00A80 80B4F410 01220019 */  multu   $t1, $v0                   
/* 00A84 80B4F414 00621821 */  addu    $v1, $v1, $v0              
/* 00A88 80B4F418 2941FF9D */  slti    $at, $t2, 0xFF9D           
/* 00A8C 80B4F41C 0000C812 */  mflo    $t9                        
/* 00A90 80B4F420 5F200008 */  bgtzl   $t9, .L80B4F444            
/* 00A94 80B4F424 00E37021 */  addu    $t6, $a3, $v1              
/* 00A98 80B4F428 14200005 */  bne     $at, $zero, .L80B4F440     
/* 00A9C 80B4F42C 29410064 */  slti    $at, $t2, 0x0064           
/* 00AA0 80B4F430 50200004 */  beql    $at, $zero, .L80B4F444     
/* 00AA4 80B4F434 00E37021 */  addu    $t6, $a3, $v1              
/* 00AA8 80B4F438 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00AAC 80B4F43C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B4F440:
/* 00AB0 80B4F440 00E37021 */  addu    $t6, $a3, $v1              
.L80B4F444:
/* 00AB4 80B4F444 A4A201AC */  sh      $v0, 0x01AC($a1)           ## 000001AC
/* 00AB8 80B4F448 A4AE01DC */  sh      $t6, 0x01DC($a1)           ## 000001DC
.L80B4F44C:
/* 00ABC 80B4F44C 00067840 */  sll     $t7, $a2,  1               
/* 00AC0 80B4F450 008FC021 */  addu    $t8, $a0, $t7              
/* 00AC4 80B4F454 03E00008 */  jr      $ra                        
/* 00AC8 80B4F458 A707020C */  sh      $a3, 0x020C($t8)           ## 0000020C
