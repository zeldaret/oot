.late_rodata
glabel D_8089EC50
 .word 0x43DE8000
glabel D_8089EC54
 .word 0x43DE8000
glabel D_8089EC58
 .word 0x443F4000
glabel D_8089EC5C
 .word 0xC450C000

.text
glabel func_8089E198
/* 00568 8089E198 8CAE07C0 */  lw      $t6, 0x07C0($a1)           ## 000007C0
/* 0056C 8089E19C 3C01C170 */  lui     $at, 0xC170                ## $at = C1700000
/* 00570 8089E1A0 44811000 */  mtc1    $at, $f2                   ## $f2 = -15.00
/* 00574 8089E1A4 8DCF0028 */  lw      $t7, 0x0028($t6)           ## 00000028
/* 00578 8089E1A8 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 0057C 8089E1AC 3C01808A */  lui     $at, %hi(D_8089EC54)       ## $at = 808A0000
/* 00580 8089E1B0 85F80022 */  lh      $t8, 0x0022($t7)           ## 00000022
/* 00584 8089E1B4 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 00588 8089E1B8 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0058C 8089E1BC 00000000 */  nop
/* 00590 8089E1C0 46802020 */  cvt.s.w $f0, $f4                   
/* 00594 8089E1C4 4602003C */  c.lt.s  $f0, $f2                   
/* 00598 8089E1C8 00000000 */  nop
/* 0059C 8089E1CC 45000007 */  bc1f    .L8089E1EC                 
/* 005A0 8089E1D0 00000000 */  nop
/* 005A4 8089E1D4 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 005A8 8089E1D8 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 005AC 8089E1DC 3C01808A */  lui     $at, %hi(D_8089EC50)       ## $at = 808A0000
/* 005B0 8089E1E0 AC82016C */  sw      $v0, 0x016C($a0)           ## 0000016C
/* 005B4 8089E1E4 10000019 */  beq     $zero, $zero, .L8089E24C   
/* 005B8 8089E1E8 C42CEC50 */  lwc1    $f12, %lo(D_8089EC50)($at) 
.L8089E1EC:
/* 005BC 8089E1EC C42CEC54 */  lwc1    $f12, %lo(D_8089EC54)($at) 
/* 005C0 8089E1F0 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 005C4 8089E1F4 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 005C8 8089E1F8 460C003C */  c.lt.s  $f0, $f12                  
/* 005CC 8089E1FC 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 005D0 8089E200 45020011 */  bc1fl   .L8089E248                 
/* 005D4 8089E204 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 005D8 8089E208 3C0142BE */  lui     $at, 0x42BE                ## $at = 42BE0000
/* 005DC 8089E20C 44817000 */  mtc1    $at, $f14                  ## $f14 = 95.00
/* 005E0 8089E210 46020181 */  sub.s   $f6, $f0, $f2              
/* 005E4 8089E214 3C0143E6 */  lui     $at, 0x43E6                ## $at = 43E60000
/* 005E8 8089E218 44814000 */  mtc1    $at, $f8                   ## $f8 = 460.00
/* 005EC 8089E21C 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 005F0 8089E220 240300A0 */  addiu   $v1, $zero, 0x00A0         ## $v1 = 000000A0
/* 005F4 8089E224 46083283 */  div.s   $f10, $f6, $f8             
/* 005F8 8089E228 460E5402 */  mul.s   $f16, $f10, $f14           
/* 005FC 8089E22C 4600848D */  trunc.w.s $f18, $f16                 
/* 00600 8089E230 44089000 */  mfc1    $t0, $f18                  
/* 00604 8089E234 00000000 */  nop
/* 00608 8089E238 00484823 */  subu    $t1, $v0, $t0              
/* 0060C 8089E23C 10000003 */  beq     $zero, $zero, .L8089E24C   
/* 00610 8089E240 AC89016C */  sw      $t1, 0x016C($a0)           ## 0000016C
/* 00614 8089E244 44817000 */  mtc1    $at, $f14                  ## $f14 = 460.00
.L8089E248:
/* 00618 8089E248 AC83016C */  sw      $v1, 0x016C($a0)           ## 0000016C
.L8089E24C:
/* 0061C 8089E24C 460C003C */  c.lt.s  $f0, $f12                  
/* 00620 8089E250 3C01808A */  lui     $at, %hi(D_8089EC58)       ## $at = 808A0000
/* 00624 8089E254 45000003 */  bc1f    .L8089E264                 
/* 00628 8089E258 00000000 */  nop
/* 0062C 8089E25C 10000013 */  beq     $zero, $zero, .L8089E2AC   
/* 00630 8089E260 AC820170 */  sw      $v0, 0x0170($a0)           ## 00000170
.L8089E264:
/* 00634 8089E264 C424EC58 */  lwc1    $f4, %lo(D_8089EC58)($at)  
/* 00638 8089E268 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 0063C 8089E26C 4604003C */  c.lt.s  $f0, $f4                   
/* 00640 8089E270 00000000 */  nop
/* 00644 8089E274 4502000D */  bc1fl   .L8089E2AC                 
/* 00648 8089E278 AC830170 */  sw      $v1, 0x0170($a0)           ## 00000170
/* 0064C 8089E27C 460C0181 */  sub.s   $f6, $f0, $f12             
/* 00650 8089E280 44814000 */  mtc1    $at, $f8                   ## $f8 = 320.00
/* 00654 8089E284 00000000 */  nop
/* 00658 8089E288 46083283 */  div.s   $f10, $f6, $f8             
/* 0065C 8089E28C 460E5402 */  mul.s   $f16, $f10, $f14           
/* 00660 8089E290 4600848D */  trunc.w.s $f18, $f16                 
/* 00664 8089E294 440B9000 */  mfc1    $t3, $f18                  
/* 00668 8089E298 00000000 */  nop
/* 0066C 8089E29C 004B6023 */  subu    $t4, $v0, $t3              
/* 00670 8089E2A0 10000002 */  beq     $zero, $zero, .L8089E2AC   
/* 00674 8089E2A4 AC8C0170 */  sw      $t4, 0x0170($a0)           ## 00000170
/* 00678 8089E2A8 AC830170 */  sw      $v1, 0x0170($a0)           ## 00000170
.L8089E2AC:
/* 0067C 8089E2AC 3C01808A */  lui     $at, %hi(D_8089EC5C)       ## $at = 808A0000
/* 00680 8089E2B0 C42CEC5C */  lwc1    $f12, %lo(D_8089EC5C)($at) 
/* 00684 8089E2B4 460C003C */  c.lt.s  $f0, $f12                  
/* 00688 8089E2B8 00000000 */  nop
/* 0068C 8089E2BC 45020004 */  bc1fl   .L8089E2D0                 
/* 00690 8089E2C0 4602003C */  c.lt.s  $f0, $f2                   
/* 00694 8089E2C4 10000011 */  beq     $zero, $zero, .L8089E30C   
/* 00698 8089E2C8 AC820174 */  sw      $v0, 0x0174($a0)           ## 00000174
/* 0069C 8089E2CC 4602003C */  c.lt.s  $f0, $f2                   
.L8089E2D0:
/* 006A0 8089E2D0 3C01444D */  lui     $at, 0x444D                ## $at = 444D0000
/* 006A4 8089E2D4 4502000D */  bc1fl   .L8089E30C                 
/* 006A8 8089E2D8 AC830174 */  sw      $v1, 0x0174($a0)           ## 00000174
/* 006AC 8089E2DC 460C0101 */  sub.s   $f4, $f0, $f12             
/* 006B0 8089E2E0 44813000 */  mtc1    $at, $f6                   ## $f6 = 820.00
/* 006B4 8089E2E4 00000000 */  nop
/* 006B8 8089E2E8 46062203 */  div.s   $f8, $f4, $f6              
/* 006BC 8089E2EC 460E4282 */  mul.s   $f10, $f8, $f14            
/* 006C0 8089E2F0 4600540D */  trunc.w.s $f16, $f10                 
/* 006C4 8089E2F4 440E8000 */  mfc1    $t6, $f16                  
/* 006C8 8089E2F8 00000000 */  nop
/* 006CC 8089E2FC 004E7823 */  subu    $t7, $v0, $t6              
/* 006D0 8089E300 10000002 */  beq     $zero, $zero, .L8089E30C   
/* 006D4 8089E304 AC8F0174 */  sw      $t7, 0x0174($a0)           ## 00000174
/* 006D8 8089E308 AC830174 */  sw      $v1, 0x0174($a0)           ## 00000174
.L8089E30C:
/* 006DC 8089E30C 8C980174 */  lw      $t8, 0x0174($a0)           ## 00000174
/* 006E0 8089E310 03E00008 */  jr      $ra                        
/* 006E4 8089E314 AC980178 */  sw      $t8, 0x0178($a0)           ## 00000178


