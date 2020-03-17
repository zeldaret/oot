glabel func_809BE798
/* 01B38 809BE798 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01B3C 809BE79C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B40 809BE7A0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01B44 809BE7A4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01B48 809BE7A8 908602FC */  lbu     $a2, 0x02FC($a0)           ## 000002FC
/* 01B4C 809BE7AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01B50 809BE7B0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01B54 809BE7B4 30CE0002 */  andi    $t6, $a2, 0x0002           ## $t6 = 00000000
/* 01B58 809BE7B8 15C00009 */  bne     $t6, $zero, .L809BE7E0     
/* 01B5C 809BE7BC 30CAFFFD */  andi    $t2, $a2, 0xFFFD           ## $t2 = 00000000
/* 01B60 809BE7C0 908F0348 */  lbu     $t7, 0x0348($a0)           ## 00000348
/* 01B64 809BE7C4 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 01B68 809BE7C8 57000006 */  bnel    $t8, $zero, .L809BE7E4     
/* 01B6C 809BE7CC 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 01B70 809BE7D0 9099029C */  lbu     $t9, 0x029C($a0)           ## 0000029C
/* 01B74 809BE7D4 33290002 */  andi    $t1, $t9, 0x0002           ## $t1 = 00000000
/* 01B78 809BE7D8 5120003C */  beql    $t1, $zero, .L809BE8CC     
/* 01B7C 809BE7DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809BE7E0:
/* 01B80 809BE7E0 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
.L809BE7E4:
/* 01B84 809BE7E4 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 01B88 809BE7E8 920B0348 */  lbu     $t3, 0x0348($s0)           ## 00000348
/* 01B8C 809BE7EC 920D029C */  lbu     $t5, 0x029C($s0)           ## 0000029C
/* 01B90 809BE7F0 01E81023 */  subu    $v0, $t7, $t0              
/* 01B94 809BE7F4 00021400 */  sll     $v0, $v0, 16               
/* 01B98 809BE7F8 00021403 */  sra     $v0, $v0, 16               
/* 01B9C 809BE7FC 28414001 */  slti    $at, $v0, 0x4001           
/* 01BA0 809BE800 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 01BA4 809BE804 31AEFFFD */  andi    $t6, $t5, 0xFFFD           ## $t6 = 00000000
/* 01BA8 809BE808 A20A02FC */  sb      $t2, 0x02FC($s0)           ## 000002FC
/* 01BAC 809BE80C A20C0348 */  sb      $t4, 0x0348($s0)           ## 00000348
/* 01BB0 809BE810 14200003 */  bne     $at, $zero, .L809BE820     
/* 01BB4 809BE814 A20E029C */  sb      $t6, 0x029C($s0)           ## 0000029C
/* 01BB8 809BE818 10000009 */  beq     $zero, $zero, .L809BE840   
/* 01BBC 809BE81C 24024000 */  addiu   $v0, $zero, 0x4000         ## $v0 = 00004000
.L809BE820:
/* 01BC0 809BE820 18400003 */  blez    $v0, .L809BE830            
/* 01BC4 809BE824 2841C000 */  slti    $at, $v0, 0xC000           
/* 01BC8 809BE828 10000005 */  beq     $zero, $zero, .L809BE840   
/* 01BCC 809BE82C 24026000 */  addiu   $v0, $zero, 0x6000         ## $v0 = 00006000
.L809BE830:
/* 01BD0 809BE830 10200003 */  beq     $at, $zero, .L809BE840     
/* 01BD4 809BE834 2402A000 */  addiu   $v0, $zero, 0xA000         ## $v0 = FFFFA000
/* 01BD8 809BE838 10000001 */  beq     $zero, $zero, .L809BE840   
/* 01BDC 809BE83C 2402C000 */  addiu   $v0, $zero, 0xC000         ## $v0 = FFFFC000
.L809BE840:
/* 01BE0 809BE840 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01BE4 809BE844 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 01BE8 809BE848 01023821 */  addu    $a3, $t0, $v0              
/* 01BEC 809BE84C 00073C00 */  sll     $a3, $a3, 16               
/* 01BF0 809BE850 00073C03 */  sra     $a3, $a3, 16               
/* 01BF4 809BE854 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01BF8 809BE858 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 01BFC 809BE85C A7A2002E */  sh      $v0, 0x002E($sp)           
/* 01C00 809BE860 0C00BDC7 */  jal     func_8002F71C              
/* 01C04 809BE864 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01C08 809BE868 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 01C0C 809BE86C 3C18809C */  lui     $t8, %hi(func_809BDC08)    ## $t8 = 809C0000
/* 01C10 809BE870 2718DC08 */  addiu   $t8, $t8, %lo(func_809BDC08) ## $t8 = 809BDC08
/* 01C14 809BE874 17030006 */  bne     $t8, $v1, .L809BE890       
/* 01C18 809BE878 87A2002E */  lh      $v0, 0x002E($sp)           
/* 01C1C 809BE87C 0C26F529 */  jal     func_809BD4A4              
/* 01C20 809BE880 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C24 809BE884 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 01C28 809BE888 1000000F */  beq     $zero, $zero, .L809BE8C8   
/* 01C2C 809BE88C A6190196 */  sh      $t9, 0x0196($s0)           ## 00000196
.L809BE890:
/* 01C30 809BE890 3C09809C */  lui     $t1, %hi(func_809BE3E4)    ## $t1 = 809C0000
/* 01C34 809BE894 2529E3E4 */  addiu   $t1, $t1, %lo(func_809BE3E4) ## $t1 = 809BE3E4
/* 01C38 809BE898 5523000C */  bnel    $t1, $v1, .L809BE8CC       
/* 01C3C 809BE89C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C40 809BE8A0 82030194 */  lb      $v1, 0x0194($s0)           ## 00000194
/* 01C44 809BE8A4 00430019 */  multu   $v0, $v1                   
/* 01C48 809BE8A8 00005012 */  mflo    $t2                        
/* 01C4C 809BE8AC 59400007 */  blezl   $t2, .L809BE8CC            
/* 01C50 809BE8B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C54 809BE8B4 860C0196 */  lh      $t4, 0x0196($s0)           ## 00000196
/* 01C58 809BE8B8 00035823 */  subu    $t3, $zero, $v1            
/* 01C5C 809BE8BC A20B0194 */  sb      $t3, 0x0194($s0)           ## 00000194
/* 01C60 809BE8C0 258D0004 */  addiu   $t5, $t4, 0x0004           ## $t5 = 00000004
/* 01C64 809BE8C4 A60D0196 */  sh      $t5, 0x0196($s0)           ## 00000196
.L809BE8C8:
/* 01C68 809BE8C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809BE8CC:
/* 01C6C 809BE8CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C70 809BE8D0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C74 809BE8D4 03E00008 */  jr      $ra                        
/* 01C78 809BE8D8 00000000 */  nop


