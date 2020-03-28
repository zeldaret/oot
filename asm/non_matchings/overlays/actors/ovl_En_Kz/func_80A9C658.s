glabel func_80A9C658
/* 00108 80A9C658 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0010C 80A9C65C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00110 80A9C660 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00114 80A9C664 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00118 80A9C668 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 0011C 80A9C66C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00120 80A9C670 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00124 80A9C674 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00128 80A9C678 10400003 */  beq     $v0, $zero, .L80A9C688     
/* 0012C 80A9C67C 3043FFFF */  andi    $v1, $v0, 0xFFFF           ## $v1 = 00000000
/* 00130 80A9C680 1000000B */  beq     $zero, $zero, .L80A9C6B0   
/* 00134 80A9C684 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80A9C688:
/* 00138 80A9C688 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0013C 80A9C68C 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 00140 80A9C690 15C00005 */  bne     $t6, $zero, .L80A9C6A8     
/* 00144 80A9C694 00000000 */  nop
/* 00148 80A9C698 0C2A716B */  jal     func_80A9C5AC              
/* 0014C 80A9C69C 00000000 */  nop
/* 00150 80A9C6A0 10000004 */  beq     $zero, $zero, .L80A9C6B4   
/* 00154 80A9C6A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C6A8:
/* 00158 80A9C6A8 0C2A7154 */  jal     func_80A9C550              
/* 0015C 80A9C6AC 00000000 */  nop
.L80A9C6B0:
/* 00160 80A9C6B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C6B4:
/* 00164 80A9C6B4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00168 80A9C6B8 03E00008 */  jr      $ra                        
/* 0016C 80A9C6BC 00000000 */  nop


