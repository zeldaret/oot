glabel func_809BDB90
/* 00F30 809BDB90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F34 809BDB94 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00F38 809BDB98 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00F3C 809BDB9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F40 809BDBA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F44 809BDBA4 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00F48 809BDBA8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F4C 809BDBAC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F50 809BDBB0 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00F54 809BDBB4 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
/* 00F58 809BDBB8 10400003 */  beq     $v0, $zero, .L809BDBC8     
/* 00F5C 809BDBBC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00F60 809BDBC0 A4AE0196 */  sh      $t6, 0x0196($a1)           ## 00000196
/* 00F64 809BDBC4 84A20196 */  lh      $v0, 0x0196($a1)           ## 00000196
.L809BDBC8:
/* 00F68 809BDBC8 5440000C */  bnel    $v0, $zero, .L809BDBFC     
/* 00F6C 809BDBCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F70 809BDBD0 84AF001C */  lh      $t7, 0x001C($a1)           ## 0000001C
/* 00F74 809BDBD4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00F78 809BDBD8 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 00F7C 809BDBDC 15E10004 */  bne     $t7, $at, .L809BDBF0       
/* 00F80 809BDBE0 00000000 */  nop
/* 00F84 809BDBE4 0C03D6B3 */  jal     func_800F5ACC              
/* 00F88 809BDBE8 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 00F8C 809BDBEC 8FA50018 */  lw      $a1, 0x0018($sp)           
.L809BDBF0:
/* 00F90 809BDBF0 0C26F4FE */  jal     func_809BD3F8              
/* 00F94 809BDBF4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00F98 809BDBF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809BDBFC:
/* 00F9C 809BDBFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00FA0 809BDC00 03E00008 */  jr      $ra                        
/* 00FA4 809BDC04 00000000 */  nop
