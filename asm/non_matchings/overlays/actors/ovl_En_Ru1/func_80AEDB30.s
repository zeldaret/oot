glabel func_80AEDB30
/* 02F20 80AEDB30 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02F24 80AEDB34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02F28 80AEDB38 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 02F2C 80AEDB3C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02F30 80AEDB40 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 02F34 80AEDB44 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 02F38 80AEDB48 51E00069 */  beql    $t7, $zero, .L80AEDCF0     
/* 02F3C 80AEDB4C 94CF0088 */  lhu     $t7, 0x0088($a2)           ## 00000088
/* 02F40 80AEDB50 90C5007D */  lbu     $a1, 0x007D($a2)           ## 0000007D
/* 02F44 80AEDB54 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 02F48 80AEDB58 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02F4C 80AEDB5C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02F50 80AEDB60 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 02F54 80AEDB64 24C50060 */  addiu   $a1, $a2, 0x0060           ## $a1 = 00000060
/* 02F58 80AEDB68 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000060
/* 02F5C 80AEDB6C 4602203E */  c.le.s  $f4, $f2                   
/* 02F60 80AEDB70 00000000 */  nop
/* 02F64 80AEDB74 4502005E */  bc1fl   .L80AEDCF0                 
/* 02F68 80AEDB78 94CF0088 */  lhu     $t7, 0x0088($a2)           ## 00000088
/* 02F6C 80AEDB7C 10400009 */  beq     $v0, $zero, .L80AEDBA4     
/* 02F70 80AEDB80 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 02F74 80AEDB84 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 02F78 80AEDB88 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02F7C 80AEDB8C 13010002 */  beq     $t8, $at, .L80AEDB98       
/* 02F80 80AEDB90 00000000 */  nop
/* 02F84 80AEDB94 E4C20068 */  swc1    $f2, 0x0068($a2)           ## 00000068
.L80AEDB98:
/* 02F88 80AEDB98 3C0180AF */  lui     $at, %hi(D_80AF1BF4)       ## $at = 80AF0000
/* 02F8C 80AEDB9C 1000001D */  beq     $zero, $zero, .L80AEDC14   
/* 02F90 80AEDBA0 C42C1BF4 */  lwc1    $f12, %lo(D_80AF1BF4)($at) 
.L80AEDBA4:
/* 02F94 80AEDBA4 8C84FA90 */  lw      $a0, -0x0570($a0)          ## 8015FA90
/* 02F98 80AEDBA8 3C0180AF */  lui     $at, %hi(D_80AF1BF8)       ## $at = 80AF0000
/* 02F9C 80AEDBAC C42C1BF8 */  lwc1    $f12, %lo(D_80AF1BF8)($at) 
/* 02FA0 80AEDBB0 8499148A */  lh      $t9, 0x148A($a0)           ## 8016148A
/* 02FA4 80AEDBB4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02FA8 80AEDBB8 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 02FAC 80AEDBBC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 02FB0 80AEDBC0 24C30068 */  addiu   $v1, $a2, 0x0068           ## $v1 = 00000068
/* 02FB4 80AEDBC4 C4600000 */  lwc1    $f0, 0x0000($v1)           ## 00000068
/* 02FB8 80AEDBC8 46803220 */  cvt.s.w $f8, $f6                   
/* 02FBC 80AEDBCC 460C4282 */  mul.s   $f10, $f8, $f12            
/* 02FC0 80AEDBD0 46105480 */  add.s   $f18, $f10, $f16           
/* 02FC4 80AEDBD4 4600903E */  c.le.s  $f18, $f0                  
/* 02FC8 80AEDBD8 00000000 */  nop
/* 02FCC 80AEDBDC 4502000D */  bc1fl   .L80AEDC14                 
/* 02FD0 80AEDBE0 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
/* 02FD4 80AEDBE4 8489147A */  lh      $t1, 0x147A($a0)           ## 8016147A
/* 02FD8 80AEDBE8 3C0180AF */  lui     $at, %hi(D_80AF1BFC)       ## $at = 80AF0000
/* 02FDC 80AEDBEC C42A1BFC */  lwc1    $f10, %lo(D_80AF1BFC)($at) 
/* 02FE0 80AEDBF0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 02FE4 80AEDBF4 00000000 */  nop
/* 02FE8 80AEDBF8 468021A0 */  cvt.s.w $f6, $f4                   
/* 02FEC 80AEDBFC 460C3202 */  mul.s   $f8, $f6, $f12             
/* 02FF0 80AEDC00 460A4400 */  add.s   $f16, $f8, $f10            
/* 02FF4 80AEDC04 46100482 */  mul.s   $f18, $f0, $f16            
/* 02FF8 80AEDC08 10000002 */  beq     $zero, $zero, .L80AEDC14   
/* 02FFC 80AEDC0C E4720000 */  swc1    $f18, 0x0000($v1)          ## 00000068
/* 03000 80AEDC10 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
.L80AEDC14:
/* 03004 80AEDC14 1040000F */  beq     $v0, $zero, .L80AEDC54     
/* 03008 80AEDC18 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0300C 80AEDC1C 844A0000 */  lh      $t2, 0x0000($v0)           ## 00000000
/* 03010 80AEDC20 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 03014 80AEDC24 51410006 */  beql    $t2, $at, .L80AEDC40       
/* 03018 80AEDC28 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 0301C 80AEDC2C E4A20000 */  swc1    $f2, 0x0000($a1)           ## 00000060
/* 03020 80AEDC30 E4C20070 */  swc1    $f2, 0x0070($a2)           ## 00000070
/* 03024 80AEDC34 1000002A */  beq     $zero, $zero, .L80AEDCE0   
/* 03028 80AEDC38 E4C2006C */  swc1    $f2, 0x006C($a2)           ## 0000006C
/* 0302C 80AEDC3C 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
.L80AEDC40:
/* 03030 80AEDC40 44813000 */  mtc1    $at, $f6                   ## $f6 = -1.00
/* 03034 80AEDC44 C4A40000 */  lwc1    $f4, 0x0000($a1)           ## 00000060
/* 03038 80AEDC48 46062202 */  mul.s   $f8, $f4, $f6              
/* 0303C 80AEDC4C 10000024 */  beq     $zero, $zero, .L80AEDCE0   
/* 03040 80AEDC50 E4A80000 */  swc1    $f8, 0x0000($a1)           ## 00000060
.L80AEDC54:
/* 03044 80AEDC54 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 03048 80AEDC58 8D6BFA90 */  lw      $t3, -0x0570($t3)          ## 8015FA90
/* 0304C 80AEDC5C 3C0180AF */  lui     $at, %hi(D_80AF1C00)       ## $at = 80AF0000
/* 03050 80AEDC60 C4241C00 */  lwc1    $f4, %lo(D_80AF1C00)($at)  
/* 03054 80AEDC64 856C147C */  lh      $t4, 0x147C($t3)           ## 8016147C
/* 03058 80AEDC68 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 0305C 80AEDC6C 3C0180AF */  lui     $at, %hi(D_80AF1C04)       ## $at = 80AF0000
/* 03060 80AEDC70 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 03064 80AEDC74 24C2006C */  addiu   $v0, $a2, 0x006C           ## $v0 = 0000006C
/* 03068 80AEDC78 46805420 */  cvt.s.w $f16, $f10                 
/* 0306C 80AEDC7C C4AA0000 */  lwc1    $f10, 0x0000($a1)          ## 00000060
/* 03070 80AEDC80 460C8482 */  mul.s   $f18, $f16, $f12           
/* 03074 80AEDC84 46049180 */  add.s   $f6, $f18, $f4             
/* 03078 80AEDC88 46003207 */  neg.s   $f8, $f6                   
/* 0307C 80AEDC8C 46085402 */  mul.s   $f16, $f10, $f8            
/* 03080 80AEDC90 E4B00000 */  swc1    $f16, 0x0000($a1)          ## 00000060
/* 03084 80AEDC94 8DADFA90 */  lw      $t5, -0x0570($t5)          ## 8015FA90
/* 03088 80AEDC98 C42A1C04 */  lwc1    $f10, %lo(D_80AF1C04)($at) 
/* 0308C 80AEDC9C C4500000 */  lwc1    $f16, 0x0000($v0)          ## 0000006C
/* 03090 80AEDCA0 85AE147C */  lh      $t6, 0x147C($t5)           ## 8016147C
/* 03094 80AEDCA4 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 03098 80AEDCA8 00000000 */  nop
/* 0309C 80AEDCAC 46809120 */  cvt.s.w $f4, $f18                  
/* 030A0 80AEDCB0 46008487 */  neg.s   $f18, $f16                 
/* 030A4 80AEDCB4 460C2182 */  mul.s   $f6, $f4, $f12             
/* 030A8 80AEDCB8 460A3200 */  add.s   $f8, $f6, $f10             
/* 030AC 80AEDCBC C4A60000 */  lwc1    $f6, 0x0000($a1)           ## 00000060
/* 030B0 80AEDCC0 46124102 */  mul.s   $f4, $f8, $f18             
/* 030B4 80AEDCC4 4604303E */  c.le.s  $f6, $f4                   
/* 030B8 80AEDCC8 00000000 */  nop
/* 030BC 80AEDCCC 45000004 */  bc1f    .L80AEDCE0                 
/* 030C0 80AEDCD0 00000000 */  nop
/* 030C4 80AEDCD4 E4A20000 */  swc1    $f2, 0x0000($a1)           ## 00000060
/* 030C8 80AEDCD8 E4C20070 */  swc1    $f2, 0x0070($a2)           ## 00000070
/* 030CC 80AEDCDC E4420000 */  swc1    $f2, 0x0000($v0)           ## 0000006C
.L80AEDCE0:
/* 030D0 80AEDCE0 0C2BB53F */  jal     func_80AED4FC              
/* 030D4 80AEDCE4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 030D8 80AEDCE8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 030DC 80AEDCEC 94CF0088 */  lhu     $t7, 0x0088($a2)           ## 00000088
.L80AEDCF0:
/* 030E0 80AEDCF0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 030E4 80AEDCF4 3C0180AF */  lui     $at, %hi(D_80AF1C0C)       ## $at = 80AF0000
/* 030E8 80AEDCF8 31F80010 */  andi    $t8, $t7, 0x0010           ## $t8 = 00000000
/* 030EC 80AEDCFC 13000036 */  beq     $t8, $zero, .L80AEDDD8     
/* 030F0 80AEDD00 C42C1C0C */  lwc1    $f12, %lo(D_80AF1C0C)($at) 
/* 030F4 80AEDD04 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 030F8 80AEDD08 2508FA90 */  addiu   $t0, $t0, 0xFA90           ## $t0 = 8015FA90
/* 030FC 80AEDD0C 8D040000 */  lw      $a0, 0x0000($t0)           ## 8015FA90
/* 03100 80AEDD10 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03104 80AEDD14 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 03108 80AEDD18 8499148A */  lh      $t9, 0x148A($a0)           ## 0000148A
/* 0310C 80AEDD1C C4CA0068 */  lwc1    $f10, 0x0068($a2)          ## 00000068
/* 03110 80AEDD20 24C50060 */  addiu   $a1, $a2, 0x0060           ## $a1 = 00000060
/* 03114 80AEDD24 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 03118 80AEDD28 24C30068 */  addiu   $v1, $a2, 0x0068           ## $v1 = 00000068
/* 0311C 80AEDD2C 46808220 */  cvt.s.w $f8, $f16                  
/* 03120 80AEDD30 460C4482 */  mul.s   $f18, $f8, $f12            
/* 03124 80AEDD34 46049180 */  add.s   $f6, $f18, $f4             
/* 03128 80AEDD38 460A303E */  c.le.s  $f6, $f10                  
/* 0312C 80AEDD3C 00000000 */  nop
/* 03130 80AEDD40 4502000D */  bc1fl   .L80AEDD78                 
/* 03134 80AEDD44 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
/* 03138 80AEDD48 8489147A */  lh      $t1, 0x147A($a0)           ## 0000147A
/* 0313C 80AEDD4C 3C0180AF */  lui     $at, %hi(D_80AF1C10)       ## $at = 80AF0000
/* 03140 80AEDD50 C4241C10 */  lwc1    $f4, %lo(D_80AF1C10)($at)  
/* 03144 80AEDD54 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 03148 80AEDD58 C4660000 */  lwc1    $f6, 0x0000($v1)           ## 00000068
/* 0314C 80AEDD5C 46808220 */  cvt.s.w $f8, $f16                  
/* 03150 80AEDD60 460C4482 */  mul.s   $f18, $f8, $f12            
/* 03154 80AEDD64 46049280 */  add.s   $f10, $f18, $f4            
/* 03158 80AEDD68 460A3402 */  mul.s   $f16, $f6, $f10            
/* 0315C 80AEDD6C 10000002 */  beq     $zero, $zero, .L80AEDD78   
/* 03160 80AEDD70 E4700000 */  swc1    $f16, 0x0000($v1)          ## 00000068
/* 03164 80AEDD74 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
.L80AEDD78:
/* 03168 80AEDD78 C4A00000 */  lwc1    $f0, 0x0000($a1)           ## 00000060
/* 0316C 80AEDD7C 4600103E */  c.le.s  $f2, $f0                   
/* 03170 80AEDD80 00000000 */  nop
/* 03174 80AEDD84 45020015 */  bc1fl   .L80AEDDDC                 
/* 03178 80AEDD88 94CC0088 */  lhu     $t4, 0x0088($a2)           ## 00000088
/* 0317C 80AEDD8C 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 8015FA90
/* 03180 80AEDD90 3C0180AF */  lui     $at, %hi(D_80AF1C14)       ## $at = 80AF0000
/* 03184 80AEDD94 C4261C14 */  lwc1    $f6, %lo(D_80AF1C14)($at)  
/* 03188 80AEDD98 854B147C */  lh      $t3, 0x147C($t2)           ## 0000147C
/* 0318C 80AEDD9C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 03190 80AEDDA0 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 03194 80AEDDA4 00000000 */  nop
/* 03198 80AEDDA8 468044A0 */  cvt.s.w $f18, $f8                  
/* 0319C 80AEDDAC 460C9102 */  mul.s   $f4, $f18, $f12            
/* 031A0 80AEDDB0 46062280 */  add.s   $f10, $f4, $f6             
/* 031A4 80AEDDB4 46005407 */  neg.s   $f16, $f10                 
/* 031A8 80AEDDB8 46100202 */  mul.s   $f8, $f0, $f16             
/* 031AC 80AEDDBC E4A80000 */  swc1    $f8, 0x0000($a1)           ## 00000060
/* 031B0 80AEDDC0 0C2BB53F */  jal     func_80AED4FC              
/* 031B4 80AEDDC4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 031B8 80AEDDC8 3C0180AF */  lui     $at, %hi(D_80AF1C18)       ## $at = 80AF0000
/* 031BC 80AEDDCC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 031C0 80AEDDD0 C42C1C18 */  lwc1    $f12, %lo(D_80AF1C18)($at) 
/* 031C4 80AEDDD4 8FA60018 */  lw      $a2, 0x0018($sp)           
.L80AEDDD8:
/* 031C8 80AEDDD8 94CC0088 */  lhu     $t4, 0x0088($a2)           ## 00000088
.L80AEDDDC:
/* 031CC 80AEDDDC 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 031D0 80AEDDE0 2508FA90 */  addiu   $t0, $t0, 0xFA90           ## $t0 = 8015FA90
/* 031D4 80AEDDE4 318D0008 */  andi    $t5, $t4, 0x0008           ## $t5 = 00000000
/* 031D8 80AEDDE8 51A0003F */  beql    $t5, $zero, .L80AEDEE8     
/* 031DC 80AEDDEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031E0 80AEDDF0 C4D20068 */  lwc1    $f18, 0x0068($a2)          ## 00000068
/* 031E4 80AEDDF4 46121032 */  c.eq.s  $f2, $f18                  
/* 031E8 80AEDDF8 00000000 */  nop
/* 031EC 80AEDDFC 4503003A */  bc1tl   .L80AEDEE8                 
/* 031F0 80AEDE00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 031F4 80AEDE04 84C2007E */  lh      $v0, 0x007E($a2)           ## 0000007E
/* 031F8 80AEDE08 84C30032 */  lh      $v1, 0x0032($a2)           ## 00000032
/* 031FC 80AEDE0C 34078000 */  ori     $a3, $zero, 0x8000         ## $a3 = 00008000
/* 03200 80AEDE10 00027040 */  sll     $t6, $v0,  1               
/* 03204 80AEDE14 01C32023 */  subu    $a0, $t6, $v1              
/* 03208 80AEDE18 00827823 */  subu    $t7, $a0, $v0              
/* 0320C 80AEDE1C 01E7C021 */  addu    $t8, $t7, $a3              
/* 03210 80AEDE20 0018CC00 */  sll     $t9, $t8, 16               
/* 03214 80AEDE24 00194C03 */  sra     $t1, $t9, 16               
/* 03218 80AEDE28 05200006 */  bltz    $t1, .L80AEDE44            
/* 0321C 80AEDE2C 00872821 */  addu    $a1, $a0, $a3              
/* 03220 80AEDE30 00872821 */  addu    $a1, $a0, $a3              
/* 03224 80AEDE34 00A21823 */  subu    $v1, $a1, $v0              
/* 03228 80AEDE38 00031C00 */  sll     $v1, $v1, 16               
/* 0322C 80AEDE3C 10000005 */  beq     $zero, $zero, .L80AEDE54   
/* 03230 80AEDE40 00031C03 */  sra     $v1, $v1, 16               
.L80AEDE44:
/* 03234 80AEDE44 00A21823 */  subu    $v1, $a1, $v0              
/* 03238 80AEDE48 00031C00 */  sll     $v1, $v1, 16               
/* 0323C 80AEDE4C 00031C03 */  sra     $v1, $v1, 16               
/* 03240 80AEDE50 00031823 */  subu    $v1, $zero, $v1            
.L80AEDE54:
/* 03244 80AEDE54 28614001 */  slti    $at, $v1, 0x4001           
/* 03248 80AEDE58 50200023 */  beql    $at, $zero, .L80AEDEE8     
/* 0324C 80AEDE5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03250 80AEDE60 8D040000 */  lw      $a0, 0x0000($t0)           ## 8015FA90
/* 03254 80AEDE64 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03258 80AEDE68 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 0325C 80AEDE6C 848A148A */  lh      $t2, 0x148A($a0)           ## 0000148A
/* 03260 80AEDE70 24C30068 */  addiu   $v1, $a2, 0x0068           ## $v1 = 00000068
/* 03264 80AEDE74 C4600000 */  lwc1    $f0, 0x0000($v1)           ## 00000068
/* 03268 80AEDE78 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 0326C 80AEDE7C 00000000 */  nop
/* 03270 80AEDE80 468021A0 */  cvt.s.w $f6, $f4                   
/* 03274 80AEDE84 460C3282 */  mul.s   $f10, $f6, $f12            
/* 03278 80AEDE88 46105200 */  add.s   $f8, $f10, $f16            
/* 0327C 80AEDE8C 4600403E */  c.le.s  $f8, $f0                   
/* 03280 80AEDE90 00000000 */  nop
/* 03284 80AEDE94 4502000D */  bc1fl   .L80AEDECC                 
/* 03288 80AEDE98 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
/* 0328C 80AEDE9C 848B147E */  lh      $t3, 0x147E($a0)           ## 0000147E
/* 03290 80AEDEA0 3C0180AF */  lui     $at, %hi(D_80AF1C1C)       ## $at = 80AF0000
/* 03294 80AEDEA4 C42A1C1C */  lwc1    $f10, %lo(D_80AF1C1C)($at) 
/* 03298 80AEDEA8 448B9000 */  mtc1    $t3, $f18                  ## $f18 = 0.00
/* 0329C 80AEDEAC 00000000 */  nop
/* 032A0 80AEDEB0 46809120 */  cvt.s.w $f4, $f18                  
/* 032A4 80AEDEB4 460C2182 */  mul.s   $f6, $f4, $f12             
/* 032A8 80AEDEB8 460A3400 */  add.s   $f16, $f6, $f10            
/* 032AC 80AEDEBC 46100202 */  mul.s   $f8, $f0, $f16             
/* 032B0 80AEDEC0 10000002 */  beq     $zero, $zero, .L80AEDECC   
/* 032B4 80AEDEC4 E4680000 */  swc1    $f8, 0x0000($v1)           ## 00000068
/* 032B8 80AEDEC8 E4620000 */  swc1    $f2, 0x0000($v1)           ## 00000068
.L80AEDECC:
/* 032BC 80AEDECC A4C50032 */  sh      $a1, 0x0032($a2)           ## 00000032
/* 032C0 80AEDED0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 032C4 80AEDED4 0C2BB53F */  jal     func_80AED4FC              
/* 032C8 80AEDED8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 032CC 80AEDEDC 0C2BB56E */  jal     func_80AED5B8              
/* 032D0 80AEDEE0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 032D4 80AEDEE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEDEE8:
/* 032D8 80AEDEE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 032DC 80AEDEEC 03E00008 */  jr      $ra                        
/* 032E0 80AEDEF0 00000000 */  nop


