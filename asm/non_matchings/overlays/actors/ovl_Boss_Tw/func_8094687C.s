glabel func_8094687C
/* 0DBAC 8094687C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0DBB0 80946880 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0DBB4 80946884 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0DBB8 80946888 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0DBBC 8094688C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0DBC0 80946890 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0DBC4 80946894 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0DBC8 80946898 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 0DBCC 8094689C 84980440 */  lh      $t8, 0x0440($a0)           ## 00000440
/* 0DBD0 809468A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0DBD4 809468A4 57010092 */  bnel    $t8, $at, .L80946AF0       
/* 0DBD8 809468A8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0DBDC 809468AC 908305BD */  lbu     $v1, 0x05BD($a0)           ## 000005BD
/* 0DBE0 809468B0 30790002 */  andi    $t9, $v1, 0x0002           ## $t9 = 00000000
/* 0DBE4 809468B4 1320008D */  beq     $t9, $zero, .L80946AEC     
/* 0DBE8 809468B8 3068FFFD */  andi    $t0, $v1, 0xFFFD           ## $t0 = 00000000
/* 0DBEC 809468BC 920905BC */  lbu     $t1, 0x05BC($s0)           ## 000005BC
/* 0DBF0 809468C0 8E0205E8 */  lw      $v0, 0x05E8($s0)           ## 000005E8
/* 0DBF4 809468C4 A20805BD */  sb      $t0, 0x05BD($s0)           ## 000005BD
/* 0DBF8 809468C8 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 0DBFC 809468CC A20A05BC */  sb      $t2, 0x05BC($s0)           ## 000005BC
/* 0DC00 809468D0 8C4B0000 */  lw      $t3, 0x0000($v0)           ## 00000000
/* 0DC04 809468D4 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 0DC08 809468D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0DC0C 809468DC 000B62C0 */  sll     $t4, $t3, 11               
/* 0DC10 809468E0 05810082 */  bgez    $t4, .L80946AEC            
/* 0DC14 809468E4 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 0DC18 809468E8 A60D015A */  sh      $t5, 0x015A($s0)           ## 0000015A
/* 0DC1C 809468EC 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 0DC20 809468F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0DC24 809468F4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0DC28 809468F8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 0DC2C 809468FC 002E0821 */  addu    $at, $at, $t6              
/* 0DC30 80946900 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 0DC34 80946904 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 0DC38 80946908 0C02A800 */  jal     func_800AA000              
/* 0DC3C 8094690C E4240AFC */  swc1    $f4, 0x0AFC($at)           ## 00010AFC
/* 0DC40 80946910 0C023C26 */  jal     func_8008F098              
/* 0DC44 80946914 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0DC48 80946918 10400062 */  beq     $v0, $zero, .L80946AA4     
/* 0DC4C 8094691C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0DC50 80946920 860F0566 */  lh      $t7, 0x0566($s0)           ## 00000566
/* 0DC54 80946924 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0DC58 80946928 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DC5C 8094692C 15E1001F */  bne     $t7, $at, .L809469AC       
/* 0DC60 80946930 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
/* 0DC64 80946934 3C038095 */  lui     $v1, %hi(D_8094C851)       ## $v1 = 80950000
/* 0DC68 80946938 2463C851 */  addiu   $v1, $v1, %lo(D_8094C851)  ## $v1 = 8094C851
/* 0DC6C 8094693C 90780000 */  lbu     $t8, 0x0000($v1)           ## 8094C851
/* 0DC70 80946940 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0DC74 80946944 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0DC78 80946948 13000007 */  beq     $t8, $zero, .L80946968     
/* 0DC7C 8094694C 00000000 */  nop
/* 0DC80 80946950 A0600000 */  sb      $zero, 0x0000($v1)         ## 8094C851
/* 0DC84 80946954 0C24E4CE */  jal     func_80939338              
/* 0DC88 80946958 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0DC8C 8094695C 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DC90 80946960 1000000F */  beq     $zero, $zero, .L809469A0   
/* 0DC94 80946964 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
.L80946968:
/* 0DC98 80946968 0C24E53F */  jal     func_809394FC              
/* 0DC9C 8094696C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0DCA0 80946970 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DCA4 80946974 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
/* 0DCA8 80946978 90F90000 */  lbu     $t9, 0x0000($a3)           ## 8094C850
/* 0DCAC 8094697C 3C018095 */  lui     $at, %hi(D_8094C86F)       ## $at = 80950000
/* 0DCB0 80946980 240CFFF9 */  addiu   $t4, $zero, 0xFFF9         ## $t4 = FFFFFFF9
/* 0DCB4 80946984 27290001 */  addiu   $t1, $t9, 0x0001           ## $t1 = 00000001
/* 0DCB8 80946988 00095040 */  sll     $t2, $t1,  1               
/* 0DCBC 8094698C A0E90000 */  sb      $t1, 0x0000($a3)           ## 8094C850
/* 0DCC0 80946990 254B0008 */  addiu   $t3, $t2, 0x0008           ## $t3 = 00000008
/* 0DCC4 80946994 A02BC86F */  sb      $t3, %lo(D_8094C86F)($at)  
/* 0DCC8 80946998 3C018095 */  lui     $at, %hi(D_8094C872)       ## $at = 80950000
/* 0DCCC 8094699C A42CC872 */  sh      $t4, %lo(D_8094C872)($at)  
.L809469A0:
/* 0DCD0 809469A0 3C028095 */  lui     $v0, %hi(D_8094C851)       ## $v0 = 80950000
/* 0DCD4 809469A4 1000001F */  beq     $zero, $zero, .L80946A24   
/* 0DCD8 809469A8 9042C851 */  lbu     $v0, %lo(D_8094C851)($v0)  
.L809469AC:
/* 0DCDC 809469AC 90ED0000 */  lbu     $t5, 0x0000($a3)           ## 8094C850
/* 0DCE0 809469B0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0DCE4 809469B4 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0DCE8 809469B8 11A00009 */  beq     $t5, $zero, .L809469E0     
/* 0DCEC 809469BC 00000000 */  nop
/* 0DCF0 809469C0 A0E00000 */  sb      $zero, 0x0000($a3)         ## 8094C850
/* 0DCF4 809469C4 0C24E4CE */  jal     func_80939338              
/* 0DCF8 809469C8 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0DCFC 809469CC 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DD00 809469D0 3C028095 */  lui     $v0, %hi(D_8094C851)       ## $v0 = 80950000
/* 0DD04 809469D4 9042C851 */  lbu     $v0, %lo(D_8094C851)($v0)  
/* 0DD08 809469D8 10000012 */  beq     $zero, $zero, .L80946A24   
/* 0DD0C 809469DC 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
.L809469E0:
/* 0DD10 809469E0 0C24E53F */  jal     func_809394FC              
/* 0DD14 809469E4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0DD18 809469E8 3C038095 */  lui     $v1, %hi(D_8094C851)       ## $v1 = 80950000
/* 0DD1C 809469EC 2463C851 */  addiu   $v1, $v1, %lo(D_8094C851)  ## $v1 = 8094C851
/* 0DD20 809469F0 906E0000 */  lbu     $t6, 0x0000($v1)           ## 8094C851
/* 0DD24 809469F4 3C018095 */  lui     $at, %hi(D_8094C86F)       ## $at = 80950000
/* 0DD28 809469F8 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DD2C 809469FC 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0DD30 80946A00 31E200FF */  andi    $v0, $t7, 0x00FF           ## $v0 = 00000001
/* 0DD34 80946A04 0002C040 */  sll     $t8, $v0,  1               
/* 0DD38 80946A08 A06F0000 */  sb      $t7, 0x0000($v1)           ## 8094C851
/* 0DD3C 80946A0C 27190008 */  addiu   $t9, $t8, 0x0008           ## $t9 = 00000008
/* 0DD40 80946A10 A039C86F */  sb      $t9, %lo(D_8094C86F)($at)  
/* 0DD44 80946A14 3C018095 */  lui     $at, %hi(D_8094C872)       ## $at = 80950000
/* 0DD48 80946A18 2408FFF9 */  addiu   $t0, $zero, 0xFFF9         ## $t0 = FFFFFFF9
/* 0DD4C 80946A1C 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
/* 0DD50 80946A20 A428C872 */  sh      $t0, %lo(D_8094C872)($at)  
.L80946A24:
/* 0DD54 80946A24 28410003 */  slti    $at, $v0, 0x0003           
/* 0DD58 80946A28 10200006 */  beq     $at, $zero, .L80946A44     
/* 0DD5C 80946A2C 240A0050 */  addiu   $t2, $zero, 0x0050         ## $t2 = 00000050
/* 0DD60 80946A30 90E90000 */  lbu     $t1, 0x0000($a3)           ## 8094C850
/* 0DD64 80946A34 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 0DD68 80946A38 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 0DD6C 80946A3C 29210003 */  slti    $at, $t1, 0x0003           
/* 0DD70 80946A40 14200013 */  bne     $at, $zero, .L80946A90     
.L80946A44:
/* 0DD74 80946A44 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 0DD78 80946A48 A60A0178 */  sh      $t2, 0x0178($s0)           ## 00000178
/* 0DD7C 80946A4C A60B0440 */  sh      $t3, 0x0440($s0)           ## 00000440
/* 0DD80 80946A50 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0DD84 80946A54 26050524 */  addiu   $a1, $s0, 0x0524           ## $a1 = 00000524
/* 0DD88 80946A58 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0DD8C 80946A5C 0C034833 */  jal     func_800D20CC              
/* 0DD90 80946A60 24840A20 */  addiu   $a0, $a0, 0x0A20           ## $a0 = 00000A20
/* 0DD94 80946A64 860C0526 */  lh      $t4, 0x0526($s0)           ## 00000526
/* 0DD98 80946A68 860E0524 */  lh      $t6, 0x0524($s0)           ## 00000524
/* 0DD9C 80946A6C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0DDA0 80946A70 01816821 */  addu    $t5, $t4, $at              
/* 0DDA4 80946A74 000E7823 */  subu    $t7, $zero, $t6            
/* 0DDA8 80946A78 A60D0526 */  sh      $t5, 0x0526($s0)           ## 00000526
/* 0DDAC 80946A7C A60F0524 */  sh      $t7, 0x0524($s0)           ## 00000524
/* 0DDB0 80946A80 3C018095 */  lui     $at, %hi(D_8094C86F)       ## $at = 80950000
/* 0DDB4 80946A84 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 0DDB8 80946A88 10000017 */  beq     $zero, $zero, .L80946AE8   
/* 0DDBC 80946A8C A038C86F */  sb      $t8, %lo(D_8094C86F)($at)  
.L80946A90:
/* 0DDC0 80946A90 A6190440 */  sh      $t9, 0x0440($s0)           ## 00000440
/* 0DDC4 80946A94 A6080178 */  sh      $t0, 0x0178($s0)           ## 00000178
/* 0DDC8 80946A98 3C018095 */  lui     $at, %hi(D_8094C840)       ## $at = 80950000
/* 0DDCC 80946A9C 10000012 */  beq     $zero, $zero, .L80946AE8   
/* 0DDD0 80946AA0 A020C840 */  sb      $zero, %lo(D_8094C840)($at) 
.L80946AA4:
/* 0DDD4 80946AA4 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 0DDD8 80946AA8 0C24E4CE */  jal     func_80939338              
/* 0DDDC 80946AAC 86060566 */  lh      $a2, 0x0566($s0)           ## 00000566
/* 0DDE0 80946AB0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 0DDE4 80946AB4 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 0DDE8 80946AB8 3C038095 */  lui     $v1, %hi(D_8094C851)       ## $v1 = 80950000
/* 0DDEC 80946ABC 3C078095 */  lui     $a3, %hi(D_8094C850)       ## $a3 = 80950000
/* 0DDF0 80946AC0 A6090440 */  sh      $t1, 0x0440($s0)           ## 00000440
/* 0DDF4 80946AC4 A60A0178 */  sh      $t2, 0x0178($s0)           ## 00000178
/* 0DDF8 80946AC8 3C018095 */  lui     $at, %hi(D_8094C840)       ## $at = 80950000
/* 0DDFC 80946ACC 24E7C850 */  addiu   $a3, $a3, %lo(D_8094C850)  ## $a3 = 8094C850
/* 0DE00 80946AD0 2463C851 */  addiu   $v1, $v1, %lo(D_8094C851)  ## $v1 = 8094C851
/* 0DE04 80946AD4 A020C840 */  sb      $zero, %lo(D_8094C840)($at) 
/* 0DE08 80946AD8 A0600000 */  sb      $zero, 0x0000($v1)         ## 8094C851
/* 0DE0C 80946ADC A0E00000 */  sb      $zero, 0x0000($a3)         ## 8094C850
/* 0DE10 80946AE0 0C01E221 */  jal     func_80078884              
/* 0DE14 80946AE4 24041838 */  addiu   $a0, $zero, 0x1838         ## $a0 = 00001838
.L80946AE8:
/* 0DE18 80946AE8 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L80946AEC:
/* 0DE1C 80946AEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80946AF0:
/* 0DE20 80946AF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0DE24 80946AF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0DE28 80946AF8 03E00008 */  jr      $ra                        
/* 0DE2C 80946AFC 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000001
