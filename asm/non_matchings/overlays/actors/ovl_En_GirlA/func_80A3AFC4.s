glabel func_80A3AFC4
/* 00874 80A3AFC4 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00878 80A3AFC8 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 0087C 80A3AFCC 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00880 80A3AFD0 8DCE7134 */  lw      $t6, 0x7134($t6)           ## 80127134
/* 00884 80A3AFD4 944F009C */  lhu     $t7, 0x009C($v0)           ## 8015E6FC
/* 00888 80A3AFD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0088C 80A3AFDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00890 80A3AFE0 01CFC024 */  and     $t8, $t6, $t7              
/* 00894 80A3AFE4 13000003 */  beq     $t8, $zero, .L80A3AFF4     
/* 00898 80A3AFE8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0089C 80A3AFEC 10000010 */  beq     $zero, $zero, .L80A3B030   
/* 008A0 80A3AFF0 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3AFF4:
/* 008A4 80A3AFF4 84590034 */  lh      $t9, 0x0034($v0)           ## 00000036
/* 008A8 80A3AFF8 84A801C8 */  lh      $t0, 0x01C8($a1)           ## 000001C8
/* 008AC 80A3AFFC 0328082A */  slt     $at, $t9, $t0              
/* 008B0 80A3B000 10200003 */  beq     $at, $zero, .L80A3B010     
/* 008B4 80A3B004 00000000 */  nop
/* 008B8 80A3B008 10000009 */  beq     $zero, $zero, .L80A3B030   
/* 008BC 80A3B00C 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B010:
/* 008C0 80A3B010 0C0218E2 */  jal     Item_CheckObtainability              
/* 008C4 80A3B014 2404003F */  addiu   $a0, $zero, 0x003F         ## $a0 = 0000003F
/* 008C8 80A3B018 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 008CC 80A3B01C 54410004 */  bnel    $v0, $at, .L80A3B030       
/* 008D0 80A3B020 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 008D4 80A3B024 10000002 */  beq     $zero, $zero, .L80A3B030   
/* 008D8 80A3B028 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 008DC 80A3B02C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B030:
/* 008E0 80A3B030 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008E4 80A3B034 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008E8 80A3B038 03E00008 */  jr      $ra                        
/* 008EC 80A3B03C 00000000 */  nop


