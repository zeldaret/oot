.late_rodata
glabel D_80B9CCB8
    .float 0.001

.text
glabel func_80B9B300
/* 00180 80B9B300 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00184 80B9B304 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 80B9B308 848E01BC */  lh      $t6, 0x01BC($a0)           ## 000001BC
/* 0018C 80B9B30C 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00190 80B9B310 000E7880 */  sll     $t7, $t6,  2               
/* 00194 80B9B314 008FC021 */  addu    $t8, $a0, $t7              
/* 00198 80B9B318 8F060180 */  lw      $a2, 0x0180($t8)           ## 00000180
/* 0019C 80B9B31C 50C10017 */  beql    $a2, $at, .L80B9B37C       
/* 001A0 80B9B320 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001A4 80B9B324 C4840080 */  lwc1    $f4, 0x0080($a0)           ## 00000080
/* 001A8 80B9B328 C4860028 */  lwc1    $f6, 0x0028($a0)           ## 00000028
/* 001AC 80B9B32C 3C0180BA */  lui     $at, %hi(D_80B9CCB8)       ## $at = 80BA0000
/* 001B0 80B9B330 C428CCB8 */  lwc1    $f8, %lo(D_80B9CCB8)($at)  
/* 001B4 80B9B334 46062001 */  sub.s   $f0, $f4, $f6              
/* 001B8 80B9B338 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 001BC 80B9B33C 46000005 */  abs.s   $f0, $f0                   
/* 001C0 80B9B340 4608003C */  c.lt.s  $f0, $f8                   
/* 001C4 80B9B344 00000000 */  nop
/* 001C8 80B9B348 4502000C */  bc1fl   .L80B9B37C                 
/* 001CC 80B9B34C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001D0 80B9B350 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 001D4 80B9B354 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 001D8 80B9B358 50400008 */  beql    $v0, $zero, .L80B9B37C     
/* 001DC 80B9B35C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001E0 80B9B360 84590000 */  lh      $t9, 0x0000($v0)           ## 00000000
/* 001E4 80B9B364 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 001E8 80B9B368 57210004 */  bnel    $t9, $at, .L80B9B37C       
/* 001EC 80B9B36C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001F0 80B9B370 10000003 */  beq     $zero, $zero, .L80B9B380   
/* 001F4 80B9B374 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80B9B378 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B9B37C:
/* 001FC 80B9B37C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9B380:
/* 00200 80B9B380 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00204 80B9B384 03E00008 */  jr      $ra                        
/* 00208 80B9B388 00000000 */  nop
