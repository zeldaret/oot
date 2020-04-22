.late_rodata
glabel D_8085537C
    .float 0.1

glabel D_80855380
    .float 0.1

.text
glabel func_80839800
/* 075F0 80839800 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 075F4 80839804 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 075F8 80839808 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 075FC 8083980C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 07600 80839810 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 07604 80839814 8083042C */  lb      $v1, 0x042C($a0)           ## 0000042C
/* 07608 80839818 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0760C 8083981C 50600195 */  beql    $v1, $zero, .L80839E74     
/* 07610 80839820 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 07614 80839824 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 07618 80839828 3C198086 */  lui     $t9, %hi(D_80858AB4)       ## $t9 = 80860000
/* 0761C 8083982C 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 07620 80839830 11E00008 */  beq     $t7, $zero, .L80839854     
/* 07624 80839834 00000000 */  nop
/* 07628 80839838 8C8203AC */  lw      $v0, 0x03AC($a0)           ## 000003AC
/* 0762C 8083983C 5040018D */  beql    $v0, $zero, .L80839E74     
/* 07630 80839840 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 07634 80839844 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
/* 07638 80839848 240100A1 */  addiu   $at, $zero, 0x00A1         ## $at = 000000A1
/* 0763C 8083984C 57010189 */  bnel    $t8, $at, .L80839E74       
/* 07640 80839850 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839854:
/* 07644 80839854 8F398AB4 */  lw      $t9, %lo(D_80858AB4)($t9)  
/* 07648 80839858 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 0764C 8083985C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 07650 80839860 9728000C */  lhu     $t0, 0x000C($t9)           ## 8086000C
/* 07654 80839864 01014827 */  nor     $t1, $t0, $at              
/* 07658 80839868 11200006 */  beq     $t1, $zero, .L80839884     
/* 0765C 8083986C 00000000 */  nop
/* 07660 80839870 8E0A0674 */  lw      $t2, 0x0674($s0)           ## 00000674
/* 07664 80839874 3C0B8085 */  lui     $t3, %hi(func_8084F9A0)    ## $t3 = 80850000
/* 07668 80839878 256BF9A0 */  addiu   $t3, $t3, %lo(func_8084F9A0) ## $t3 = 8084F9A0
/* 0766C 8083987C 554B017D */  bnel    $t2, $t3, .L80839E74       
/* 07670 80839880 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839884:
/* 07674 80839884 04610008 */  bgez    $v1, .L808398A8            
/* 07678 80839888 8E110430 */  lw      $s1, 0x0430($s0)           ## 00000430
/* 0767C 8083988C 240C00D0 */  addiu   $t4, $zero, 0x00D0         ## $t4 = 000000D0
/* 07680 80839890 A62C010E */  sh      $t4, 0x010E($s1)           ## 0000010E
/* 07684 80839894 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07688 80839898 0C214C52 */  jal     func_80853148              
/* 0768C 8083989C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07690 808398A0 10000174 */  beq     $zero, $zero, .L80839E74   
/* 07694 808398A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808398A8:
/* 07698 808398A8 820D042D */  lb      $t5, 0x042D($s0)           ## 0000042D
/* 0769C 808398AC AFAD007C */  sw      $t5, 0x007C($sp)           
/* 076A0 808398B0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 076A4 808398B4 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 076A8 808398B8 E7A00078 */  swc1    $f0, 0x0078($sp)           
/* 076AC 808398BC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 076B0 808398C0 862400B6 */  lh      $a0, 0x00B6($s1)           ## 000000B6
/* 076B4 808398C4 E7A00074 */  swc1    $f0, 0x0074($sp)           
/* 076B8 808398C8 820E042C */  lb      $t6, 0x042C($s0)           ## 0000042C
/* 076BC 808398CC 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 076C0 808398D0 8FB8007C */  lw      $t8, 0x007C($sp)           
/* 076C4 808398D4 146E0067 */  bne     $v1, $t6, .L80839A74       
/* 076C8 808398D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 076CC 808398DC 862F0016 */  lh      $t7, 0x0016($s1)           ## 00000016
/* 076D0 808398E0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 076D4 808398E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 076D8 808398E8 A60F083C */  sh      $t7, 0x083C($s0)           ## 0000083C
/* 076DC 808398EC 8FB8007C */  lw      $t8, 0x007C($sp)           
/* 076E0 808398F0 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 076E4 808398F4 5B000006 */  blezl   $t8, .L80839910            
/* 076E8 808398F8 C6060838 */  lwc1    $f6, 0x0838($s0)           ## 00000838
/* 076EC 808398FC 8619083C */  lh      $t9, 0x083C($s0)           ## 0000083C
/* 076F0 80839900 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 076F4 80839904 03214021 */  addu    $t0, $t9, $at              
/* 076F8 80839908 A608083C */  sh      $t0, 0x083C($s0)           ## 0000083C
/* 076FC 8083990C C6060838 */  lwc1    $f6, 0x0838($s0)           ## 00000838
.L80839910:
/* 07700 80839910 8609083C */  lh      $t1, 0x083C($s0)           ## 0000083C
/* 07704 80839914 3C018085 */  lui     $at, %hi(D_8085537C)       ## $at = 80850000
/* 07708 80839918 4604303E */  c.le.s  $f6, $f4                   
/* 0770C 8083991C A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 07710 80839920 45020004 */  bc1fl   .L80839934                 
/* 07714 80839924 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07718 80839928 C428537C */  lwc1    $f8, %lo(D_8085537C)($at)  
/* 0771C 8083992C E6080838 */  swc1    $f8, 0x0838($s0)           ## 00000838
/* 07720 80839930 8FA4008C */  lw      $a0, 0x008C($sp)           
.L80839934:
/* 07724 80839934 0C20E39C */  jal     func_80838E70              
/* 07728 80839938 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 0772C 8083993C 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 07730 80839940 C7B20074 */  lwc1    $f18, 0x0074($sp)          
/* 07734 80839944 820A042C */  lb      $t2, 0x042C($s0)           ## 0000042C
/* 07738 80839948 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 0773C 8083994C 01616025 */  or      $t4, $t3, $at              ## $t4 = 20000000
/* 07740 80839950 A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
/* 07744 80839954 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
/* 07748 80839958 A20A0447 */  sb      $t2, 0x0447($s0)           ## 00000447
/* 0774C 8083995C 8FAD007C */  lw      $t5, 0x007C($sp)           
/* 07750 80839960 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 07754 80839964 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 07758 80839968 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 0775C 8083996C C6000024 */  lwc1    $f0, 0x0024($s0)           ## 00000024
/* 07760 80839970 3C01C2F0 */  lui     $at, 0xC2F0                ## $at = C2F00000
/* 07764 80839974 46805420 */  cvt.s.w $f16, $f10                 
/* 07768 80839978 C60C002C */  lwc1    $f12, 0x002C($s0)          ## 0000002C
/* 0776C 8083997C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 07770 80839980 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07774 80839984 46048082 */  mul.s   $f2, $f16, $f4             
/* 07778 80839988 00000000 */  nop
/* 0777C 8083998C 46121182 */  mul.s   $f6, $f2, $f18             
/* 07780 80839990 46060200 */  add.s   $f8, $f0, $f6              
/* 07784 80839994 E6080450 */  swc1    $f8, 0x0450($s0)           ## 00000450
/* 07788 80839998 C7AA0078 */  lwc1    $f10, 0x0078($sp)          
/* 0778C 8083999C 44814000 */  mtc1    $at, $f8                   ## $f8 = -120.00
/* 07790 808399A0 460A1102 */  mul.s   $f4, $f2, $f10             
/* 07794 808399A4 00000000 */  nop
/* 07798 808399A8 46088382 */  mul.s   $f14, $f16, $f8            
/* 0779C 808399AC 46046180 */  add.s   $f6, $f12, $f4             
/* 077A0 808399B0 46127282 */  mul.s   $f10, $f14, $f18           
/* 077A4 808399B4 E6060458 */  swc1    $f6, 0x0458($s0)           ## 00000458
/* 077A8 808399B8 460A0100 */  add.s   $f4, $f0, $f10             
/* 077AC 808399BC E604045C */  swc1    $f4, 0x045C($s0)           ## 0000045C
/* 077B0 808399C0 C7A60078 */  lwc1    $f6, 0x0078($sp)           
/* 077B4 808399C4 46067202 */  mul.s   $f8, $f14, $f6             
/* 077B8 808399C8 46086280 */  add.s   $f10, $f12, $f8            
/* 077BC 808399CC E60A0464 */  swc1    $f10, 0x0464($s0)          ## 00000464
/* 077C0 808399D0 0C20C889 */  jal     func_80832224              
/* 077C4 808399D4 A62E0164 */  sh      $t6, 0x0164($s1)           ## 00000164
/* 077C8 808399D8 860F042E */  lh      $t7, 0x042E($s0)           ## 0000042E
/* 077CC 808399DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 077D0 808399E0 3C018085 */  lui     $at, %hi(D_80855380)       ## $at = 80850000
/* 077D4 808399E4 11E0000A */  beq     $t7, $zero, .L80839A10     
/* 077D8 808399E8 00000000 */  nop
/* 077DC 808399EC 0C20CCCE */  jal     func_80833338              
/* 077E0 808399F0 A6000850 */  sh      $zero, 0x0850($s0)         ## 00000850
/* 077E4 808399F4 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 077E8 808399F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 077EC 808399FC 0C20CAC3 */  jal     func_80832B0C              
/* 077F0 80839A00 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 077F4 80839A04 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 077F8 80839A08 10000003 */  beq     $zero, $zero, .L80839A18   
/* 077FC 80839A0C E60401C4 */  swc1    $f4, 0x01C4($s0)           ## 000001C4
.L80839A10:
/* 07800 80839A10 C4265380 */  lwc1    $f6, %lo(D_80855380)($at)  
/* 07804 80839A14 E6060838 */  swc1    $f6, 0x0838($s0)           ## 00000838
.L80839A18:
/* 07808 80839A18 92380002 */  lbu     $t8, 0x0002($s1)           ## 00000002
/* 0780C 80839A1C 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 07810 80839A20 8FB9007C */  lw      $t9, 0x007C($sp)           
/* 07814 80839A24 17010011 */  bne     $t8, $at, .L80839A6C       
/* 07818 80839A28 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 0781C 80839A2C 1B200003 */  blez    $t9, .L80839A3C            
/* 07820 80839A30 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 07824 80839A34 10000002 */  beq     $zero, $zero, .L80839A40   
/* 07828 80839A38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839A3C:
/* 0782C 80839A3C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80839A40:
/* 07830 80839A40 9629001C */  lhu     $t1, 0x001C($s1)           ## 0000001C
/* 07834 80839A44 01044021 */  addu    $t0, $t0, $a0              
/* 07838 80839A48 8D081D38 */  lw      $t0, 0x1D38($t0)           ## 00011D38
/* 0783C 80839A4C 00095283 */  sra     $t2, $t1, 10               
/* 07840 80839A50 000A5900 */  sll     $t3, $t2,  4               
/* 07844 80839A54 00026840 */  sll     $t5, $v0,  1               
/* 07848 80839A58 010B6021 */  addu    $t4, $t0, $t3              
/* 0784C 80839A5C 018D7021 */  addu    $t6, $t4, $t5              
/* 07850 80839A60 81CF0001 */  lb      $t7, 0x0001($t6)           ## 00000001
/* 07854 80839A64 0C00C12C */  jal     func_800304B0              
/* 07858 80839A68 A60F046A */  sh      $t7, 0x046A($s0)           ## 0000046A
.L80839A6C:
/* 0785C 80839A6C 100000D5 */  beq     $zero, $zero, .L80839DC4   
/* 07860 80839A70 8203042C */  lb      $v1, 0x042C($s0)           ## 0000042C
.L80839A74:
/* 07864 80839A74 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 07868 80839A78 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0786C 80839A7C 3C068084 */  lui     $a2, %hi(func_80845EF8)    ## $a2 = 80840000
/* 07870 80839A80 46804420 */  cvt.s.w $f16, $f8                  
/* 07874 80839A84 3C098016 */  lui     $t1, %hi(gSaveContext+4)
/* 07878 80839A88 24C65EF8 */  addiu   $a2, $a2, %lo(func_80845EF8) ## $a2 = 80845EF8
/* 0787C 80839A8C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 07880 80839A90 460A803C */  c.lt.s  $f16, $f10                 
/* 07884 80839A94 00000000 */  nop
/* 07888 80839A98 45000009 */  bc1f    .L80839AC0                 
/* 0788C 80839A9C 3C198016 */  lui     $t9, %hi(gSaveContext+4)
/* 07890 80839AA0 8F39E664 */  lw      $t9, %lo(gSaveContext+4)($t9)
/* 07894 80839AA4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 07898 80839AA8 17200003 */  bne     $t9, $zero, .L80839AB8     
/* 0789C 80839AAC 00000000 */  nop
/* 078A0 80839AB0 10000001 */  beq     $zero, $zero, .L80839AB8   
/* 078A4 80839AB4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839AB8:
/* 078A8 80839AB8 10000008 */  beq     $zero, $zero, .L80839ADC   
/* 078AC 80839ABC A2220190 */  sb      $v0, 0x0190($s1)           ## 00000190
.L80839AC0:
/* 078B0 80839AC0 8D29E664 */  lw      $t1, %lo(gSaveContext+4)($t1)
/* 078B4 80839AC4 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 078B8 80839AC8 15200003 */  bne     $t1, $zero, .L80839AD8     
/* 078BC 80839ACC 00000000 */  nop
/* 078C0 80839AD0 10000001 */  beq     $zero, $zero, .L80839AD8   
/* 078C4 80839AD4 00602025 */  or      $a0, $v1, $zero            ## $a0 = 00000000
.L80839AD8:
/* 078C8 80839AD8 A2240190 */  sb      $a0, 0x0190($s1)           ## 00000190
.L80839ADC:
/* 078CC 80839ADC 92220190 */  lbu     $v0, 0x0190($s1)           ## 00000190
/* 078D0 80839AE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 078D4 80839AE4 14400008 */  bne     $v0, $zero, .L80839B08     
/* 078D8 80839AE8 00000000 */  nop
/* 078DC 80839AEC 920A015B */  lbu     $t2, 0x015B($s0)           ## 0000015B
/* 078E0 80839AF0 3C0B8085 */  lui     $t3, %hi(D_808539EC)       ## $t3 = 80850000
/* 078E4 80839AF4 000A4080 */  sll     $t0, $t2,  2               
/* 078E8 80839AF8 01685821 */  addu    $t3, $t3, $t0              
/* 078EC 80839AFC 8D6B39EC */  lw      $t3, %lo(D_808539EC)($t3)  
/* 078F0 80839B00 10000019 */  beq     $zero, $zero, .L80839B68   
/* 078F4 80839B04 AFAB005C */  sw      $t3, 0x005C($sp)           
.L80839B08:
/* 078F8 80839B08 14410008 */  bne     $v0, $at, .L80839B2C       
/* 078FC 80839B0C 00000000 */  nop
/* 07900 80839B10 920C015B */  lbu     $t4, 0x015B($s0)           ## 0000015B
/* 07904 80839B14 3C0E8085 */  lui     $t6, %hi(D_80853A04)       ## $t6 = 80850000
/* 07908 80839B18 000C6880 */  sll     $t5, $t4,  2               
/* 0790C 80839B1C 01CD7021 */  addu    $t6, $t6, $t5              
/* 07910 80839B20 8DCE3A04 */  lw      $t6, %lo(D_80853A04)($t6)  
/* 07914 80839B24 10000010 */  beq     $zero, $zero, .L80839B68   
/* 07918 80839B28 AFAE005C */  sw      $t6, 0x005C($sp)           
.L80839B2C:
/* 0791C 80839B2C 54620009 */  bnel    $v1, $v0, .L80839B54       
/* 07920 80839B30 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
/* 07924 80839B34 920F015B */  lbu     $t7, 0x015B($s0)           ## 0000015B
/* 07928 80839B38 3C198085 */  lui     $t9, %hi(D_80853A1C)       ## $t9 = 80850000
/* 0792C 80839B3C 000FC080 */  sll     $t8, $t7,  2               
/* 07930 80839B40 0338C821 */  addu    $t9, $t9, $t8              
/* 07934 80839B44 8F393A1C */  lw      $t9, %lo(D_80853A1C)($t9)  
/* 07938 80839B48 10000007 */  beq     $zero, $zero, .L80839B68   
/* 0793C 80839B4C AFB9005C */  sw      $t9, 0x005C($sp)           
/* 07940 80839B50 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
.L80839B54:
/* 07944 80839B54 3C088085 */  lui     $t0, %hi(D_80853A34)       ## $t0 = 80850000
/* 07948 80839B58 00095080 */  sll     $t2, $t1,  2               
/* 0794C 80839B5C 010A4021 */  addu    $t0, $t0, $t2              
/* 07950 80839B60 8D083A34 */  lw      $t0, %lo(D_80853A34)($t0)  
/* 07954 80839B64 AFA8005C */  sw      $t0, 0x005C($sp)           
.L80839B68:
/* 07958 80839B68 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 0795C 80839B6C 0C20D716 */  jal     func_80835C58              
/* 07960 80839B70 E7B00040 */  swc1    $f16, 0x0040($sp)          
/* 07964 80839B74 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07968 80839B78 0C20C94A */  jal     func_80832528              
/* 0796C 80839B7C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07970 80839B80 8FAB007C */  lw      $t3, 0x007C($sp)           
/* 07974 80839B84 C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 07978 80839B88 05630005 */  bgezl   $t3, .L80839BA0            
/* 0797C 80839B8C 862D00B6 */  lh      $t5, 0x00B6($s1)           ## 000000B6
/* 07980 80839B90 862C00B6 */  lh      $t4, 0x00B6($s1)           ## 000000B6
/* 07984 80839B94 10000005 */  beq     $zero, $zero, .L80839BAC   
/* 07988 80839B98 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 0798C 80839B9C 862D00B6 */  lh      $t5, 0x00B6($s1)           ## 000000B6
.L80839BA0:
/* 07990 80839BA0 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 07994 80839BA4 01A17021 */  addu    $t6, $t5, $at              
/* 07998 80839BA8 A60E00B6 */  sh      $t6, 0x00B6($s0)           ## 000000B6
.L80839BAC:
/* 0799C 80839BAC 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 079A0 80839BB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 22.00
/* 079A4 80839BB4 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 079A8 80839BB8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 079AC 80839BBC 46048002 */  mul.s   $f0, $f16, $f4             
/* 079B0 80839BC0 A60F083C */  sh      $t7, 0x083C($s0)           ## 0000083C
/* 079B4 80839BC4 C7A80074 */  lwc1    $f8, 0x0074($sp)           
/* 079B8 80839BC8 46080282 */  mul.s   $f10, $f0, $f8             
/* 079BC 80839BCC E7A0006C */  swc1    $f0, 0x006C($sp)           
/* 079C0 80839BD0 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 079C4 80839BD4 460A3100 */  add.s   $f4, $f6, $f10             
/* 079C8 80839BD8 E6040024 */  swc1    $f4, 0x0024($s0)           ## 00000024
/* 079CC 80839BDC C7A60078 */  lwc1    $f6, 0x0078($sp)           
/* 079D0 80839BE0 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 079D4 80839BE4 46060282 */  mul.s   $f10, $f0, $f6             
/* 079D8 80839BE8 460A4100 */  add.s   $f4, $f8, $f10             
/* 079DC 80839BEC E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 079E0 80839BF0 8FA6005C */  lw      $a2, 0x005C($sp)           
/* 079E4 80839BF4 0C20CCA3 */  jal     func_8083328C              
/* 079E8 80839BF8 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 079EC 80839BFC 8618042E */  lh      $t8, 0x042E($s0)           ## 0000042E
/* 079F0 80839C00 13000004 */  beq     $t8, $zero, .L80839C14     
/* 079F4 80839C04 00000000 */  nop
/* 079F8 80839C08 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 079FC 80839C0C 00000000 */  nop
/* 07A00 80839C10 E60601C4 */  swc1    $f6, 0x01C4($s0)           ## 000001C4
.L80839C14:
/* 07A04 80839C14 0C20C889 */  jal     func_80832224              
/* 07A08 80839C18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07A0C 80839C1C 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07A10 80839C20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07A14 80839C24 0C20CBD5 */  jal     func_80832F54              
/* 07A18 80839C28 2406028F */  addiu   $a2, $zero, 0x028F         ## $a2 = 0000028F
/* 07A1C 80839C2C 8E390118 */  lw      $t9, 0x0118($s1)           ## 00000118
/* 07A20 80839C30 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 07A24 80839C34 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 07A28 80839C38 13200002 */  beq     $t9, $zero, .L80839C44     
/* 07A2C 80839C3C 00095023 */  subu    $t2, $zero, $t1            
/* 07A30 80839C40 AFAA007C */  sw      $t2, 0x007C($sp)           
.L80839C44:
/* 07A34 80839C44 A2280191 */  sb      $t0, 0x0191($s1)           ## 00000191
/* 07A38 80839C48 8203042C */  lb      $v1, 0x042C($s0)           ## 0000042C
/* 07A3C 80839C4C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 07A40 80839C50 5061005D */  beql    $v1, $at, .L80839DC8       
/* 07A44 80839C54 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07A48 80839C58 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 07A4C 80839C5C 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 07A50 80839C60 01616025 */  or      $t4, $t3, $at              ## $t4 = 20000000
/* 07A54 80839C64 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
/* 07A58 80839C68 0C00C12C */  jal     func_800304B0              
/* 07A5C 80839C6C 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07A60 80839C70 862D001C */  lh      $t5, 0x001C($s1)           ## 0000001C
/* 07A64 80839C74 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 07A68 80839C78 C7A0006C */  lwc1    $f0, 0x006C($sp)           
/* 07A6C 80839C7C 000D71C3 */  sra     $t6, $t5,  7               
/* 07A70 80839C80 31CF0007 */  andi    $t7, $t6, 0x0007           ## $t7 = 00000000
/* 07A74 80839C84 15E10024 */  bne     $t7, $at, .L80839D18       
/* 07A78 80839C88 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07A7C 80839C8C C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 07A80 80839C90 C6280024 */  lwc1    $f8, 0x0024($s1)           ## 00000024
/* 07A84 80839C94 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 07A88 80839C98 460A0102 */  mul.s   $f4, $f0, $f10             
/* 07A8C 80839C9C 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07A90 80839CA0 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFD0
/* 07A94 80839CA4 27A6004C */  addiu   $a2, $sp, 0x004C           ## $a2 = FFFFFFC4
/* 07A98 80839CA8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 07A9C 80839CAC 46044181 */  sub.s   $f6, $f8, $f4              
/* 07AA0 80839CB0 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 07AA4 80839CB4 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 07AA8 80839CB8 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 07AAC 80839CBC 46085100 */  add.s   $f4, $f10, $f8             
/* 07AB0 80839CC0 C7AA0078 */  lwc1    $f10, 0x0078($sp)          
/* 07AB4 80839CC4 460A0202 */  mul.s   $f8, $f0, $f10             
/* 07AB8 80839CC8 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 07ABC 80839CCC C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 07AC0 80839CD0 46083101 */  sub.s   $f4, $f6, $f8              
/* 07AC4 80839CD4 0C00F224 */  jal     func_8003C890              
/* 07AC8 80839CD8 E7A40054 */  swc1    $f4, 0x0054($sp)           
/* 07ACC 80839CDC 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 07AD0 80839CE0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07AD4 80839CE4 8FA60058 */  lw      $a2, 0x0058($sp)           
/* 07AD8 80839CE8 0C20E40D */  jal     func_80839034              
/* 07ADC 80839CEC 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 07AE0 80839CF0 10400007 */  beq     $v0, $zero, .L80839D10     
/* 07AE4 80839CF4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 07AE8 80839CF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 07AEC 80839CFC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 07AF0 80839D00 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 07AF4 80839D04 24185802 */  addiu   $t8, $zero, 0x5802         ## $t8 = 00005802
/* 07AF8 80839D08 A45813C0 */  sh      $t8, 0x13C0($v0)           ## 8015FA20
/* 07AFC 80839D0C E44A13BC */  swc1    $f10, 0x13BC($v0)          ## 8015FA1C
.L80839D10:
/* 07B00 80839D10 1000002C */  beq     $zero, $zero, .L80839DC4   
/* 07B04 80839D14 8203042C */  lb      $v1, 0x042C($s0)           ## 0000042C
.L80839D18:
/* 07B08 80839D18 0C030129 */  jal     Gameplay_GetCamera              
/* 07B0C 80839D1C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 07B10 80839D20 8FB9007C */  lw      $t9, 0x007C($sp)           
/* 07B14 80839D24 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 07B18 80839D28 8FA9008C */  lw      $t1, 0x008C($sp)           
/* 07B1C 80839D2C 1B200003 */  blez    $t9, .L80839D3C            
/* 07B20 80839D30 3C018085 */  lui     $at, %hi(D_808535EC)       ## $at = 80850000
/* 07B24 80839D34 10000002 */  beq     $zero, $zero, .L80839D40   
/* 07B28 80839D38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839D3C:
/* 07B2C 80839D3C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80839D40:
/* 07B30 80839D40 C42035EC */  lwc1    $f0, %lo(D_808535EC)($at)  
/* 07B34 80839D44 9628001C */  lhu     $t0, 0x001C($s1)           ## 0000001C
/* 07B38 80839D48 3C014218 */  lui     $at, 0x4218                ## $at = 42180000
/* 07B3C 80839D4C 44819000 */  mtc1    $at, $f18                  ## $f18 = 38.00
/* 07B40 80839D50 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 07B44 80839D54 44818000 */  mtc1    $at, $f16                  ## $f16 = 26.00
/* 07B48 80839D58 46009482 */  mul.s   $f18, $f18, $f0            
/* 07B4C 80839D5C 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 07B50 80839D60 01495021 */  addu    $t2, $t2, $t1              
/* 07B54 80839D64 46008402 */  mul.s   $f16, $f16, $f0            
/* 07B58 80839D68 8D4A1D38 */  lw      $t2, 0x1D38($t2)           ## 00011D38
/* 07B5C 80839D6C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 07B60 80839D70 44817000 */  mtc1    $at, $f14                  ## $f14 = 10.00
/* 07B64 80839D74 00085A83 */  sra     $t3, $t0, 10               
/* 07B68 80839D78 000B6100 */  sll     $t4, $t3,  4               
/* 07B6C 80839D7C 46007382 */  mul.s   $f14, $f14, $f0            
/* 07B70 80839D80 4600948D */  trunc.w.s $f18, $f18                 
/* 07B74 80839D84 014C6821 */  addu    $t5, $t2, $t4              
/* 07B78 80839D88 00027040 */  sll     $t6, $v0,  1               
/* 07B7C 80839D8C 01AE7821 */  addu    $t7, $t5, $t6              
/* 07B80 80839D90 44199000 */  mfc1    $t9, $f18                  
/* 07B84 80839D94 4600840D */  trunc.w.s $f16, $f16                 
/* 07B88 80839D98 81E60001 */  lb      $a2, 0x0001($t7)           ## 00000001
/* 07B8C 80839D9C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 07B90 80839DA0 4600738D */  trunc.w.s $f14, $f14                 
/* 07B94 80839DA4 44088000 */  mfc1    $t0, $f16                  
/* 07B98 80839DA8 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 07B9C 80839DAC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 07BA0 80839DB0 440A7000 */  mfc1    $t2, $f14                  
/* 07BA4 80839DB4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 07BA8 80839DB8 0C016B50 */  jal     func_8005AD40              
/* 07BAC 80839DBC AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 07BB0 80839DC0 8203042C */  lb      $v1, 0x042C($s0)           ## 0000042C
.L80839DC4:
/* 07BB4 80839DC4 8FA4008C */  lw      $a0, 0x008C($sp)           
.L80839DC8:
/* 07BB8 80839DC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07BBC 80839DCC 00818021 */  addu    $s0, $a0, $at              
/* 07BC0 80839DD0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 07BC4 80839DD4 5061001C */  beql    $v1, $at, .L80839E48       
/* 07BC8 80839DD8 8E22011C */  lw      $v0, 0x011C($s1)           ## 0000011C
/* 07BCC 80839DDC 922C0002 */  lbu     $t4, 0x0002($s1)           ## 00000002
/* 07BD0 80839DE0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 07BD4 80839DE4 8FAD007C */  lw      $t5, 0x007C($sp)           
/* 07BD8 80839DE8 55810017 */  bnel    $t4, $at, .L80839E48       
/* 07BDC 80839DEC 8E22011C */  lw      $v0, 0x011C($s1)           ## 0000011C
/* 07BE0 80839DF0 19A00003 */  blez    $t5, .L80839E00            
/* 07BE4 80839DF4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 07BE8 80839DF8 10000001 */  beq     $zero, $zero, .L80839E00   
/* 07BEC 80839DFC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839E00:
/* 07BF0 80839E00 962F001C */  lhu     $t7, 0x001C($s1)           ## 0000001C
/* 07BF4 80839E04 8E0E1D38 */  lw      $t6, 0x1D38($s0)           ## 00001D38
/* 07BF8 80839E08 00024040 */  sll     $t0, $v0,  1               
/* 07BFC 80839E0C 000FC283 */  sra     $t8, $t7, 10               
/* 07C00 80839E10 0018C900 */  sll     $t9, $t8,  4               
/* 07C04 80839E14 01D94821 */  addu    $t1, $t6, $t9              
/* 07C08 80839E18 01285821 */  addu    $t3, $t1, $t0              
/* 07C0C 80839E1C 81660000 */  lb      $a2, 0x0000($t3)           ## 00000000
/* 07C10 80839E20 04C20009 */  bltzl   $a2, .L80839E48            
/* 07C14 80839E24 8E22011C */  lw      $v0, 0x011C($s1)           ## 0000011C
/* 07C18 80839E28 820A1CBC */  lb      $t2, 0x1CBC($s0)           ## 00001CBC
/* 07C1C 80839E2C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07C20 80839E30 34211CBC */  ori     $at, $at, 0x1CBC           ## $at = 00011CBC
/* 07C24 80839E34 50CA0004 */  beql    $a2, $t2, .L80839E48       
/* 07C28 80839E38 8E22011C */  lw      $v0, 0x011C($s1)           ## 0000011C
/* 07C2C 80839E3C 0C025CA3 */  jal     func_8009728C              
/* 07C30 80839E40 00812821 */  addu    $a1, $a0, $at              
/* 07C34 80839E44 8E22011C */  lw      $v0, 0x011C($s1)           ## 0000011C
.L80839E48:
/* 07C38 80839E48 820C1CBC */  lb      $t4, 0x1CBC($s0)           ## 00001CBC
/* 07C3C 80839E4C 14400004 */  bne     $v0, $zero, .L80839E60     
/* 07C40 80839E50 A22C0003 */  sb      $t4, 0x0003($s1)           ## 00000003
/* 07C44 80839E54 8E220118 */  lw      $v0, 0x0118($s1)           ## 00000118
/* 07C48 80839E58 10400003 */  beq     $v0, $zero, .L80839E68     
/* 07C4C 80839E5C 00000000 */  nop
.L80839E60:
/* 07C50 80839E60 820D1CBC */  lb      $t5, 0x1CBC($s0)           ## 00001CBC
/* 07C54 80839E64 A04D0003 */  sb      $t5, 0x0003($v0)           ## 00000003
.L80839E68:
/* 07C58 80839E68 10000002 */  beq     $zero, $zero, .L80839E74   
/* 07C5C 80839E6C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 07C60 80839E70 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839E74:
/* 07C64 80839E74 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 07C68 80839E78 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 07C6C 80839E7C 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 07C70 80839E80 03E00008 */  jr      $ra                        
/* 07C74 80839E84 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
