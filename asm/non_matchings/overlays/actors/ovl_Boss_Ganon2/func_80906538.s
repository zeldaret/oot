.late_rodata
glabel D_8090DD94
    .float 0.2
    .balign 4

.text
glabel func_80906538
/* 095F8 80906538 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 095FC 8090653C F7BE0038 */  sdc1    $f30, 0x0038($sp)          
/* 09600 80906540 3C018091 */  lui     $at, %hi(D_8090DD94)       ## $at = 80910000
/* 09604 80906544 C43EDD94 */  lwc1    $f30, %lo(D_8090DD94)($at) 
/* 09608 80906548 F7BC0030 */  sdc1    $f28, 0x0030($sp)          
/* 0960C 8090654C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 09610 80906550 4481E000 */  mtc1    $at, $f28                  ## $f28 = 100.00
/* 09614 80906554 F7BA0028 */  sdc1    $f26, 0x0028($sp)          
/* 09618 80906558 3C014298 */  lui     $at, 0x4298                ## $at = 42980000
/* 0961C 8090655C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 76.00
/* 09620 80906560 F7B80020 */  sdc1    $f24, 0x0020($sp)          
/* 09624 80906564 F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 09628 80906568 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 0962C 8090656C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 09630 80906570 AFB30050 */  sw      $s3, 0x0050($sp)           
/* 09634 80906574 AFB2004C */  sw      $s2, 0x004C($sp)           
/* 09638 80906578 AFB10048 */  sw      $s1, 0x0048($sp)           
/* 0963C 8090657C AFB00044 */  sw      $s0, 0x0044($sp)           
/* 09640 80906580 4486A000 */  mtc1    $a2, $f20                  ## $f20 = 0.00
/* 09644 80906584 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 09648 80906588 4480C000 */  mtc1    $zero, $f24                ## $f24 = 0.00
/* 0964C 8090658C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 09650 80906590 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 09654 80906594 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 09658 80906598 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 0965C 8090659C 2413000C */  addiu   $s3, $zero, 0x000C         ## $s3 = 0000000C
/* 09660 809065A0 87AA0086 */  lh      $t2, 0x0086($sp)           
/* 09664 809065A4 4618A032 */  c.eq.s  $f20, $f24                 
.L809065A8:
/* 09668 809065A8 00127040 */  sll     $t6, $s2,  1               
/* 0966C 809065AC 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFD8
/* 09670 809065B0 45030007 */  bc1tl   .L809065D0                 
/* 09674 809065B4 4614C03C */  c.lt.s  $f24, $f20                 
/* 09678 809065B8 3C0A8090 */  lui     $t2, %hi(D_809071CC)       ## $t2 = 80900000
/* 0967C 809065BC 014E5021 */  addu    $t2, $t2, $t6              
/* 09680 809065C0 854A71CC */  lh      $t2, %lo(D_809071CC)($t2)  
/* 09684 809065C4 054200F9 */  bltzl   $t2, .L809069AC            
/* 09688 809065C8 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0968C 809065CC 4614C03C */  c.lt.s  $f24, $f20                 
.L809065D0:
/* 09690 809065D0 00000000 */  nop
/* 09694 809065D4 45000024 */  bc1f    .L80906668                 
/* 09698 809065D8 00000000 */  nop
/* 0969C 809065DC 01530019 */  multu   $t2, $s3                   
/* 096A0 809065E0 00007812 */  mflo    $t7                        
/* 096A4 809065E4 022F1021 */  addu    $v0, $s1, $t7              
/* 096A8 809065E8 C4440234 */  lwc1    $f4, 0x0234($v0)           ## 00000234
/* 096AC 809065EC 02530019 */  multu   $s2, $s3                   
/* 096B0 809065F0 C44A0238 */  lwc1    $f10, 0x0238($v0)          ## 00000238
/* 096B4 809065F4 0000C012 */  mflo    $t8                        
/* 096B8 809065F8 02381821 */  addu    $v1, $s1, $t8              
/* 096BC 809065FC C4600234 */  lwc1    $f0, 0x0234($v1)           ## 00000234
/* 096C0 80906600 C4620238 */  lwc1    $f2, 0x0238($v1)           ## 00000238
/* 096C4 80906604 C46C023C */  lwc1    $f12, 0x023C($v1)          ## 0000023C
/* 096C8 80906608 46002181 */  sub.s   $f6, $f4, $f0              
/* 096CC 8090660C 46025101 */  sub.s   $f4, $f10, $f2             
/* 096D0 80906610 46143202 */  mul.s   $f8, $f6, $f20             
/* 096D4 80906614 46004380 */  add.s   $f14, $f8, $f0             
/* 096D8 80906618 46142182 */  mul.s   $f6, $f4, $f20             
/* 096DC 8090661C C448023C */  lwc1    $f8, 0x023C($v0)           ## 0000023C
/* 096E0 80906620 460C4281 */  sub.s   $f10, $f8, $f12            
/* 096E4 80906624 46023400 */  add.s   $f16, $f6, $f2             
/* 096E8 80906628 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 096EC 8090662C 46145102 */  mul.s   $f4, $f10, $f20            
/* 096F0 80906630 46067201 */  sub.s   $f8, $f14, $f6             
/* 096F4 80906634 E7A80070 */  swc1    $f8, 0x0070($sp)           
/* 096F8 80906638 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 096FC 8090663C 460C2480 */  add.s   $f18, $f4, $f12            
/* 09700 80906640 460A8101 */  sub.s   $f4, $f16, $f10            
/* 09704 80906644 461A2180 */  add.s   $f6, $f4, $f26             
/* 09708 80906648 46163200 */  add.s   $f8, $f6, $f22             
/* 0970C 8090664C 46164280 */  add.s   $f10, $f8, $f22            
/* 09710 80906650 461C5100 */  add.s   $f4, $f10, $f28            
/* 09714 80906654 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 09718 80906658 C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 0971C 8090665C 46069201 */  sub.s   $f8, $f18, $f6             
/* 09720 80906660 10000014 */  beq     $zero, $zero, .L809066B4   
/* 09724 80906664 E7A80078 */  swc1    $f8, 0x0078($sp)           
.L80906668:
/* 09728 80906668 02530019 */  multu   $s2, $s3                   
/* 0972C 8090666C C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 09730 80906670 0000C812 */  mflo    $t9                        
/* 09734 80906674 02391821 */  addu    $v1, $s1, $t9              
/* 09738 80906678 C46A0234 */  lwc1    $f10, 0x0234($v1)          ## 00000234
/* 0973C 8090667C 46045181 */  sub.s   $f6, $f10, $f4             
/* 09740 80906680 E7A60070 */  swc1    $f6, 0x0070($sp)           
/* 09744 80906684 C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 09748 80906688 C4680238 */  lwc1    $f8, 0x0238($v1)           ## 00000238
/* 0974C 8090668C 460A4101 */  sub.s   $f4, $f8, $f10             
/* 09750 80906690 461A2180 */  add.s   $f6, $f4, $f26             
/* 09754 80906694 46163200 */  add.s   $f8, $f6, $f22             
/* 09758 80906698 46164280 */  add.s   $f10, $f8, $f22            
/* 0975C 8090669C 461C5100 */  add.s   $f4, $f10, $f28            
/* 09760 809066A0 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 09764 809066A4 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 09768 809066A8 C466023C */  lwc1    $f6, 0x023C($v1)           ## 0000023C
/* 0976C 809066AC 46083281 */  sub.s   $f10, $f6, $f8             
/* 09770 809066B0 E7AA0078 */  swc1    $f10, 0x0078($sp)          
.L809066B4:
/* 09774 809066B4 0C0346BD */  jal     Matrix_MultVec3f              
/* 09778 809066B8 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFCC
/* 0977C 809066BC C7A00064 */  lwc1    $f0, 0x0064($sp)           
/* 09780 809066C0 C7A20068 */  lwc1    $f2, 0x0068($sp)           
/* 09784 809066C4 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 09788 809066C8 461E0002 */  mul.s   $f0, $f0, $f30             
/* 0978C 809066CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 09790 809066D0 3C028090 */  lui     $v0, %hi(D_809071EC)       ## $v0 = 80900000
/* 09794 809066D4 461E1082 */  mul.s   $f2, $f2, $f30             
/* 09798 809066D8 00521021 */  addu    $v0, $v0, $s2              
/* 0979C 809066DC 904271EC */  lbu     $v0, %lo(D_809071EC)($v0)  
/* 097A0 809066E0 3C0B8090 */  lui     $t3, %hi(D_809071B4)       ## $t3 = 80900000
/* 097A4 809066E4 3C0C8090 */  lui     $t4, %hi(D_809071A4)       ## $t4 = 80900000
/* 097A8 809066E8 46040180 */  add.s   $f6, $f0, $f4              
/* 097AC 809066EC 3C0D8090 */  lui     $t5, %hi(D_80907194)       ## $t5 = 80900000
/* 097B0 809066F0 3C1F8090 */  lui     $ra, %hi(D_80907188)       ## $ra = 80900000
/* 097B4 809066F4 4600128D */  trunc.w.s $f10, $f2                  
/* 097B8 809066F8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 097BC 809066FC 27FF7188 */  addiu   $ra, $ra, %lo(D_80907188)  ## $ra = 80907188
/* 097C0 80906700 4600320D */  trunc.w.s $f8, $f6                   
/* 097C4 80906704 44085000 */  mfc1    $t0, $f10                  
/* 097C8 80906708 25AD7194 */  addiu   $t5, $t5, %lo(D_80907194)  ## $t5 = 80907194
/* 097CC 8090670C 258C71A4 */  addiu   $t4, $t4, %lo(D_809071A4)  ## $t4 = 809071A4
/* 097D0 80906710 44074000 */  mfc1    $a3, $f8                   
/* 097D4 80906714 00084400 */  sll     $t0, $t0, 16               
/* 097D8 80906718 00084403 */  sra     $t0, $t0, 16               
/* 097DC 8090671C 00084180 */  sll     $t0, $t0,  6               
/* 097E0 80906720 00084400 */  sll     $t0, $t0, 16               
/* 097E4 80906724 00073C00 */  sll     $a3, $a3, 16               
/* 097E8 80906728 256B71B4 */  addiu   $t3, $t3, %lo(D_809071B4)  ## $t3 = 809071B4
/* 097EC 8090672C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 097F0 80906730 00073C03 */  sra     $a3, $a3, 16               
/* 097F4 80906734 00084403 */  sra     $t0, $t0, 16               
/* 097F8 80906738 E7A20068 */  swc1    $f2, 0x0068($sp)           
/* 097FC 8090673C 14410026 */  bne     $v0, $at, .L809067D8       
/* 09800 80906740 E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 09804 80906744 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 09808 80906748 2405FE80 */  addiu   $a1, $zero, 0xFE80         ## $a1 = FFFFFE80
.L8090674C:
/* 0980C 8090674C 000AC040 */  sll     $t8, $t2,  1               
/* 09810 80906750 01783021 */  addu    $a2, $t3, $t8              
/* 09814 80906754 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
/* 09818 80906758 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000001
/* 0981C 8090675C 000A5400 */  sll     $t2, $t2, 16               
/* 09820 80906760 00041823 */  subu    $v1, $zero, $a0            
/* 09824 80906764 00031C00 */  sll     $v1, $v1, 16               
/* 09828 80906768 00031C03 */  sra     $v1, $v1, 16               
/* 0982C 8090676C 0064082A */  slt     $at, $v1, $a0              
/* 09830 80906770 10200012 */  beq     $at, $zero, .L809067BC     
/* 09834 80906774 000A5403 */  sra     $t2, $t2, 16               
/* 09838 80906778 00E3C821 */  addu    $t9, $a3, $v1              
.L8090677C:
/* 0983C 8090677C 03287021 */  addu    $t6, $t9, $t0              
/* 09840 80906780 01C51021 */  addu    $v0, $t6, $a1              
/* 09844 80906784 00021400 */  sll     $v0, $v0, 16               
/* 09848 80906788 00021403 */  sra     $v0, $v0, 16               
/* 0984C 8090678C 04400006 */  bltz    $v0, .L809067A8            
/* 09850 80906790 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000001
/* 09854 80906794 28411000 */  slti    $at, $v0, 0x1000           
/* 09858 80906798 10200003 */  beq     $at, $zero, .L809067A8     
/* 0985C 8090679C 02027821 */  addu    $t7, $s0, $v0              
/* 09860 809067A0 A1E90000 */  sb      $t1, 0x0000($t7)           ## 00000000
/* 09864 809067A4 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
.L809067A8:
/* 09868 809067A8 00031C00 */  sll     $v1, $v1, 16               
/* 0986C 809067AC 00031C03 */  sra     $v1, $v1, 16               
/* 09870 809067B0 0064082A */  slt     $at, $v1, $a0              
/* 09874 809067B4 5420FFF1 */  bnel    $at, $zero, .L8090677C     
/* 09878 809067B8 00E3C821 */  addu    $t9, $a3, $v1              
.L809067BC:
/* 0987C 809067BC 24A50040 */  addiu   $a1, $a1, 0x0040           ## $a1 = FFFFFEC0
/* 09880 809067C0 00052C00 */  sll     $a1, $a1, 16               
/* 09884 809067C4 2941000C */  slti    $at, $t2, 0x000C           
/* 09888 809067C8 1420FFE0 */  bne     $at, $zero, .L8090674C     
/* 0988C 809067CC 00052C03 */  sra     $a1, $a1, 16               
/* 09890 809067D0 10000076 */  beq     $zero, $zero, .L809069AC   
/* 09894 809067D4 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000002
.L809067D8:
/* 09898 809067D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0989C 809067DC 14410025 */  bne     $v0, $at, .L80906874       
/* 098A0 809067E0 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 098A4 809067E4 2405FF00 */  addiu   $a1, $zero, 0xFF00         ## $a1 = FFFFFF00
.L809067E8:
/* 098A8 809067E8 000AC040 */  sll     $t8, $t2,  1               
/* 098AC 809067EC 01983021 */  addu    $a2, $t4, $t8              
/* 098B0 809067F0 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
/* 098B4 809067F4 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000001
/* 098B8 809067F8 000A5400 */  sll     $t2, $t2, 16               
/* 098BC 809067FC 00041823 */  subu    $v1, $zero, $a0            
/* 098C0 80906800 00031C00 */  sll     $v1, $v1, 16               
/* 098C4 80906804 00031C03 */  sra     $v1, $v1, 16               
/* 098C8 80906808 0064082A */  slt     $at, $v1, $a0              
/* 098CC 8090680C 10200012 */  beq     $at, $zero, .L80906858     
/* 098D0 80906810 000A5403 */  sra     $t2, $t2, 16               
/* 098D4 80906814 00E3C821 */  addu    $t9, $a3, $v1              
.L80906818:
/* 098D8 80906818 03287021 */  addu    $t6, $t9, $t0              
/* 098DC 8090681C 01C51021 */  addu    $v0, $t6, $a1              
/* 098E0 80906820 00021400 */  sll     $v0, $v0, 16               
/* 098E4 80906824 00021403 */  sra     $v0, $v0, 16               
/* 098E8 80906828 04400006 */  bltz    $v0, .L80906844            
/* 098EC 8090682C 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000002
/* 098F0 80906830 28411000 */  slti    $at, $v0, 0x1000           
/* 098F4 80906834 10200003 */  beq     $at, $zero, .L80906844     
/* 098F8 80906838 02027821 */  addu    $t7, $s0, $v0              
/* 098FC 8090683C A1E90000 */  sb      $t1, 0x0000($t7)           ## 00000000
/* 09900 80906840 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
.L80906844:
/* 09904 80906844 00031C00 */  sll     $v1, $v1, 16               
/* 09908 80906848 00031C03 */  sra     $v1, $v1, 16               
/* 0990C 8090684C 0064082A */  slt     $at, $v1, $a0              
/* 09910 80906850 5420FFF1 */  bnel    $at, $zero, .L80906818     
/* 09914 80906854 00E3C821 */  addu    $t9, $a3, $v1              
.L80906858:
/* 09918 80906858 24A50040 */  addiu   $a1, $a1, 0x0040           ## $a1 = FFFFFF40
/* 0991C 8090685C 00052C00 */  sll     $a1, $a1, 16               
/* 09920 80906860 29410008 */  slti    $at, $t2, 0x0008           
/* 09924 80906864 1420FFE0 */  bne     $at, $zero, .L809067E8     
/* 09928 80906868 00052C03 */  sra     $a1, $a1, 16               
/* 0992C 8090686C 1000004F */  beq     $zero, $zero, .L809069AC   
/* 09930 80906870 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000003
.L80906874:
/* 09934 80906874 14400028 */  bne     $v0, $zero, .L80906918     
/* 09938 80906878 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 0993C 8090687C 00005025 */  or      $t2, $zero, $zero          ## $t2 = 00000000
/* 09940 80906880 2405FF40 */  addiu   $a1, $zero, 0xFF40         ## $a1 = FFFFFF40
.L80906884:
/* 09944 80906884 000AC040 */  sll     $t8, $t2,  1               
/* 09948 80906888 01B83021 */  addu    $a2, $t5, $t8              
/* 0994C 8090688C 84C20000 */  lh      $v0, 0x0000($a2)           ## 00000000
/* 09950 80906890 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000001
/* 09954 80906894 000A5400 */  sll     $t2, $t2, 16               
/* 09958 80906898 00021823 */  subu    $v1, $zero, $v0            
/* 0995C 8090689C 00031C00 */  sll     $v1, $v1, 16               
/* 09960 809068A0 00031C03 */  sra     $v1, $v1, 16               
/* 09964 809068A4 2444FFFF */  addiu   $a0, $v0, 0xFFFF           ## $a0 = 808FFFFF
/* 09968 809068A8 0064082A */  slt     $at, $v1, $a0              
/* 0996C 809068AC 10200013 */  beq     $at, $zero, .L809068FC     
/* 09970 809068B0 000A5403 */  sra     $t2, $t2, 16               
/* 09974 809068B4 00E3C821 */  addu    $t9, $a3, $v1              
.L809068B8:
/* 09978 809068B8 03287021 */  addu    $t6, $t9, $t0              
/* 0997C 809068BC 01C51021 */  addu    $v0, $t6, $a1              
/* 09980 809068C0 00021400 */  sll     $v0, $v0, 16               
/* 09984 809068C4 00021403 */  sra     $v0, $v0, 16               
/* 09988 809068C8 04400007 */  bltz    $v0, .L809068E8            
/* 0998C 809068CC 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000003
/* 09990 809068D0 28411000 */  slti    $at, $v0, 0x1000           
/* 09994 809068D4 10200004 */  beq     $at, $zero, .L809068E8     
/* 09998 809068D8 02027821 */  addu    $t7, $s0, $v0              
/* 0999C 809068DC A1E90000 */  sb      $t1, 0x0000($t7)           ## 00000000
/* 099A0 809068E0 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
/* 099A4 809068E4 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = 808FFFFE
.L809068E8:
/* 099A8 809068E8 00031C00 */  sll     $v1, $v1, 16               
/* 099AC 809068EC 00031C03 */  sra     $v1, $v1, 16               
/* 099B0 809068F0 0064082A */  slt     $at, $v1, $a0              
/* 099B4 809068F4 5420FFF0 */  bnel    $at, $zero, .L809068B8     
/* 099B8 809068F8 00E3C821 */  addu    $t9, $a3, $v1              
.L809068FC:
/* 099BC 809068FC 24A50040 */  addiu   $a1, $a1, 0x0040           ## $a1 = FFFFFF80
/* 099C0 80906900 00052C00 */  sll     $a1, $a1, 16               
/* 099C4 80906904 29410007 */  slti    $at, $t2, 0x0007           
/* 099C8 80906908 1420FFDE */  bne     $at, $zero, .L80906884     
/* 099CC 8090690C 00052C03 */  sra     $a1, $a1, 16               
/* 099D0 80906910 10000026 */  beq     $zero, $zero, .L809069AC   
/* 099D4 80906914 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000004
.L80906918:
/* 099D8 80906918 2405FF80 */  addiu   $a1, $zero, 0xFF80         ## $a1 = FFFFFF80
.L8090691C:
/* 099DC 8090691C 000AC040 */  sll     $t8, $t2,  1               
/* 099E0 80906920 03F83021 */  addu    $a2, $ra, $t8              
/* 099E4 80906924 84C20000 */  lh      $v0, 0x0000($a2)           ## 00000000
/* 099E8 80906928 254A0001 */  addiu   $t2, $t2, 0x0001           ## $t2 = 00000002
/* 099EC 8090692C 000A5400 */  sll     $t2, $t2, 16               
/* 099F0 80906930 00021823 */  subu    $v1, $zero, $v0            
/* 099F4 80906934 00031C00 */  sll     $v1, $v1, 16               
/* 099F8 80906938 00031C03 */  sra     $v1, $v1, 16               
/* 099FC 8090693C 2444FFFF */  addiu   $a0, $v0, 0xFFFF           ## $a0 = 808FFFFF
/* 09A00 80906940 0064082A */  slt     $at, $v1, $a0              
/* 09A04 80906944 10200013 */  beq     $at, $zero, .L80906994     
/* 09A08 80906948 000A5403 */  sra     $t2, $t2, 16               
/* 09A0C 8090694C 00E3C821 */  addu    $t9, $a3, $v1              
.L80906950:
/* 09A10 80906950 03287021 */  addu    $t6, $t9, $t0              
/* 09A14 80906954 01C51021 */  addu    $v0, $t6, $a1              
/* 09A18 80906958 00021400 */  sll     $v0, $v0, 16               
/* 09A1C 8090695C 00021403 */  sra     $v0, $v0, 16               
/* 09A20 80906960 04400007 */  bltz    $v0, .L80906980            
/* 09A24 80906964 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 00000004
/* 09A28 80906968 28411000 */  slti    $at, $v0, 0x1000           
/* 09A2C 8090696C 10200004 */  beq     $at, $zero, .L80906980     
/* 09A30 80906970 02027821 */  addu    $t7, $s0, $v0              
/* 09A34 80906974 A1E90000 */  sb      $t1, 0x0000($t7)           ## 00000000
/* 09A38 80906978 84C40000 */  lh      $a0, 0x0000($a2)           ## 00000000
/* 09A3C 8090697C 2484FFFF */  addiu   $a0, $a0, 0xFFFF           ## $a0 = 808FFFFE
.L80906980:
/* 09A40 80906980 00031C00 */  sll     $v1, $v1, 16               
/* 09A44 80906984 00031C03 */  sra     $v1, $v1, 16               
/* 09A48 80906988 0064082A */  slt     $at, $v1, $a0              
/* 09A4C 8090698C 5420FFF0 */  bnel    $at, $zero, .L80906950     
/* 09A50 80906990 00E3C821 */  addu    $t9, $a3, $v1              
.L80906994:
/* 09A54 80906994 24A50040 */  addiu   $a1, $a1, 0x0040           ## $a1 = FFFFFFC0
/* 09A58 80906998 00052C00 */  sll     $a1, $a1, 16               
/* 09A5C 8090699C 29410006 */  slti    $at, $t2, 0x0006           
/* 09A60 809069A0 1420FFDE */  bne     $at, $zero, .L8090691C     
/* 09A64 809069A4 00052C03 */  sra     $a1, $a1, 16               
/* 09A68 809069A8 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000005
.L809069AC:
/* 09A6C 809069AC 00129400 */  sll     $s2, $s2, 16               
/* 09A70 809069B0 00129403 */  sra     $s2, $s2, 16               
/* 09A74 809069B4 2A41000F */  slti    $at, $s2, 0x000F           
/* 09A78 809069B8 5420FEFB */  bnel    $at, $zero, .L809065A8     
/* 09A7C 809069BC 4618A032 */  c.eq.s  $f20, $f24                 
/* 09A80 809069C0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 09A84 809069C4 A7AA0086 */  sh      $t2, 0x0086($sp)           
/* 09A88 809069C8 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 09A8C 809069CC D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 09A90 809069D0 D7B80020 */  ldc1    $f24, 0x0020($sp)          
/* 09A94 809069D4 D7BA0028 */  ldc1    $f26, 0x0028($sp)          
/* 09A98 809069D8 D7BC0030 */  ldc1    $f28, 0x0030($sp)          
/* 09A9C 809069DC D7BE0038 */  ldc1    $f30, 0x0038($sp)          
/* 09AA0 809069E0 8FB00044 */  lw      $s0, 0x0044($sp)           
/* 09AA4 809069E4 8FB10048 */  lw      $s1, 0x0048($sp)           
/* 09AA8 809069E8 8FB2004C */  lw      $s2, 0x004C($sp)           
/* 09AAC 809069EC 8FB30050 */  lw      $s3, 0x0050($sp)           
/* 09AB0 809069F0 03E00008 */  jr      $ra                        
/* 09AB4 809069F4 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


