glabel func_80AD5C74
/* 02174 80AD5C74 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02178 80AD5C78 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0217C 80AD5C7C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02180 80AD5C80 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02184 80AD5C84 90820255 */  lbu     $v0, 0x0255($a0)           ## 00000255
/* 02188 80AD5C88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0218C 80AD5C8C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 02190 80AD5C90 51C0001A */  beql    $t6, $zero, .L80AD5CFC     
/* 02194 80AD5C94 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02198 80AD5C98 909800B1 */  lbu     $t8, 0x00B1($a0)           ## 000000B1
/* 0219C 80AD5C9C 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 021A0 80AD5CA0 A08F0255 */  sb      $t7, 0x0255($a0)           ## 00000255
/* 021A4 80AD5CA4 17000004 */  bne     $t8, $zero, .L80AD5CB8     
/* 021A8 80AD5CA8 00000000 */  nop
/* 021AC 80AD5CAC 909900B0 */  lbu     $t9, 0x00B0($a0)           ## 000000B0
/* 021B0 80AD5CB0 53200012 */  beql    $t9, $zero, .L80AD5CFC     
/* 021B4 80AD5CB4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5CB8:
/* 021B8 80AD5CB8 0C00D58A */  jal     Actor_ApplyDamage
              
/* 021BC 80AD5CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021C0 80AD5CC0 14400009 */  bne     $v0, $zero, .L80AD5CE8     
/* 021C4 80AD5CC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021C8 80AD5CC8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 021CC 80AD5CCC 0C00CB1F */  jal     func_80032C7C              
/* 021D0 80AD5CD0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 021D4 80AD5CD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021D8 80AD5CD8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 021DC 80AD5CDC 24053876 */  addiu   $a1, $zero, 0x3876         ## $a1 = 00003876
/* 021E0 80AD5CE0 10000003 */  beq     $zero, $zero, .L80AD5CF0   
/* 021E4 80AD5CE4 00000000 */  nop
.L80AD5CE8:
/* 021E8 80AD5CE8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 021EC 80AD5CEC 24053875 */  addiu   $a1, $zero, 0x3875         ## $a1 = 00003875
.L80AD5CF0:
/* 021F0 80AD5CF0 0C2B5021 */  jal     func_80AD4084              
/* 021F4 80AD5CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021F8 80AD5CF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AD5CFC:
/* 021FC 80AD5CFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02200 80AD5D00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02204 80AD5D04 03E00008 */  jr      $ra                        
/* 02208 80AD5D08 00000000 */  nop
