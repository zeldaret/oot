glabel BgHidanKowarerukabe_Draw
/* 00CDC 8088ACFC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00CE0 8088AD00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00CE4 8088AD04 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CE8 8088AD08 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00CEC 8088AD0C AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00CF0 8088AD10 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00CF4 8088AD14 3C068089 */  lui     $a2, %hi(D_8088AF30)       ## $a2 = 80890000
/* 00CF8 8088AD18 24C6AF30 */  addiu   $a2, $a2, %lo(D_8088AF30)  ## $a2 = 8088AF30
/* 00CFC 8088AD1C 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00D00 8088AD20 24070235 */  addiu   $a3, $zero, 0x0235         ## $a3 = 00000235
/* 00D04 8088AD24 0C031AB1 */  jal     func_800C6AC4              
/* 00D08 8088AD28 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00D0C 8088AD2C 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00D10 8088AD30 0C024F46 */  jal     func_80093D18              
/* 00D14 8088AD34 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00D18 8088AD38 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00D1C 8088AD3C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00D20 8088AD40 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00D24 8088AD44 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00D28 8088AD48 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00D2C 8088AD4C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00D30 8088AD50 8FA8004C */  lw      $t0, 0x004C($sp)           
/* 00D34 8088AD54 3C058089 */  lui     $a1, %hi(D_8088AF50)       ## $a1 = 80890000
/* 00D38 8088AD58 24A5AF50 */  addiu   $a1, $a1, %lo(D_8088AF50)  ## $a1 = 8088AF50
/* 00D3C 8088AD5C 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00D40 8088AD60 24060238 */  addiu   $a2, $zero, 0x0238         ## $a2 = 00000238
/* 00D44 8088AD64 0C0346A2 */  jal     Matrix_NewMtx              
/* 00D48 8088AD68 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 00D4C 8088AD6C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 00D50 8088AD70 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 00D54 8088AD74 3C0E8089 */  lui     $t6, %hi(D_8088AE10)       ## $t6 = 80890000
/* 00D58 8088AD78 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00D5C 8088AD7C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00D60 8088AD80 8FA60048 */  lw      $a2, 0x0048($sp)           
/* 00D64 8088AD84 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00D68 8088AD88 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00D6C 8088AD8C AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 00D70 8088AD90 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00D74 8088AD94 84CB001C */  lh      $t3, 0x001C($a2)           ## 0000001C
/* 00D78 8088AD98 24C50164 */  addiu   $a1, $a2, 0x0164           ## $a1 = 00000164
/* 00D7C 8088AD9C 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 00D80 8088ADA0 000C6880 */  sll     $t5, $t4,  2               
/* 00D84 8088ADA4 01CD7021 */  addu    $t6, $t6, $t5              
/* 00D88 8088ADA8 8DCEAE10 */  lw      $t6, %lo(D_8088AE10)($t6)  
/* 00D8C 8088ADAC 0C018A29 */  jal     func_800628A4              
/* 00D90 8088ADB0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 00D94 8088ADB4 8FAF004C */  lw      $t7, 0x004C($sp)           
/* 00D98 8088ADB8 3C068089 */  lui     $a2, %hi(D_8088AF70)       ## $a2 = 80890000
/* 00D9C 8088ADBC 24C6AF70 */  addiu   $a2, $a2, %lo(D_8088AF70)  ## $a2 = 8088AF70
/* 00DA0 8088ADC0 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00DA4 8088ADC4 2407023D */  addiu   $a3, $zero, 0x023D         ## $a3 = 0000023D
/* 00DA8 8088ADC8 0C031AD5 */  jal     func_800C6B54              
/* 00DAC 8088ADCC 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 00DB0 8088ADD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DB4 8088ADD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DB8 8088ADD8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00DBC 8088ADDC 03E00008 */  jr      $ra                        
/* 00DC0 8088ADE0 00000000 */  nop
/* 00DC4 8088ADE4 00000000 */  nop
/* 00DC8 8088ADE8 00000000 */  nop
/* 00DCC 8088ADEC 00000000 */  nop

