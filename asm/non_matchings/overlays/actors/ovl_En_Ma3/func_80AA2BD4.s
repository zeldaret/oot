.late_rodata
glabel jtbl_80AA3900
.word L80AA2E40
.word L80AA2E40
.word L80AA2D20
.word L80AA2E40
.word L80AA2C8C
.word L80AA2C20
.word L80AA2E40
.word L80AA2E40
.word L80AA2E40
.word L80AA2E40
glabel jtbl_80AA3928
.word L80AA2D80
.word L80AA2E3C
.word L80AA2E08
.word L80AA2E1C
.word L80AA2DB0
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2E3C
.word L80AA2DB0

.text
glabel func_80AA2BD4
/* 00134 80AA2BD4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00138 80AA2BD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0013C 80AA2BDC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00140 80AA2BE0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00144 80AA2BE4 A7AE001E */  sh      $t6, 0x001E($sp)           
/* 00148 80AA2BE8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0014C 80AA2BEC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00150 80AA2BF0 0C042F6F */  jal     func_8010BDBC              
/* 00154 80AA2BF4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00158 80AA2BF8 2C41000A */  sltiu   $at, $v0, 0x000A           
/* 0015C 80AA2BFC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00160 80AA2C00 1020008F */  beq     $at, $zero, .L80AA2E40     
/* 00164 80AA2C04 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00168 80AA2C08 00027880 */  sll     $t7, $v0,  2               
/* 0016C 80AA2C0C 3C0180AA */  lui     $at, %hi(jtbl_80AA3900)       ## $at = 80AA0000
/* 00170 80AA2C10 002F0821 */  addu    $at, $at, $t7              
/* 00174 80AA2C14 8C2F3900 */  lw      $t7, %lo(jtbl_80AA3900)($at)  
/* 00178 80AA2C18 01E00008 */  jr      $t7                        
/* 0017C 80AA2C1C 00000000 */  nop
glabel L80AA2C20
/* 00180 80AA2C20 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00184 80AA2C24 0C041AF2 */  jal     func_80106BC8              
/* 00188 80AA2C28 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0018C 80AA2C2C 10400084 */  beq     $v0, $zero, .L80AA2E40     
/* 00190 80AA2C30 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00194 80AA2C34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00198 80AA2C38 00260821 */  addu    $at, $at, $a2              
/* 0019C 80AA2C3C 24180157 */  addiu   $t8, $zero, 0x0157         ## $t8 = 00000157
/* 001A0 80AA2C40 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 001A4 80AA2C44 A4381E1A */  sh      $t8, 0x1E1A($at)           ## 00011E1A
/* 001A8 80AA2C48 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 001AC 80AA2C4C 3419FFF0 */  ori     $t9, $zero, 0xFFF0         ## $t9 = 0000FFF0
/* 001B0 80AA2C50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001B4 80AA2C54 A4591412 */  sh      $t9, 0x1412($v0)           ## 8015FA72
/* 001B8 80AA2C58 00260821 */  addu    $at, $at, $a2              
/* 001BC 80AA2C5C 24080026 */  addiu   $t0, $zero, 0x0026         ## $t0 = 00000026
/* 001C0 80AA2C60 A0281E5E */  sb      $t0, 0x1E5E($at)           ## 00011E5E
/* 001C4 80AA2C64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001C8 80AA2C68 00260821 */  addu    $at, $at, $a2              
/* 001CC 80AA2C6C 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 001D0 80AA2C70 A0291E15 */  sb      $t1, 0x1E15($at)           ## 00011E15
/* 001D4 80AA2C74 944A13FA */  lhu     $t2, 0x13FA($v0)           ## 8015FA5A
/* 001D8 80AA2C78 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 001DC 80AA2C7C A44C13CE */  sh      $t4, 0x13CE($v0)           ## 8015FA2E
/* 001E0 80AA2C80 354B0400 */  ori     $t3, $t2, 0x0400           ## $t3 = 00000400
/* 001E4 80AA2C84 1000006E */  beq     $zero, $zero, .L80AA2E40   
/* 001E8 80AA2C88 A44B13FA */  sh      $t3, 0x13FA($v0)           ## 8015FA5A
glabel L80AA2C8C
/* 001EC 80AA2C8C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 001F0 80AA2C90 0C041AF2 */  jal     func_80106BC8              
/* 001F4 80AA2C94 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 001F8 80AA2C98 10400069 */  beq     $v0, $zero, .L80AA2E40     
/* 001FC 80AA2C9C 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00200 80AA2CA0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00204 80AA2CA4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00208 80AA2CA8 944D0F0E */  lhu     $t5, 0x0F0E($v0)           ## 8015F56E
/* 0020C 80AA2CAC 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00210 80AA2CB0 01E67821 */  addu    $t7, $t7, $a2              
/* 00214 80AA2CB4 35AE0200 */  ori     $t6, $t5, 0x0200           ## $t6 = 00000200
/* 00218 80AA2CB8 A44E0F0E */  sh      $t6, 0x0F0E($v0)           ## 8015F56E
/* 0021C 80AA2CBC 91EF04BD */  lbu     $t7, 0x04BD($t7)           ## 000104BD
/* 00220 80AA2CC0 55E00060 */  bnel    $t7, $zero, .L80AA2E44     
/* 00224 80AA2CC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00228 80AA2CC8 94580ED6 */  lhu     $t8, 0x0ED6($v0)           ## 8015F536
/* 0022C 80AA2CCC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00230 80AA2CD0 33194000 */  andi    $t9, $t8, 0x4000           ## $t9 = 00000000
/* 00234 80AA2CD4 53200006 */  beql    $t9, $zero, .L80AA2CF0     
/* 00238 80AA2CD8 8C480EC4 */  lw      $t0, 0x0EC4($v0)           ## 8015F524
/* 0023C 80AA2CDC 0C042DC8 */  jal     func_8010B720              
/* 00240 80AA2CE0 24052091 */  addiu   $a1, $zero, 0x2091         ## $a1 = 00002091
/* 00244 80AA2CE4 10000057 */  beq     $zero, $zero, .L80AA2E44   
/* 00248 80AA2CE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0024C 80AA2CEC 8C480EC4 */  lw      $t0, 0x0EC4($v0)           ## 00000EC4
.L80AA2CF0:
/* 00250 80AA2CF0 24052092 */  addiu   $a1, $zero, 0x2092         ## $a1 = 00002092
/* 00254 80AA2CF4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00258 80AA2CF8 15000005 */  bne     $t0, $zero, .L80AA2D10     
/* 0025C 80AA2CFC 00000000 */  nop
/* 00260 80AA2D00 0C042DC8 */  jal     func_8010B720              
/* 00264 80AA2D04 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00268 80AA2D08 1000004E */  beq     $zero, $zero, .L80AA2E44   
/* 0026C 80AA2D0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA2D10:
/* 00270 80AA2D10 0C042DC8 */  jal     func_8010B720              
/* 00274 80AA2D14 24052090 */  addiu   $a1, $zero, 0x2090         ## $a1 = 00002090
/* 00278 80AA2D18 1000004A */  beq     $zero, $zero, .L80AA2E44   
/* 0027C 80AA2D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80AA2D20
/* 00280 80AA2D20 94A2010E */  lhu     $v0, 0x010E($a1)           ## 0000010E
/* 00284 80AA2D24 2841208F */  slti    $at, $v0, 0x208F           
/* 00288 80AA2D28 14200006 */  bne     $at, $zero, .L80AA2D44     
/* 0028C 80AA2D2C 2449E000 */  addiu   $t1, $v0, 0xE000           ## $t1 = FFFFE000
/* 00290 80AA2D30 2401208F */  addiu   $at, $zero, 0x208F         ## $at = 0000208F
/* 00294 80AA2D34 10410019 */  beq     $v0, $at, .L80AA2D9C       
/* 00298 80AA2D38 00000000 */  nop
/* 0029C 80AA2D3C 10000040 */  beq     $zero, $zero, .L80AA2E40   
/* 002A0 80AA2D40 A7A0001E */  sh      $zero, 0x001E($sp)         
.L80AA2D44:
/* 002A4 80AA2D44 28412013 */  slti    $at, $v0, 0x2013           
/* 002A8 80AA2D48 14200005 */  bne     $at, $zero, .L80AA2D60     
/* 002AC 80AA2D4C 2401208E */  addiu   $at, $zero, 0x208E         ## $at = 0000208E
/* 002B0 80AA2D50 1041001F */  beq     $v0, $at, .L80AA2DD0       
/* 002B4 80AA2D54 00000000 */  nop
/* 002B8 80AA2D58 10000039 */  beq     $zero, $zero, .L80AA2E40   
/* 002BC 80AA2D5C A7A0001E */  sh      $zero, 0x001E($sp)         
.L80AA2D60:
/* 002C0 80AA2D60 2D210013 */  sltiu   $at, $t1, 0x0013           
/* 002C4 80AA2D64 10200035 */  beq     $at, $zero, .L80AA2E3C     
/* 002C8 80AA2D68 00094880 */  sll     $t1, $t1,  2               
/* 002CC 80AA2D6C 3C0180AA */  lui     $at, %hi(jtbl_80AA3928)       ## $at = 80AA0000
/* 002D0 80AA2D70 00290821 */  addu    $at, $at, $t1              
/* 002D4 80AA2D74 8C293928 */  lw      $t1, %lo(jtbl_80AA3928)($at)  
/* 002D8 80AA2D78 01200008 */  jr      $t1                        
/* 002DC 80AA2D7C 00000000 */  nop
glabel L80AA2D80
/* 002E0 80AA2D80 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 002E4 80AA2D84 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 002E8 80AA2D88 944A0F0E */  lhu     $t2, 0x0F0E($v0)           ## 8015F56E
/* 002EC 80AA2D8C A7A0001E */  sh      $zero, 0x001E($sp)         
/* 002F0 80AA2D90 354B0100 */  ori     $t3, $t2, 0x0100           ## $t3 = 00000100
/* 002F4 80AA2D94 1000002A */  beq     $zero, $zero, .L80AA2E40   
/* 002F8 80AA2D98 A44B0F0E */  sh      $t3, 0x0F0E($v0)           ## 8015F56E
.L80AA2D9C:
/* 002FC 80AA2D9C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00300 80AA2DA0 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00304 80AA2DA4 944C0ED6 */  lhu     $t4, 0x0ED6($v0)           ## 8015F536
/* 00308 80AA2DA8 358D4000 */  ori     $t5, $t4, 0x4000           ## $t5 = 00004000
/* 0030C 80AA2DAC A44D0ED6 */  sh      $t5, 0x0ED6($v0)           ## 8015F536
glabel L80AA2DB0
/* 00310 80AA2DB0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00314 80AA2DB4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00318 80AA2DB8 844313D0 */  lh      $v1, 0x13D0($v0)           ## 8015FA30
/* 0031C 80AA2DBC 8C4E0EC4 */  lw      $t6, 0x0EC4($v0)           ## 8015F524
/* 00320 80AA2DC0 006E082A */  slt     $at, $v1, $t6              
/* 00324 80AA2DC4 10200002 */  beq     $at, $zero, .L80AA2DD0     
/* 00328 80AA2DC8 00000000 */  nop
/* 0032C 80AA2DCC AC430EC4 */  sw      $v1, 0x0EC4($v0)           ## 8015F524
.L80AA2DD0:
/* 00330 80AA2DD0 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00334 80AA2DD4 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00338 80AA2DD8 944F13FA */  lhu     $t7, 0x13FA($v0)           ## 8015FA5A
/* 0033C 80AA2DDC 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 00340 80AA2DE0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 00344 80AA2DE4 31F8FBFF */  andi    $t8, $t7, 0xFBFF           ## $t8 = 00000000
/* 00348 80AA2DE8 A45813FA */  sh      $t8, 0x13FA($v0)           ## 8015FA5A
/* 0034C 80AA2DEC 8CB90004 */  lw      $t9, 0x0004($a1)           ## 00000004
/* 00350 80AA2DF0 2409000A */  addiu   $t1, $zero, 0x000A         ## $t1 = 0000000A
/* 00354 80AA2DF4 03214024 */  and     $t0, $t9, $at              
/* 00358 80AA2DF8 ACA80004 */  sw      $t0, 0x0004($a1)           ## 00000004
/* 0035C 80AA2DFC A7A0001E */  sh      $zero, 0x001E($sp)         
/* 00360 80AA2E00 1000000F */  beq     $zero, $zero, .L80AA2E40   
/* 00364 80AA2E04 A44913CE */  sh      $t1, 0x13CE($v0)           ## 8015FA2E
glabel L80AA2E08
/* 00368 80AA2E08 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0036C 80AA2E0C 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00370 80AA2E10 944A0F0E */  lhu     $t2, 0x0F0E($v0)           ## 8015F56E
/* 00374 80AA2E14 354B0200 */  ori     $t3, $t2, 0x0200           ## $t3 = 00000200
/* 00378 80AA2E18 A44B0F0E */  sh      $t3, 0x0F0E($v0)           ## 8015F56E
glabel L80AA2E1C
/* 0037C 80AA2E1C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00380 80AA2E20 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00384 80AA2E24 944C13FA */  lhu     $t4, 0x13FA($v0)           ## 8015FA5A
/* 00388 80AA2E28 318D0400 */  andi    $t5, $t4, 0x0400           ## $t5 = 00000000
/* 0038C 80AA2E2C 55A00005 */  bnel    $t5, $zero, .L80AA2E44     
/* 00390 80AA2E30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00394 80AA2E34 10000002 */  beq     $zero, $zero, .L80AA2E40   
/* 00398 80AA2E38 A7A0001E */  sh      $zero, 0x001E($sp)         
glabel L80AA2E3C
.L80AA2E3C:
/* 0039C 80AA2E3C A7A0001E */  sh      $zero, 0x001E($sp)         
glabel L80AA2E40
.L80AA2E40:
/* 003A0 80AA2E40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AA2E44:
/* 003A4 80AA2E44 87A2001E */  lh      $v0, 0x001E($sp)           
/* 003A8 80AA2E48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003AC 80AA2E4C 03E00008 */  jr      $ra                        
/* 003B0 80AA2E50 00000000 */  nop
