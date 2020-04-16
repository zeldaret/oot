glabel func_80AD8174
/* 00A34 80AD8174 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A38 80AD8178 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A3C 80AD817C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A40 80AD8180 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A44 80AD8184 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A48 80AD8188 2405C000 */  addiu   $a1, $zero, 0xC000         ## $a1 = FFFFC000
/* 00A4C 80AD818C 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00A50 80AD8190 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00A54 80AD8194 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 00A58 80AD8198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A5C 80AD819C 0C00BC65 */  jal     func_8002F194              
/* 00A60 80AD81A0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A64 80AD81A4 10400005 */  beq     $v0, $zero, .L80AD81BC     
/* 00A68 80AD81A8 8FAF0024 */  lw      $t7, 0x0024($sp)           
/* 00A6C 80AD81AC 3C0E80AE */  lui     $t6, %hi(func_80AD8234)    ## $t6 = 80AE0000
/* 00A70 80AD81B0 25CE8234 */  addiu   $t6, $t6, %lo(func_80AD8234) ## $t6 = 80AD8234
/* 00A74 80AD81B4 10000017 */  beq     $zero, $zero, .L80AD8214   
/* 00A78 80AD81B8 AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L80AD81BC:
/* 00A7C 80AD81BC 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00A80 80AD81C0 030FC021 */  addu    $t8, $t8, $t7              
/* 00A84 80AD81C4 83181CBC */  lb      $t8, 0x1CBC($t8)           ## 00011CBC
/* 00A88 80AD81C8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A8C 80AD81CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A90 80AD81D0 17010006 */  bne     $t8, $at, .L80AD81EC       
/* 00A94 80AD81D4 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 00A98 80AD81D8 0C00B55C */  jal     Actor_Kill
              
/* 00A9C 80AD81DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA0 80AD81E0 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00AA4 80AD81E4 1000000B */  beq     $zero, $zero, .L80AD8214   
/* 00AA8 80AD81E8 A420FA2E */  sh      $zero, -0x05D2($at)        ## 8015FA2E
.L80AD81EC:
/* 00AAC 80AD81EC 0C00B84B */  jal     func_8002E12C              
/* 00AB0 80AD81F0 24063000 */  addiu   $a2, $zero, 0x3000         ## $a2 = 00003000
/* 00AB4 80AD81F4 50400008 */  beql    $v0, $zero, .L80AD8218     
/* 00AB8 80AD81F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ABC 80AD81FC 9619019C */  lhu     $t9, 0x019C($s0)           ## 0000019C
/* 00AC0 80AD8200 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC4 80AD8204 3C06437A */  lui     $a2, 0x437A                ## $a2 = 437A0000
/* 00AC8 80AD8208 A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00ACC 80AD820C 0C00BCB3 */  jal     func_8002F2CC              
/* 00AD0 80AD8210 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80AD8214:
/* 00AD4 80AD8214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD8218:
/* 00AD8 80AD8218 0C00BE5D */  jal     func_8002F974              
/* 00ADC 80AD821C 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 00AE0 80AD8220 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AE4 80AD8224 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AE8 80AD8228 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00AEC 80AD822C 03E00008 */  jr      $ra                        
/* 00AF0 80AD8230 00000000 */  nop
