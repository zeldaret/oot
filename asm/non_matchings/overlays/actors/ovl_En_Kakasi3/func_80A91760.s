glabel func_80A91760
/* 00A40 80A91760 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A44 80A91764 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A48 80A91768 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00A4C 80A9176C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00A50 80A91770 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A54 80A91774 0C2A438A */  jal     func_80A90E28              
/* 00A58 80A91778 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A5C 80A9177C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A60 80A91780 26040150 */  addiu   $a0, $s0, 0x0150           ## $a0 = 00000150
/* 00A64 80A91784 0C042F6F */  jal     func_8010BDBC              
/* 00A68 80A91788 262420D8 */  addiu   $a0, $s1, 0x20D8           ## $a0 = 000020D8
/* 00A6C 80A9178C 860E0196 */  lh      $t6, 0x0196($s0)           ## 00000196
/* 00A70 80A91790 55C20016 */  bnel    $t6, $v0, .L80A917EC       
/* 00A74 80A91794 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A78 80A91798 0C041AF2 */  jal     func_80106BC8              
/* 00A7C 80A9179C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A80 80A917A0 10400011 */  beq     $v0, $zero, .L80A917E8     
/* 00A84 80A917A4 240F0037 */  addiu   $t7, $zero, 0x0037         ## $t7 = 00000037
/* 00A88 80A917A8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A8C 80A917AC 00310821 */  addu    $at, $at, $s1              
/* 00A90 80A917B0 A02F03DC */  sb      $t7, 0x03DC($at)           ## 000103DC
/* 00A94 80A917B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A98 80A917B8 0C042F56 */  jal     func_8010BD58              
/* 00A9C 80A917BC 2405002D */  addiu   $a1, $zero, 0x002D         ## $a1 = 0000002D
/* 00AA0 80A917C0 3C1880A9 */  lui     $t8, %hi(func_80A917FC)    ## $t8 = 80A90000
/* 00AA4 80A917C4 271817FC */  addiu   $t8, $t8, %lo(func_80A917FC) ## $t8 = 80A917FC
/* 00AA8 80A917C8 AE18014C */  sw      $t8, 0x014C($s0)           ## 0000014C
/* 00AAC 80A917CC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00AB0 80A917D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AB4 80A917D4 240508E8 */  addiu   $a1, $zero, 0x08E8         ## $a1 = 000008E8
/* 00AB8 80A917D8 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 00ABC 80A917DC 0C02003E */  jal     func_800800F8              
/* 00AC0 80A917E0 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00AC4 80A917E4 A6020208 */  sh      $v0, 0x0208($s0)           ## 00000208
.L80A917E8:
/* 00AC8 80A917E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A917EC:
/* 00ACC 80A917EC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00AD0 80A917F0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00AD4 80A917F4 03E00008 */  jr      $ra                        
/* 00AD8 80A917F8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
