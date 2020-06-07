glabel ObjSwitch_Destroy
/* 00794 80B9D9A4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00798 80B9D9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0079C 80B9D9AC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 007A0 80B9D9B0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 007A4 80B9D9B4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007A8 80B9D9B8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 007AC 80B9D9BC 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 007B0 80B9D9C0 10400003 */  beq     $v0, $zero, .L80B9D9D0     
/* 007B4 80B9D9C4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 007B8 80B9D9C8 54410009 */  bnel    $v0, $at, .L80B9D9F0       
/* 007BC 80B9D9CC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80B9D9D0:
/* 007C0 80B9D9D0 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 007C4 80B9D9D4 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 007C8 80B9D9D8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 007CC 80B9D9DC 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 007D0 80B9D9E0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 007D4 80B9D9E4 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
/* 007D8 80B9D9E8 30420007 */  andi    $v0, $v0, 0x0007           ## $v0 = 00000000
/* 007DC 80B9D9EC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80B9D9F0:
/* 007E0 80B9D9F0 1041000B */  beq     $v0, $at, .L80B9DA20       
/* 007E4 80B9D9F4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 007E8 80B9D9F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007EC 80B9D9FC 10410008 */  beq     $v0, $at, .L80B9DA20       
/* 007F0 80B9DA00 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 007F4 80B9DA04 1041000A */  beq     $v0, $at, .L80B9DA30       
/* 007F8 80B9DA08 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 007FC 80B9DA0C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00800 80B9DA10 10410007 */  beq     $v0, $at, .L80B9DA30       
/* 00804 80B9DA14 00000000 */  nop
/* 00808 80B9DA18 10000008 */  beq     $zero, $zero, .L80B9DA3C   
/* 0080C 80B9DA1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DA20:
/* 00810 80B9DA20 0C017232 */  jal     Collider_DestroyTris              
/* 00814 80B9DA24 24E50180 */  addiu   $a1, $a3, 0x0180           ## $a1 = 00000180
/* 00818 80B9DA28 10000004 */  beq     $zero, $zero, .L80B9DA3C   
/* 0081C 80B9DA2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DA30:
/* 00820 80B9DA30 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00824 80B9DA34 24E50180 */  addiu   $a1, $a3, 0x0180           ## $a1 = 00000180
/* 00828 80B9DA38 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9DA3C:
/* 0082C 80B9DA3C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00830 80B9DA40 03E00008 */  jr      $ra                        
/* 00834 80B9DA44 00000000 */  nop
