glabel func_80AEF890
/* 04C80 80AEF890 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 04C84 80AEF894 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 04C88 80AEF898 8C6E1360 */  lw      $t6, 0x1360($v1)           ## 8015F9C0
/* 04C8C 80AEF89C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04C90 80AEF8A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04C94 80AEF8A4 29C10004 */  slti    $at, $t6, 0x0004           
/* 04C98 80AEF8A8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04C9C 80AEF8AC 1020001C */  beq     $at, $zero, .L80AEF920     
/* 04CA0 80AEF8B0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04CA4 80AEF8B4 0C2BABCE */  jal     func_80AEAF38              
/* 04CA8 80AEF8B8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 04CAC 80AEF8BC 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 04CB0 80AEF8C0 10400017 */  beq     $v0, $zero, .L80AEF920     
/* 04CB4 80AEF8C4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 04CB8 80AEF8C8 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 04CBC 80AEF8CC 94790F20 */  lhu     $t9, 0x0F20($v1)           ## 8015F580
/* 04CC0 80AEF8D0 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 04CC4 80AEF8D4 030FC021 */  addu    $t8, $t8, $t7              
/* 04CC8 80AEF8D8 83181CBC */  lb      $t8, 0x1CBC($t8)           ## 00011CBC
/* 04CCC 80AEF8DC 37280020 */  ori     $t0, $t9, 0x0020           ## $t0 = 00000020
/* 04CD0 80AEF8E0 A4680F20 */  sh      $t0, 0x0F20($v1)           ## 8015F580
/* 04CD4 80AEF8E4 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04CD8 80AEF8E8 0C2BAB78 */  jal     func_80AEADE0              
/* 04CDC 80AEF8EC A3B8001F */  sb      $t8, 0x001F($sp)           
/* 04CE0 80AEF8F0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 04CE4 80AEF8F4 0C00B2DD */  jal     Flags_SetSwitch
              
/* 04CE8 80AEF8F8 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 04CEC 80AEF8FC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04CF0 80AEF900 0C2BAC3B */  jal     func_80AEB0EC              
/* 04CF4 80AEF904 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 04CF8 80AEF908 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 04CFC 80AEF90C 2409002A */  addiu   $t1, $zero, 0x002A         ## $t1 = 0000002A
/* 04D00 80AEF910 AD490264 */  sw      $t1, 0x0264($t2)           ## 00000264
/* 04D04 80AEF914 8FAC0028 */  lw      $t4, 0x0028($sp)           
/* 04D08 80AEF918 83AB001F */  lb      $t3, 0x001F($sp)           
/* 04D0C 80AEF91C A18B0003 */  sb      $t3, 0x0003($t4)           ## 00000003
.L80AEF920:
/* 04D10 80AEF920 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04D14 80AEF924 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04D18 80AEF928 03E00008 */  jr      $ra                        
/* 04D1C 80AEF92C 00000000 */  nop


