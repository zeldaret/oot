.late_rodata
glabel D_8089DA70
 .word 0x43DE8000
glabel D_8089DA74
 .word 0x43DE8000
glabel D_8089DA78
 .word 0x443F4000
glabel D_8089DA7C
 .word 0xC450C000

.text
glabel func_8089CE04
/* 00984 8089CE04 8CAE07C0 */  lw      $t6, 0x07C0($a1)           ## 000007C0
/* 00988 8089CE08 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 0098C 8089CE0C 44811000 */  mtc1    $at, $f2                   ## $f2 = -15.00
/* 00990 8089CE10 8DC20028 */  lw      $v0, 0x0028($t6)           ## 00000028
/* 00994 8089CE14 3C01808A */  lui     $at, %hi(D_8089DA74)       ## $at = 808A0000
/* 00998 8089CE18 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 0099C 8089CE1C 844F0022 */  lh      $t7, 0x0022($v0)           ## 00000022
/* 009A0 8089CE20 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 009A4 8089CE24 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 009A8 8089CE28 00000000 */  nop
/* 009AC 8089CE2C 46802020 */  cvt.s.w $f0, $f4                   
/* 009B0 8089CE30 4602003C */  c.lt.s  $f0, $f2                   
/* 009B4 8089CE34 00000000 */  nop
/* 009B8 8089CE38 45000007 */  bc1f    .L8089CE58                 
/* 009BC 8089CE3C 00000000 */  nop
/* 009C0 8089CE40 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 009C4 8089CE44 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 009C8 8089CE48 3C01808A */  lui     $at, %hi(D_8089DA70)       ## $at = 808A0000
/* 009CC 8089CE4C AC8202A0 */  sw      $v0, 0x02A0($a0)           ## 000002A0
/* 009D0 8089CE50 10000019 */  beq     $zero, $zero, .L8089CEB8   
/* 009D4 8089CE54 C42CDA70 */  lwc1    $f12, %lo(D_8089DA70)($at) 
.L8089CE58:
/* 009D8 8089CE58 C42CDA74 */  lwc1    $f12, %lo(D_8089DA74)($at) 
/* 009DC 8089CE5C 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 009E0 8089CE60 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 009E4 8089CE64 460C003C */  c.lt.s  $f0, $f12                  
/* 009E8 8089CE68 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 009EC 8089CE6C 45020011 */  bc1fl   .L8089CEB4                 
/* 009F0 8089CE70 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 009F4 8089CE74 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 009F8 8089CE78 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 009FC 8089CE7C 46020181 */  sub.s   $f6, $f0, $f2              
/* 00A00 8089CE80 3C0143E6 */  lui     $at, 0x43E6                ## $at = 43E60000
/* 00A04 8089CE84 44814000 */  mtc1    $at, $f8                   ## $f8 = 460.00
/* 00A08 8089CE88 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 00A0C 8089CE8C 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 00A10 8089CE90 46083283 */  div.s   $f10, $f6, $f8             
/* 00A14 8089CE94 460E5402 */  mul.s   $f16, $f10, $f14           
/* 00A18 8089CE98 4600848D */  trunc.w.s $f18, $f16                 
/* 00A1C 8089CE9C 44199000 */  mfc1    $t9, $f18                  
/* 00A20 8089CEA0 00000000 */  nop
/* 00A24 8089CEA4 00594023 */  subu    $t0, $v0, $t9              
/* 00A28 8089CEA8 10000003 */  beq     $zero, $zero, .L8089CEB8   
/* 00A2C 8089CEAC AC8802A0 */  sw      $t0, 0x02A0($a0)           ## 000002A0
/* 00A30 8089CEB0 44817000 */  mtc1    $at, $f14                  ## $f14 = 460.00
.L8089CEB4:
/* 00A34 8089CEB4 AC8302A0 */  sw      $v1, 0x02A0($a0)           ## 000002A0
.L8089CEB8:
/* 00A38 8089CEB8 460C003C */  c.lt.s  $f0, $f12                  
/* 00A3C 8089CEBC 3C01808A */  lui     $at, %hi(D_8089DA78)       ## $at = 808A0000
/* 00A40 8089CEC0 45000003 */  bc1f    .L8089CED0                 
/* 00A44 8089CEC4 00000000 */  nop
/* 00A48 8089CEC8 10000013 */  beq     $zero, $zero, .L8089CF18   
/* 00A4C 8089CECC AC8202A4 */  sw      $v0, 0x02A4($a0)           ## 000002A4
.L8089CED0:
/* 00A50 8089CED0 C424DA78 */  lwc1    $f4, %lo(D_8089DA78)($at)  
/* 00A54 8089CED4 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 00A58 8089CED8 4604003C */  c.lt.s  $f0, $f4                   
/* 00A5C 8089CEDC 00000000 */  nop
/* 00A60 8089CEE0 4502000D */  bc1fl   .L8089CF18                 
/* 00A64 8089CEE4 AC8302A4 */  sw      $v1, 0x02A4($a0)           ## 000002A4
/* 00A68 8089CEE8 460C0181 */  sub.s   $f6, $f0, $f12             
/* 00A6C 8089CEEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 320.00
/* 00A70 8089CEF0 00000000 */  nop
/* 00A74 8089CEF4 46083283 */  div.s   $f10, $f6, $f8             
/* 00A78 8089CEF8 460E5402 */  mul.s   $f16, $f10, $f14           
/* 00A7C 8089CEFC 4600848D */  trunc.w.s $f18, $f16                 
/* 00A80 8089CF00 440A9000 */  mfc1    $t2, $f18                  
/* 00A84 8089CF04 00000000 */  nop
/* 00A88 8089CF08 004A5823 */  subu    $t3, $v0, $t2              
/* 00A8C 8089CF0C 10000002 */  beq     $zero, $zero, .L8089CF18   
/* 00A90 8089CF10 AC8B02A4 */  sw      $t3, 0x02A4($a0)           ## 000002A4
/* 00A94 8089CF14 AC8302A4 */  sw      $v1, 0x02A4($a0)           ## 000002A4
.L8089CF18:
/* 00A98 8089CF18 3C01808A */  lui     $at, %hi(D_8089DA7C)       ## $at = 808A0000
/* 00A9C 8089CF1C C42CDA7C */  lwc1    $f12, %lo(D_8089DA7C)($at) 
/* 00AA0 8089CF20 460C003C */  c.lt.s  $f0, $f12                  
/* 00AA4 8089CF24 00000000 */  nop
/* 00AA8 8089CF28 45020004 */  bc1fl   .L8089CF3C                 
/* 00AAC 8089CF2C 4602003C */  c.lt.s  $f0, $f2                   
/* 00AB0 8089CF30 10000011 */  beq     $zero, $zero, .L8089CF78   
/* 00AB4 8089CF34 AC8202A8 */  sw      $v0, 0x02A8($a0)           ## 000002A8
/* 00AB8 8089CF38 4602003C */  c.lt.s  $f0, $f2                   
.L8089CF3C:
/* 00ABC 8089CF3C 3C01444D */  lui     $at, 0x444D                ## $at = 444D0000
/* 00AC0 8089CF40 4502000D */  bc1fl   .L8089CF78                 
/* 00AC4 8089CF44 AC8302A8 */  sw      $v1, 0x02A8($a0)           ## 000002A8
/* 00AC8 8089CF48 460C0101 */  sub.s   $f4, $f0, $f12             
/* 00ACC 8089CF4C 44813000 */  mtc1    $at, $f6                   ## $f6 = 820.00
/* 00AD0 8089CF50 00000000 */  nop
/* 00AD4 8089CF54 46062203 */  div.s   $f8, $f4, $f6              
/* 00AD8 8089CF58 460E4282 */  mul.s   $f10, $f8, $f14            
/* 00ADC 8089CF5C 4600540D */  trunc.w.s $f16, $f10                 
/* 00AE0 8089CF60 440D8000 */  mfc1    $t5, $f16                  
/* 00AE4 8089CF64 00000000 */  nop
/* 00AE8 8089CF68 004D7023 */  subu    $t6, $v0, $t5              
/* 00AEC 8089CF6C 10000002 */  beq     $zero, $zero, .L8089CF78   
/* 00AF0 8089CF70 AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00AF4 8089CF74 AC8302A8 */  sw      $v1, 0x02A8($a0)           ## 000002A8
.L8089CF78:
/* 00AF8 8089CF78 8C8F02A8 */  lw      $t7, 0x02A8($a0)           ## 000002A8
/* 00AFC 8089CF7C 03E00008 */  jr      $ra                        
/* 00B00 8089CF80 AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
