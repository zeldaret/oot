glabel func_80A391D8
/* 03EC8 80A391D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03ECC 80A391DC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03ED0 80A391E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03ED4 80A391E4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03ED8 80A391E8 8C8202EC */  lw      $v0, 0x02EC($a0)           ## 000002EC
/* 03EDC 80A391EC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03EE0 80A391F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03EE4 80A391F4 54410015 */  bnel    $v0, $at, .L80A3924C       
/* 03EE8 80A391F8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 03EEC 80A391FC 848302FA */  lh      $v1, 0x02FA($a0)           ## 000002FA
/* 03EF0 80A39200 10600011 */  beq     $v1, $zero, .L80A39248     
/* 03EF4 80A39204 00032140 */  sll     $a0, $v1,  5               
/* 03EF8 80A39208 00832021 */  addu    $a0, $a0, $v1              
/* 03EFC 80A3920C 00042080 */  sll     $a0, $a0,  2               
/* 03F00 80A39210 00832023 */  subu    $a0, $a0, $v1              
/* 03F04 80A39214 00042080 */  sll     $a0, $a0,  2               
/* 03F08 80A39218 00832021 */  addu    $a0, $a0, $v1              
/* 03F0C 80A3921C 000420C0 */  sll     $a0, $a0,  3               
/* 03F10 80A39220 00042400 */  sll     $a0, $a0, 16               
/* 03F14 80A39224 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03F18 80A39228 00042403 */  sra     $a0, $a0, 16               
/* 03F1C 80A3922C 3C0180A4 */  lui     $at, %hi(D_80A3A26C)       ## $at = 80A40000
/* 03F20 80A39230 C424A26C */  lwc1    $f4, %lo(D_80A3A26C)($at)  
/* 03F24 80A39234 46040182 */  mul.s   $f6, $f0, $f4              
/* 03F28 80A39238 4600320D */  trunc.w.s $f8, $f6                   
/* 03F2C 80A3923C 440F4000 */  mfc1    $t7, $f8                   
/* 03F30 80A39240 10000020 */  beq     $zero, $zero, .L80A392C4   
/* 03F34 80A39244 A60F04DE */  sh      $t7, 0x04DE($s0)           ## 000004DE
.L80A39248:
/* 03F38 80A39248 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
.L80A3924C:
/* 03F3C 80A3924C 1041001D */  beq     $v0, $at, .L80A392C4       
/* 03F40 80A39250 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 03F44 80A39254 1041001A */  beq     $v0, $at, .L80A392C0       
/* 03F48 80A39258 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 03F4C 80A3925C 10410018 */  beq     $v0, $at, .L80A392C0       
/* 03F50 80A39260 260404DE */  addiu   $a0, $s0, 0x04DE           ## $a0 = 000004DE
/* 03F54 80A39264 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 03F58 80A39268 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 03F5C 80A3926C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 03F60 80A39270 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03F64 80A39274 03192823 */  subu    $a1, $t8, $t9              
/* 03F68 80A39278 00052C00 */  sll     $a1, $a1, 16               
/* 03F6C 80A3927C 00052C03 */  sra     $a1, $a1, 16               
/* 03F70 80A39280 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 03F74 80A39284 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 03F78 80A39288 860204DE */  lh      $v0, 0x04DE($s0)           ## 000004DE
/* 03F7C 80A3928C 2408DA91 */  addiu   $t0, $zero, 0xDA91         ## $t0 = FFFFDA91
/* 03F80 80A39290 2841DA91 */  slti    $at, $v0, 0xDA91           
/* 03F84 80A39294 50200004 */  beql    $at, $zero, .L80A392A8     
/* 03F88 80A39298 28412570 */  slti    $at, $v0, 0x2570           
/* 03F8C 80A3929C 10000009 */  beq     $zero, $zero, .L80A392C4   
/* 03F90 80A392A0 A60804DE */  sh      $t0, 0x04DE($s0)           ## 000004DE
/* 03F94 80A392A4 28412570 */  slti    $at, $v0, 0x2570           
.L80A392A8:
/* 03F98 80A392A8 14200003 */  bne     $at, $zero, .L80A392B8     
/* 03F9C 80A392AC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 03FA0 80A392B0 10000001 */  beq     $zero, $zero, .L80A392B8   
/* 03FA4 80A392B4 2403256F */  addiu   $v1, $zero, 0x256F         ## $v1 = 0000256F
.L80A392B8:
/* 03FA8 80A392B8 10000002 */  beq     $zero, $zero, .L80A392C4   
/* 03FAC 80A392BC A60304DE */  sh      $v1, 0x04DE($s0)           ## 000004DE
.L80A392C0:
/* 03FB0 80A392C0 A60004DE */  sh      $zero, 0x04DE($s0)         ## 000004DE
.L80A392C4:
/* 03FB4 80A392C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03FB8 80A392C8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03FBC 80A392CC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03FC0 80A392D0 03E00008 */  jr      $ra                        
/* 03FC4 80A392D4 00000000 */  nop


