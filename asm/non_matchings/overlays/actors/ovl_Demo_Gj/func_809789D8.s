glabel func_809789D8
/* 000A8 809789D8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 000AC 809789DC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000B0 809789E0 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 000B4 809789E4 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 000B8 809789E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000BC 809789EC 0C25E254 */  jal     func_80978950              
/* 000C0 809789F0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 000C4 809789F4 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 000C8 809789F8 10410009 */  beq     $v0, $at, .L80978A20       
/* 000CC 809789FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000D0 80978A00 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 000D4 80978A04 10410010 */  beq     $v0, $at, .L80978A48       
/* 000D8 80978A08 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000DC 80978A0C 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 000E0 80978A10 10410017 */  beq     $v0, $at, .L80978A70       
/* 000E4 80978A14 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000E8 80978A18 10000018 */  beq     $zero, $zero, .L80978A7C   
/* 000EC 80978A1C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80978A20:
/* 000F0 80978A20 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000F4 80978A24 26050184 */  addiu   $a1, $s0, 0x0184           ## $a1 = 00000184
/* 000F8 80978A28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000FC 80978A2C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00100 80978A30 260501D0 */  addiu   $a1, $s0, 0x01D0           ## $a1 = 000001D0
/* 00104 80978A34 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00108 80978A38 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0010C 80978A3C 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 00110 80978A40 1000000E */  beq     $zero, $zero, .L80978A7C   
/* 00114 80978A44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80978A48:
/* 00118 80978A48 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0011C 80978A4C 26050184 */  addiu   $a1, $s0, 0x0184           ## $a1 = 00000184
/* 00120 80978A50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00124 80978A54 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00128 80978A58 260501D0 */  addiu   $a1, $s0, 0x01D0           ## $a1 = 000001D0
/* 0012C 80978A5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00130 80978A60 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00134 80978A64 2605021C */  addiu   $a1, $s0, 0x021C           ## $a1 = 0000021C
/* 00138 80978A68 10000004 */  beq     $zero, $zero, .L80978A7C   
/* 0013C 80978A6C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80978A70:
/* 00140 80978A70 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00144 80978A74 26050184 */  addiu   $a1, $s0, 0x0184           ## $a1 = 00000184
/* 00148 80978A78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80978A7C:
/* 0014C 80978A7C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00150 80978A80 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00154 80978A84 03E00008 */  jr      $ra                        
/* 00158 80978A88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


