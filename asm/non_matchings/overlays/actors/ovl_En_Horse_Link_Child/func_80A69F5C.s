glabel func_80A69F5C
/* 00B8C 80A69F5C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00B90 80A69F60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B94 80A69F64 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B98 80A69F68 8C820150 */  lw      $v0, 0x0150($a0)           ## 00000150
/* 00B9C 80A69F6C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00BA0 80A69F70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BA4 80A69F74 10410006 */  beq     $v0, $at, .L80A69F90       
/* 00BA8 80A69F78 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00BAC 80A69F7C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BB0 80A69F80 10410003 */  beq     $v0, $at, .L80A69F90       
/* 00BB4 80A69F84 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00BB8 80A69F88 54410033 */  bnel    $v0, $at, .L80A6A058       
/* 00BBC 80A69F8C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A69F90:
/* 00BC0 80A69F90 8CE61C44 */  lw      $a2, 0x1C44($a3)           ## 00001C44
/* 00BC4 80A69F94 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00BC8 80A69F98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00BCC 80A69F9C 24C40024 */  addiu   $a0, $a2, 0x0024           ## $a0 = 00000024
/* 00BD0 80A69FA0 0C032D9E */  jal     func_800CB678              
/* 00BD4 80A69FA4 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 00BD8 80A69FA8 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 00BDC 80A69FAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 250.00
/* 00BE0 80A69FB0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00BE4 80A69FB4 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 00BE8 80A69FB8 4604003C */  c.lt.s  $f0, $f4                   
/* 00BEC 80A69FBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BF0 80A69FC0 45000010 */  bc1f    .L80A6A004                 
/* 00BF4 80A69FC4 00000000 */  nop
/* 00BF8 80A69FC8 84C300B6 */  lh      $v1, 0x00B6($a2)           ## 000000B6
/* 00BFC 80A69FCC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 00C00 80A69FD0 0C00B69E */  jal     func_8002DA78              
/* 00C04 80A69FD4 A7A30032 */  sh      $v1, 0x0032($sp)           
/* 00C08 80A69FD8 18400003 */  blez    $v0, .L80A69FE8            
/* 00C0C 80A69FDC 87A30032 */  lh      $v1, 0x0032($sp)           
/* 00C10 80A69FE0 10000002 */  beq     $zero, $zero, .L80A69FEC   
/* 00C14 80A69FE4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A69FE8:
/* 00C18 80A69FE8 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80A69FEC:
/* 00C1C 80A69FEC 00027380 */  sll     $t6, $v0, 14               
/* 00C20 80A69FF0 006E1821 */  addu    $v1, $v1, $t6              
/* 00C24 80A69FF4 00031C00 */  sll     $v1, $v1, 16               
/* 00C28 80A69FF8 00031C03 */  sra     $v1, $v1, 16               
/* 00C2C 80A69FFC 10000007 */  beq     $zero, $zero, .L80A6A01C   
/* 00C30 80A6A000 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
.L80A6A004:
/* 00C34 80A6A004 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00C38 80A6A008 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00C3C 80A6A00C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 00C40 80A6A010 00441823 */  subu    $v1, $v0, $a0              
/* 00C44 80A6A014 00031C00 */  sll     $v1, $v1, 16               
/* 00C48 80A6A018 00031C03 */  sra     $v1, $v1, 16               
.L80A6A01C:
/* 00C4C 80A6A01C 2861012D */  slti    $at, $v1, 0x012D           
/* 00C50 80A6A020 14200003 */  bne     $at, $zero, .L80A6A030     
/* 00C54 80A6A024 248F012C */  addiu   $t7, $a0, 0x012C           ## $t7 = 0000012C
/* 00C58 80A6A028 10000008 */  beq     $zero, $zero, .L80A6A04C   
/* 00C5C 80A6A02C A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
.L80A6A030:
/* 00C60 80A6A030 2861FED4 */  slti    $at, $v1, 0xFED4           
/* 00C64 80A6A034 10200004 */  beq     $at, $zero, .L80A6A048     
/* 00C68 80A6A038 0083C821 */  addu    $t9, $a0, $v1              
/* 00C6C 80A6A03C 2498FED4 */  addiu   $t8, $a0, 0xFED4           ## $t8 = FFFFFED4
/* 00C70 80A6A040 10000002 */  beq     $zero, $zero, .L80A6A04C   
/* 00C74 80A6A044 A6180032 */  sh      $t8, 0x0032($s0)           ## 00000032
.L80A6A048:
/* 00C78 80A6A048 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
.L80A6A04C:
/* 00C7C 80A6A04C 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00C80 80A6A050 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 00C84 80A6A054 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A6A058:
/* 00C88 80A6A058 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C8C 80A6A05C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00C90 80A6A060 03E00008 */  jr      $ra                        
/* 00C94 80A6A064 00000000 */  nop
