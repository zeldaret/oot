glabel func_809E0C8C
/* 00A4C 809E0C8C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00A50 809E0C90 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A54 809E0C94 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A58 809E0C98 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00A5C 809E0C9C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00A60 809E0CA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A64 809E0CA4 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 00A68 809E0CA8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A6C 809E0CAC AFAF003C */  sw      $t7, 0x003C($sp)           
/* 00A70 809E0CB0 860301C4 */  lh      $v1, 0x01C4($s0)           ## 000001C4
/* 00A74 809E0CB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A78 809E0CB8 10600002 */  beq     $v1, $zero, .L809E0CC4     
/* 00A7C 809E0CBC 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00A80 809E0CC0 A61801C4 */  sh      $t8, 0x01C4($s0)           ## 000001C4
.L809E0CC4:
/* 00A84 809E0CC4 0C00B821 */  jal     func_8002E084              
/* 00A88 809E0CC8 24052800 */  addiu   $a1, $zero, 0x2800         ## $a1 = 00002800
/* 00A8C 809E0CCC 10400019 */  beq     $v0, $zero, .L809E0D34     
/* 00A90 809E0CD0 AFA20038 */  sw      $v0, 0x0038($sp)           
/* 00A94 809E0CD4 8FA2003C */  lw      $v0, 0x003C($sp)           
/* 00A98 809E0CD8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00A9C 809E0CDC 44814000 */  mtc1    $at, $f8                   ## $f8 = 20.00
/* 00AA0 809E0CE0 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 00AA4 809E0CE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA8 809E0CE8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFEC
/* 00AAC 809E0CEC E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 00AB0 809E0CF0 C4460028 */  lwc1    $f6, 0x0028($v0)           ## 00000028
/* 00AB4 809E0CF4 46083280 */  add.s   $f10, $f6, $f8             
/* 00AB8 809E0CF8 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 00ABC 809E0CFC C450002C */  lwc1    $f16, 0x002C($v0)          ## 0000002C
/* 00AC0 809E0D00 0C00B6CA */  jal     func_8002DB28              
/* 00AC4 809E0D04 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 00AC8 809E0D08 00022C00 */  sll     $a1, $v0, 16               
/* 00ACC 809E0D0C 28413001 */  slti    $at, $v0, 0x3001           
/* 00AD0 809E0D10 14200002 */  bne     $at, $zero, .L809E0D1C     
/* 00AD4 809E0D14 00052C03 */  sra     $a1, $a1, 16               
/* 00AD8 809E0D18 24053000 */  addiu   $a1, $zero, 0x3000         ## $a1 = 00003000
.L809E0D1C:
/* 00ADC 809E0D1C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00AE0 809E0D20 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00AE4 809E0D24 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00AE8 809E0D28 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 00AEC 809E0D2C 10000007 */  beq     $zero, $zero, .L809E0D4C   
/* 00AF0 809E0D30 8FB90038 */  lw      $t9, 0x0038($sp)           
.L809E0D34:
/* 00AF4 809E0D34 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00AF8 809E0D38 2405F000 */  addiu   $a1, $zero, 0xF000         ## $a1 = FFFFF000
/* 00AFC 809E0D3C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00B00 809E0D40 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00B04 809E0D44 24070100 */  addiu   $a3, $zero, 0x0100         ## $a3 = 00000100
/* 00B08 809E0D48 8FB90038 */  lw      $t9, 0x0038($sp)           
.L809E0D4C:
/* 00B0C 809E0D4C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00B10 809E0D50 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00B14 809E0D54 17200007 */  bne     $t9, $zero, .L809E0D74     
/* 00B18 809E0D58 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B1C 809E0D5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 80.00
/* 00B20 809E0D60 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00B24 809E0D64 4604903C */  c.lt.s  $f18, $f4                  
/* 00B28 809E0D68 00000000 */  nop
/* 00B2C 809E0D6C 45020005 */  bc1fl   .L809E0D84                 
/* 00B30 809E0D70 860801C4 */  lh      $t0, 0x01C4($s0)           ## 000001C4
.L809E0D74:
/* 00B34 809E0D74 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00B38 809E0D78 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 00B3C 809E0D7C 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00B40 809E0D80 860801C4 */  lh      $t0, 0x01C4($s0)           ## 000001C4
.L809E0D84:
/* 00B44 809E0D84 5100001B */  beql    $t0, $zero, .L809E0DF4     
/* 00B48 809E0D88 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
/* 00B4C 809E0D8C 0C023C20 */  jal     func_8008F080              
/* 00B50 809E0D90 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00B54 809E0D94 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B58 809E0D98 50410016 */  beql    $v0, $at, .L809E0DF4       
/* 00B5C 809E0D9C 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
/* 00B60 809E0DA0 92090248 */  lbu     $t1, 0x0248($s0)           ## 00000248
/* 00B64 809E0DA4 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 00B68 809E0DA8 55400012 */  bnel    $t2, $zero, .L809E0DF4     
/* 00B6C 809E0DAC 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
/* 00B70 809E0DB0 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 00B74 809E0DB4 8FAD003C */  lw      $t5, 0x003C($sp)           
/* 00B78 809E0DB8 316C0009 */  andi    $t4, $t3, 0x0009           ## $t4 = 00000000
/* 00B7C 809E0DBC 5580000D */  bnel    $t4, $zero, .L809E0DF4     
/* 00B80 809E0DC0 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
/* 00B84 809E0DC4 8DAE067C */  lw      $t6, 0x067C($t5)           ## 0000067C
/* 00B88 809E0DC8 3C01C220 */  lui     $at, 0xC220                ## $at = C2200000
/* 00B8C 809E0DCC 000E7A00 */  sll     $t7, $t6,  8               
/* 00B90 809E0DD0 05E20008 */  bltzl   $t7, .L809E0DF4            
/* 00B94 809E0DD4 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
/* 00B98 809E0DD8 44813000 */  mtc1    $at, $f6                   ## $f6 = -40.00
/* 00B9C 809E0DDC C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 00BA0 809E0DE0 4608303C */  c.lt.s  $f6, $f8                   
/* 00BA4 809E0DE4 00000000 */  nop
/* 00BA8 809E0DE8 4502000C */  bc1fl   .L809E0E1C                 
/* 00BAC 809E0DEC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BB0 809E0DF0 92020248 */  lbu     $v0, 0x0248($s0)           ## 00000248
.L809E0DF4:
/* 00BB4 809E0DF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB8 809E0DF8 240538B7 */  addiu   $a1, $zero, 0x38B7         ## $a1 = 000038B7
/* 00BBC 809E0DFC 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 00BC0 809E0E00 13000003 */  beq     $t8, $zero, .L809E0E10     
/* 00BC4 809E0E04 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 00BC8 809E0E08 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BCC 809E0E0C A2190248 */  sb      $t9, 0x0248($s0)           ## 00000248
.L809E0E10:
/* 00BD0 809E0E10 0C2780D5 */  jal     func_809E0354              
/* 00BD4 809E0E14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD8 809E0E18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E0E1C:
/* 00BDC 809E0E1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00BE0 809E0E20 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00BE4 809E0E24 03E00008 */  jr      $ra                        
/* 00BE8 809E0E28 00000000 */  nop
