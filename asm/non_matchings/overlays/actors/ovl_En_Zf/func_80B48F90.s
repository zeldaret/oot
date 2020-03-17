glabel func_80B48F90
/* 04F40 80B48F90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04F44 80B48F94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04F48 80B48F98 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 04F4C 80B48F9C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 04F50 80B48FA0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 04F54 80B48FA4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 04F58 80B48FA8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 04F5C 80B48FAC 55C1001B */  bnel    $t6, $at, .L80B4901C       
/* 04F60 80B48FB0 84A803EC */  lh      $t0, 0x03EC($a1)           ## 000003EC
/* 04F64 80B48FB4 8C8F03DC */  lw      $t7, 0x03DC($a0)           ## 000003DC
/* 04F68 80B48FB8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 04F6C 80B48FBC 55E10017 */  bnel    $t7, $at, .L80B4901C       
/* 04F70 80B48FC0 84A803EC */  lh      $t0, 0x03EC($a1)           ## 000003EC
/* 04F74 80B48FC4 848203F4 */  lh      $v0, 0x03F4($a0)           ## 000003F4
/* 04F78 80B48FC8 10400013 */  beq     $v0, $zero, .L80B49018     
/* 04F7C 80B48FCC 00022080 */  sll     $a0, $v0,  2               
/* 04F80 80B48FD0 00822023 */  subu    $a0, $a0, $v0              
/* 04F84 80B48FD4 00042080 */  sll     $a0, $a0,  2               
/* 04F88 80B48FD8 00822023 */  subu    $a0, $a0, $v0              
/* 04F8C 80B48FDC 00042100 */  sll     $a0, $a0,  4               
/* 04F90 80B48FE0 00822023 */  subu    $a0, $a0, $v0              
/* 04F94 80B48FE4 000420C0 */  sll     $a0, $a0,  3               
/* 04F98 80B48FE8 00042400 */  sll     $a0, $a0, 16               
/* 04F9C 80B48FEC 00042403 */  sra     $a0, $a0, 16               
/* 04FA0 80B48FF0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 04FA4 80B48FF4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 04FA8 80B48FF8 3C0180B5 */  lui     $at, %hi(D_80B4A3A0)       ## $at = 80B50000
/* 04FAC 80B48FFC C424A3A0 */  lwc1    $f4, %lo(D_80B4A3A0)($at)  
/* 04FB0 80B49000 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 04FB4 80B49004 46040182 */  mul.s   $f6, $f0, $f4              
/* 04FB8 80B49008 4600320D */  trunc.w.s $f8, $f6                   
/* 04FBC 80B4900C 44194000 */  mfc1    $t9, $f8                   
/* 04FC0 80B49010 10000024 */  beq     $zero, $zero, .L80B490A4   
/* 04FC4 80B49014 A4B903EC */  sh      $t9, 0x03EC($a1)           ## 000003EC
.L80B49018:
/* 04FC8 80B49018 84A803EC */  lh      $t0, 0x03EC($a1)           ## 000003EC
.L80B4901C:
/* 04FCC 80B4901C 84A900B6 */  lh      $t1, 0x00B6($a1)           ## 000000B6
/* 04FD0 80B49020 84A2008A */  lh      $v0, 0x008A($a1)           ## 0000008A
/* 04FD4 80B49024 240DF830 */  addiu   $t5, $zero, 0xF830         ## $t5 = FFFFF830
/* 04FD8 80B49028 01096021 */  addu    $t4, $t0, $t1              
/* 04FDC 80B4902C 004C1023 */  subu    $v0, $v0, $t4              
/* 04FE0 80B49030 00021400 */  sll     $v0, $v0, 16               
/* 04FE4 80B49034 00021403 */  sra     $v0, $v0, 16               
/* 04FE8 80B49038 2841F830 */  slti    $at, $v0, 0xF830           
/* 04FEC 80B4903C 10200003 */  beq     $at, $zero, .L80B4904C     
/* 04FF0 80B49040 2419E329 */  addiu   $t9, $zero, 0xE329         ## $t9 = FFFFE329
/* 04FF4 80B49044 10000007 */  beq     $zero, $zero, .L80B49064   
/* 04FF8 80B49048 A4AD03EE */  sh      $t5, 0x03EE($a1)           ## 000003EE
.L80B4904C:
/* 04FFC 80B4904C 284107D1 */  slti    $at, $v0, 0x07D1           
/* 05000 80B49050 14200003 */  bne     $at, $zero, .L80B49060     
/* 05004 80B49054 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 05008 80B49058 10000001 */  beq     $zero, $zero, .L80B49060   
/* 0500C 80B4905C 240307D0 */  addiu   $v1, $zero, 0x07D0         ## $v1 = 000007D0
.L80B49060:
/* 05010 80B49060 A4A303EE */  sh      $v1, 0x03EE($a1)           ## 000003EE
.L80B49064:
/* 05014 80B49064 84AE03EC */  lh      $t6, 0x03EC($a1)           ## 000003EC
/* 05018 80B49068 84AF03EE */  lh      $t7, 0x03EE($a1)           ## 000003EE
/* 0501C 80B4906C 01CFC021 */  addu    $t8, $t6, $t7              
/* 05020 80B49070 A4B803EC */  sh      $t8, 0x03EC($a1)           ## 000003EC
/* 05024 80B49074 84A203EC */  lh      $v0, 0x03EC($a1)           ## 000003EC
/* 05028 80B49078 2841E329 */  slti    $at, $v0, 0xE329           
/* 0502C 80B4907C 50200004 */  beql    $at, $zero, .L80B49090     
/* 05030 80B49080 28411CD8 */  slti    $at, $v0, 0x1CD8           
/* 05034 80B49084 10000007 */  beq     $zero, $zero, .L80B490A4   
/* 05038 80B49088 A4B903EC */  sh      $t9, 0x03EC($a1)           ## 000003EC
/* 0503C 80B4908C 28411CD8 */  slti    $at, $v0, 0x1CD8           
.L80B49090:
/* 05040 80B49090 14200003 */  bne     $at, $zero, .L80B490A0     
/* 05044 80B49094 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 05048 80B49098 10000001 */  beq     $zero, $zero, .L80B490A0   
/* 0504C 80B4909C 24031CD7 */  addiu   $v1, $zero, 0x1CD7         ## $v1 = 00001CD7
.L80B490A0:
/* 05050 80B490A0 A4A303EC */  sh      $v1, 0x03EC($a1)           ## 000003EC
.L80B490A4:
/* 05054 80B490A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05058 80B490A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0505C 80B490AC 03E00008 */  jr      $ra                        
/* 05060 80B490B0 00000000 */  nop


