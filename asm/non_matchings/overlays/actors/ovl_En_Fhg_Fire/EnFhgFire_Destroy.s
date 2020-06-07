glabel EnFhgFire_Destroy
/* 0042C 80A0F68C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00430 80A0F690 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00434 80A0F694 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00438 80A0F698 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 0043C 80A0F69C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00440 80A0F6A0 24010023 */  addiu   $at, $zero, 0x0023         ## $at = 00000023
/* 00444 80A0F6A4 10410005 */  beq     $v0, $at, .L80A0F6BC       
/* 00448 80A0F6A8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0044C 80A0F6AC 24010024 */  addiu   $at, $zero, 0x0024         ## $at = 00000024
/* 00450 80A0F6B0 10410002 */  beq     $v0, $at, .L80A0F6BC       
/* 00454 80A0F6B4 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00458 80A0F6B8 14410005 */  bne     $v0, $at, .L80A0F6D0       
.L80A0F6BC:
/* 0045C 80A0F6BC 24E501B0 */  addiu   $a1, $a3, 0x01B0           ## $a1 = 000001B0
/* 00460 80A0F6C0 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00464 80A0F6C4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00468 80A0F6C8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0046C 80A0F6CC 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
.L80A0F6D0:
/* 00470 80A0F6D0 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 00474 80A0F6D4 14410004 */  bne     $v0, $at, .L80A0F6E8       
/* 00478 80A0F6D8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0047C 80A0F6DC 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 00480 80A0F6E0 0C01E9F1 */  jal     Lights_Remove
              
/* 00484 80A0F6E4 8CE6019C */  lw      $a2, 0x019C($a3)           ## 0000019C
.L80A0F6E8:
/* 00488 80A0F6E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0048C 80A0F6EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00490 80A0F6F0 03E00008 */  jr      $ra                        
/* 00494 80A0F6F4 00000000 */  nop
