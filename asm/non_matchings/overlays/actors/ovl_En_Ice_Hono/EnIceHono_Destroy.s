glabel EnIceHono_Destroy
/* 003A0 80A73390 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A4 80A73394 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003A8 80A73398 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003AC 80A7339C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 003B0 80A733A0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003B4 80A733A4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 003B8 80A733A8 10410003 */  beq     $v0, $at, .L80A733B8       
/* 003BC 80A733AC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003C0 80A733B0 5440000A */  bnel    $v0, $zero, .L80A733DC     
/* 003C4 80A733B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A733B8:
/* 003C8 80A733B8 8CE601A8 */  lw      $a2, 0x01A8($a3)           ## 000001A8
/* 003CC 80A733BC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 003D0 80A733C0 0C01E9F1 */  jal     LightContext_RemoveLight
              
/* 003D4 80A733C4 248507A8 */  addiu   $a1, $a0, 0x07A8           ## $a1 = 000007A8
/* 003D8 80A733C8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 003DC 80A733CC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 003E0 80A733D0 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 003E4 80A733D4 24E5015C */  addiu   $a1, $a3, 0x015C           ## $a1 = 0000015C
/* 003E8 80A733D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A733DC:
/* 003EC 80A733DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003F0 80A733E0 03E00008 */  jr      $ra                        
/* 003F4 80A733E4 00000000 */  nop
