glabel func_80A53AD4
/* 00C34 80A53AD4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00C38 80A53AD8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C3C 80A53ADC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C40 80A53AE0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00C44 80A53AE4 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00C48 80A53AE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C4C 80A53AEC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00C50 80A53AF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C54 80A53AF4 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00C58 80A53AF8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00C5C 80A53AFC 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00C60 80A53B00 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00C64 80A53B04 10400006 */  beq     $v0, $zero, .L80A53B20     
/* 00C68 80A53B08 2418200E */  addiu   $t8, $zero, 0x200E         ## $t8 = 0000200E
/* 00C6C 80A53B0C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00C70 80A53B10 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00C74 80A53B14 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00C78 80A53B18 10000002 */  beq     $zero, $zero, .L80A53B24   
/* 00C7C 80A53B1C A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
.L80A53B20:
/* 00C80 80A53B20 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
.L80A53B24:
/* 00C84 80A53B24 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 00C88 80A53B28 A6190300 */  sh      $t9, 0x0300($s0)           ## 00000300
/* 00C8C 80A53B2C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00C90 80A53B30 0C00BC65 */  jal     func_8002F194              
/* 00C94 80A53B34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C98 80A53B38 10400016 */  beq     $v0, $zero, .L80A53B94     
/* 00C9C 80A53B3C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00CA0 80A53B40 0C00BCDA */  jal     func_8002F368              
/* 00CA4 80A53B44 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00CA8 80A53B48 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00CAC 80A53B4C 1441000C */  bne     $v0, $at, .L80A53B80       
/* 00CB0 80A53B50 00000000 */  nop
/* 00CB4 80A53B54 0C01E221 */  jal     func_80078884              
/* 00CB8 80A53B58 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 00CBC 80A53B5C 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00CC0 80A53B60 24082010 */  addiu   $t0, $zero, 0x2010         ## $t0 = 00002010
/* 00CC4 80A53B64 3C0B80A5 */  lui     $t3, %hi(func_80A53C0C)    ## $t3 = 80A50000
/* 00CC8 80A53B68 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 00CCC 80A53B6C 256B3C0C */  addiu   $t3, $t3, %lo(func_80A53C0C) ## $t3 = 80A53C0C
/* 00CD0 80A53B70 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
/* 00CD4 80A53B74 A60A0300 */  sh      $t2, 0x0300($s0)           ## 00000300
/* 00CD8 80A53B78 1000001F */  beq     $zero, $zero, .L80A53BF8   
/* 00CDC 80A53B7C AE0B025C */  sw      $t3, 0x025C($s0)           ## 0000025C
.L80A53B80:
/* 00CE0 80A53B80 1040001D */  beq     $v0, $zero, .L80A53BF8     
/* 00CE4 80A53B84 8FAD0024 */  lw      $t5, 0x0024($sp)           
/* 00CE8 80A53B88 240C200F */  addiu   $t4, $zero, 0x200F         ## $t4 = 0000200F
/* 00CEC 80A53B8C 1000001A */  beq     $zero, $zero, .L80A53BF8   
/* 00CF0 80A53B90 A5AC010E */  sh      $t4, 0x010E($t5)           ## 0000010E
.L80A53B94:
/* 00CF4 80A53B94 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00CF8 80A53B98 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00CFC 80A53B9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 00D00 80A53BA0 01CF1023 */  subu    $v0, $t6, $t7              
/* 00D04 80A53BA4 00021400 */  sll     $v0, $v0, 16               
/* 00D08 80A53BA8 00021403 */  sra     $v0, $v0, 16               
/* 00D0C 80A53BAC 04400004 */  bltz    $v0, .L80A53BC0            
/* 00D10 80A53BB0 00021823 */  subu    $v1, $zero, $v0            
/* 00D14 80A53BB4 00021C00 */  sll     $v1, $v0, 16               
/* 00D18 80A53BB8 10000003 */  beq     $zero, $zero, .L80A53BC8   
/* 00D1C 80A53BBC 00031C03 */  sra     $v1, $v1, 16               
.L80A53BC0:
/* 00D20 80A53BC0 00031C00 */  sll     $v1, $v1, 16               
/* 00D24 80A53BC4 00031C03 */  sra     $v1, $v1, 16               
.L80A53BC8:
/* 00D28 80A53BC8 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 00D2C 80A53BCC 28614300 */  slti    $at, $v1, 0x4300           
/* 00D30 80A53BD0 4606203C */  c.lt.s  $f4, $f6                   
/* 00D34 80A53BD4 00000000 */  nop
/* 00D38 80A53BD8 45030008 */  bc1tl   .L80A53BFC                 
/* 00D3C 80A53BDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D40 80A53BE0 10200005 */  beq     $at, $zero, .L80A53BF8     
/* 00D44 80A53BE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80A53BE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00D4C 80A53BEC 3C0642C8 */  lui     $a2, 0x42C8                ## $a2 = 42C80000
/* 00D50 80A53BF0 0C00BCA6 */  jal     func_8002F298              
/* 00D54 80A53BF4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80A53BF8:
/* 00D58 80A53BF8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A53BFC:
/* 00D5C 80A53BFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D60 80A53C00 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00D64 80A53C04 03E00008 */  jr      $ra                        
/* 00D68 80A53C08 00000000 */  nop
