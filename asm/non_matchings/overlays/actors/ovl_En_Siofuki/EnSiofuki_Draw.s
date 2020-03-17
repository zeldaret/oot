glabel EnSiofuki_Draw
/* 00A18 80AFC598 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00A1C 80AFC59C 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00A20 80AFC5A0 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00A24 80AFC5A4 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00A28 80AFC5A8 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00A2C 80AFC5AC AFA50084 */  sw      $a1, 0x0084($sp)           
/* 00A30 80AFC5B0 01E57821 */  addu    $t7, $t7, $a1              
/* 00A34 80AFC5B4 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
/* 00A38 80AFC5B8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00A3C 80AFC5BC 3C0680B0 */  lui     $a2, %hi(D_80AFC820)       ## $a2 = 80B00000
/* 00A40 80AFC5C0 AFAF0070 */  sw      $t7, 0x0070($sp)           
/* 00A44 80AFC5C4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00A48 80AFC5C8 24C6C820 */  addiu   $a2, $a2, %lo(D_80AFC820)  ## $a2 = 80AFC820
/* 00A4C 80AFC5CC 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFDC
/* 00A50 80AFC5D0 2407028E */  addiu   $a3, $zero, 0x028E         ## $a3 = 0000028E
/* 00A54 80AFC5D4 0C031AB1 */  jal     func_800C6AC4              
/* 00A58 80AFC5D8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00A5C 80AFC5DC 8FB80084 */  lw      $t8, 0x0084($sp)           
/* 00A60 80AFC5E0 0C024F61 */  jal     func_80093D84              
/* 00A64 80AFC5E4 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 00A68 80AFC5E8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00A6C 80AFC5EC C62E0170 */  lwc1    $f14, 0x0170($s1)          ## 00000170
/* 00A70 80AFC5F0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A74 80AFC5F4 44066000 */  mfc1    $a2, $f12                  
/* 00A78 80AFC5F8 0C034261 */  jal     Matrix_Translate              
/* 00A7C 80AFC5FC 00000000 */  nop
/* 00A80 80AFC600 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00A84 80AFC604 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 00A88 80AFC608 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00A8C 80AFC60C 44066000 */  mfc1    $a2, $f12                  
/* 00A90 80AFC610 0C0342A3 */  jal     Matrix_Scale              
/* 00A94 80AFC614 46006386 */  mov.s   $f14, $f12                 
/* 00A98 80AFC618 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00A9C 80AFC61C 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00AA0 80AFC620 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 00AA4 80AFC624 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 00AA8 80AFC628 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 00AAC 80AFC62C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00AB0 80AFC630 8FAA0084 */  lw      $t2, 0x0084($sp)           
/* 00AB4 80AFC634 3C0580B0 */  lui     $a1, %hi(D_80AFC834)       ## $a1 = 80B00000
/* 00AB8 80AFC638 24A5C834 */  addiu   $a1, $a1, %lo(D_80AFC834)  ## $a1 = 80AFC834
/* 00ABC 80AFC63C 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 00AC0 80AFC640 24060296 */  addiu   $a2, $zero, 0x0296         ## $a2 = 00000296
/* 00AC4 80AFC644 0C0346A2 */  jal     Matrix_NewMtx              
/* 00AC8 80AFC648 AFA20058 */  sw      $v0, 0x0058($sp)           
/* 00ACC 80AFC64C 8FA30058 */  lw      $v1, 0x0058($sp)           
/* 00AD0 80AFC650 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00AD4 80AFC654 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 00AD8 80AFC658 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00ADC 80AFC65C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00AE0 80AFC660 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 00AE4 80AFC664 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 00AE8 80AFC668 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00AEC 80AFC66C AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00AF0 80AFC670 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00AF4 80AFC674 8FAD0084 */  lw      $t5, 0x0084($sp)           
/* 00AF8 80AFC678 00080823 */  subu    $at, $zero, $t0            
/* 00AFC 80AFC67C 00013900 */  sll     $a3, $at,  4               
/* 00B00 80AFC680 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 00B04 80AFC684 00083100 */  sll     $a2, $t0,  4               
/* 00B08 80AFC688 00E13823 */  subu    $a3, $a3, $at              
/* 00B0C 80AFC68C 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 00B10 80AFC690 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00B14 80AFC694 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00B18 80AFC698 24090040 */  addiu   $t1, $zero, 0x0040         ## $t1 = 00000040
/* 00B1C 80AFC69C 00C83023 */  subu    $a2, $a2, $t0              
/* 00B20 80AFC6A0 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00B24 80AFC6A4 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00B28 80AFC6A8 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00B2C 80AFC6AC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00B30 80AFC6B0 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00B34 80AFC6B4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00B38 80AFC6B8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00B3C 80AFC6BC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00B40 80AFC6C0 0C0253D0 */  jal     Draw_TwoTexScroll              
/* 00B44 80AFC6C4 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 00B48 80AFC6C8 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00B4C 80AFC6CC 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 00B50 80AFC6D0 258C0B70 */  addiu   $t4, $t4, 0x0B70           ## $t4 = 06000B70
/* 00B54 80AFC6D4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00B58 80AFC6D8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00B5C 80AFC6DC 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 00B60 80AFC6E0 3C0680B0 */  lui     $a2, %hi(D_80AFC848)       ## $a2 = 80B00000
/* 00B64 80AFC6E4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 00B68 80AFC6E8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00B6C 80AFC6EC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00B70 80AFC6F0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00B74 80AFC6F4 8FAD0084 */  lw      $t5, 0x0084($sp)           
/* 00B78 80AFC6F8 24C6C848 */  addiu   $a2, $a2, %lo(D_80AFC848)  ## $a2 = 80AFC848
/* 00B7C 80AFC6FC 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFDC
/* 00B80 80AFC700 240702A2 */  addiu   $a3, $zero, 0x02A2         ## $a3 = 000002A2
/* 00B84 80AFC704 0C031AD5 */  jal     func_800C6B54              
/* 00B88 80AFC708 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 00B8C 80AFC70C 922F019C */  lbu     $t7, 0x019C($s1)           ## 0000019C
/* 00B90 80AFC710 31EE0001 */  andi    $t6, $t7, 0x0001           ## $t6 = 00000000
/* 00B94 80AFC714 51C00030 */  beql    $t6, $zero, .L80AFC7D8     
/* 00B98 80AFC718 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00B9C 80AFC71C 9622001C */  lhu     $v0, 0x001C($s1)           ## 0000001C
/* 00BA0 80AFC720 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00BA4 80AFC724 00021303 */  sra     $v0, $v0, 12               
/* 00BA8 80AFC728 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00BAC 80AFC72C 50400007 */  beql    $v0, $zero, .L80AFC74C     
/* 00BB0 80AFC730 C6240180 */  lwc1    $f4, 0x0180($s1)           ## 00000180
/* 00BB4 80AFC734 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00BB8 80AFC738 50410014 */  beql    $v0, $at, .L80AFC78C       
/* 00BBC 80AFC73C 3C01C20C */  lui     $at, 0xC20C                ## $at = C20C0000
/* 00BC0 80AFC740 10000025 */  beq     $zero, $zero, .L80AFC7D8   
/* 00BC4 80AFC744 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00BC8 80AFC748 C6240180 */  lwc1    $f4, 0x0180($s1)           ## 00000180
.L80AFC74C:
/* 00BCC 80AFC74C 44813000 */  mtc1    $at, $f6                   ## $f6 = -35.00
/* 00BD0 80AFC750 3C0143C3 */  lui     $at, 0x43C3                ## $at = 43C30000
/* 00BD4 80AFC754 44815000 */  mtc1    $at, $f10                  ## $f10 = 390.00
/* 00BD8 80AFC758 46062201 */  sub.s   $f8, $f4, $f6              
/* 00BDC 80AFC75C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BE0 80AFC760 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00BE4 80AFC764 262400E4 */  addiu   $a0, $s1, 0x00E4           ## $a0 = 000000E4
/* 00BE8 80AFC768 460A4003 */  div.s   $f0, $f8, $f10             
/* 00BEC 80AFC76C 24052041 */  addiu   $a1, $zero, 0x2041         ## $a1 = 00002041
/* 00BF0 80AFC770 46008480 */  add.s   $f18, $f16, $f0            
/* 00BF4 80AFC774 44069000 */  mfc1    $a2, $f18                  
/* 00BF8 80AFC778 0C03D0DB */  jal     func_800F436C              
/* 00BFC 80AFC77C 00000000 */  nop
/* 00C00 80AFC780 10000015 */  beq     $zero, $zero, .L80AFC7D8   
/* 00C04 80AFC784 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00C08 80AFC788 3C01C20C */  lui     $at, 0xC20C                ## $at = C20C0000
.L80AFC78C:
/* 00C0C 80AFC78C 44816000 */  mtc1    $at, $f12                  ## $f12 = -35.00
/* 00C10 80AFC790 C6220180 */  lwc1    $f2, 0x0180($s1)           ## 00000180
/* 00C14 80AFC794 4602603C */  c.lt.s  $f12, $f2                  
/* 00C18 80AFC798 00000000 */  nop
/* 00C1C 80AFC79C 4502000E */  bc1fl   .L80AFC7D8                 
/* 00C20 80AFC7A0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00C24 80AFC7A4 C6260198 */  lwc1    $f6, 0x0198($s1)           ## 00000198
/* 00C28 80AFC7A8 460C1101 */  sub.s   $f4, $f2, $f12             
/* 00C2C 80AFC7AC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C30 80AFC7B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00C34 80AFC7B4 460C3201 */  sub.s   $f8, $f6, $f12             
/* 00C38 80AFC7B8 262400E4 */  addiu   $a0, $s1, 0x00E4           ## $a0 = 000000E4
/* 00C3C 80AFC7BC 24052041 */  addiu   $a1, $zero, 0x2041         ## $a1 = 00002041
/* 00C40 80AFC7C0 46082003 */  div.s   $f0, $f4, $f8              
/* 00C44 80AFC7C4 46005400 */  add.s   $f16, $f10, $f0            
/* 00C48 80AFC7C8 44068000 */  mfc1    $a2, $f16                  
/* 00C4C 80AFC7CC 0C03D0DB */  jal     func_800F436C              
/* 00C50 80AFC7D0 00000000 */  nop
/* 00C54 80AFC7D4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AFC7D8:
/* 00C58 80AFC7D8 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00C5C 80AFC7DC 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00C60 80AFC7E0 03E00008 */  jr      $ra                        
/* 00C64 80AFC7E4 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 00C68 80AFC7E8 00000000 */  nop
/* 00C6C 80AFC7EC 00000000 */  nop

