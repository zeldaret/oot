glabel func_80AC4074
/* 013D4 80AC4074 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 013D8 80AC4078 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013DC 80AC407C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013E0 80AC4080 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 013E4 80AC4084 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 013E8 80AC4088 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 013EC 80AC408C 0C042F6F */  jal     func_8010BDBC              
/* 013F0 80AC4090 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 013F4 80AC4094 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 013F8 80AC4098 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 013FC 80AC409C 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 01400 80AC40A0 15C1001E */  bne     $t6, $at, .L80AC411C       
/* 01404 80AC40A4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01408 80AC40A8 1441001C */  bne     $v0, $at, .L80AC411C       
/* 0140C 80AC40AC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01410 80AC40B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01414 80AC40B4 0C2B0E21 */  jal     func_80AC3884              
/* 01418 80AC40B8 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 0141C 80AC40BC 54400054 */  bnel    $v0, $zero, .L80AC4210     
/* 01420 80AC40C0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01424 80AC40C4 0C041AF2 */  jal     func_80106BC8              
/* 01428 80AC40C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0142C 80AC40CC 1040004F */  beq     $v0, $zero, .L80AC420C     
/* 01430 80AC40D0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01434 80AC40D4 00501021 */  addu    $v0, $v0, $s0              
/* 01438 80AC40D8 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 0143C 80AC40DC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01440 80AC40E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01444 80AC40E4 10400005 */  beq     $v0, $zero, .L80AC40FC     
/* 01448 80AC40E8 00000000 */  nop
/* 0144C 80AC40EC 10410007 */  beq     $v0, $at, .L80AC410C       
/* 01450 80AC40F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01454 80AC40F4 10000046 */  beq     $zero, $zero, .L80AC4210   
/* 01458 80AC40F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC40FC:
/* 0145C 80AC40FC 0C2B0E6B */  jal     func_80AC39AC              
/* 01460 80AC4100 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01464 80AC4104 10000042 */  beq     $zero, $zero, .L80AC4210   
/* 01468 80AC4108 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC410C:
/* 0146C 80AC410C 0C2B0DEA */  jal     func_80AC37A8              
/* 01470 80AC4110 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01474 80AC4114 1000003E */  beq     $zero, $zero, .L80AC4210   
/* 01478 80AC4118 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC411C:
/* 0147C 80AC411C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01480 80AC4120 5441003B */  bnel    $v0, $at, .L80AC4210       
/* 01484 80AC4124 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01488 80AC4128 0C041AF2 */  jal     func_80106BC8              
/* 0148C 80AC412C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01490 80AC4130 50400037 */  beql    $v0, $zero, .L80AC4210     
/* 01494 80AC4134 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01498 80AC4138 0C01E221 */  jal     func_80078884              
/* 0149C 80AC413C 24044818 */  addiu   $a0, $zero, 0x4818         ## $a0 = 00004818
/* 014A0 80AC4140 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 014A4 80AC4144 90EF01EB */  lbu     $t7, 0x01EB($a3)           ## 000001EB
/* 014A8 80AC4148 2DE10007 */  sltiu   $at, $t7, 0x0007           
/* 014AC 80AC414C 10200024 */  beq     $at, $zero, .L80AC41E0     
/* 014B0 80AC4150 000F7880 */  sll     $t7, $t7,  2               
/* 014B4 80AC4154 3C0180AD */  lui     $at, %hi(jtbl_80AC94FC)       ## $at = 80AD0000
/* 014B8 80AC4158 002F0821 */  addu    $at, $at, $t7              
/* 014BC 80AC415C 8C2F94FC */  lw      $t7, %lo(jtbl_80AC94FC)($at)  
/* 014C0 80AC4160 01E00008 */  jr      $t7                        
/* 014C4 80AC4164 00000000 */  nop
glabel L80AC4168
/* 014C8 80AC4168 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014CC 80AC416C 0C042DC8 */  jal     func_8010B720              
/* 014D0 80AC4170 240570AA */  addiu   $a1, $zero, 0x70AA         ## $a1 = 000070AA
/* 014D4 80AC4174 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 014D8 80AC4178 24180019 */  addiu   $t8, $zero, 0x0019         ## $t8 = 00000019
/* 014DC 80AC417C 10000023 */  beq     $zero, $zero, .L80AC420C   
/* 014E0 80AC4180 A73801FC */  sh      $t8, 0x01FC($t9)           ## 000001FC
glabel L80AC4184
/* 014E4 80AC4184 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014E8 80AC4188 0C2B0DEA */  jal     func_80AC37A8              
/* 014EC 80AC418C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 014F0 80AC4190 1000001F */  beq     $zero, $zero, .L80AC4210   
/* 014F4 80AC4194 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L80AC4198
/* 014F8 80AC4198 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 014FC 80AC419C 0C2B0FCE */  jal     func_80AC3F38              
/* 01500 80AC41A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01504 80AC41A4 1000001A */  beq     $zero, $zero, .L80AC4210   
/* 01508 80AC41A8 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L80AC41AC
/* 0150C 80AC41AC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01510 80AC41B0 00300821 */  addu    $at, $at, $s0              
/* 01514 80AC41B4 240801D1 */  addiu   $t0, $zero, 0x01D1         ## $t0 = 000001D1
/* 01518 80AC41B8 A4281E1A */  sh      $t0, 0x1E1A($at)           ## 00011E1A
/* 0151C 80AC41BC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01520 80AC41C0 00300821 */  addu    $at, $at, $s0              
/* 01524 80AC41C4 24090014 */  addiu   $t1, $zero, 0x0014         ## $t1 = 00000014
/* 01528 80AC41C8 A0291E15 */  sb      $t1, 0x1E15($at)           ## 00011E15
/* 0152C 80AC41CC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01530 80AC41D0 00300821 */  addu    $at, $at, $s0              
/* 01534 80AC41D4 240A002E */  addiu   $t2, $zero, 0x002E         ## $t2 = 0000002E
/* 01538 80AC41D8 1000000C */  beq     $zero, $zero, .L80AC420C   
/* 0153C 80AC41DC A02A1E5E */  sb      $t2, 0x1E5E($at)           ## 00011E5E
.L80AC41E0:
/* 01540 80AC41E0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01544 80AC41E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01548 80AC41E8 0C2B0E21 */  jal     func_80AC3884              
/* 0154C 80AC41EC 26060014 */  addiu   $a2, $s0, 0x0014           ## $a2 = 00000014
/* 01550 80AC41F0 14400006 */  bne     $v0, $zero, .L80AC420C     
/* 01554 80AC41F4 3C0480AD */  lui     $a0, %hi(D_80AC90C4)       ## $a0 = 80AD0000
/* 01558 80AC41F8 0C00084C */  jal     osSyncPrintf
              
/* 0155C 80AC41FC 248490C4 */  addiu   $a0, $a0, %lo(D_80AC90C4)  ## $a0 = 80AC90C4
/* 01560 80AC4200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01564 80AC4204 0C2B0E6B */  jal     func_80AC39AC              
/* 01568 80AC4208 8FA50020 */  lw      $a1, 0x0020($sp)           
.L80AC420C:
/* 0156C 80AC420C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC4210:
/* 01570 80AC4210 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01574 80AC4214 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01578 80AC4218 03E00008 */  jr      $ra                        
/* 0157C 80AC421C 00000000 */  nop


