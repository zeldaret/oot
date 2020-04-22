glabel func_80A3B040
/* 008F0 80A3B040 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 008F4 80A3B044 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 008F8 80A3B048 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x10)
/* 008FC 80A3B04C 8DCE7130 */  lw      $t6, %lo(gBitFlags+0x10)($t6)
/* 00900 80A3B050 944F009C */  lhu     $t7, 0x009C($v0)           ## 8015E6FC
/* 00904 80A3B054 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00908 80A3B058 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0090C 80A3B05C 01CFC024 */  and     $t8, $t6, $t7              
/* 00910 80A3B060 13000003 */  beq     $t8, $zero, .L80A3B070     
/* 00914 80A3B064 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00918 80A3B068 10000010 */  beq     $zero, $zero, .L80A3B0AC   
/* 0091C 80A3B06C 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3B070:
/* 00920 80A3B070 84590034 */  lh      $t9, 0x0034($v0)           ## 00000036
/* 00924 80A3B074 84A801C8 */  lh      $t0, 0x01C8($a1)           ## 000001C8
/* 00928 80A3B078 0328082A */  slt     $at, $t9, $t0              
/* 0092C 80A3B07C 10200003 */  beq     $at, $zero, .L80A3B08C     
/* 00930 80A3B080 00000000 */  nop
/* 00934 80A3B084 10000009 */  beq     $zero, $zero, .L80A3B0AC   
/* 00938 80A3B088 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B08C:
/* 0093C 80A3B08C 0C0218E2 */  jal     Item_CheckObtainability              
/* 00940 80A3B090 2404003E */  addiu   $a0, $zero, 0x003E         ## $a0 = 0000003E
/* 00944 80A3B094 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00948 80A3B098 54410004 */  bnel    $v0, $at, .L80A3B0AC       
/* 0094C 80A3B09C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00950 80A3B0A0 10000002 */  beq     $zero, $zero, .L80A3B0AC   
/* 00954 80A3B0A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00958 80A3B0A8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B0AC:
/* 0095C 80A3B0AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00960 80A3B0B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00964 80A3B0B4 03E00008 */  jr      $ra                        
/* 00968 80A3B0B8 00000000 */  nop
