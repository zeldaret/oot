glabel func_8096F2B0
/* 01E00 8096F2B0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01E04 8096F2B4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01E08 8096F2B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E0C 8096F2BC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01E10 8096F2C0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01E14 8096F2C4 0C25B77C */  jal     func_8096DDF0              
/* 01E18 8096F2C8 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 01E1C 8096F2CC 1040000D */  beq     $v0, $zero, .L8096F304     
/* 01E20 8096F2D0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01E24 8096F2D4 94460000 */  lhu     $a2, 0x0000($v0)           ## 00000000
/* 01E28 8096F2D8 8C83019C */  lw      $v1, 0x019C($a0)           ## 0000019C
/* 01E2C 8096F2DC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01E30 8096F2E0 50C30009 */  beql    $a2, $v1, .L8096F308       
/* 01E34 8096F2E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E38 8096F2E8 14C10005 */  bne     $a2, $at, .L8096F300       
/* 01E3C 8096F2EC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01E40 8096F2F0 0C25BC89 */  jal     func_8096F224              
/* 01E44 8096F2F4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01E48 8096F2F8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01E4C 8096F2FC 8FA40020 */  lw      $a0, 0x0020($sp)           
.L8096F300:
/* 01E50 8096F300 AC86019C */  sw      $a2, 0x019C($a0)           ## 0000019C
.L8096F304:
/* 01E54 8096F304 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8096F308:
/* 01E58 8096F308 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E5C 8096F30C 03E00008 */  jr      $ra                        
/* 01E60 8096F310 00000000 */  nop
