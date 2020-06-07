glabel func_80ADE9CC
/* 00C7C 80ADE9CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C80 80ADE9D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C84 80ADE9D4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C88 80ADE9D8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00C8C 80ADE9DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00C90 80ADE9E0 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 00C94 80ADE9E4 8C450028 */  lw      $a1, 0x0028($v0)           ## 00000028
/* 00C98 80ADE9E8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00C9C 80ADE9EC 0C01DE80 */  jal     Math_ApproxF
              
/* 00CA0 80ADE9F0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00CA4 80ADE9F4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CA8 80ADE9F8 90E40195 */  lbu     $a0, 0x0195($a3)           ## 00000195
/* 00CAC 80ADE9FC 000422C0 */  sll     $a0, $a0, 11               
/* 00CB0 80ADEA00 00042400 */  sll     $a0, $a0, 16               
/* 00CB4 80ADEA04 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00CB8 80ADEA08 00042403 */  sra     $a0, $a0, 16               
/* 00CBC 80ADEA0C 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 00CC0 80ADEA10 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.50
/* 00CC4 80ADEA14 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00CC8 80ADEA18 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00CCC 80ADEA1C 46003202 */  mul.s   $f8, $f6, $f0              
/* 00CD0 80ADEA20 C4E40028 */  lwc1    $f4, 0x0028($a3)           ## 00000028
/* 00CD4 80ADEA24 90E20195 */  lbu     $v0, 0x0195($a3)           ## 00000195
/* 00CD8 80ADEA28 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00CDC 80ADEA2C 46082280 */  add.s   $f10, $f4, $f8             
/* 00CE0 80ADEA30 10400003 */  beq     $v0, $zero, .L80ADEA40     
/* 00CE4 80ADEA34 E4EA0028 */  swc1    $f10, 0x0028($a3)          ## 00000028
/* 00CE8 80ADEA38 A0EF0195 */  sb      $t7, 0x0195($a3)           ## 00000195
/* 00CEC 80ADEA3C 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 000000FF
.L80ADEA40:
/* 00CF0 80ADEA40 54400003 */  bnel    $v0, $zero, .L80ADEA50     
/* 00CF4 80ADEA44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF8 80ADEA48 A0F80195 */  sb      $t8, 0x0195($a3)           ## 00000195
/* 00CFC 80ADEA4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADEA50:
/* 00D00 80ADEA50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D04 80ADEA54 03E00008 */  jr      $ra                        
/* 00D08 80ADEA58 00000000 */  nop
