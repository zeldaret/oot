glabel func_80AEE394
/* 03784 80AEE394 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03788 80AEE398 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0378C 80AEE39C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03790 80AEE3A0 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 03794 80AEE3A4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 03798 80AEE3A8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 0379C 80AEE3AC 51E00032 */  beql    $t7, $zero, .L80AEE478     
/* 037A0 80AEE3B0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 037A4 80AEE3B4 9082007D */  lbu     $v0, 0x007D($a0)           ## 0000007D
/* 037A8 80AEE3B8 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 037AC 80AEE3BC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 037B0 80AEE3C0 1041002C */  beq     $v0, $at, .L80AEE474       
/* 037B4 80AEE3C4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 037B8 80AEE3C8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 037BC 80AEE3CC 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 037C0 80AEE3D0 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 037C4 80AEE3D4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 037C8 80AEE3D8 10400026 */  beq     $v0, $zero, .L80AEE474     
/* 037CC 80AEE3DC AFA20018 */  sw      $v0, 0x0018($sp)           
/* 037D0 80AEE3E0 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 037D4 80AEE3E4 240100C8 */  addiu   $at, $zero, 0x00C8         ## $at = 000000C8
/* 037D8 80AEE3E8 57010023 */  bnel    $t8, $at, .L80AEE478       
/* 037DC 80AEE3EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 037E0 80AEE3F0 8459001C */  lh      $t9, 0x001C($v0)           ## 0000001C
/* 037E4 80AEE3F4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 037E8 80AEE3F8 5720001F */  bnel    $t9, $zero, .L80AEE478     
/* 037EC 80AEE3FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 037F0 80AEE400 0C023A62 */  jal     func_8008E988              
/* 037F4 80AEE404 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 037F8 80AEE408 1440001A */  bne     $v0, $zero, .L80AEE474     
/* 037FC 80AEE40C 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 03800 80AEE410 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 03804 80AEE414 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 03808 80AEE418 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0380C 80AEE41C 01284821 */  addu    $t1, $t1, $t0              
/* 03810 80AEE420 8D2903D8 */  lw      $t1, 0x03D8($t1)           ## 000103D8
/* 03814 80AEE424 55200014 */  bnel    $t1, $zero, .L80AEE478     
/* 03818 80AEE428 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0381C 80AEE42C 0C2BB80B */  jal     func_80AEE02C              
/* 03820 80AEE430 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 03824 80AEE434 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 03828 80AEE438 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0382C 80AEE43C 3C0A80AF */  lui     $t2, %hi(D_80AF10A4)       ## $t2 = 80AF0000
/* 03830 80AEE440 254A10A4 */  addiu   $t2, $t2, %lo(D_80AF10A4)  ## $t2 = 80AF10A4
/* 03834 80AEE444 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 03838 80AEE448 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0383C 80AEE44C AD6A1D68 */  sw      $t2, 0x1D68($t3)           ## 00001D68
/* 03840 80AEE450 A02CFA74 */  sb      $t4, -0x058C($at)          ## 8015FA74
/* 03844 80AEE454 240D0024 */  addiu   $t5, $zero, 0x0024         ## $t5 = 00000024
/* 03848 80AEE458 ACCD0264 */  sw      $t5, 0x0264($a2)           ## 00000264
/* 0384C 80AEE45C ACC00268 */  sw      $zero, 0x0268($a2)         ## 00000268
/* 03850 80AEE460 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 03854 80AEE464 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 03858 80AEE468 A0C000C8 */  sb      $zero, 0x00C8($a2)         ## 000000C8
/* 0385C 80AEE46C 10000002 */  beq     $zero, $zero, .L80AEE478   
/* 03860 80AEE470 ACCE028C */  sw      $t6, 0x028C($a2)           ## 0000028C
.L80AEE474:
/* 03864 80AEE474 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AEE478:
/* 03868 80AEE478 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0386C 80AEE47C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03870 80AEE480 03E00008 */  jr      $ra                        
/* 03874 80AEE484 00000000 */  nop


