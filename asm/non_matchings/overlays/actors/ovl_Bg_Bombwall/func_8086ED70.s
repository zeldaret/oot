glabel func_8086ED70
/* 005A0 8086ED70 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A4 8086ED74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005A8 8086ED78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005AC 8086ED7C 90820175 */  lbu     $v0, 0x0175($a0)           ## 00000175
/* 005B0 8086ED80 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005B4 8086ED84 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 005B8 8086ED88 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 005BC 8086ED8C 11C0000C */  beq     $t6, $zero, .L8086EDC0     
/* 005C0 8086ED90 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 005C4 8086ED94 A08F0175 */  sb      $t7, 0x0175($a0)           ## 00000175
/* 005C8 8086ED98 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 005CC 8086ED9C 0C21BB7F */  jal     func_8086EDFC              
/* 005D0 8086EDA0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 005D4 8086EDA4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 005D8 8086EDA8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005DC 8086EDAC 84E5001C */  lh      $a1, 0x001C($a3)           ## 0000001C
/* 005E0 8086EDB0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 005E4 8086EDB4 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 005E8 8086EDB8 1000000D */  beq     $zero, $zero, .L8086EDF0   
/* 005EC 8086EDBC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086EDC0:
/* 005F0 8086EDC0 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 005F4 8086EDC4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 005F8 8086EDC8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005FC 8086EDCC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00600 8086EDD0 4606203C */  c.lt.s  $f4, $f6                   
/* 00604 8086EDD4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00608 8086EDD8 00812821 */  addu    $a1, $a0, $at              
/* 0060C 8086EDDC 45020004 */  bc1fl   .L8086EDF0                 
/* 00610 8086EDE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00614 8086EDE4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00618 8086EDE8 24E60164 */  addiu   $a2, $a3, 0x0164           ## $a2 = 00000164
/* 0061C 8086EDEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8086EDF0:
/* 00620 8086EDF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00624 8086EDF4 03E00008 */  jr      $ra                        
/* 00628 8086EDF8 00000000 */  nop
