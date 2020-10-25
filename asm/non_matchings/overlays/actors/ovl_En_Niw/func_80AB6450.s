glabel func_80AB6450
/* 00CD0 80AB6450 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00CD4 80AB6454 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CD8 80AB6458 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00CDC 80AB645C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00CE0 80AB6460 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 00CE4 80AB6464 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 00CE8 80AB6468 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CEC 80AB646C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00CF0 80AB6470 4606203C */  c.lt.s  $f4, $f6                   
/* 00CF4 80AB6474 00000000 */  nop
/* 00CF8 80AB6478 45020015 */  bc1fl   .L80AB64D0                 
/* 00CFC 80AB647C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D00 80AB6480 C4880028 */  lwc1    $f8, 0x0028($a0)           ## 00000028
/* 00D04 80AB6484 C44A0028 */  lwc1    $f10, 0x0028($v0)          ## 00000028
/* 00D08 80AB6488 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00D0C 80AB648C 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 00D10 80AB6490 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00D14 80AB6494 3C0F80AB */  lui     $t7, %hi(func_80AB7290)    ## $t7 = 80AB0000
/* 00D18 80AB6498 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00D1C 80AB649C 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00D20 80AB64A0 46000005 */  abs.s   $f0, $f0                   
/* 00D24 80AB64A4 25EF7290 */  addiu   $t7, $t7, %lo(func_80AB7290) ## $t7 = 80AB7290
/* 00D28 80AB64A8 4610003C */  c.lt.s  $f0, $f16                  
/* 00D2C 80AB64AC 00000000 */  nop
/* 00D30 80AB64B0 45020007 */  bc1fl   .L80AB64D0                 
/* 00D34 80AB64B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D38 80AB64B8 44819000 */  mtc1    $at, $f18                  ## $f18 = -2.00
/* 00D3C 80AB64BC A48E025E */  sh      $t6, 0x025E($a0)           ## 0000025E
/* 00D40 80AB64C0 AC8F0250 */  sw      $t7, 0x0250($a0)           ## 00000250
/* 00D44 80AB64C4 10000025 */  beq     $zero, $zero, .L80AB655C   
/* 00D48 80AB64C8 E492006C */  swc1    $f18, 0x006C($a0)          ## 0000006C
/* 00D4C 80AB64CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AB64D0:
/* 00D50 80AB64D0 0C00BD04 */  jal     Actor_HasParent              
/* 00D54 80AB64D4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00D58 80AB64D8 10400015 */  beq     $v0, $zero, .L80AB6530     
/* 00D5C 80AB64DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D60 80AB64E0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00D64 80AB64E4 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 00D68 80AB64E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D6C 80AB64EC 24052813 */  addiu   $a1, $zero, 0x2813         ## $a1 = 00002813
/* 00D70 80AB64F0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D74 80AB64F4 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 00D78 80AB64F8 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 00D7C 80AB64FC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00D80 80AB6500 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00D84 80AB6504 3C0880AB */  lui     $t0, %hi(func_80AB6BF8)    ## $t0 = 80AB0000
/* 00D88 80AB6508 2402001E */  addiu   $v0, $zero, 0x001E         ## $v0 = 0000001E
/* 00D8C 80AB650C 25086BF8 */  addiu   $t0, $t0, %lo(func_80AB6BF8) ## $t0 = 80AB6BF8
/* 00D90 80AB6510 0301C824 */  and     $t9, $t8, $at              
/* 00D94 80AB6514 A6020260 */  sh      $v0, 0x0260($s0)           ## 00000260
/* 00D98 80AB6518 A60002E8 */  sh      $zero, 0x02E8($s0)         ## 000002E8
/* 00D9C 80AB651C A602025A */  sh      $v0, 0x025A($s0)           ## 0000025A
/* 00DA0 80AB6520 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00DA4 80AB6524 AE080250 */  sw      $t0, 0x0250($s0)           ## 00000250
/* 00DA8 80AB6528 1000000C */  beq     $zero, $zero, .L80AB655C   
/* 00DAC 80AB652C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80AB6530:
/* 00DB0 80AB6530 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00DB4 80AB6534 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 00DB8 80AB6538 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DBC 80AB653C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00DC0 80AB6540 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00DC4 80AB6544 0C00BD0D */  jal     func_8002F434              
/* 00DC8 80AB6548 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00DCC 80AB654C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD0 80AB6550 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00DD4 80AB6554 0C2AD6FE */  jal     func_80AB5BF8              
/* 00DD8 80AB6558 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80AB655C:
/* 00DDC 80AB655C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DE0 80AB6560 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DE4 80AB6564 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DE8 80AB6568 03E00008 */  jr      $ra                        
/* 00DEC 80AB656C 00000000 */  nop
