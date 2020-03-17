glabel func_80AFEC3C
/* 0098C 80AFEC3C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00990 80AFEC40 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00994 80AFEC44 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00998 80AFEC48 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0099C 80AFEC4C 908E02D3 */  lbu     $t6, 0x02D3($a0)           ## 000002D3
/* 009A0 80AFEC50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009A4 80AFEC54 3C0F80B0 */  lui     $t7, %hi(D_80B01EA0)       ## $t7 = 80B00000
/* 009A8 80AFEC58 51C00062 */  beql    $t6, $zero, .L80AFEDE4     
/* 009AC 80AFEC5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009B0 80AFEC60 8DEF1EA0 */  lw      $t7, %lo(D_80B01EA0)($t7)  
/* 009B4 80AFEC64 55E0005F */  bnel    $t7, $zero, .L80AFEDE4     
/* 009B8 80AFEC68 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009BC 80AFEC6C 90820289 */  lbu     $v0, 0x0289($a0)           ## 00000289
/* 009C0 80AFEC70 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 009C4 80AFEC74 5300005B */  beql    $t8, $zero, .L80AFEDE4     
/* 009C8 80AFEC78 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009CC 80AFEC7C 908300B1 */  lbu     $v1, 0x00B1($a0)           ## 000000B1
/* 009D0 80AFEC80 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 009D4 80AFEC84 A0990289 */  sb      $t9, 0x0289($a0)           ## 00000289
/* 009D8 80AFEC88 10600050 */  beq     $v1, $zero, .L80AFEDCC     
/* 009DC 80AFEC8C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 009E0 80AFEC90 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 009E4 80AFEC94 54610053 */  bnel    $v1, $at, .L80AFEDE4       
/* 009E8 80AFEC98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009EC 80AFEC9C 8488029E */  lh      $t0, 0x029E($a0)           ## 0000029E
/* 009F0 80AFECA0 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFF0
/* 009F4 80AFECA4 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 009F8 80AFECA8 00000000 */  nop
/* 009FC 80AFECAC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00A00 80AFECB0 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 00A04 80AFECB4 848902A0 */  lh      $t1, 0x02A0($a0)           ## 000002A0
/* 00A08 80AFECB8 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 00A0C 80AFECBC 00000000 */  nop
/* 00A10 80AFECC0 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A14 80AFECC4 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00A18 80AFECC8 848A02A2 */  lh      $t2, 0x02A2($a0)           ## 000002A2
/* 00A1C 80AFECCC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00A20 80AFECD0 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 00A24 80AFECD4 00000000 */  nop
/* 00A28 80AFECD8 468084A0 */  cvt.s.w $f18, $f16                 
/* 00A2C 80AFECDC 0C2BFABB */  jal     func_80AFEAEC              
/* 00A30 80AFECE0 E7B20038 */  swc1    $f18, 0x0038($sp)          
/* 00A34 80AFECE4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00A38 80AFECE8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00A3C 80AFECEC 0C00A729 */  jal     func_80029CA4              
/* 00A40 80AFECF0 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF0
/* 00A44 80AFECF4 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 00A48 80AFECF8 860C0032 */  lh      $t4, 0x0032($s0)           ## 00000032
/* 00A4C 80AFECFC 920302D1 */  lbu     $v1, 0x02D1($s0)           ## 000002D1
/* 00A50 80AFED00 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A54 80AFED04 016C1023 */  subu    $v0, $t3, $t4              
/* 00A58 80AFED08 00021400 */  sll     $v0, $v0, 16               
/* 00A5C 80AFED0C 10610003 */  beq     $v1, $at, .L80AFED1C       
/* 00A60 80AFED10 00021403 */  sra     $v0, $v0, 16               
/* 00A64 80AFED14 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00A68 80AFED18 1461000F */  bne     $v1, $at, .L80AFED58       
.L80AFED1C:
/* 00A6C 80AFED1C 28416001 */  slti    $at, $v0, 0x6001           
/* 00A70 80AFED20 10200003 */  beq     $at, $zero, .L80AFED30     
/* 00A74 80AFED24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A78 80AFED28 2841A000 */  slti    $at, $v0, 0xA000           
/* 00A7C 80AFED2C 1020000A */  beq     $at, $zero, .L80AFED58     
.L80AFED30:
/* 00A80 80AFED30 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 00A84 80AFED34 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00A88 80AFED38 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00A8C 80AFED3C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00A90 80AFED40 0C00D09B */  jal     func_8003426C              
/* 00A94 80AFED44 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00A98 80AFED48 0C2BFC5B */  jal     func_80AFF16C              
/* 00A9C 80AFED4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA0 80AFED50 10000024 */  beq     $zero, $zero, .L80AFEDE4   
/* 00AA4 80AFED54 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFED58:
/* 00AA8 80AFED58 0C00D58A */  jal     Actor_ApplyDamage
              
/* 00AAC 80AFED5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 80AFED60 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 00AB4 80AFED64 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00AB8 80AFED68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ABC 80AFED6C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00AC0 80AFED70 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00AC4 80AFED74 0C00D09B */  jal     func_8003426C              
/* 00AC8 80AFED78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00ACC 80AFED7C 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 00AD0 80AFED80 11E0000E */  beq     $t7, $zero, .L80AFEDBC     
/* 00AD4 80AFED84 00000000 */  nop
/* 00AD8 80AFED88 920202D5 */  lbu     $v0, 0x02D5($s0)           ## 000002D5
/* 00ADC 80AFED8C 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 00AE0 80AFED90 10400002 */  beq     $v0, $zero, .L80AFED9C     
/* 00AE4 80AFED94 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 00AE8 80AFED98 A21802D5 */  sb      $t8, 0x02D5($s0)           ## 000002D5
.L80AFED9C:
/* 00AEC 80AFED9C 861902CE */  lh      $t9, 0x02CE($s0)           ## 000002CE
/* 00AF0 80AFEDA0 17200002 */  bne     $t9, $zero, .L80AFEDAC     
/* 00AF4 80AFEDA4 00000000 */  nop
/* 00AF8 80AFEDA8 A60802CE */  sh      $t0, 0x02CE($s0)           ## 000002CE
.L80AFEDAC:
/* 00AFC 80AFEDAC 0C2BFC7C */  jal     func_80AFF1F0              
/* 00B00 80AFEDB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B04 80AFEDB4 1000000B */  beq     $zero, $zero, .L80AFEDE4   
/* 00B08 80AFEDB8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFEDBC:
/* 00B0C 80AFEDBC 0C2BFC5B */  jal     func_80AFF16C              
/* 00B10 80AFEDC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B14 80AFEDC4 10000007 */  beq     $zero, $zero, .L80AFEDE4   
/* 00B18 80AFEDC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AFEDCC:
/* 00B1C 80AFEDCC A20902D2 */  sb      $t1, 0x02D2($s0)           ## 000002D2
/* 00B20 80AFEDD0 0C2BFBA1 */  jal     func_80AFEE84              
/* 00B24 80AFEDD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B28 80AFEDD8 10000002 */  beq     $zero, $zero, .L80AFEDE4   
/* 00B2C 80AFEDDC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B30 80AFEDE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AFEDE4:
/* 00B34 80AFEDE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B38 80AFEDE8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B3C 80AFEDEC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00B40 80AFEDF0 03E00008 */  jr      $ra                        
/* 00B44 80AFEDF4 00000000 */  nop


