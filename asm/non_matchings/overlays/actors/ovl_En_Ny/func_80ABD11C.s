glabel func_80ABD11C
/* 0056C 80ABD11C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00570 80ABD120 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00574 80ABD124 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00578 80ABD128 8C8201D4 */  lw      $v0, 0x01D4($a0)           ## 000001D4
/* 0057C 80ABD12C 8C8301D8 */  lw      $v1, 0x01D8($a0)           ## 000001D8
/* 00580 80ABD130 24420040 */  addiu   $v0, $v0, 0x0040           ## $v0 = 00000040
/* 00584 80ABD134 284100FF */  slti    $at, $v0, 0x00FF           
/* 00588 80ABD138 1420000F */  bne     $at, $zero, .L80ABD178     
/* 0058C 80ABD13C 2463FFC0 */  addiu   $v1, $v1, 0xFFC0           ## $v1 = FFFFFFC0
/* 00590 80ABD140 8C8501DC */  lw      $a1, 0x01DC($a0)           ## 000001DC
/* 00594 80ABD144 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 00598 80ABD148 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 0059C 80ABD14C 10A00003 */  beq     $a1, $zero, .L80ABD15C     
/* 005A0 80ABD150 24AEFFFF */  addiu   $t6, $a1, 0xFFFF           ## $t6 = FFFFFFFF
/* 005A4 80ABD154 10000008 */  beq     $zero, $zero, .L80ABD178   
/* 005A8 80ABD158 AC8E01DC */  sw      $t6, 0x01DC($a0)           ## 000001DC
.L80ABD15C:
/* 005AC 80ABD15C AFA2001C */  sw      $v0, 0x001C($sp)           
/* 005B0 80ABD160 AFA30018 */  sw      $v1, 0x0018($sp)           
/* 005B4 80ABD164 0C2AF361 */  jal     func_80ABCD84              
/* 005B8 80ABD168 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 005BC 80ABD16C 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 005C0 80ABD170 8FA30018 */  lw      $v1, 0x0018($sp)           
/* 005C4 80ABD174 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80ABD178:
/* 005C8 80ABD178 AC8201D4 */  sw      $v0, 0x01D4($a0)           ## 000001D4
/* 005CC 80ABD17C AC8301D8 */  sw      $v1, 0x01D8($a0)           ## 000001D8
/* 005D0 80ABD180 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005D4 80ABD184 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 005D8 80ABD188 03E00008 */  jr      $ra                        
/* 005DC 80ABD18C 00000000 */  nop
