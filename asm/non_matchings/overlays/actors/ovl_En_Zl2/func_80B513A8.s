glabel func_80B513A8
/* 02A18 80B513A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02A1C 80B513AC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02A20 80B513B0 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 02A24 80B513B4 8C8F0250 */  lw      $t7, 0x0250($a0)           ## 00000250
/* 02A28 80B513B8 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 02A2C 80B513BC 55E00013 */  bnel    $t7, $zero, .L80B5140C     
/* 02A30 80B513C0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02A34 80B513C4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 02A38 80B513C8 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 02A3C 80B513CC 2406005D */  addiu   $a2, $zero, 0x005D         ## $a2 = 0000005D
/* 02A40 80B513D0 C4400024 */  lwc1    $f0, 0x0024($v0)           ## 00000024
/* 02A44 80B513D4 C4420028 */  lwc1    $f2, 0x0028($v0)           ## 00000028
/* 02A48 80B513D8 C44C002C */  lwc1    $f12, 0x002C($v0)          ## 0000002C
/* 02A4C 80B513DC 44070000 */  mfc1    $a3, $f0                   
/* 02A50 80B513E0 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 02A54 80B513E4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02A58 80B513E8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02A5C 80B513EC AFA00018 */  sw      $zero, 0x0018($sp)         
/* 02A60 80B513F0 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 02A64 80B513F4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 02A68 80B513F8 E7AC0014 */  swc1    $f12, 0x0014($sp)          
/* 02A6C 80B513FC 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 02A70 80B51400 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02A74 80B51404 AD190250 */  sw      $t9, 0x0250($t0)           ## 00000250
/* 02A78 80B51408 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80B5140C:
/* 02A7C 80B5140C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02A80 80B51410 03E00008 */  jr      $ra                        
/* 02A84 80B51414 00000000 */  nop
