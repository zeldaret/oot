glabel func_80A58C18
/* 00008 80A58C18 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 0000C 80A58C1C 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00010 80A58C20 8C620000 */  lw      $v0, 0x0000($v1)           ## 8015E660
/* 00014 80A58C24 384200EE */  xori    $v0, $v0, 0x00EE           ## $v0 = 000000EE
/* 00018 80A58C28 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 0001C 80A58C2C 10400004 */  beq     $v0, $zero, .L80A58C40     
/* 00020 80A58C30 00000000 */  nop
/* 00024 80A58C34 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 00028 80A58C38 38420008 */  xori    $v0, $v0, 0x0008           ## $v0 = 000000E6
/* 0002C 80A58C3C 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L80A58C40:
/* 00030 80A58C40 03E00008 */  jr      $ra                        
/* 00034 80A58C44 00000000 */  nop
