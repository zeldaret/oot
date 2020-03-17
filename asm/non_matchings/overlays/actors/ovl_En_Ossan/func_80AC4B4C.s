glabel func_80AC4B4C
/* 01EAC 80AC4B4C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01EB0 80AC4B50 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01EB4 80AC4B54 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01EB8 80AC4B58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01EBC 80AC4B5C AFA60038 */  sw      $a2, 0x0038($sp)           
/* 01EC0 80AC4B60 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 01EC4 80AC4B64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01EC8 80AC4B68 0C2B194B */  jal     func_80AC652C              
/* 01ECC 80AC4B6C A3AE0027 */  sb      $t6, 0x0027($sp)           
/* 01ED0 80AC4B70 14400009 */  bne     $v0, $zero, .L80AC4B98     
/* 01ED4 80AC4B74 3C0480AD */  lui     $a0, %hi(D_80AC9118)       ## $a0 = 80AD0000
/* 01ED8 80AC4B78 3C0580AD */  lui     $a1, %hi(D_80AC9138)       ## $a1 = 80AD0000
/* 01EDC 80AC4B7C 24A59138 */  addiu   $a1, $a1, %lo(D_80AC9138)  ## $a1 = 80AC9138
/* 01EE0 80AC4B80 24849118 */  addiu   $a0, $a0, %lo(D_80AC9118)  ## $a0 = 80AC9118
/* 01EE4 80AC4B84 0C00084C */  jal     osSyncPrintf
              
/* 01EE8 80AC4B88 240608C4 */  addiu   $a2, $zero, 0x08C4         ## $a2 = 000008C4
/* 01EEC 80AC4B8C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 01EF0 80AC4B90 1000005E */  beq     $zero, $zero, .L80AC4D0C   
/* 01EF4 80AC4B94 A60F01E6 */  sh      $t7, 0x01E6($s0)           ## 000001E6
.L80AC4B98:
/* 01EF8 80AC4B98 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 01EFC 80AC4B9C 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01F00 80AC4BA0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01F04 80AC4BA4 10400004 */  beq     $v0, $zero, .L80AC4BB8     
/* 01F08 80AC4BA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F0C 80AC4BAC 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01F10 80AC4BB0 10000056 */  beq     $zero, $zero, .L80AC4D0C   
/* 01F14 80AC4BB4 A61801E6 */  sh      $t8, 0x01E6($s0)           ## 000001E6
.L80AC4BB8:
/* 01F18 80AC4BB8 A2190251 */  sb      $t9, 0x0251($s0)           ## 00000251
/* 01F1C 80AC4BBC AE080288 */  sw      $t0, 0x0288($s0)           ## 00000288
/* 01F20 80AC4BC0 0C2B0DD1 */  jal     func_80AC3744              
/* 01F24 80AC4BC4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01F28 80AC4BC8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01F2C 80AC4BCC 0C042F6F */  jal     func_8010BDBC              
/* 01F30 80AC4BD0 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01F34 80AC4BD4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01F38 80AC4BD8 1441004C */  bne     $v0, $at, .L80AC4D0C       
/* 01F3C 80AC4BDC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01F40 80AC4BE0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F44 80AC4BE4 0C2B11F7 */  jal     func_80AC47DC              
/* 01F48 80AC4BE8 24860014 */  addiu   $a2, $a0, 0x0014           ## $a2 = 00000014
/* 01F4C 80AC4BEC 54400048 */  bnel    $v0, $zero, .L80AC4D10     
/* 01F50 80AC4BF0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01F54 80AC4BF4 9209022C */  lbu     $t1, 0x022C($s0)           ## 0000022C
/* 01F58 80AC4BF8 5120001C */  beql    $t1, $zero, .L80AC4C6C     
/* 01F5C 80AC4BFC 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
/* 01F60 80AC4C00 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
/* 01F64 80AC4C04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01F68 80AC4C08 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01F6C 80AC4C0C 0441000C */  bgez    $v0, .L80AC4C40            
/* 01F70 80AC4C10 00000000 */  nop
/* 01F74 80AC4C14 0C2B0F94 */  jal     func_80AC3E50              
/* 01F78 80AC4C18 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01F7C 80AC4C1C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01F80 80AC4C20 10410003 */  beq     $v0, $at, .L80AC4C30       
/* 01F84 80AC4C24 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01F88 80AC4C28 1000002B */  beq     $zero, $zero, .L80AC4CD8   
/* 01F8C 80AC4C2C A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4C30:
/* 01F90 80AC4C30 0C2B0EB8 */  jal     func_80AC3AE0              
/* 01F94 80AC4C34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01F98 80AC4C38 10000035 */  beq     $zero, $zero, .L80AC4D10   
/* 01F9C 80AC4C3C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4C40:
/* 01FA0 80AC4C40 18400025 */  blez    $v0, .L80AC4CD8            
/* 01FA4 80AC4C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FA8 80AC4C48 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01FAC 80AC4C4C 0C2B0FB6 */  jal     func_80AC3ED8              
/* 01FB0 80AC4C50 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01FB4 80AC4C54 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01FB8 80AC4C58 1041001F */  beq     $v0, $at, .L80AC4CD8       
/* 01FBC 80AC4C5C 00000000 */  nop
/* 01FC0 80AC4C60 1000001D */  beq     $zero, $zero, .L80AC4CD8   
/* 01FC4 80AC4C64 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
/* 01FC8 80AC4C68 8E020224 */  lw      $v0, 0x0224($s0)           ## 00000224
.L80AC4C6C:
/* 01FCC 80AC4C6C 0441000F */  bgez    $v0, .L80AC4CAC            
/* 01FD0 80AC4C70 2841FE0C */  slti    $at, $v0, 0xFE0C           
/* 01FD4 80AC4C74 1020000D */  beq     $at, $zero, .L80AC4CAC     
/* 01FD8 80AC4C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FDC 80AC4C7C 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 01FE0 80AC4C80 0C2B0F94 */  jal     func_80AC3E50              
/* 01FE4 80AC4C84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01FE8 80AC4C88 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01FEC 80AC4C8C 10410003 */  beq     $v0, $at, .L80AC4C9C       
/* 01FF0 80AC4C90 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01FF4 80AC4C94 10000010 */  beq     $zero, $zero, .L80AC4CD8   
/* 01FF8 80AC4C98 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4C9C:
/* 01FFC 80AC4C9C 0C2B0EB8 */  jal     func_80AC3AE0              
/* 02000 80AC4CA0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02004 80AC4CA4 1000001A */  beq     $zero, $zero, .L80AC4D10   
/* 02008 80AC4CA8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4CAC:
/* 0200C 80AC4CAC 1840000A */  blez    $v0, .L80AC4CD8            
/* 02010 80AC4CB0 284101F5 */  slti    $at, $v0, 0x01F5           
/* 02014 80AC4CB4 14200008 */  bne     $at, $zero, .L80AC4CD8     
/* 02018 80AC4CB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0201C 80AC4CBC 92050252 */  lbu     $a1, 0x0252($s0)           ## 00000252
/* 02020 80AC4CC0 0C2B0FB6 */  jal     func_80AC3ED8              
/* 02024 80AC4CC4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 02028 80AC4CC8 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 0202C 80AC4CCC 10410002 */  beq     $v0, $at, .L80AC4CD8       
/* 02030 80AC4CD0 00000000 */  nop
/* 02034 80AC4CD4 A2020252 */  sb      $v0, 0x0252($s0)           ## 00000252
.L80AC4CD8:
/* 02038 80AC4CD8 0C2B1172 */  jal     func_80AC45C8              
/* 0203C 80AC4CDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02040 80AC4CE0 92020252 */  lbu     $v0, 0x0252($s0)           ## 00000252
/* 02044 80AC4CE4 93AA0027 */  lbu     $t2, 0x0027($sp)           
/* 02048 80AC4CE8 00025880 */  sll     $t3, $v0,  2               
/* 0204C 80AC4CEC 11420007 */  beq     $t2, $v0, .L80AC4D0C       
/* 02050 80AC4CF0 020B6021 */  addu    $t4, $s0, $t3              
/* 02054 80AC4CF4 8D8D0200 */  lw      $t5, 0x0200($t4)           ## 00000200
/* 02058 80AC4CF8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0205C 80AC4CFC 0C042DC8 */  jal     func_8010B720              
/* 02060 80AC4D00 95A5010E */  lhu     $a1, 0x010E($t5)           ## 0000010E
/* 02064 80AC4D04 0C01E221 */  jal     func_80078884              
/* 02068 80AC4D08 24044809 */  addiu   $a0, $zero, 0x4809         ## $a0 = 00004809
.L80AC4D0C:
/* 0206C 80AC4D0C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4D10:
/* 02070 80AC4D10 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02074 80AC4D14 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02078 80AC4D18 03E00008 */  jr      $ra                        
/* 0207C 80AC4D1C 00000000 */  nop


