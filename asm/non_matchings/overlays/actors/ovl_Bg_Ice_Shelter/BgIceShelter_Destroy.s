.late_rodata
glabel jtbl_808918C0
.word L80890B5C
.word L80890B5C
.word L80890B40
.word L80890B40
.word L80890B5C

.text
glabel BgIceShelter_Destroy
/* 003C4 80890B04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C8 80890B08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003CC 80890B0C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003D0 80890B10 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003D4 80890B14 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 003D8 80890B18 000FC203 */  sra     $t8, $t7,  8               
/* 003DC 80890B1C 33190007 */  andi    $t9, $t8, 0x0007           ## $t9 = 00000000
/* 003E0 80890B20 2F210005 */  sltiu   $at, $t9, 0x0005           
/* 003E4 80890B24 10200011 */  beq     $at, $zero, .L80890B6C     
/* 003E8 80890B28 0019C880 */  sll     $t9, $t9,  2               
/* 003EC 80890B2C 3C018089 */  lui     $at, %hi(jtbl_808918C0)       ## $at = 80890000
/* 003F0 80890B30 00390821 */  addu    $at, $at, $t9              
/* 003F4 80890B34 8C3918C0 */  lw      $t9, %lo(jtbl_808918C0)($at)  
/* 003F8 80890B38 03200008 */  jr      $t9                        
/* 003FC 80890B3C 00000000 */  nop
glabel L80890B40
/* 00400 80890B40 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00404 80890B44 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 00408 80890B48 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0040C 80890B4C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00410 80890B50 8D26014C */  lw      $a2, 0x014C($t1)           ## 0000014C
/* 00414 80890B54 10000006 */  beq     $zero, $zero, .L80890B70   
/* 00418 80890B58 8FA50018 */  lw      $a1, 0x0018($sp)           
glabel L80890B5C
/* 0041C 80890B5C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00420 80890B60 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00424 80890B64 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00428 80890B68 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
.L80890B6C:
/* 0042C 80890B6C 8FA50018 */  lw      $a1, 0x0018($sp)           
.L80890B70:
/* 00430 80890B70 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00434 80890B74 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00438 80890B78 24A50168 */  addiu   $a1, $a1, 0x0168           ## $a1 = 00000168
/* 0043C 80890B7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00440 80890B80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00444 80890B84 03E00008 */  jr      $ra                        
/* 00448 80890B88 00000000 */  nop
