glabel func_80A3AF30
/* 007E0 80A3AF30 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007E4 80A3AF34 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 007E8 80A3AF38 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 007EC 80A3AF3C 3C038012 */  lui     $v1, 0x8012                ## $v1 = 80120000
/* 007F0 80A3AF40 24637120 */  addiu   $v1, $v1, 0x7120           ## $v1 = 80127120
/* 007F4 80A3AF44 2484E660 */  addiu   $a0, $a0, 0xE660           ## $a0 = 8015E660
/* 007F8 80A3AF48 9482009C */  lhu     $v0, 0x009C($a0)           ## 8015E6FC
/* 007FC 80A3AF4C 8C6E0008 */  lw      $t6, 0x0008($v1)           ## 80127128
/* 00800 80A3AF50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00804 80A3AF54 01C27824 */  and     $t7, $t6, $v0              
/* 00808 80A3AF58 51E00008 */  beql    $t7, $zero, .L80A3AF7C     
/* 0080C 80A3AF5C 84880034 */  lh      $t0, 0x0034($a0)           ## 8015E694
/* 00810 80A3AF60 8C78000C */  lw      $t8, 0x000C($v1)           ## 8012712C
/* 00814 80A3AF64 0302C824 */  and     $t9, $t8, $v0              
/* 00818 80A3AF68 57200004 */  bnel    $t9, $zero, .L80A3AF7C     
/* 0081C 80A3AF6C 84880034 */  lh      $t0, 0x0034($a0)           ## 8015E694
/* 00820 80A3AF70 10000010 */  beq     $zero, $zero, .L80A3AFB4   
/* 00824 80A3AF74 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00828 80A3AF78 84880034 */  lh      $t0, 0x0034($a0)           ## 8015E694
.L80A3AF7C:
/* 0082C 80A3AF7C 84A901C8 */  lh      $t1, 0x01C8($a1)           ## 000001C8
/* 00830 80A3AF80 0109082A */  slt     $at, $t0, $t1              
/* 00834 80A3AF84 10200003 */  beq     $at, $zero, .L80A3AF94     
/* 00838 80A3AF88 00000000 */  nop
/* 0083C 80A3AF8C 10000009 */  beq     $zero, $zero, .L80A3AFB4   
/* 00840 80A3AF90 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3AF94:
/* 00844 80A3AF94 0C0218E2 */  jal     Item_CheckObtainability              
/* 00848 80A3AF98 2404003D */  addiu   $a0, $zero, 0x003D         ## $a0 = 0000003D
/* 0084C 80A3AF9C 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00850 80A3AFA0 54410004 */  bnel    $v0, $at, .L80A3AFB4       
/* 00854 80A3AFA4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00858 80A3AFA8 10000002 */  beq     $zero, $zero, .L80A3AFB4   
/* 0085C 80A3AFAC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00860 80A3AFB0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3AFB4:
/* 00864 80A3AFB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00868 80A3AFB8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0086C 80A3AFBC 03E00008 */  jr      $ra                        
/* 00870 80A3AFC0 00000000 */  nop


