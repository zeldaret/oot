glabel func_80A7ECF8
/* 00898 80A7ECF8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0089C 80A7ECFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008A0 80A7ED00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008A4 80A7ED04 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008A8 80A7ED08 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 008AC 80A7ED0C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 008B0 80A7ED10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 008B4 80A7ED14 306F0001 */  andi    $t7, $v1, 0x0001           ## $t7 = 00000000
/* 008B8 80A7ED18 15E0000D */  bne     $t7, $zero, .L80A7ED50     
/* 008BC 80A7ED1C 00031203 */  sra     $v0, $v1,  8               
/* 008C0 80A7ED20 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 008C4 80A7ED24 00021400 */  sll     $v0, $v0, 16               
/* 008C8 80A7ED28 00021403 */  sra     $v0, $v0, 16               
/* 008CC 80A7ED2C 2841000D */  slti    $at, $v0, 0x000D           
/* 008D0 80A7ED30 14200002 */  bne     $at, $zero, .L80A7ED3C     
/* 008D4 80A7ED34 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 008D8 80A7ED38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A7ED3C:
/* 008DC 80A7ED3C 00403825 */  or      $a3, $v0, $zero            ## $a3 = 00000000
/* 008E0 80A7ED40 00073D00 */  sll     $a3, $a3, 20               
/* 008E4 80A7ED44 00073C03 */  sra     $a3, $a3, 16               
/* 008E8 80A7ED48 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 008EC 80A7ED4C 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 00000024
.L80A7ED50:
/* 008F0 80A7ED50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008F4 80A7ED54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008F8 80A7ED58 03E00008 */  jr      $ra                        
/* 008FC 80A7ED5C 00000000 */  nop
