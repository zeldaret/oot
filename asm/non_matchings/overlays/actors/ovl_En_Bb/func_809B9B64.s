.late_rodata
glabel D_809BBC9C
    .float -1.059999942779541
glabel D_809BBCA0
    .float 65535.0

.text
glabel func_809B9B64
/* 01884 809B9B64 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01888 809B9B68 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0188C 809B9B6C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01890 809B9B70 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01894 809B9B74 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01898 809B9B78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0189C 809B9B7C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 018A0 809B9B80 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 018A4 809B9B84 AFAF0054 */  sw      $t7, 0x0054($sp)           
/* 018A8 809B9B88 8E030260 */  lw      $v1, 0x0260($s0)           ## 00000260
/* 018AC 809B9B8C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 018B0 809B9B90 10600002 */  beq     $v1, $zero, .L809B9B9C     
/* 018B4 809B9B94 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 018B8 809B9B98 AE180260 */  sw      $t8, 0x0260($s0)           ## 00000260
.L809B9B9C:
/* 018BC 809B9B9C 8619008A */  lh      $t9, 0x008A($s0)           ## 0000008A
/* 018C0 809B9BA0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 018C4 809B9BA4 86040268 */  lh      $a0, 0x0268($s0)           ## 00000268
/* 018C8 809B9BA8 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 018CC 809B9BAC 03281023 */  subu    $v0, $t9, $t0              
/* 018D0 809B9BB0 00021400 */  sll     $v0, $v0, 16               
/* 018D4 809B9BB4 10800007 */  beq     $a0, $zero, .L809B9BD4     
/* 018D8 809B9BB8 00021403 */  sra     $v0, $v0, 16               
/* 018DC 809B9BBC 10810031 */  beq     $a0, $at, .L809B9C84       
/* 018E0 809B9BC0 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 018E4 809B9BC4 5085009F */  beql    $a0, $a1, .L809B9E44       
/* 018E8 809B9BC8 8E0F0260 */  lw      $t7, 0x0260($s0)           ## 00000260
/* 018EC 809B9BCC 100000C0 */  beq     $zero, $zero, .L809B9ED0   
/* 018F0 809B9BD0 00000000 */  nop
.L809B9BD4:
/* 018F4 809B9BD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F8 809B9BD8 0C00B6D2 */  jal     func_8002DB48              
/* 018FC 809B9BDC A7A2004E */  sh      $v0, 0x004E($sp)           
/* 01900 809B9BE0 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 01904 809B9BE4 44812000 */  mtc1    $at, $f4                   ## $f4 = 250.00
/* 01908 809B9BE8 87A2004E */  lh      $v0, 0x004E($sp)           
/* 0190C 809B9BEC 4604003E */  c.le.s  $f0, $f4                   
/* 01910 809B9BF0 00000000 */  nop
/* 01914 809B9BF4 45000021 */  bc1f    .L809B9C7C                 
/* 01918 809B9BF8 00000000 */  nop
/* 0191C 809B9BFC 04400003 */  bltz    $v0, .L809B9C0C            
/* 01920 809B9C00 00021823 */  subu    $v1, $zero, $v0            
/* 01924 809B9C04 10000001 */  beq     $zero, $zero, .L809B9C0C   
/* 01928 809B9C08 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809B9C0C:
/* 0192C 809B9C0C 28614001 */  slti    $at, $v1, 0x4001           
/* 01930 809B9C10 1020001A */  beq     $at, $zero, .L809B9C7C     
/* 01934 809B9C14 00000000 */  nop
/* 01938 809B9C18 8E090260 */  lw      $t1, 0x0260($s0)           ## 00000260
/* 0193C 809B9C1C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01940 809B9C20 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01944 809B9C24 15200015 */  bne     $t1, $zero, .L809B9C7C     
/* 01948 809B9C28 240B0007 */  addiu   $t3, $zero, 0x0007         ## $t3 = 00000007
/* 0194C 809B9C2C 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 01950 809B9C30 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 01954 809B9C34 44814000 */  mtc1    $at, $f8                   ## $f8 = -1.00
/* 01958 809B9C38 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 0195C 809B9C3C 860E0268 */  lh      $t6, 0x0268($s0)           ## 00000268
/* 01960 809B9C40 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 01964 809B9C44 44815000 */  mtc1    $at, $f10                  ## $f10 = 18.00
/* 01968 809B9C48 318DFFFE */  andi    $t5, $t4, 0xFFFE           ## $t5 = 00000000
/* 0196C 809B9C4C 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 01970 809B9C50 AE0A025C */  sw      $t2, 0x025C($s0)           ## 0000025C
/* 01974 809B9C54 AE0B0260 */  sw      $t3, 0x0260($s0)           ## 00000260
/* 01978 809B9C58 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
/* 0197C 809B9C5C A60F0268 */  sh      $t7, 0x0268($s0)           ## 00000268
/* 01980 809B9C60 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 01984 809B9C64 E608006C */  swc1    $f8, 0x006C($s0)           ## 0000006C
/* 01988 809B9C68 E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
/* 0198C 809B9C6C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01990 809B9C70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01994 809B9C74 0C26E0DF */  jal     func_809B837C              
/* 01998 809B9C78 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L809B9C7C:
/* 0199C 809B9C7C 10000094 */  beq     $zero, $zero, .L809B9ED0   
/* 019A0 809B9C80 86040268 */  lh      $a0, 0x0268($s0)           ## 00000268
.L809B9C84:
/* 019A4 809B9C84 8E180260 */  lw      $t8, 0x0260($s0)           ## 00000260
/* 019A8 809B9C88 17000005 */  bne     $t8, $zero, .L809B9CA0     
/* 019AC 809B9C8C 00000000 */  nop
/* 019B0 809B9C90 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 019B4 809B9C94 AE00025C */  sw      $zero, 0x025C($s0)         ## 0000025C
/* 019B8 809B9C98 37280001 */  ori     $t0, $t9, 0x0001           ## $t0 = 00000001
/* 019BC 809B9C9C AE080004 */  sw      $t0, 0x0004($s0)           ## 00000004
.L809B9CA0:
/* 019C0 809B9CA0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 019C4 809B9CA4 00000000 */  nop
/* 019C8 809B9CA8 C6100274 */  lwc1    $f16, 0x0274($s0)          ## 00000274
/* 019CC 809B9CAC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 019D0 809B9CB0 26040288 */  addiu   $a0, $s0, 0x0288           ## $a0 = 00000288
/* 019D4 809B9CB4 46008480 */  add.s   $f18, $f16, $f0            
/* 019D8 809B9CB8 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 019DC 809B9CBC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019E0 809B9CC0 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 019E4 809B9CC4 E6120274 */  swc1    $f18, 0x0274($s0)          ## 00000274
/* 019E8 809B9CC8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 019EC 809B9CCC E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 019F0 809B9CD0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 019F4 809B9CD4 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 019F8 809B9CD8 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 019FC 809B9CDC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A00 809B9CE0 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01A04 809B9CE4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01A08 809B9CE8 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01A0C 809B9CEC 96040088 */  lhu     $a0, 0x0088($s0)           ## 00000088
/* 01A10 809B9CF0 30890008 */  andi    $t1, $a0, 0x0008           ## $t1 = 00000000
/* 01A14 809B9CF4 51200016 */  beql    $t1, $zero, .L809B9D50     
/* 01A18 809B9CF8 308E0001 */  andi    $t6, $a0, 0x0001           ## $t6 = 00000000
/* 01A1C 809B9CFC 86060032 */  lh      $a2, 0x0032($s0)           ## 00000032
/* 01A20 809B9D00 8605007E */  lh      $a1, 0x007E($s0)           ## 0000007E
/* 01A24 809B9D04 00C51023 */  subu    $v0, $a2, $a1              
/* 01A28 809B9D08 00021400 */  sll     $v0, $v0, 16               
/* 01A2C 809B9D0C 00021403 */  sra     $v0, $v0, 16               
/* 01A30 809B9D10 04400003 */  bltz    $v0, .L809B9D20            
/* 01A34 809B9D14 00021823 */  subu    $v1, $zero, $v0            
/* 01A38 809B9D18 10000001 */  beq     $zero, $zero, .L809B9D20   
/* 01A3C 809B9D1C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L809B9D20:
/* 01A40 809B9D20 28614001 */  slti    $at, $v1, 0x4001           
/* 01A44 809B9D24 14200006 */  bne     $at, $zero, .L809B9D40     
/* 01A48 809B9D28 00A55021 */  addu    $t2, $a1, $a1              
/* 01A4C 809B9D2C 01465823 */  subu    $t3, $t2, $a2              
/* 01A50 809B9D30 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 01A54 809B9D34 01616021 */  addu    $t4, $t3, $at              
/* 01A58 809B9D38 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 01A5C 809B9D3C 96040088 */  lhu     $a0, 0x0088($s0)           ## 00000088
.L809B9D40:
/* 01A60 809B9D40 308DFFF7 */  andi    $t5, $a0, 0xFFF7           ## $t5 = 00000000
/* 01A64 809B9D44 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
/* 01A68 809B9D48 31A4FFFF */  andi    $a0, $t5, 0xFFFF           ## $a0 = 00000000
/* 01A6C 809B9D4C 308E0001 */  andi    $t6, $a0, 0x0001           ## $t6 = 00000000
.L809B9D50:
/* 01A70 809B9D50 11C00030 */  beq     $t6, $zero, .L809B9E14     
/* 01A74 809B9D54 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01A78 809B9D58 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 01A7C 809B9D5C 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 01A80 809B9D60 0C010753 */  jal     func_80041D4C              
/* 01A84 809B9D64 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 01A88 809B9D68 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01A8C 809B9D6C 10450005 */  beq     $v0, $a1, .L809B9D84       
/* 01A90 809B9D70 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01A94 809B9D74 10410003 */  beq     $v0, $at, .L809B9D84       
/* 01A98 809B9D78 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 01A9C 809B9D7C 5441000D */  bnel    $v0, $at, .L809B9DB4       
/* 01AA0 809B9D80 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
.L809B9D84:
/* 01AA4 809B9D84 86180268 */  lh      $t8, 0x0268($s0)           ## 00000268
/* 01AA8 809B9D88 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 01AAC 809B9D8C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01AB0 809B9D90 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 01AB4 809B9D94 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 01AB8 809B9D98 01014824 */  and     $t1, $t0, $at              
/* 01ABC 809B9D9C AE05025C */  sw      $a1, 0x025C($s0)           ## 0000025C
/* 01AC0 809B9DA0 AE0F0260 */  sw      $t7, 0x0260($s0)           ## 00000260
/* 01AC4 809B9DA4 A6190268 */  sh      $t9, 0x0268($s0)           ## 00000268
/* 01AC8 809B9DA8 10000017 */  beq     $zero, $zero, .L809B9E08   
/* 01ACC 809B9DAC AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 01AD0 809B9DB0 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
.L809B9DB4:
/* 01AD4 809B9DB4 44810000 */  mtc1    $at, $f0                   ## $f0 = 13.00
/* 01AD8 809B9DB8 3C01809C */  lui     $at, %hi(D_809BBC9C)       ## $at = 809C0000
/* 01ADC 809B9DBC C426BC9C */  lwc1    $f6, %lo(D_809BBC9C)($at)  
/* 01AE0 809B9DC0 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 01AE4 809B9DC4 46062202 */  mul.s   $f8, $f4, $f6              
/* 01AE8 809B9DC8 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01AEC 809B9DCC C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 01AF0 809B9DD0 460A003C */  c.lt.s  $f0, $f10                  
/* 01AF4 809B9DD4 00000000 */  nop
/* 01AF8 809B9DD8 45000002 */  bc1f    .L809B9DE4                 
/* 01AFC 809B9DDC 00000000 */  nop
/* 01B00 809B9DE0 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
.L809B9DE4:
/* 01B04 809B9DE4 0C0329C8 */  jal     Math_SinF              
/* 01B08 809B9DE8 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 01B0C 809B9DEC 3C01809C */  lui     $at, %hi(D_809BBCA0)       ## $at = 809C0000
/* 01B10 809B9DF0 C430BCA0 */  lwc1    $f16, %lo(D_809BBCA0)($at) 
/* 01B14 809B9DF4 46100482 */  mul.s   $f18, $f0, $f16            
/* 01B18 809B9DF8 4600910D */  trunc.w.s $f4, $f18                  
/* 01B1C 809B9DFC 440B2000 */  mfc1    $t3, $f4                   
/* 01B20 809B9E00 00000000 */  nop
/* 01B24 809B9E04 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
.L809B9E08:
/* 01B28 809B9E08 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 01B2C 809B9E0C 318DFFFE */  andi    $t5, $t4, 0xFFFE           ## $t5 = 00000000
/* 01B30 809B9E10 A60D0088 */  sh      $t5, 0x0088($s0)           ## 00000088
.L809B9E14:
/* 01B34 809B9E14 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 01B38 809B9E18 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
/* 01B3C 809B9E1C A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
/* 01B40 809B9E20 0C00CD90 */  jal     Actor_GetCollidedExplosive              
/* 01B44 809B9E24 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01B48 809B9E28 10400003 */  beq     $v0, $zero, .L809B9E38     
/* 01B4C 809B9E2C 00000000 */  nop
/* 01B50 809B9E30 0C26E5BB */  jal     func_809B96EC              
/* 01B54 809B9E34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B9E38:
/* 01B58 809B9E38 10000025 */  beq     $zero, $zero, .L809B9ED0   
/* 01B5C 809B9E3C 86040268 */  lh      $a0, 0x0268($s0)           ## 00000268
/* 01B60 809B9E40 8E0F0260 */  lw      $t7, 0x0260($s0)           ## 00000260
.L809B9E44:
/* 01B64 809B9E44 27A20038 */  addiu   $v0, $sp, 0x0038           ## $v0 = FFFFFFE0
/* 01B68 809B9E48 24180078 */  addiu   $t8, $zero, 0x0078         ## $t8 = 00000078
/* 01B6C 809B9E4C 15E00020 */  bne     $t7, $zero, .L809B9ED0     
/* 01B70 809B9E50 00000000 */  nop
/* 01B74 809B9E54 8E080008 */  lw      $t0, 0x0008($s0)           ## 00000008
/* 01B78 809B9E58 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01B7C 809B9E5C 8E19000C */  lw      $t9, 0x000C($s0)           ## 0000000C
/* 01B80 809B9E60 AE080024 */  sw      $t0, 0x0024($s0)           ## 00000024
/* 01B84 809B9E64 8E080010 */  lw      $t0, 0x0010($s0)           ## 00000010
/* 01B88 809B9E68 8A0A0014 */  lwl     $t2, 0x0014($s0)           ## 00000014
/* 01B8C 809B9E6C 9A0A0017 */  lwr     $t2, 0x0017($s0)           ## 00000017
/* 01B90 809B9E70 A6000268 */  sh      $zero, 0x0268($s0)         ## 00000268
/* 01B94 809B9E74 AE180260 */  sw      $t8, 0x0260($s0)           ## 00000260
/* 01B98 809B9E78 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 01B9C 809B9E7C E602006C */  swc1    $f2, 0x006C($s0)           ## 0000006C
/* 01BA0 809B9E80 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 01BA4 809B9E84 AE190028 */  sw      $t9, 0x0028($s0)           ## 00000028
/* 01BA8 809B9E88 AE08002C */  sw      $t0, 0x002C($s0)           ## 0000002C
/* 01BAC 809B9E8C AC4A0000 */  sw      $t2, 0x0000($v0)           ## FFFFFFE0
/* 01BB0 809B9E90 960A0018 */  lhu     $t2, 0x0018($s0)           ## 00000018
/* 01BB4 809B9E94 8C4C0000 */  lw      $t4, 0x0000($v0)           ## FFFFFFE0
/* 01BB8 809B9E98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BBC 809B9E9C A44A0004 */  sh      $t2, 0x0004($v0)           ## FFFFFFE4
/* 01BC0 809B9EA0 AA0C0030 */  swl     $t4, 0x0030($s0)           ## 00000030
/* 01BC4 809B9EA4 BA0C0033 */  swr     $t4, 0x0033($s0)           ## 00000033
/* 01BC8 809B9EA8 944C0004 */  lhu     $t4, 0x0004($v0)           ## FFFFFFE4
/* 01BCC 809B9EAC A60C0034 */  sh      $t4, 0x0034($s0)           ## 00000034
/* 01BD0 809B9EB0 884E0000 */  lwl     $t6, 0x0000($v0)           ## FFFFFFE0
/* 01BD4 809B9EB4 984E0003 */  lwr     $t6, 0x0003($v0)           ## FFFFFFE3
/* 01BD8 809B9EB8 AA0E00B4 */  swl     $t6, 0x00B4($s0)           ## 000000B4
/* 01BDC 809B9EBC BA0E00B7 */  swr     $t6, 0x00B7($s0)           ## 000000B7
/* 01BE0 809B9EC0 944E0004 */  lhu     $t6, 0x0004($v0)           ## FFFFFFE4
/* 01BE4 809B9EC4 0C26E146 */  jal     func_809B8518              
/* 01BE8 809B9EC8 A60E00B8 */  sh      $t6, 0x00B8($s0)           ## 000000B8
/* 01BEC 809B9ECC 86040268 */  lh      $a0, 0x0268($s0)           ## 00000268
.L809B9ED0:
/* 01BF0 809B9ED0 50800011 */  beql    $a0, $zero, .L809B9F18     
/* 01BF4 809B9ED4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01BF8 809B9ED8 C6060164 */  lwc1    $f6, 0x0164($s0)           ## 00000164
/* 01BFC 809B9EDC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01C00 809B9EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C04 809B9EE4 4600320D */  trunc.w.s $f8, $f6                   
/* 01C08 809B9EE8 44024000 */  mfc1    $v0, $f8                   
/* 01C0C 809B9EEC 00000000 */  nop
/* 01C10 809B9EF0 10400003 */  beq     $v0, $zero, .L809B9F00     
/* 01C14 809B9EF4 00000000 */  nop
/* 01C18 809B9EF8 54410004 */  bnel    $v0, $at, .L809B9F0C       
/* 01C1C 809B9EFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B9F00:
/* 01C20 809B9F00 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C24 809B9F04 240538C9 */  addiu   $a1, $zero, 0x38C9         ## $a1 = 000038C9
/* 01C28 809B9F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B9F0C:
/* 01C2C 809B9F0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C30 809B9F10 240530CF */  addiu   $a1, $zero, 0x30CF         ## $a1 = 000030CF
/* 01C34 809B9F14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B9F18:
/* 01C38 809B9F18 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C3C 809B9F1C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01C40 809B9F20 03E00008 */  jr      $ra                        
/* 01C44 809B9F24 00000000 */  nop
