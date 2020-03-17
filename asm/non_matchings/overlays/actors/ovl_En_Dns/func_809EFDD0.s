glabel func_809EFDD0
/* 00A80 809EFDD0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A84 809EFDD4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A88 809EFDD8 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00A8C 809EFDDC 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 00A90 809EFDE0 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00A94 809EFDE4 14410019 */  bne     $v0, $at, .L809EFE4C       
/* 00A98 809EFDE8 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00A9C 809EFDEC 8DCEE700 */  lw      $t6, -0x1900($t6)          ## 8015E700
/* 00AA0 809EFDF0 8DEF71C8 */  lw      $t7, 0x71C8($t7)           ## 801271C8
/* 00AA4 809EFDF4 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 00AA8 809EFDF8 933971FA */  lbu     $t9, 0x71FA($t9)           ## 801271FA
/* 00AAC 809EFDFC 01CFC024 */  and     $t8, $t6, $t7              
/* 00AB0 809EFE00 3C074302 */  lui     $a3, 0x4302                ## $a3 = 43020000
/* 00AB4 809EFE04 03384007 */  srav    $t0, $t8, $t9              
/* 00AB8 809EFE08 29010002 */  slti    $at, $t0, 0x0002           
/* 00ABC 809EFE0C 10200008 */  beq     $at, $zero, .L809EFE30     
/* 00AC0 809EFE10 24060078 */  addiu   $a2, $zero, 0x0078         ## $a2 = 00000078
/* 00AC4 809EFE14 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AC8 809EFE18 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00ACC 809EFE1C 24060077 */  addiu   $a2, $zero, 0x0077         ## $a2 = 00000077
/* 00AD0 809EFE20 0C00BD0D */  jal     func_8002F434              
/* 00AD4 809EFE24 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00AD8 809EFE28 1000002C */  beq     $zero, $zero, .L809EFEDC   
/* 00ADC 809EFE2C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFE30:
/* 00AE0 809EFE30 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00AE4 809EFE34 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00AE8 809EFE38 3C074302 */  lui     $a3, 0x4302                ## $a3 = 43020000
/* 00AEC 809EFE3C 0C00BD0D */  jal     func_8002F434              
/* 00AF0 809EFE40 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00AF4 809EFE44 10000025 */  beq     $zero, $zero, .L809EFEDC   
/* 00AF8 809EFE48 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFE4C:
/* 00AFC 809EFE4C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00B00 809EFE50 1441001B */  bne     $v0, $at, .L809EFEC0       
/* 00B04 809EFE54 3C074302 */  lui     $a3, 0x4302                ## $a3 = 43020000
/* 00B08 809EFE58 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 00B0C 809EFE5C 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 00B10 809EFE60 8D4A71CC */  lw      $t2, 0x71CC($t2)           ## 801271CC
/* 00B14 809EFE64 8D29E700 */  lw      $t1, -0x1900($t1)          ## 8015E700
/* 00B18 809EFE68 3C0C8012 */  lui     $t4, 0x8012                ## $t4 = 80120000
/* 00B1C 809EFE6C 918C71FB */  lbu     $t4, 0x71FB($t4)           ## 801271FB
/* 00B20 809EFE70 012A5824 */  and     $t3, $t1, $t2              
/* 00B24 809EFE74 3C074302 */  lui     $a3, 0x4302                ## $a3 = 43020000
/* 00B28 809EFE78 018B6807 */  srav    $t5, $t3, $t4              
/* 00B2C 809EFE7C 29A10002 */  slti    $at, $t5, 0x0002           
/* 00B30 809EFE80 10200008 */  beq     $at, $zero, .L809EFEA4     
/* 00B34 809EFE84 2406007A */  addiu   $a2, $zero, 0x007A         ## $a2 = 0000007A
/* 00B38 809EFE88 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B3C 809EFE8C 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 00B40 809EFE90 24060079 */  addiu   $a2, $zero, 0x0079         ## $a2 = 00000079
/* 00B44 809EFE94 0C00BD0D */  jal     func_8002F434              
/* 00B48 809EFE98 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00B4C 809EFE9C 1000000F */  beq     $zero, $zero, .L809EFEDC   
/* 00B50 809EFEA0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFEA4:
/* 00B54 809EFEA4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B58 809EFEA8 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 00B5C 809EFEAC 3C074302 */  lui     $a3, 0x4302                ## $a3 = 43020000
/* 00B60 809EFEB0 0C00BD0D */  jal     func_8002F434              
/* 00B64 809EFEB4 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00B68 809EFEB8 10000008 */  beq     $zero, $zero, .L809EFEDC   
/* 00B6C 809EFEBC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFEC0:
/* 00B70 809EFEC0 8C8E02C0 */  lw      $t6, 0x02C0($a0)           ## 000002C0
/* 00B74 809EFEC4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00B78 809EFEC8 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 00B7C 809EFECC 8DC60004 */  lw      $a2, 0x0004($t6)           ## 00000004
/* 00B80 809EFED0 0C00BD0D */  jal     func_8002F434              
/* 00B84 809EFED4 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00B88 809EFED8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809EFEDC:
/* 00B8C 809EFEDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B90 809EFEE0 03E00008 */  jr      $ra                        
/* 00B94 809EFEE4 00000000 */  nop


