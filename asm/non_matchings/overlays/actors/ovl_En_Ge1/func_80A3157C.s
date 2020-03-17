glabel func_80A3157C
/* 00C0C 80A3157C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C10 80A31580 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C14 80A31584 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C18 80A31588 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 00C1C 80A3158C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00C20 80A31590 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00C24 80A31594 A48F02AC */  sh      $t7, 0x02AC($a0)           ## 000002AC
/* 00C28 80A31598 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C2C 80A3159C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00C30 80A315A0 0C042F6F */  jal     func_8010BDBC              
/* 00C34 80A315A4 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00C38 80A315A8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00C3C 80A315AC 5441000D */  bnel    $v0, $at, .L80A315E4       
/* 00C40 80A315B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C44 80A315B4 0C041AF2 */  jal     func_80106BC8              
/* 00C48 80A315B8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C4C 80A315BC 50400009 */  beql    $v0, $zero, .L80A315E4     
/* 00C50 80A315C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C54 80A315C4 0C041B33 */  jal     func_80106CCC              
/* 00C58 80A315C8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C5C 80A315CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00C60 80A315D0 3C1880A3 */  lui     $t8, %hi(func_80A317C0)    ## $t8 = 80A30000
/* 00C64 80A315D4 271817C0 */  addiu   $t8, $t8, %lo(func_80A317C0) ## $t8 = 80A317C0
/* 00C68 80A315D8 0C28C352 */  jal     func_80A30D48              
/* 00C6C 80A315DC AC9802B4 */  sw      $t8, 0x02B4($a0)           ## 000002B4
/* 00C70 80A315E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A315E4:
/* 00C74 80A315E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C78 80A315E8 03E00008 */  jr      $ra                        
/* 00C7C 80A315EC 00000000 */  nop


