glabel ObjBean_Destroy
/* 01254 80B8FCD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01258 80B8FCD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0125C 80B8FCDC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01260 80B8FCE0 908201F7 */  lbu     $v0, 0x01F7($a0)           ## 000001F7
/* 01264 80B8FCE4 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01268 80B8FCE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0126C 80B8FCEC 304E0020 */  andi    $t6, $v0, 0x0020           ## $t6 = 00000000
/* 01270 80B8FCF0 11C00006 */  beq     $t6, $zero, .L80B8FD0C     
/* 01274 80B8FCF4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 01278 80B8FCF8 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
/* 0127C 80B8FCFC 0C00FB56 */  jal     DynaPoly_DeleteBgActor
              ## DynaPoly_DeleteBgActor
/* 01280 80B8FD00 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 01284 80B8FD04 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 01288 80B8FD08 90E201F7 */  lbu     $v0, 0x01F7($a3)           ## 000001F7
.L80B8FD0C:
/* 0128C 80B8FD0C 30580010 */  andi    $t8, $v0, 0x0010           ## $t8 = 00000000
/* 01290 80B8FD10 13000005 */  beq     $t8, $zero, .L80B8FD28     
/* 01294 80B8FD14 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01298 80B8FD18 24E50168 */  addiu   $a1, $a3, 0x0168           ## $a1 = 00000168
/* 0129C 80B8FD1C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 012A0 80B8FD20 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 012A4 80B8FD24 8FA70018 */  lw      $a3, 0x0018($sp)           
.L80B8FD28:
/* 012A8 80B8FD28 3C0280B9 */  lui     $v0, %hi(D_80B90E30)       ## $v0 = 80B90000
/* 012AC 80B8FD2C 24420E30 */  addiu   $v0, $v0, %lo(D_80B90E30)  ## $v0 = 80B90E30
/* 012B0 80B8FD30 8C590000 */  lw      $t9, 0x0000($v0)           ## 80B90E30
/* 012B4 80B8FD34 54F90003 */  bnel    $a3, $t9, .L80B8FD44       
/* 012B8 80B8FD38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 012BC 80B8FD3C AC400000 */  sw      $zero, 0x0000($v0)         ## 80B90E30
/* 012C0 80B8FD40 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B8FD44:
/* 012C4 80B8FD44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 012C8 80B8FD48 03E00008 */  jr      $ra                        
/* 012CC 80B8FD4C 00000000 */  nop
