.late_rodata
glabel D_80BA8C84
    .float 0.4
    .balign 4

glabel D_80BA8C88
    .float 0.3
    .balign 4

glabel D_80BA8C8C
    .float 0.4
    .balign 4

glabel D_80BA8C90
    .float 0.01



.text
glabel func_80BA7200
/* 00120 80BA7200 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00124 80BA7204 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00128 80BA7208 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0012C 80BA720C 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 00130 80BA7210 28C10014 */  slti    $at, $a2, 0x0014           
/* 00134 80BA7214 10200010 */  beq     $at, $zero, .L80BA7258     
/* 00138 80BA7218 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 0013C 80BA721C 44862000 */  mtc1    $a2, $f4                   ## $f4 = 0.00
/* 00140 80BA7220 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00144 80BA7224 04C10004 */  bgez    $a2, .L80BA7238            
/* 00148 80BA7228 468021A0 */  cvt.s.w $f6, $f4                   
/* 0014C 80BA722C 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00150 80BA7230 00000000 */  nop
/* 00154 80BA7234 46083180 */  add.s   $f6, $f6, $f8              
.L80BA7238:
/* 00158 80BA7238 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0015C 80BA723C 44815000 */  mtc1    $at, $f10                  ## $f10 = 5.00
/* 00160 80BA7240 00000000 */  nop
/* 00164 80BA7244 460A3402 */  mul.s   $f16, $f6, $f10            
/* 00168 80BA7248 4600848D */  trunc.w.s $f18, $f16                 
/* 0016C 80BA724C 440F9000 */  mfc1    $t7, $f18                  
/* 00170 80BA7250 10000012 */  beq     $zero, $zero, .L80BA729C   
/* 00174 80BA7254 A08F014E */  sb      $t7, 0x014E($a0)           ## 0000014E
.L80BA7258:
/* 00178 80BA7258 28410051 */  slti    $at, $v0, 0x0051           
/* 0017C 80BA725C 1420000B */  bne     $at, $zero, .L80BA728C     
/* 00180 80BA7260 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 00184 80BA7264 0302C823 */  subu    $t9, $t8, $v0              
/* 00188 80BA7268 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0018C 80BA726C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00190 80BA7270 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00194 80BA7274 46802220 */  cvt.s.w $f8, $f4                   
/* 00198 80BA7278 46064282 */  mul.s   $f10, $f8, $f6             
/* 0019C 80BA727C 4600540D */  trunc.w.s $f16, $f10                 
/* 001A0 80BA7280 44098000 */  mfc1    $t1, $f16                  
/* 001A4 80BA7284 10000005 */  beq     $zero, $zero, .L80BA729C   
/* 001A8 80BA7288 A089014E */  sb      $t1, 0x014E($a0)           ## 0000014E
.L80BA728C:
/* 001AC 80BA728C 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 001B0 80BA7290 240A0064 */  addiu   $t2, $zero, 0x0064         ## $t2 = 00000064
/* 001B4 80BA7294 A08A014E */  sb      $t2, 0x014E($a0)           ## 0000014E
/* 001B8 80BA7298 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80BA729C:
/* 001BC 80BA729C 2841000A */  slti    $at, $v0, 0x000A           
/* 001C0 80BA72A0 14200003 */  bne     $at, $zero, .L80BA72B0     
/* 001C4 80BA72A4 2841005A */  slti    $at, $v0, 0x005A           
/* 001C8 80BA72A8 54200006 */  bnel    $at, $zero, .L80BA72C4     
/* 001CC 80BA72AC 28410042 */  slti    $at, $v0, 0x0042           
.L80BA72B0:
/* 001D0 80BA72B0 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 001D4 80BA72B4 A080014F */  sb      $zero, 0x014F($a0)         ## 0000014F
/* 001D8 80BA72B8 10000024 */  beq     $zero, $zero, .L80BA734C   
/* 001DC 80BA72BC 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 001E0 80BA72C0 28410042 */  slti    $at, $v0, 0x0042           
.L80BA72C4:
/* 001E4 80BA72C4 50200011 */  beql    $at, $zero, .L80BA730C     
/* 001E8 80BA72C8 28410042 */  slti    $at, $v0, 0x0042           
/* 001EC 80BA72CC 9082014F */  lbu     $v0, 0x014F($a0)           ## 0000014F
/* 001F0 80BA72D0 284100C9 */  slti    $at, $v0, 0x00C9           
/* 001F4 80BA72D4 10200002 */  beq     $at, $zero, .L80BA72E0     
/* 001F8 80BA72D8 244B000A */  addiu   $t3, $v0, 0x000A           ## $t3 = 0000000A
/* 001FC 80BA72DC A08B014F */  sb      $t3, 0x014F($a0)           ## 0000014F
.L80BA72E0:
/* 00200 80BA72E0 3C0180BB */  lui     $at, %hi(D_80BA8C84)       ## $at = 80BB0000
/* 00204 80BA72E4 C4208C84 */  lwc1    $f0, %lo(D_80BA8C84)($at)  
/* 00208 80BA72E8 3C0180BB */  lui     $at, %hi(D_80BA8C88)       ## $at = 80BB0000
/* 0020C 80BA72EC 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 00210 80BA72F0 E4800058 */  swc1    $f0, 0x0058($a0)           ## 00000058
/* 00214 80BA72F4 E4800050 */  swc1    $f0, 0x0050($a0)           ## 00000050
/* 00218 80BA72F8 C4328C88 */  lwc1    $f18, %lo(D_80BA8C88)($at) 
/* 0021C 80BA72FC 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 00220 80BA7300 10000012 */  beq     $zero, $zero, .L80BA734C   
/* 00224 80BA7304 E4920054 */  swc1    $f18, 0x0054($a0)          ## 00000054
/* 00228 80BA7308 28410042 */  slti    $at, $v0, 0x0042           
.L80BA730C:
/* 0022C 80BA730C 14200008 */  bne     $at, $zero, .L80BA7330     
/* 00230 80BA7310 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00234 80BA7314 00026023 */  subu    $t4, $zero, $v0            
/* 00238 80BA7318 000C6880 */  sll     $t5, $t4,  2               
/* 0023C 80BA731C 01AC6821 */  addu    $t5, $t5, $t4              
/* 00240 80BA7320 000D6840 */  sll     $t5, $t5,  1               
/* 00244 80BA7324 25AE0384 */  addiu   $t6, $t5, 0x0384           ## $t6 = 00000384
/* 00248 80BA7328 10000008 */  beq     $zero, $zero, .L80BA734C   
/* 0024C 80BA732C A08E014F */  sb      $t6, 0x014F($a0)           ## 0000014F
.L80BA7330:
/* 00250 80BA7330 3C0180BB */  lui     $at, %hi(D_80BA8C8C)       ## $at = 80BB0000
/* 00254 80BA7334 C4208C8C */  lwc1    $f0, %lo(D_80BA8C8C)($at)  
/* 00258 80BA7338 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 0025C 80BA733C A08F014F */  sb      $t7, 0x014F($a0)           ## 0000014F
/* 00260 80BA7340 E4800058 */  swc1    $f0, 0x0058($a0)           ## 00000058
/* 00264 80BA7344 E4800050 */  swc1    $f0, 0x0050($a0)           ## 00000050
/* 00268 80BA7348 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80BA734C:
/* 0026C 80BA734C 2841003D */  slti    $at, $v0, 0x003D           
/* 00270 80BA7350 54200012 */  bnel    $at, $zero, .L80BA739C     
/* 00274 80BA7354 28410064 */  slti    $at, $v0, 0x0064           
/* 00278 80BA7358 84830150 */  lh      $v1, 0x0150($a0)           ## 00000150
/* 0027C 80BA735C 3C0180BB */  lui     $at, %hi(D_80BA8C90)       ## $at = 80BB0000
/* 00280 80BA7360 C4268C90 */  lwc1    $f6, %lo(D_80BA8C90)($at)  
/* 00284 80BA7364 44832000 */  mtc1    $v1, $f4                   ## $f4 = 0.00
/* 00288 80BA7368 C4900028 */  lwc1    $f16, 0x0028($a0)          ## 00000028
/* 0028C 80BA736C 84850152 */  lh      $a1, 0x0152($a0)           ## 00000152
/* 00290 80BA7370 46802220 */  cvt.s.w $f8, $f4                   
/* 00294 80BA7374 9486014C */  lhu     $a2, 0x014C($a0)           ## 0000014C
/* 00298 80BA7378 0065C021 */  addu    $t8, $v1, $a1              
/* 0029C 80BA737C 24B9000A */  addiu   $t9, $a1, 0x000A           ## $t9 = 0000000A
/* 002A0 80BA7380 A4980150 */  sh      $t8, 0x0150($a0)           ## 00000150
/* 002A4 80BA7384 A4990152 */  sh      $t9, 0x0152($a0)           ## 00000152
/* 002A8 80BA7388 46064282 */  mul.s   $f10, $f8, $f6             
/* 002AC 80BA738C 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
/* 002B0 80BA7390 460A8480 */  add.s   $f18, $f16, $f10           
/* 002B4 80BA7394 E4920028 */  swc1    $f18, 0x0028($a0)          ## 00000028
/* 002B8 80BA7398 28410064 */  slti    $at, $v0, 0x0064           
.L80BA739C:
/* 002BC 80BA739C 10200003 */  beq     $at, $zero, .L80BA73AC     
/* 002C0 80BA73A0 24C80001 */  addiu   $t0, $a2, 0x0001           ## $t0 = 00000001
/* 002C4 80BA73A4 10000003 */  beq     $zero, $zero, .L80BA73B4   
/* 002C8 80BA73A8 A488014C */  sh      $t0, 0x014C($a0)           ## 0000014C
.L80BA73AC:
/* 002CC 80BA73AC 0C00B55C */  jal     Actor_Kill
              
/* 002D0 80BA73B0 00000000 */  nop
.L80BA73B4:
/* 002D4 80BA73B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002D8 80BA73B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002DC 80BA73BC 03E00008 */  jr      $ra                        
/* 002E0 80BA73C0 00000000 */  nop


