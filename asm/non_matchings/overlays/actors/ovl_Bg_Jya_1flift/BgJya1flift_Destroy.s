glabel BgJya1flift_Destroy
/* 001FC 80892D5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00200 80892D60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00204 80892D64 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00208 80892D68 908E01B7 */  lbu     $t6, 0x01B7($a0)           ## 000001B7
/* 0020C 80892D6C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00210 80892D70 3C018089 */  lui     $at, %hi(D_808930E0)       ## $at = 80890000
/* 00214 80892D74 11C0000A */  beq     $t6, $zero, .L80892DA0     
/* 00218 80892D78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0021C 80892D7C A02030E0 */  sb      $zero, %lo(D_808930E0)($at) 
/* 00220 80892D80 24E50164 */  addiu   $a1, $a3, 0x0164           ## $a1 = 00000164
/* 00224 80892D84 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00228 80892D88 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0022C 80892D8C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00230 80892D90 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00234 80892D94 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00238 80892D98 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0023C 80892D9C 8CE6014C */  lw      $a2, 0x014C($a3)           ## 0000014C
.L80892DA0:
/* 00240 80892DA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00244 80892DA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00248 80892DA8 03E00008 */  jr      $ra                        
/* 0024C 80892DAC 00000000 */  nop
