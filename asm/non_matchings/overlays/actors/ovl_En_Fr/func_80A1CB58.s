glabel func_80A1CB58
/* 021B8 80A1CB58 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 021BC 80A1CB5C 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 021C0 80A1CB60 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 021C4 80A1CB64 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 021C8 80A1CB68 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 021CC 80A1CB6C 85CF12D4 */  lh      $t7, 0x12D4($t6)           ## 801612D4
/* 021D0 80A1CB70 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 021D4 80A1CB74 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 021D8 80A1CB78 11E00018 */  beq     $t7, $zero, .L80A1CBDC     
/* 021DC 80A1CB7C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 021E0 80A1CB80 84980032 */  lh      $t8, 0x0032($a0)           ## 00000032
/* 021E4 80A1CB84 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 021E8 80A1CB88 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 021EC 80A1CB8C 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 021F0 80A1CB90 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 021F4 80A1CB94 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 021F8 80A1CB98 84990034 */  lh      $t9, 0x0034($a0)           ## 00000034
/* 021FC 80A1CB9C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 02200 80A1CBA0 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 02204 80A1CBA4 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 02208 80A1CBA8 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 0220C 80A1CBAC AFA0002C */  sw      $zero, 0x002C($sp)         
/* 02210 80A1CBB0 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 02214 80A1CBB4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 02218 80A1CBB8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0221C 80A1CBBC E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 02220 80A1CBC0 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 02224 80A1CBC4 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 02228 80A1CBC8 8CAC0000 */  lw      $t4, 0x0000($a1)           ## 00000000
/* 0222C 80A1CBCC AFA40048 */  sw      $a0, 0x0048($sp)           
/* 02230 80A1CBD0 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 02234 80A1CBD4 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 02238 80A1CBD8 8FA40048 */  lw      $a0, 0x0048($sp)           
.L80A1CBDC:
/* 0223C 80A1CBDC 8C8D036C */  lw      $t5, 0x036C($a0)           ## 0000036C
/* 02240 80A1CBE0 8C990354 */  lw      $t9, 0x0354($a0)           ## 00000354
/* 02244 80A1CBE4 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 02248 80A1CBE8 AC8E036C */  sw      $t6, 0x036C($a0)           ## 0000036C
/* 0224C 80A1CBEC 0320F809 */  jalr    $ra, $t9                   
/* 02250 80A1CBF0 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 02254 80A1CBF4 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 02258 80A1CBF8 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0225C 80A1CBFC 03E00008 */  jr      $ra                        
/* 02260 80A1CC00 00000000 */  nop
