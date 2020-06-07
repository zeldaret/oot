glabel func_80B54EA4
/* 01AF4 80B54EA4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01AF8 80B54EA8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01AFC 80B54EAC AFA40030 */  sw      $a0, 0x0030($sp)           
/* 01B00 80B54EB0 C4800024 */  lwc1    $f0, 0x0024($a0)           ## 00000024
/* 01B04 80B54EB4 C4820028 */  lwc1    $f2, 0x0028($a0)           ## 00000028
/* 01B08 80B54EB8 C48C002C */  lwc1    $f12, 0x002C($a0)          ## 0000002C
/* 01B0C 80B54EBC 44070000 */  mfc1    $a3, $f0                   
/* 01B10 80B54EC0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 01B14 80B54EC4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01B18 80B54EC8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 01B1C 80B54ECC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 01B20 80B54ED0 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 01B24 80B54ED4 240601CC */  addiu   $a2, $zero, 0x01CC         ## $a2 = 000001CC
/* 01B28 80B54ED8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01B2C 80B54EDC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01B30 80B54EE0 E7AC0014 */  swc1    $f12, 0x0014($sp)          
/* 01B34 80B54EE4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01B38 80B54EE8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01B3C 80B54EEC 03E00008 */  jr      $ra                        
/* 01B40 80B54EF0 00000000 */  nop
