glabel EnPoField_Destroy
/* 00208 80AD3D08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0020C 80AD3D0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00210 80AD3D10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00214 80AD3D14 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00218 80AD3D18 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0021C 80AD3D1C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00220 80AD3D20 11C1000D */  beq     $t6, $at, .L80AD3D58       
/* 00224 80AD3D24 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00228 80AD3D28 8CE60230 */  lw      $a2, 0x0230($a3)           ## 00000230
/* 0022C 80AD3D2C AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00230 80AD3D30 0C01E9F1 */  jal     Lights_Remove
              
/* 00234 80AD3D34 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 00238 80AD3D38 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0023C 80AD3D3C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00240 80AD3D40 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00244 80AD3D44 24A50290 */  addiu   $a1, $a1, 0x0290           ## $a1 = 00000290
/* 00248 80AD3D48 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0024C 80AD3D4C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00250 80AD3D50 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00254 80AD3D54 24A50244 */  addiu   $a1, $a1, 0x0244           ## $a1 = 00000244
.L80AD3D58:
/* 00258 80AD3D58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0025C 80AD3D5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00260 80AD3D60 03E00008 */  jr      $ra                        
/* 00264 80AD3D64 00000000 */  nop
