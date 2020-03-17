glabel func_809EBEA8
/* 01168 809EBEA8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0116C 809EBEAC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01170 809EBEB0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01174 809EBEB4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01178 809EBEB8 908202BD */  lbu     $v0, 0x02BD($a0)           ## 000002BD
/* 0117C 809EBEBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01180 809EBEC0 8CA61C44 */  lw      $a2, 0x1C44($a1)           ## 00001C44
/* 01184 809EBEC4 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 01188 809EBEC8 51E00047 */  beql    $t7, $zero, .L809EBFE8     
/* 0118C 809EBECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01190 809EBED0 90980251 */  lbu     $t8, 0x0251($a0)           ## 00000251
/* 01194 809EBED4 57000044 */  bnel    $t8, $zero, .L809EBFE8     
/* 01198 809EBED8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0119C 809EBEDC 908300B1 */  lbu     $v1, 0x00B1($a0)           ## 000000B1
/* 011A0 809EBEE0 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 011A4 809EBEE4 A09902BD */  sb      $t9, 0x02BD($a0)           ## 000002BD
/* 011A8 809EBEE8 1060003E */  beq     $v1, $zero, .L809EBFE4     
/* 011AC 809EBEEC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 011B0 809EBEF0 1061003C */  beq     $v1, $at, .L809EBFE4       
/* 011B4 809EBEF4 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 011B8 809EBEF8 8C8802C8 */  lw      $t0, 0x02C8($a0)           ## 000002C8
/* 011BC 809EBEFC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 011C0 809EBF00 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 011C4 809EBF04 A1000015 */  sb      $zero, 0x0015($t0)         ## 00000015
/* 011C8 809EBF08 8C8202C8 */  lw      $v0, 0x02C8($a0)           ## 000002C8
/* 011CC 809EBF0C 90490015 */  lbu     $t1, 0x0015($v0)           ## 00000015
/* 011D0 809EBF10 A08902BC */  sb      $t1, 0x02BC($a0)           ## 000002BC
/* 011D4 809EBF14 A0400005 */  sb      $zero, 0x0005($v0)         ## 00000005
/* 011D8 809EBF18 8C8202C8 */  lw      $v0, 0x02C8($a0)           ## 000002C8
/* 011DC 809EBF1C 904A0005 */  lbu     $t2, 0x0005($v0)           ## 00000005
/* 011E0 809EBF20 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 011E4 809EBF24 80CB0844 */  lb      $t3, 0x0844($a2)           ## 00000844
/* 011E8 809EBF28 51600004 */  beql    $t3, $zero, .L809EBF3C     
/* 011EC 809EBF2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011F0 809EBF30 90CC0845 */  lbu     $t4, 0x0845($a2)           ## 00000845
/* 011F4 809EBF34 A08C0258 */  sb      $t4, 0x0258($a0)           ## 00000258
/* 011F8 809EBF38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EBF3C:
/* 011FC 809EBF3C 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 01200 809EBF40 0C00D09B */  jal     func_8003426C              
/* 01204 809EBF44 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01208 809EBF48 920300AF */  lbu     $v1, 0x00AF($s0)           ## 000000AF
/* 0120C 809EBF4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01210 809EBF50 0C00D58A */  jal     Actor_ApplyDamage
              
/* 01214 809EBF54 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01218 809EBF58 1440000A */  bne     $v0, $zero, .L809EBF84     
/* 0121C 809EBF5C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01220 809EBF60 0C27AF3C */  jal     func_809EBCF0              
/* 01224 809EBF64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01228 809EBF68 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0122C 809EBF6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01230 809EBF70 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01234 809EBF74 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01238 809EBF78 24070090 */  addiu   $a3, $zero, 0x0090         ## $a3 = 00000090
/* 0123C 809EBF7C 1000001A */  beq     $zero, $zero, .L809EBFE8   
/* 01240 809EBF80 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EBF84:
/* 01244 809EBF84 2861000F */  slti    $at, $v1, 0x000F           
/* 01248 809EBF88 54200005 */  bnel    $at, $zero, .L809EBFA0     
/* 0124C 809EBF8C 28610009 */  slti    $at, $v1, 0x0009           
/* 01250 809EBF90 920E00AF */  lbu     $t6, 0x00AF($s0)           ## 000000AF
/* 01254 809EBF94 29C1000F */  slti    $at, $t6, 0x000F           
/* 01258 809EBF98 1420000D */  bne     $at, $zero, .L809EBFD0     
/* 0125C 809EBF9C 28610009 */  slti    $at, $v1, 0x0009           
.L809EBFA0:
/* 01260 809EBFA0 54200005 */  bnel    $at, $zero, .L809EBFB8     
/* 01264 809EBFA4 28610003 */  slti    $at, $v1, 0x0003           
/* 01268 809EBFA8 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 0126C 809EBFAC 29E10009 */  slti    $at, $t7, 0x0009           
/* 01270 809EBFB0 14200007 */  bne     $at, $zero, .L809EBFD0     
/* 01274 809EBFB4 28610003 */  slti    $at, $v1, 0x0003           
.L809EBFB8:
/* 01278 809EBFB8 14200008 */  bne     $at, $zero, .L809EBFDC     
/* 0127C 809EBFBC 00000000 */  nop
/* 01280 809EBFC0 921800AF */  lbu     $t8, 0x00AF($s0)           ## 000000AF
/* 01284 809EBFC4 2B010003 */  slti    $at, $t8, 0x0003           
/* 01288 809EBFC8 10200004 */  beq     $at, $zero, .L809EBFDC     
/* 0128C 809EBFCC 00000000 */  nop
.L809EBFD0:
/* 01290 809EBFD0 92190251 */  lbu     $t9, 0x0251($s0)           ## 00000251
/* 01294 809EBFD4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 01298 809EBFD8 A2080251 */  sb      $t0, 0x0251($s0)           ## 00000251
.L809EBFDC:
/* 0129C 809EBFDC 0C27AED2 */  jal     func_809EBB48              
/* 012A0 809EBFE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809EBFE4:
/* 012A4 809EBFE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809EBFE8:
/* 012A8 809EBFE8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 012AC 809EBFEC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 012B0 809EBFF0 03E00008 */  jr      $ra                        
/* 012B4 809EBFF4 00000000 */  nop


