.rdata
glabel D_80AC90E8
    .asciz "%s[%d]:\x1b[32mズーム中！！\x1b[m\n"
    .balign 4

glabel D_80AC9108
    .asciz "../z_en_oB1.c"
    .balign 4

.text
glabel func_80AC4978
/* 01CD8 80AC4978 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01CDC 80AC497C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01CE0 80AC4980 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01CE4 80AC4984 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01CE8 80AC4988 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 01CEC 80AC498C 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 01CF0 80AC4990 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01CF4 80AC4994 0C2B194B */  jal     func_80AC652C              
/* 01CF8 80AC4998 A3AE0027 */  sb      $t6, 0x0027($sp)           
/* 01CFC 80AC499C 14400009 */  bne     $v0, $zero, .L80AC49C4     
/* 01D00 80AC49A0 3C0480AD */  lui     $a0, %hi(D_80AC90E8)       ## $a0 = 80AD0000
/* 01D04 80AC49A4 3C0580AD */  lui     $a1, %hi(D_80AC9108)       ## $a1 = 80AD0000
/* 01D08 80AC49A8 24A59108 */  addiu   $a1, $a1, %lo(D_80AC9108)  ## $a1 = 80AC9108
/* 01D0C 80AC49AC 248490E8 */  addiu   $a0, $a0, %lo(D_80AC90E8)  ## $a0 = 80AC90E8
/* 01D10 80AC49B0 0C00084C */  jal     osSyncPrintf
              
/* 01D14 80AC49B4 24060868 */  addiu   $a2, $zero, 0x0868         ## $a2 = 00000868
/* 01D18 80AC49B8 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 01D1C 80AC49BC 1000005E */  beq     $zero, $zero, .L80AC4B38   
/* 01D20 80AC49C0 A60F01E6 */  sh      $t7, 0x01E6($s0)           ## 000001E6
.L80AC49C4:
/* 01D24 80AC49C4 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 01D28 80AC49C8 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01D2C 80AC49CC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01D30 80AC49D0 10400004 */  beq     $v0, $zero, .L80AC49E4     
/* 01D34 80AC49D4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D38 80AC49D8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01D3C 80AC49DC 10000056 */  beq     $zero, $zero, .L80AC4B38   
/* 01D40 80AC49E0 A61801E6 */  sh      $t8, 0x01E6($s0)           ## 000001E6
.L80AC49E4:
/* 01D44 80AC49E4 A2190251 */  sb      $t9, 0x0251($s0)           ## 00000251
/* 01D48 80AC49E8 AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 01D4C 80AC49EC 0C2B0DD1 */  jal     func_80AC3744              
/* 01D50 80AC49F0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01D54 80AC49F4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01D58 80AC49F8 0C042F6F */  jal     func_8010BDBC              
/* 01D5C 80AC49FC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01D60 80AC4A00 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01D64 80AC4A04 1441004C */  bne     $v0, $at, .L80AC4B38       
/* 01D68 80AC4A08 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01D6C 80AC4A0C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D70 80AC4A10 0C2B11F7 */  jal     func_80AC47DC              
/* 01D74 80AC4A14 24860014 */  addiu   $a2, $a0, 0x0014           ## $a2 = 00000014
/* 01D78 80AC4A18 54400048 */  bnel    $v0, $zero, .L80AC4B3C     
/* 01D7C 80AC4A1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01D80 80AC4A20 9209022C */  lbu     $t1, 0x022C($s0)           ## 0000022C
/* 01D84 80AC4A24 5120001C */  beql    $t1, $zero, .L80AC4A98     
/* 01D88 80AC4A28 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
/* 01D8C 80AC4A2C 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
/* 01D90 80AC4A30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D94 80AC4A34 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01D98 80AC4A38 1840000C */  blez    $v0, .L80AC4A6C            
/* 01D9C 80AC4A3C 00000000 */  nop
/* 01DA0 80AC4A40 0C2B0F94 */  jal     func_80AC3E50              
/* 01DA4 80AC4A44 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01DA8 80AC4A48 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01DAC 80AC4A4C 10410003 */  beq     $v0, $at, .L80AC4A5C       
/* 01DB0 80AC4A50 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01DB4 80AC4A54 1000002B */  beq     $zero, $zero, .L80AC4B04   
/* 01DB8 80AC4A58 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4A5C:
/* 01DBC 80AC4A5C 0C2B0EB8 */  jal     func_80AC3AE0              
/* 01DC0 80AC4A60 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01DC4 80AC4A64 10000035 */  beq     $zero, $zero, .L80AC4B3C   
/* 01DC8 80AC4A68 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4A6C:
/* 01DCC 80AC4A6C 04410025 */  bgez    $v0, .L80AC4B04            
/* 01DD0 80AC4A70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DD4 80AC4A74 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01DD8 80AC4A78 0C2B0FB6 */  jal     func_80AC3ED8              
/* 01DDC 80AC4A7C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01DE0 80AC4A80 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01DE4 80AC4A84 1041001F */  beq     $v0, $at, .L80AC4B04       
/* 01DE8 80AC4A88 00000000 */  nop
/* 01DEC 80AC4A8C 1000001D */  beq     $zero, $zero, .L80AC4B04   
/* 01DF0 80AC4A90 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
/* 01DF4 80AC4A94 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
.L80AC4A98:
/* 01DF8 80AC4A98 1840000F */  blez    $v0, .L80AC4AD8            
/* 01DFC 80AC4A9C 284101F5 */  slti    $at, $v0, 0x01F5           
/* 01E00 80AC4AA0 1420000D */  bne     $at, $zero, .L80AC4AD8     
/* 01E04 80AC4AA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E08 80AC4AA8 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01E0C 80AC4AAC 0C2B0F94 */  jal     func_80AC3E50              
/* 01E10 80AC4AB0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01E14 80AC4AB4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01E18 80AC4AB8 10410003 */  beq     $v0, $at, .L80AC4AC8       
/* 01E1C 80AC4ABC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01E20 80AC4AC0 10000010 */  beq     $zero, $zero, .L80AC4B04   
/* 01E24 80AC4AC4 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4AC8:
/* 01E28 80AC4AC8 0C2B0EB8 */  jal     func_80AC3AE0              
/* 01E2C 80AC4ACC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01E30 80AC4AD0 1000001A */  beq     $zero, $zero, .L80AC4B3C   
/* 01E34 80AC4AD4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4AD8:
/* 01E38 80AC4AD8 0441000A */  bgez    $v0, .L80AC4B04            
/* 01E3C 80AC4ADC 2841FE0C */  slti    $at, $v0, 0xFE0C           
/* 01E40 80AC4AE0 10200008 */  beq     $at, $zero, .L80AC4B04     
/* 01E44 80AC4AE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E48 80AC4AE8 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01E4C 80AC4AEC 0C2B0FB6 */  jal     func_80AC3ED8              
/* 01E50 80AC4AF0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 01E54 80AC4AF4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01E58 80AC4AF8 10410002 */  beq     $v0, $at, .L80AC4B04       
/* 01E5C 80AC4AFC 00000000 */  nop
/* 01E60 80AC4B00 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4B04:
/* 01E64 80AC4B04 0C2B1172 */  jal     func_80AC45C8              
/* 01E68 80AC4B08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E6C 80AC4B0C 92020252 */  lbu     $v0, 0x0252($s0)           ## 00000252
/* 01E70 80AC4B10 93AA0027 */  lbu     $t2, 0x0027($sp)           
/* 01E74 80AC4B14 00025880 */  sll     $t3, $v0,  2               
/* 01E78 80AC4B18 11420007 */  beq     $t2, $v0, .L80AC4B38       
/* 01E7C 80AC4B1C 020B6021 */  addu    $t4, $s0, $t3              
/* 01E80 80AC4B20 8D8D0200 */  lw      $t5, 0x0200($t4)           ## 00000200
/* 01E84 80AC4B24 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01E88 80AC4B28 0C042DC8 */  jal     func_8010B720              
/* 01E8C 80AC4B2C 95A5010E */  lhu     $a1, 0x010E($t5)           ## 0000010E
/* 01E90 80AC4B30 0C01E221 */  jal     func_80078884              
/* 01E94 80AC4B34 24044809 */  addiu   $a0, $zero, 0x4809         ## $a0 = 00004809
.L80AC4B38:
/* 01E98 80AC4B38 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4B3C:
/* 01E9C 80AC4B3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01EA0 80AC4B40 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01EA4 80AC4B44 03E00008 */  jr      $ra                        
/* 01EA8 80AC4B48 00000000 */  nop
