.late_rodata
glabel D_80B4A330
    .float 10000.0

.text
glabel EnZf_Destroy
/* 005D4 80B44624 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005D8 80B44628 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 005DC 80B4462C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 005E0 80B44630 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 005E4 80B44634 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 005E8 80B44638 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005EC 80B4463C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 005F0 80B44640 05C0000B */  bltz    $t6, .L80B44670            
/* 005F4 80B44644 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 005F8 80B44648 3C0180B5 */  lui     $at, %hi(D_80B4A330)       ## $at = 80B50000
/* 005FC 80B4464C C424A330 */  lwc1    $f4, %lo(D_80B4A330)($at)  
/* 00600 80B44650 24060025 */  addiu   $a2, $zero, 0x0025         ## $a2 = 00000025
/* 00604 80B44654 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00608 80B44658 0C00D4FD */  jal     Actor_FindNearby
              
/* 0060C 80B4465C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00610 80B44660 54400004 */  bnel    $v0, $zero, .L80B44674     
/* 00614 80B44664 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00618 80B44668 0C03D6D6 */  jal     func_800F5B58              
/* 0061C 80B4466C 00000000 */  nop
.L80B44670:
/* 00620 80B44670 8FA4002C */  lw      $a0, 0x002C($sp)           
.L80B44674:
/* 00624 80B44674 0C009C27 */  jal     Effect_Delete              
/* 00628 80B44678 8E050414 */  lw      $a1, 0x0414($s0)           ## 00000414
/* 0062C 80B4467C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00630 80B44680 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00634 80B44684 26050418 */  addiu   $a1, $s0, 0x0418           ## $a1 = 00000418
/* 00638 80B44688 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0063C 80B4468C 0C017418 */  jal     Collider_DestroyQuad              
/* 00640 80B44690 26050464 */  addiu   $a1, $s0, 0x0464           ## $a1 = 00000464
/* 00644 80B44694 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00648 80B44698 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0064C 80B4469C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00650 80B446A0 03E00008 */  jr      $ra                        
/* 00654 80B446A4 00000000 */  nop
