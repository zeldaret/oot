glabel func_80AD7C64
/* 00524 80AD7C64 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00528 80AD7C68 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0052C 80AD7C6C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00530 80AD7C70 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00534 80AD7C74 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 00538 80AD7C78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0053C 80AD7C7C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00540 80AD7C80 10400003 */  beq     $v0, $zero, .L80AD7C90     
/* 00544 80AD7C84 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 00548 80AD7C88 A48F0196 */  sh      $t7, 0x0196($a0)           ## 00000196
/* 0054C 80AD7C8C 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
.L80AD7C90:
/* 00550 80AD7C90 54400056 */  bnel    $v0, $zero, .L80AD7DEC     
/* 00554 80AD7C94 8605019A */  lh      $a1, 0x019A($s0)           ## 0000019A
/* 00558 80AD7C98 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0055C 80AD7C9C AFA3005C */  sw      $v1, 0x005C($sp)           
/* 00560 80AD7CA0 3C0180AE */  lui     $at, %hi(D_80AD8DEC)       ## $at = 80AE0000
/* 00564 80AD7CA4 C4248DEC */  lwc1    $f4, %lo(D_80AD8DEC)($at)  
/* 00568 80AD7CA8 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 0056C 80AD7CAC 4604003C */  c.lt.s  $f0, $f4                   
/* 00570 80AD7CB0 00000000 */  nop
/* 00574 80AD7CB4 4502004D */  bc1fl   .L80AD7DEC                 
/* 00578 80AD7CB8 8605019A */  lh      $a1, 0x019A($s0)           ## 0000019A
/* 0057C 80AD7CBC 86190198 */  lh      $t9, 0x0198($s0)           ## 00000198
/* 00580 80AD7CC0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00584 80AD7CC4 A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
/* 00588 80AD7CC8 2B210017 */  slti    $at, $t9, 0x0017           
/* 0058C 80AD7CCC 50200047 */  beql    $at, $zero, .L80AD7DEC     
/* 00590 80AD7CD0 8605019A */  lh      $a1, 0x019A($s0)           ## 0000019A
/* 00594 80AD7CD4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00598 80AD7CD8 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 0059C 80AD7CDC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 005A0 80AD7CE0 44817000 */  mtc1    $at, $f14                  ## $f14 = 1.00
/* 005A4 80AD7CE4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 005A8 80AD7CE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 005AC 80AD7CEC 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 005B0 80AD7CF0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 005B4 80AD7CF4 46060082 */  mul.s   $f2, $f0, $f6              
/* 005B8 80AD7CF8 460E103C */  c.lt.s  $f2, $f14                  
/* 005BC 80AD7CFC 00000000 */  nop
/* 005C0 80AD7D00 45020004 */  bc1fl   .L80AD7D14                 
/* 005C4 80AD7D04 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 005C8 80AD7D08 1000000C */  beq     $zero, $zero, .L80AD7D3C   
/* 005CC 80AD7D0C 46007306 */  mov.s   $f12, $f14                 
/* 005D0 80AD7D10 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
.L80AD7D14:
/* 005D4 80AD7D14 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 005D8 80AD7D18 4608103C */  c.lt.s  $f2, $f8                   
/* 005DC 80AD7D1C 00000000 */  nop
/* 005E0 80AD7D20 45020005 */  bc1fl   .L80AD7D38                 
/* 005E4 80AD7D24 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 005E8 80AD7D28 44816000 */  mtc1    $at, $f12                  ## $f12 = -1.00
/* 005EC 80AD7D2C 10000004 */  beq     $zero, $zero, .L80AD7D40   
/* 005F0 80AD7D30 8604019A */  lh      $a0, 0x019A($s0)           ## 0000019A
/* 005F4 80AD7D34 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
.L80AD7D38:
/* 005F8 80AD7D38 00000000 */  nop
.L80AD7D3C:
/* 005FC 80AD7D3C 8604019A */  lh      $a0, 0x019A($s0)           ## 0000019A
.L80AD7D40:
/* 00600 80AD7D40 E7AC0048 */  swc1    $f12, 0x0048($sp)          
/* 00604 80AD7D44 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00608 80AD7D48 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 0060C 80AD7D4C E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00610 80AD7D50 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00614 80AD7D54 8604019A */  lh      $a0, 0x019A($s0)           ## 0000019A
/* 00618 80AD7D58 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0061C 80AD7D5C 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00620 80AD7D60 C7AC0048 */  lwc1    $f12, 0x0048($sp)          
/* 00624 80AD7D64 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00628 80AD7D68 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0062C 80AD7D6C 460C5082 */  mul.s   $f2, $f10, $f12            
/* 00630 80AD7D70 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00634 80AD7D74 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00638 80AD7D78 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0063C 80AD7D7C 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 00640 80AD7D80 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 00644 80AD7D84 2406011C */  addiu   $a2, $zero, 0x011C         ## $a2 = 0000011C
/* 00648 80AD7D88 46028482 */  mul.s   $f18, $f16, $f2            
/* 0064C 80AD7D8C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00650 80AD7D90 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00654 80AD7D94 46020282 */  mul.s   $f10, $f0, $f2             
/* 00658 80AD7D98 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0065C 80AD7D9C 46049180 */  add.s   $f6, $f18, $f4             
/* 00660 80AD7DA0 46105480 */  add.s   $f18, $f10, $f16           
/* 00664 80AD7DA4 44073000 */  mfc1    $a3, $f6                   
/* 00668 80AD7DA8 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 0066C 80AD7DAC 8608019A */  lh      $t0, 0x019A($s0)           ## 0000019A
/* 00670 80AD7DB0 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 00674 80AD7DB4 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00678 80AD7DB8 01014821 */  addu    $t1, $t0, $at              
/* 0067C 80AD7DBC 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 00680 80AD7DC0 44814000 */  mtc1    $at, $f8                   ## $f8 = 8192.00
/* 00684 80AD7DC4 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00688 80AD7DC8 460C4282 */  mul.s   $f10, $f8, $f12            
/* 0068C 80AD7DCC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00690 80AD7DD0 460A3401 */  sub.s   $f16, $f6, $f10            
/* 00694 80AD7DD4 4600848D */  trunc.w.s $f18, $f16                 
/* 00698 80AD7DD8 440B9000 */  mfc1    $t3, $f18                  
/* 0069C 80AD7DDC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 006A0 80AD7DE0 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 006A4 80AD7DE4 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 006A8 80AD7DE8 8605019A */  lh      $a1, 0x019A($s0)           ## 0000019A
.L80AD7DEC:
/* 006AC 80AD7DEC 240D0100 */  addiu   $t5, $zero, 0x0100         ## $t5 = 00000100
/* 006B0 80AD7DF0 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 006B4 80AD7DF4 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 006B8 80AD7DF8 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 006BC 80AD7DFC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 006C0 80AD7E00 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 006C4 80AD7E04 24071000 */  addiu   $a3, $zero, 0x1000         ## $a3 = 00001000
/* 006C8 80AD7E08 860F0196 */  lh      $t7, 0x0196($s0)           ## 00000196
/* 006CC 80AD7E0C 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 006D0 80AD7E10 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 006D4 80AD7E14 000FC2C0 */  sll     $t8, $t7, 11               
/* 006D8 80AD7E18 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 006DC 80AD7E1C 01D8C821 */  addu    $t9, $t6, $t8              
/* 006E0 80AD7E20 03214021 */  addu    $t0, $t9, $at              
/* 006E4 80AD7E24 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 006E8 80AD7E28 29210017 */  slti    $at, $t1, 0x0017           
/* 006EC 80AD7E2C 10200086 */  beq     $at, $zero, .L80AD8048     
/* 006F0 80AD7E30 A60800B6 */  sh      $t0, 0x00B6($s0)           ## 000000B6
/* 006F4 80AD7E34 C4640024 */  lwc1    $f4, 0x0024($v1)           ## 00000024
/* 006F8 80AD7E38 3C014425 */  lui     $at, 0x4425                ## $at = 44250000
/* 006FC 80AD7E3C 44816000 */  mtc1    $at, $f12                  ## $f12 = 660.00
/* 00700 80AD7E40 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00704 80AD7E44 C468002C */  lwc1    $f8, 0x002C($v1)           ## 0000002C
/* 00708 80AD7E48 3C014452 */  lui     $at, 0x4452                ## $at = 44520000
/* 0070C 80AD7E4C 44817000 */  mtc1    $at, $f14                  ## $f14 = 840.00
/* 00710 80AD7E50 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 00714 80AD7E54 3C06C58C */  lui     $a2, 0xC58C                ## $a2 = C58C0000
/* 00718 80AD7E58 3C07C56B */  lui     $a3, 0xC56B                ## $a3 = C56B0000
/* 0071C 80AD7E5C 0C032C66 */  jal     func_800CB198              
/* 00720 80AD7E60 E7A80014 */  swc1    $f8, 0x0014($sp)           
/* 00724 80AD7E64 14400021 */  bne     $v0, $zero, .L80AD7EEC     
/* 00728 80AD7E68 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 0072C 80AD7E6C C4660024 */  lwc1    $f6, 0x0024($v1)           ## 00000024
/* 00730 80AD7E70 3C0144C3 */  lui     $at, 0x44C3                ## $at = 44C30000
/* 00734 80AD7E74 44816000 */  mtc1    $at, $f12                  ## $f12 = 1560.00
/* 00738 80AD7E78 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 0073C 80AD7E7C C46A002C */  lwc1    $f10, 0x002C($v1)          ## 0000002C
/* 00740 80AD7E80 3C0180AE */  lui     $at, %hi(D_80AD8DF0)       ## $at = 80AE0000
/* 00744 80AD7E84 3C06C57B */  lui     $a2, 0xC57B                ## $a2 = C57B0000
/* 00748 80AD7E88 3C07C565 */  lui     $a3, 0xC565                ## $a3 = C5650000
/* 0074C 80AD7E8C 34E76000 */  ori     $a3, $a3, 0x6000           ## $a3 = C5656000
/* 00750 80AD7E90 34C6E000 */  ori     $a2, $a2, 0xE000           ## $a2 = C57BE000
/* 00754 80AD7E94 C42E8DF0 */  lwc1    $f14, %lo(D_80AD8DF0)($at) 
/* 00758 80AD7E98 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 0075C 80AD7E9C 0C032C66 */  jal     func_800CB198              
/* 00760 80AD7EA0 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00764 80AD7EA4 14400011 */  bne     $v0, $zero, .L80AD7EEC     
/* 00768 80AD7EA8 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 0076C 80AD7EAC C4700024 */  lwc1    $f16, 0x0024($v1)          ## 00000024
/* 00770 80AD7EB0 3C0180AE */  lui     $at, %hi(D_80AD8DF4)       ## $at = 80AE0000
/* 00774 80AD7EB4 C42C8DF4 */  lwc1    $f12, %lo(D_80AD8DF4)($at) 
/* 00778 80AD7EB8 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 0077C 80AD7EBC C472002C */  lwc1    $f18, 0x002C($v1)          ## 0000002C
/* 00780 80AD7EC0 3C0180AE */  lui     $at, %hi(D_80AD8DF8)       ## $at = 80AE0000
/* 00784 80AD7EC4 3C06C53D */  lui     $a2, 0xC53D                ## $a2 = C53D0000
/* 00788 80AD7EC8 3C07C51C */  lui     $a3, 0xC51C                ## $a3 = C51C0000
/* 0078C 80AD7ECC 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = C51C4000
/* 00790 80AD7ED0 34C66000 */  ori     $a2, $a2, 0x6000           ## $a2 = C53D6000
/* 00794 80AD7ED4 C42E8DF8 */  lwc1    $f14, %lo(D_80AD8DF8)($at) 
/* 00798 80AD7ED8 AFA3005C */  sw      $v1, 0x005C($sp)           
/* 0079C 80AD7EDC 0C032C66 */  jal     func_800CB198              
/* 007A0 80AD7EE0 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 007A4 80AD7EE4 10400011 */  beq     $v0, $zero, .L80AD7F2C     
/* 007A8 80AD7EE8 8FA3005C */  lw      $v1, 0x005C($sp)           
.L80AD7EEC:
/* 007AC 80AD7EEC 920A0194 */  lbu     $t2, 0x0194($s0)           ## 00000194
/* 007B0 80AD7EF0 3C0180AE */  lui     $at, %hi(D_80AD8E00)       ## $at = 80AE0000
/* 007B4 80AD7EF4 51400008 */  beql    $t2, $zero, .L80AD7F18     
/* 007B8 80AD7EF8 C4660068 */  lwc1    $f6, 0x0068($v1)           ## 00000068
/* 007BC 80AD7EFC 3C0180AE */  lui     $at, %hi(D_80AD8DFC)       ## $at = 80AE0000
/* 007C0 80AD7F00 C4288DFC */  lwc1    $f8, %lo(D_80AD8DFC)($at)  
/* 007C4 80AD7F04 C4640068 */  lwc1    $f4, 0x0068($v1)           ## 00000068
/* 007C8 80AD7F08 46082002 */  mul.s   $f0, $f4, $f8              
/* 007CC 80AD7F0C 10000005 */  beq     $zero, $zero, .L80AD7F24   
/* 007D0 80AD7F10 00000000 */  nop
/* 007D4 80AD7F14 C4660068 */  lwc1    $f6, 0x0068($v1)           ## 00000068
.L80AD7F18:
/* 007D8 80AD7F18 C42A8E00 */  lwc1    $f10, %lo(D_80AD8E00)($at) 
/* 007DC 80AD7F1C 460A3002 */  mul.s   $f0, $f6, $f10             
/* 007E0 80AD7F20 00000000 */  nop
.L80AD7F24:
/* 007E4 80AD7F24 1000002F */  beq     $zero, $zero, .L80AD7FE4   
/* 007E8 80AD7F28 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
.L80AD7F2C:
/* 007EC 80AD7F2C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 007F0 80AD7F30 44818000 */  mtc1    $at, $f16                  ## $f16 = 150.00
/* 007F4 80AD7F34 C6020090 */  lwc1    $f2, 0x0090($s0)           ## 00000090
/* 007F8 80AD7F38 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 007FC 80AD7F3C 4610103C */  c.lt.s  $f2, $f16                  
/* 00800 80AD7F40 00000000 */  nop
/* 00804 80AD7F44 4502000D */  bc1fl   .L80AD7F7C                 
/* 00808 80AD7F48 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 0080C 80AD7F4C 920B0194 */  lbu     $t3, 0x0194($s0)           ## 00000194
/* 00810 80AD7F50 3C0180AE */  lui     $at, %hi(D_80AD8E04)       ## $at = 80AE0000
/* 00814 80AD7F54 11600006 */  beq     $t3, $zero, .L80AD7F70     
/* 00818 80AD7F58 00000000 */  nop
/* 0081C 80AD7F5C C4720068 */  lwc1    $f18, 0x0068($v1)          ## 00000068
/* 00820 80AD7F60 C4248E04 */  lwc1    $f4, %lo(D_80AD8E04)($at)  
/* 00824 80AD7F64 46049002 */  mul.s   $f0, $f18, $f4             
/* 00828 80AD7F68 1000001F */  beq     $zero, $zero, .L80AD7FE8   
/* 0082C 80AD7F6C 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
.L80AD7F70:
/* 00830 80AD7F70 1000001C */  beq     $zero, $zero, .L80AD7FE4   
/* 00834 80AD7F74 C4600068 */  lwc1    $f0, 0x0068($v1)           ## 00000068
/* 00838 80AD7F78 44814000 */  mtc1    $at, $f8                   ## $f8 = 250.00
.L80AD7F7C:
/* 0083C 80AD7F7C 00000000 */  nop
/* 00840 80AD7F80 4608103C */  c.lt.s  $f2, $f8                   
/* 00844 80AD7F84 00000000 */  nop
/* 00848 80AD7F88 4502000D */  bc1fl   .L80AD7FC0                 
/* 0084C 80AD7F8C 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
/* 00850 80AD7F90 920C0194 */  lbu     $t4, 0x0194($s0)           ## 00000194
/* 00854 80AD7F94 3C0180AE */  lui     $at, %hi(D_80AD8E08)       ## $at = 80AE0000
/* 00858 80AD7F98 51800004 */  beql    $t4, $zero, .L80AD7FAC     
/* 0085C 80AD7F9C C4660068 */  lwc1    $f6, 0x0068($v1)           ## 00000068
/* 00860 80AD7FA0 10000010 */  beq     $zero, $zero, .L80AD7FE4   
/* 00864 80AD7FA4 C4600068 */  lwc1    $f0, 0x0068($v1)           ## 00000068
/* 00868 80AD7FA8 C4660068 */  lwc1    $f6, 0x0068($v1)           ## 00000068
.L80AD7FAC:
/* 0086C 80AD7FAC C42A8E08 */  lwc1    $f10, %lo(D_80AD8E08)($at) 
/* 00870 80AD7FB0 460A3002 */  mul.s   $f0, $f6, $f10             
/* 00874 80AD7FB4 1000000C */  beq     $zero, $zero, .L80AD7FE8   
/* 00878 80AD7FB8 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 0087C 80AD7FBC 920D0194 */  lbu     $t5, 0x0194($s0)           ## 00000194
.L80AD7FC0:
/* 00880 80AD7FC0 3C014060 */  lui     $at, 0x4060                ## $at = 40600000
/* 00884 80AD7FC4 51A00006 */  beql    $t5, $zero, .L80AD7FE0     
/* 00888 80AD7FC8 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.50
/* 0088C 80AD7FCC 3C014090 */  lui     $at, 0x4090                ## $at = 40900000
/* 00890 80AD7FD0 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.50
/* 00894 80AD7FD4 10000004 */  beq     $zero, $zero, .L80AD7FE8   
/* 00898 80AD7FD8 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 0089C 80AD7FDC 44810000 */  mtc1    $at, $f0                   ## $f0 = 250.00
.L80AD7FE0:
/* 008A0 80AD7FE0 00000000 */  nop
.L80AD7FE4:
/* 008A4 80AD7FE4 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
.L80AD7FE8:
/* 008A8 80AD7FE8 44818000 */  mtc1    $at, $f16                  ## $f16 = 250.00
/* 008AC 80AD7FEC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 008B0 80AD7FF0 3C0180AE */  lui     $at, %hi(D_80AD8E0C)       ## $at = 80AE0000
/* 008B4 80AD7FF4 46028301 */  sub.s   $f12, $f16, $f2            
/* 008B8 80AD7FF8 4612603C */  c.lt.s  $f12, $f18                 
/* 008BC 80AD7FFC 00000000 */  nop
/* 008C0 80AD8000 45000003 */  bc1f    .L80AD8010                 
/* 008C4 80AD8004 00000000 */  nop
/* 008C8 80AD8008 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 008CC 80AD800C 00000000 */  nop
.L80AD8010:
/* 008D0 80AD8010 C4248E0C */  lwc1    $f4, %lo(D_80AD8E0C)($at)  
/* 008D4 80AD8014 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008D8 80AD8018 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 008DC 80AD801C 46046202 */  mul.s   $f8, $f12, $f4             
/* 008E0 80AD8020 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 008E4 80AD8024 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 008E8 80AD8028 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 008EC 80AD802C 46064280 */  add.s   $f10, $f8, $f6             
/* 008F0 80AD8030 460A0000 */  add.s   $f0, $f0, $f10             
/* 008F4 80AD8034 44050000 */  mfc1    $a1, $f0                   
/* 008F8 80AD8038 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 008FC 80AD803C 00000000 */  nop
/* 00900 80AD8040 10000007 */  beq     $zero, $zero, .L80AD8060   
/* 00904 80AD8044 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
.L80AD8048:
/* 00908 80AD8048 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0090C 80AD804C 3C054060 */  lui     $a1, 0x4060                ## $a1 = 40600000
/* 00910 80AD8050 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00914 80AD8054 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00918 80AD8058 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 0091C 80AD805C 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
.L80AD8060:
/* 00920 80AD8060 3C1880AE */  lui     $t8, %hi(D_80AD8C30)       ## $t8 = 80AE0000
/* 00924 80AD8064 27188C30 */  addiu   $t8, $t8, %lo(D_80AD8C30)  ## $t8 = 80AD8C30
/* 00928 80AD8068 000F7080 */  sll     $t6, $t7,  2               
/* 0092C 80AD806C 01CF7023 */  subu    $t6, $t6, $t7              
/* 00930 80AD8070 000E7040 */  sll     $t6, $t6,  1               
/* 00934 80AD8074 01D82821 */  addu    $a1, $t6, $t8              
/* 00938 80AD8078 0C2B5E51 */  jal     func_80AD7944              
/* 0093C 80AD807C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFF0
/* 00940 80AD8080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00944 80AD8084 0C00B6EC */  jal     func_8002DBB0              
/* 00948 80AD8088 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFF0
/* 0094C 80AD808C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00950 80AD8090 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00954 80AD8094 00000000 */  nop
/* 00958 80AD8098 4610003C */  c.lt.s  $f0, $f16                  
/* 0095C 80AD809C 00000000 */  nop
/* 00960 80AD80A0 45020029 */  bc1fl   .L80AD8148                 
/* 00964 80AD80A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00968 80AD80A8 86190198 */  lh      $t9, 0x0198($s0)           ## 00000198
/* 0096C 80AD80AC 3C0B80AE */  lui     $t3, %hi(D_80AD8C30)       ## $t3 = 80AE0000
/* 00970 80AD80B0 256B8C30 */  addiu   $t3, $t3, %lo(D_80AD8C30)  ## $t3 = 80AD8C30
/* 00974 80AD80B4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00978 80AD80B8 A6080198 */  sh      $t0, 0x0198($s0)           ## 00000198
/* 0097C 80AD80BC 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 00980 80AD80C0 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFF0
/* 00984 80AD80C4 00095080 */  sll     $t2, $t1,  2               
/* 00988 80AD80C8 01495023 */  subu    $t2, $t2, $t1              
/* 0098C 80AD80CC 000A5040 */  sll     $t2, $t2,  1               
/* 00990 80AD80D0 0C2B5E51 */  jal     func_80AD7944              
/* 00994 80AD80D4 014B2821 */  addu    $a1, $t2, $t3              
/* 00998 80AD80D8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 0099C 80AD80DC 2401001C */  addiu   $at, $zero, 0x001C         ## $at = 0000001C
/* 009A0 80AD80E0 54410006 */  bnel    $v0, $at, .L80AD80FC       
/* 009A4 80AD80E4 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 009A8 80AD80E8 0C2B5E93 */  jal     func_80AD7A4C              
/* 009AC 80AD80EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B0 80AD80F0 10000015 */  beq     $zero, $zero, .L80AD8148   
/* 009B4 80AD80F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B8 80AD80F8 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
.L80AD80FC:
/* 009BC 80AD80FC 14410005 */  bne     $v0, $at, .L80AD8114       
/* 009C0 80AD8100 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 009C4 80AD8104 0C00B2DD */  jal     Flags_SetSwitch
              
/* 009C8 80AD8108 24050035 */  addiu   $a1, $zero, 0x0035         ## $a1 = 00000035
/* 009CC 80AD810C 1000000E */  beq     $zero, $zero, .L80AD8148   
/* 009D0 80AD8110 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD8114:
/* 009D4 80AD8114 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 009D8 80AD8118 14410005 */  bne     $v0, $at, .L80AD8130       
/* 009DC 80AD811C 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 009E0 80AD8120 0C00B2DD */  jal     Flags_SetSwitch
              
/* 009E4 80AD8124 24050036 */  addiu   $a1, $zero, 0x0036         ## $a1 = 00000036
/* 009E8 80AD8128 10000007 */  beq     $zero, $zero, .L80AD8148   
/* 009EC 80AD812C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD8130:
/* 009F0 80AD8130 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 009F4 80AD8134 14410003 */  bne     $v0, $at, .L80AD8144       
/* 009F8 80AD8138 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 009FC 80AD813C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00A00 80AD8140 24050037 */  addiu   $a1, $zero, 0x0037         ## $a1 = 00000037
.L80AD8144:
/* 00A04 80AD8144 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD8148:
/* 00A08 80AD8148 0C00B6B0 */  jal     func_8002DAC0              
/* 00A0C 80AD814C 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFF0
/* 00A10 80AD8150 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
/* 00A14 80AD8154 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A18 80AD8158 0C00BE5D */  jal     func_8002F974              
/* 00A1C 80AD815C 24053072 */  addiu   $a1, $zero, 0x3072         ## $a1 = 00003072
/* 00A20 80AD8160 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00A24 80AD8164 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A28 80AD8168 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 00A2C 80AD816C 03E00008 */  jr      $ra                        
/* 00A30 80AD8170 00000000 */  nop


