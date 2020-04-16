glabel func_80996E08
/* 00B68 80996E08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B6C 80996E0C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00B70 80996E10 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00B74 80996E14 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00B78 80996E18 C7A40028 */  lwc1    $f4, 0x0028($sp)           
/* 00B7C 80996E1C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B80 80996E20 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B84 80996E24 46040181 */  sub.s   $f6, $f0, $f4              
/* 00B88 80996E28 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B8C 80996E2C C4880170 */  lwc1    $f8, 0x0170($a0)           ## 00000170
/* 00B90 80996E30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B94 80996E34 46083032 */  c.eq.s  $f6, $f8                   
/* 00B98 80996E38 00000000 */  nop
/* 00B9C 80996E3C 4502001E */  bc1fl   .L80996EB8                 
/* 00BA0 80996E40 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00BA4 80996E44 908E016C */  lbu     $t6, 0x016C($a0)           ## 0000016C
/* 00BA8 80996E48 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00BAC 80996E4C C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 00BB0 80996E50 51C1000E */  beql    $t6, $at, .L80996E8C       
/* 00BB4 80996E54 46005032 */  c.eq.s  $f10, $f0                  
/* 00BB8 80996E58 46002032 */  c.eq.s  $f4, $f0                   
/* 00BBC 80996E5C 24052859 */  addiu   $a1, $zero, 0x2859         ## $a1 = 00002859
/* 00BC0 80996E60 45000005 */  bc1f    .L80996E78                 
/* 00BC4 80996E64 00000000 */  nop
/* 00BC8 80996E68 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BCC 80996E6C 2405285A */  addiu   $a1, $zero, 0x285A         ## $a1 = 0000285A
/* 00BD0 80996E70 10000011 */  beq     $zero, $zero, .L80996EB8   
/* 00BD4 80996E74 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80996E78:
/* 00BD8 80996E78 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BDC 80996E7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BE0 80996E80 1000000D */  beq     $zero, $zero, .L80996EB8   
/* 00BE4 80996E84 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00BE8 80996E88 46005032 */  c.eq.s  $f10, $f0                  
.L80996E8C:
/* 00BEC 80996E8C 24052892 */  addiu   $a1, $zero, 0x2892         ## $a1 = 00002892
/* 00BF0 80996E90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BF4 80996E94 45000005 */  bc1f    .L80996EAC                 
/* 00BF8 80996E98 00000000 */  nop
/* 00BFC 80996E9C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C00 80996EA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C04 80996EA4 10000004 */  beq     $zero, $zero, .L80996EB8   
/* 00C08 80996EA8 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80996EAC:
/* 00C0C 80996EAC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C10 80996EB0 24052891 */  addiu   $a1, $zero, 0x2891         ## $a1 = 00002891
/* 00C14 80996EB4 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
.L80996EB8:
/* 00C18 80996EB8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00C1C 80996EBC 26040170 */  addiu   $a0, $s0, 0x0170           ## $a0 = 00000170
/* 00C20 80996EC0 0C01DE80 */  jal     Math_ApproxF
              
/* 00C24 80996EC4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00C28 80996EC8 10400003 */  beq     $v0, $zero, .L80996ED8     
/* 00C2C 80996ECC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C30 80996ED0 10000002 */  beq     $zero, $zero, .L80996EDC   
/* 00C34 80996ED4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80996ED8:
/* 00C38 80996ED8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80996EDC:
/* 00C3C 80996EDC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C40 80996EE0 03E00008 */  jr      $ra                        
/* 00C44 80996EE4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
