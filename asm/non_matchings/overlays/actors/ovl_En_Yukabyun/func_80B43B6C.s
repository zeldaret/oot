.late_rodata
glabel D_80B43FAC
    .float 5000.0

.text
glabel func_80B43B6C
/* 001AC 80B43B6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B0 80B43B70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B4 80B43B74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001B8 80B43B78 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 001BC 80B43B7C 848F0150 */  lh      $t7, 0x0150($a0)           ## 00000150
/* 001C0 80B43B80 3C0180B4 */  lui     $at, %hi(D_80B43FAC)       ## $at = 80B40000
/* 001C4 80B43B84 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 001C8 80B43B88 01CFC021 */  addu    $t8, $t6, $t7              
/* 001CC 80B43B8C A49800B6 */  sh      $t8, 0x00B6($a0)           ## 000000B6
/* 001D0 80B43B90 C4243FAC */  lwc1    $f4, %lo(D_80B43FAC)($at)  
/* 001D4 80B43B94 4606203C */  c.lt.s  $f4, $f6                   
/* 001D8 80B43B98 00000000 */  nop
/* 001DC 80B43B9C 45000005 */  bc1f    .L80B43BB4                 
/* 001E0 80B43BA0 00000000 */  nop
/* 001E4 80B43BA4 0C00B55C */  jal     Actor_Kill
              
/* 001E8 80B43BA8 00000000 */  nop
/* 001EC 80B43BAC 10000004 */  beq     $zero, $zero, .L80B43BC0   
/* 001F0 80B43BB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B43BB4:
/* 001F4 80B43BB4 0C00BE5D */  jal     func_8002F974              
/* 001F8 80B43BB8 24053179 */  addiu   $a1, $zero, 0x3179         ## $a1 = 00003179
/* 001FC 80B43BBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B43BC0:
/* 00200 80B43BC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00204 80B43BC4 03E00008 */  jr      $ra                        
/* 00208 80B43BC8 00000000 */  nop
