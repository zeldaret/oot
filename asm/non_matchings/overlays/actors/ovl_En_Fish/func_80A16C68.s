glabel func_80A16C68
/* 019E8 80A16C68 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019EC 80A16C6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019F0 80A16C70 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 019F4 80A16C74 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 019F8 80A16C78 84820248 */  lh      $v0, 0x0248($a0)           ## 00000248
/* 019FC 80A16C7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A00 80A16C80 18400002 */  blez    $v0, .L80A16C8C            
/* 01A04 80A16C84 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01A08 80A16C88 A48E0248 */  sh      $t6, 0x0248($a0)           ## 00000248
.L80A16C8C:
/* 01A0C 80A16C8C 860F024C */  lh      $t7, 0x024C($s0)           ## 0000024C
/* 01A10 80A16C90 8619024E */  lh      $t9, 0x024E($s0)           ## 0000024E
/* 01A14 80A16C94 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 01A18 80A16C98 25F80111 */  addiu   $t8, $t7, 0x0111           ## $t8 = 00000111
/* 01A1C 80A16C9C 27280500 */  addiu   $t0, $t9, 0x0500           ## $t0 = 00000500
/* 01A20 80A16CA0 A618024C */  sh      $t8, 0x024C($s0)           ## 0000024C
/* 01A24 80A16CA4 10400007 */  beq     $v0, $zero, .L80A16CC4     
/* 01A28 80A16CA8 A608024E */  sh      $t0, 0x024E($s0)           ## 0000024E
/* 01A2C 80A16CAC 8C490130 */  lw      $t1, 0x0130($v0)           ## 00000130
/* 01A30 80A16CB0 55200005 */  bnel    $t1, $zero, .L80A16CC8     
/* 01A34 80A16CB4 8E020244 */  lw      $v0, 0x0244($s0)           ## 00000244
/* 01A38 80A16CB8 52020003 */  beql    $s0, $v0, .L80A16CC8       
/* 01A3C 80A16CBC 8E020244 */  lw      $v0, 0x0244($s0)           ## 00000244
/* 01A40 80A16CC0 AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
.L80A16CC4:
/* 01A44 80A16CC4 8E020244 */  lw      $v0, 0x0244($s0)           ## 00000244
.L80A16CC8:
/* 01A48 80A16CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A4C 80A16CCC 10400006 */  beq     $v0, $zero, .L80A16CE8     
/* 01A50 80A16CD0 00000000 */  nop
/* 01A54 80A16CD4 0040F809 */  jalr    $ra, $v0                   
/* 01A58 80A16CD8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01A5C 80A16CDC 8E0A0130 */  lw      $t2, 0x0130($s0)           ## 00000130
/* 01A60 80A16CE0 5140003E */  beql    $t2, $zero, .L80A16DDC     
/* 01A64 80A16CE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16CE8:
/* 01A68 80A16CE8 0C00B638 */  jal     Actor_MoveForward
              
/* 01A6C 80A16CEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A70 80A16CF0 8E020250 */  lw      $v0, 0x0250($s0)           ## 00000250
/* 01A74 80A16CF4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01A78 80A16CF8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A7C 80A16CFC 10400006 */  beq     $v0, $zero, .L80A16D18     
/* 01A80 80A16D00 3C06418C */  lui     $a2, 0x418C                ## $a2 = 418C0000
/* 01A84 80A16D04 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01A88 80A16D08 3C074080 */  lui     $a3, 0x4080                ## $a3 = 40800000
/* 01A8C 80A16D0C AFA20014 */  sw      $v0, 0x0014($sp)           
/* 01A90 80A16D10 0C00B92D */  jal     func_8002E4B4              
/* 01A94 80A16D14 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A16D18:
/* 01A98 80A16D18 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 01A9C 80A16D1C 44814000 */  mtc1    $at, $f8                   ## $f8 = 70.00
/* 01AA0 80A16D20 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 01AA4 80A16D24 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01AA8 80A16D28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01AAC 80A16D2C 4608303C */  c.lt.s  $f6, $f8                   
/* 01AB0 80A16D30 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01AB4 80A16D34 00812821 */  addu    $a1, $a0, $at              
/* 01AB8 80A16D38 45000003 */  bc1f    .L80A16D48                 
/* 01ABC 80A16D3C 00000000 */  nop
/* 01AC0 80A16D40 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01AC4 80A16D44 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
.L80A16D48:
/* 01AC8 80A16D48 3C0180A1 */  lui     $at, %hi(D_80A171EC)       ## $at = 80A10000
/* 01ACC 80A16D4C C43071EC */  lwc1    $f16, %lo(D_80A171EC)($at) 
/* 01AD0 80A16D50 C60A00BC */  lwc1    $f10, 0x00BC($s0)          ## 000000BC
/* 01AD4 80A16D54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AD8 80A16D58 46105482 */  mul.s   $f18, $f10, $f16           
/* 01ADC 80A16D5C 44059000 */  mfc1    $a1, $f18                  
/* 01AE0 80A16D60 0C00B56E */  jal     Actor_SetHeight
              
/* 01AE4 80A16D64 00000000 */  nop
/* 01AE8 80A16D68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AEC 80A16D6C 0C00BD04 */  jal     func_8002F410              
/* 01AF0 80A16D70 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01AF4 80A16D74 1040000D */  beq     $v0, $zero, .L80A16DAC     
/* 01AF8 80A16D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01AFC 80A16D7C 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 01B00 80A16D80 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 01B04 80A16D84 15600005 */  bne     $t3, $zero, .L80A16D9C     
/* 01B08 80A16D88 00000000 */  nop
/* 01B0C 80A16D8C 0C00B55C */  jal     Actor_Kill
              
/* 01B10 80A16D90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B14 80A16D94 10000011 */  beq     $zero, $zero, .L80A16DDC   
/* 01B18 80A16D98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16D9C:
/* 01B1C 80A16D9C 0C2854DD */  jal     func_80A15374              
/* 01B20 80A16DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B24 80A16DA4 1000000D */  beq     $zero, $zero, .L80A16DDC   
/* 01B28 80A16DA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16DAC:
/* 01B2C 80A16DAC 0C2855A2 */  jal     func_80A15688              
/* 01B30 80A16DB0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01B34 80A16DB4 10400008 */  beq     $v0, $zero, .L80A16DD8     
/* 01B38 80A16DB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01B3C 80A16DBC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01B40 80A16DC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 01B44 80A16DC4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01B48 80A16DC8 2406007E */  addiu   $a2, $zero, 0x007E         ## $a2 = 0000007E
/* 01B4C 80A16DCC 3C0742A0 */  lui     $a3, 0x42A0                ## $a3 = 42A00000
/* 01B50 80A16DD0 0C00BD0D */  jal     func_8002F434              
/* 01B54 80A16DD4 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A16DD8:
/* 01B58 80A16DD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A16DDC:
/* 01B5C 80A16DDC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01B60 80A16DE0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B64 80A16DE4 03E00008 */  jr      $ra                        
/* 01B68 80A16DE8 00000000 */  nop


