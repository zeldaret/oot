.rdata
glabel D_8087CD4C
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD60
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD74
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD88
    .asciz "../z_bg_haka_gate.c"
    .balign 4
	
.late_rodata
glabel D_8087CDAC
    .float 9.58738E-5
 
glabel D_8087CDB0
    .float 9.58738E-5
 
.text
glabel BgHakaGate_Draw
/* 00C80 8087CA70 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 00C84 8087CA74 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C88 8087CA78 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C8C 8087CA7C AFA40090 */  sw      $a0, 0x0090($sp)           
/* 00C90 8087CA80 AFA50094 */  sw      $a1, 0x0094($sp)           
/* 00C94 8087CA84 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 00C98 8087CA88 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 00C9C 8087CA8C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CA0 8087CA90 31F80080 */  andi    $t8, $t7, 0x0080           ## $t8 = 00000000
/* 00CA4 8087CA94 17010006 */  bne     $t8, $at, .L8087CAB0       
/* 00CA8 8087CA98 8FB90094 */  lw      $t9, 0x0094($sp)           
/* 00CAC 8087CA9C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00CB0 8087CAA0 0C00D4C9 */  jal     Gfx_DrawDListXlu
              
/* 00CB4 8087CAA4 24A5F1B0 */  addiu   $a1, $a1, 0xF1B0           ## $a1 = 0600F1B0
/* 00CB8 8087CAA8 1000007C */  beq     $zero, $zero, .L8087CC9C   
/* 00CBC 8087CAAC 8FA40090 */  lw      $a0, 0x0090($sp)           
.L8087CAB0:
/* 00CC0 8087CAB0 0C024F46 */  jal     func_80093D18              
/* 00CC4 8087CAB4 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 00CC8 8087CAB8 8FA80090 */  lw      $t0, 0x0090($sp)           
/* 00CCC 8087CABC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CD0 8087CAC0 8FA90094 */  lw      $t1, 0x0094($sp)           
/* 00CD4 8087CAC4 8502001C */  lh      $v0, 0x001C($t0)           ## 0000001C
/* 00CD8 8087CAC8 8FA40094 */  lw      $a0, 0x0094($sp)           
/* 00CDC 8087CACC 3C058088 */  lui     $a1, %hi(D_8087CD00)       ## $a1 = 80880000
/* 00CE0 8087CAD0 1441006E */  bne     $v0, $at, .L8087CC8C       
/* 00CE4 8087CAD4 00024080 */  sll     $t0, $v0,  2               
/* 00CE8 8087CAD8 8D250000 */  lw      $a1, 0x0000($t1)           ## 00000000
/* 00CEC 8087CADC 3C068088 */  lui     $a2, %hi(D_8087CD4C)       ## $a2 = 80880000
/* 00CF0 8087CAE0 24C6CD4C */  addiu   $a2, $a2, %lo(D_8087CD4C)  ## $a2 = 8087CD4C
/* 00CF4 8087CAE4 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFA8
/* 00CF8 8087CAE8 2407030D */  addiu   $a3, $zero, 0x030D         ## $a3 = 0000030D
/* 00CFC 8087CAEC 0C031AB1 */  jal     Graph_OpenDisps              
/* 00D00 8087CAF0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 80880000
/* 00D04 8087CAF4 0C034236 */  jal     Matrix_Get              
/* 00D08 8087CAF8 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFBC
/* 00D0C 8087CAFC 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00D10 8087CB00 3C06C4FA */  lui     $a2, 0xC4FA                ## $a2 = C4FA0000
/* 00D14 8087CB04 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D18 8087CB08 0C034261 */  jal     Matrix_Translate              
/* 00D1C 8087CB0C 46006386 */  mov.s   $f14, $f12                 
/* 00D20 8087CB10 8FAA0090 */  lw      $t2, 0x0090($sp)           
/* 00D24 8087CB14 3C018088 */  lui     $at, %hi(D_8087CDAC)       ## $at = 80880000
/* 00D28 8087CB18 C428CDAC */  lwc1    $f8, %lo(D_8087CDAC)($at)  
/* 00D2C 8087CB1C 854B016C */  lh      $t3, 0x016C($t2)           ## 0000016C
/* 00D30 8087CB20 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00D34 8087CB24 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00D38 8087CB28 00000000 */  nop
/* 00D3C 8087CB2C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D40 8087CB30 46083302 */  mul.s   $f12, $f6, $f8             
/* 00D44 8087CB34 0C0342DC */  jal     Matrix_RotateX              
/* 00D48 8087CB38 00000000 */  nop
/* 00D4C 8087CB3C 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00D50 8087CB40 3C0644FA */  lui     $a2, 0x44FA                ## $a2 = 44FA0000
/* 00D54 8087CB44 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00D58 8087CB48 0C034261 */  jal     Matrix_Translate              
/* 00D5C 8087CB4C 46006386 */  mov.s   $f14, $f12                 
/* 00D60 8087CB50 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 808802C0
/* 00D64 8087CB54 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 00D68 8087CB58 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 00D6C 8087CB5C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00D70 8087CB60 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 808802C0
/* 00D74 8087CB64 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00D78 8087CB68 8FAE0094 */  lw      $t6, 0x0094($sp)           
/* 00D7C 8087CB6C 3C058088 */  lui     $a1, %hi(D_8087CD60)       ## $a1 = 80880000
/* 00D80 8087CB70 24A5CD60 */  addiu   $a1, $a1, %lo(D_8087CD60)  ## $a1 = 8087CD60
/* 00D84 8087CB74 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 00D88 8087CB78 24060314 */  addiu   $a2, $zero, 0x0314         ## $a2 = 00000314
/* 00D8C 8087CB7C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D90 8087CB80 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 00D94 8087CB84 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 00D98 8087CB88 3C190601 */  lui     $t9, 0x0601                ## $t9 = 06010000
/* 00D9C 8087CB8C 27390A10 */  addiu   $t9, $t9, 0x0A10           ## $t9 = 06010A10
/* 00DA0 8087CB90 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00DA4 8087CB94 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 808802C0
/* 00DA8 8087CB98 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00DAC 8087CB9C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFBC
/* 00DB0 8087CBA0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00DB4 8087CBA4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 808802C0
/* 00DB8 8087CBA8 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00DBC 8087CBAC 0C03423F */  jal     Matrix_Put              
/* 00DC0 8087CBB0 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00DC4 8087CBB4 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00DC8 8087CBB8 3C0644FA */  lui     $a2, 0x44FA                ## $a2 = 44FA0000
/* 00DCC 8087CBBC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00DD0 8087CBC0 0C034261 */  jal     Matrix_Translate              
/* 00DD4 8087CBC4 46006386 */  mov.s   $f14, $f12                 
/* 00DD8 8087CBC8 8FA80090 */  lw      $t0, 0x0090($sp)           
/* 00DDC 8087CBCC 3C018088 */  lui     $at, %hi(D_8087CDB0)       ## $at = 80880000
/* 00DE0 8087CBD0 C432CDB0 */  lwc1    $f18, %lo(D_8087CDB0)($at) 
/* 00DE4 8087CBD4 8509016C */  lh      $t1, 0x016C($t0)           ## 0000016C
/* 00DE8 8087CBD8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00DEC 8087CBDC 00095023 */  subu    $t2, $zero, $t1            
/* 00DF0 8087CBE0 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 00DF4 8087CBE4 00000000 */  nop
/* 00DF8 8087CBE8 46805420 */  cvt.s.w $f16, $f10                 
/* 00DFC 8087CBEC 46128302 */  mul.s   $f12, $f16, $f18           
/* 00E00 8087CBF0 0C0342DC */  jal     Matrix_RotateX              
/* 00E04 8087CBF4 00000000 */  nop
/* 00E08 8087CBF8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00E0C 8087CBFC 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 00E10 8087CC00 3C06C4FA */  lui     $a2, 0xC4FA                ## $a2 = C4FA0000
/* 00E14 8087CC04 0C034261 */  jal     Matrix_Translate              
/* 00E18 8087CC08 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00E1C 8087CC0C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 808802C0
/* 00E20 8087CC10 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 00E24 8087CC14 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 00E28 8087CC18 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00E2C 8087CC1C AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 808802C0
/* 00E30 8087CC20 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00E34 8087CC24 8FAD0094 */  lw      $t5, 0x0094($sp)           
/* 00E38 8087CC28 3C058088 */  lui     $a1, %hi(D_8087CD74)       ## $a1 = 80880000
/* 00E3C 8087CC2C 24A5CD74 */  addiu   $a1, $a1, %lo(D_8087CD74)  ## $a1 = 8087CD74
/* 00E40 8087CC30 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00E44 8087CC34 2406031C */  addiu   $a2, $zero, 0x031C         ## $a2 = 0000031C
/* 00E48 8087CC38 0C0346A2 */  jal     Matrix_NewMtx              
/* 00E4C 8087CC3C AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00E50 8087CC40 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00E54 8087CC44 3C180601 */  lui     $t8, 0x0601                ## $t8 = 06010000
/* 00E58 8087CC48 27180C10 */  addiu   $t8, $t8, 0x0C10           ## $t8 = 06010C10
/* 00E5C 8087CC4C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00E60 8087CC50 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 808802C0
/* 00E64 8087CC54 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 00E68 8087CC58 3C068088 */  lui     $a2, %hi(D_8087CD88)       ## $a2 = 80880000
/* 00E6C 8087CC5C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00E70 8087CC60 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 808802C0
/* 00E74 8087CC64 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 00E78 8087CC68 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00E7C 8087CC6C 8FB90094 */  lw      $t9, 0x0094($sp)           
/* 00E80 8087CC70 24C6CD88 */  addiu   $a2, $a2, %lo(D_8087CD88)  ## $a2 = 8087CD88
/* 00E84 8087CC74 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFA8
/* 00E88 8087CC78 24070320 */  addiu   $a3, $zero, 0x0320         ## $a3 = 00000320
/* 00E8C 8087CC7C 0C031AD5 */  jal     Graph_CloseDisps              
/* 00E90 8087CC80 8F250000 */  lw      $a1, 0x0000($t9)           ## 00000000
/* 00E94 8087CC84 10000005 */  beq     $zero, $zero, .L8087CC9C   
/* 00E98 8087CC88 8FA40090 */  lw      $a0, 0x0090($sp)           
.L8087CC8C:
/* 00E9C 8087CC8C 00A82821 */  addu    $a1, $a1, $t0              
/* 00EA0 8087CC90 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00EA4 8087CC94 8CA5CD00 */  lw      $a1, %lo(D_8087CD00)($a1)  
/* 00EA8 8087CC98 8FA40090 */  lw      $a0, 0x0090($sp)           
.L8087CC9C:
/* 00EAC 8087CC9C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00EB0 8087CCA0 8489001C */  lh      $t1, 0x001C($a0)           ## 0000001C
/* 00EB4 8087CCA4 55210004 */  bnel    $t1, $at, .L8087CCB8       
/* 00EB8 8087CCA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EBC 8087CCAC 0C21F217 */  jal     func_8087C85C              
/* 00EC0 8087CCB0 8FA50094 */  lw      $a1, 0x0094($sp)           
/* 00EC4 8087CCB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087CCB8:
/* 00EC8 8087CCB8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00ECC 8087CCBC 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 00ED0 8087CCC0 03E00008 */  jr      $ra                        
/* 00ED4 8087CCC4 00000000 */  nop
/* 00ED8 8087CCC8 00000000 */  nop
/* 00EDC 8087CCCC 00000000 */  nop
