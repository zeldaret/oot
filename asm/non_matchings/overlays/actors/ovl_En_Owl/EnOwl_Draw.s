glabel EnOwl_Draw
/* 03098 80ACCFB8 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0309C 80ACCFBC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 030A0 80ACCFC0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 030A4 80ACCFC4 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 030A8 80ACCFC8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 030AC 80ACCFCC 3C0680AD */  lui     $a2, %hi(D_80ACD7DC)       ## $a2 = 80AD0000
/* 030B0 80ACCFD0 24C6D7DC */  addiu   $a2, $a2, %lo(D_80ACD7DC)  ## $a2 = 80ACD7DC
/* 030B4 80ACCFD4 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 030B8 80ACCFD8 240708C7 */  addiu   $a3, $zero, 0x08C7         ## $a3 = 000008C7
/* 030BC 80ACCFDC 0C031AB1 */  jal     func_800C6AC4              
/* 030C0 80ACCFE0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 030C4 80ACCFE4 8FAF0054 */  lw      $t7, 0x0054($sp)           
/* 030C8 80ACCFE8 0C0250F2 */  jal     func_800943C8              
/* 030CC 80ACCFEC 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 030D0 80ACCFF0 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 030D4 80ACCFF4 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 030D8 80ACCFF8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 030DC 80ACCFFC 8CA302C0 */  lw      $v1, 0x02C0($a1)           ## 000002C0
/* 030E0 80ACD000 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 030E4 80ACD004 3C0480AD */  lui     $a0, %hi(D_80ACD638)       ## $a0 = 80AD0000
/* 030E8 80ACD008 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 030EC 80ACD00C ACB802C0 */  sw      $t8, 0x02C0($a1)           ## 000002C0
/* 030F0 80ACD010 AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 030F4 80ACD014 850903F4 */  lh      $t1, 0x03F4($t0)           ## 000003F4
/* 030F8 80ACD018 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 030FC 80ACD01C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 03100 80ACD020 00095080 */  sll     $t2, $t1,  2               
/* 03104 80ACD024 008A2021 */  addu    $a0, $a0, $t2              
/* 03108 80ACD028 8C84D638 */  lw      $a0, %lo(D_80ACD638)($a0)  
/* 0310C 80ACD02C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 03110 80ACD030 3C0A80AD */  lui     $t2, %hi(func_80ACCF34)    ## $t2 = 80AD0000
/* 03114 80ACD034 00046100 */  sll     $t4, $a0,  4               
/* 03118 80ACD038 000C6F02 */  srl     $t5, $t4, 28               
/* 0311C 80ACD03C 000D7080 */  sll     $t6, $t5,  2               
/* 03120 80ACD040 01EE7821 */  addu    $t7, $t7, $t6              
/* 03124 80ACD044 8DEF6FA8 */  lw      $t7, 0x6FA8($t7)           ## 80166FA8
/* 03128 80ACD048 00815824 */  and     $t3, $a0, $at              
/* 0312C 80ACD04C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03130 80ACD050 016FC021 */  addu    $t8, $t3, $t7              
/* 03134 80ACD054 0301C821 */  addu    $t9, $t8, $at              
/* 03138 80ACD058 AC790004 */  sw      $t9, 0x0004($v1)           ## 00000004
/* 0313C 80ACD05C 8D0203DC */  lw      $v0, 0x03DC($t0)           ## 000003DC
/* 03140 80ACD060 3C0980AD */  lui     $t1, %hi(func_80ACCE00)    ## $t1 = 80AD0000
/* 03144 80ACD064 2529CE00 */  addiu   $t1, $t1, %lo(func_80ACCE00) ## $t1 = 80ACCE00
/* 03148 80ACD068 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000004
/* 0314C 80ACD06C 8C460020 */  lw      $a2, 0x0020($v0)           ## 00000020
/* 03150 80ACD070 90470002 */  lbu     $a3, 0x0002($v0)           ## 00000002
/* 03154 80ACD074 254ACF34 */  addiu   $t2, $t2, %lo(func_80ACCF34) ## $t2 = 80ACCF34
/* 03158 80ACD078 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 0315C 80ACD07C AFA90010 */  sw      $t1, 0x0010($sp)           
/* 03160 80ACD080 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 03164 80ACD084 0C0286B2 */  jal     func_800A1AC8              
/* 03168 80ACD088 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 0316C 80ACD08C 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 03170 80ACD090 3C0680AD */  lui     $a2, %hi(D_80ACD7EC)       ## $a2 = 80AD0000
/* 03174 80ACD094 24C6D7EC */  addiu   $a2, $a2, %lo(D_80ACD7EC)  ## $a2 = 80ACD7EC
/* 03178 80ACD098 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 0317C 80ACD09C 240708D8 */  addiu   $a3, $zero, 0x08D8         ## $a3 = 000008D8
/* 03180 80ACD0A0 0C031AD5 */  jal     func_800C6B54              
/* 03184 80ACD0A4 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 03188 80ACD0A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0318C 80ACD0AC 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 03190 80ACD0B0 03E00008 */  jr      $ra                        
/* 03194 80ACD0B4 00000000 */  nop


