glabel func_80AC3D18
/* 01078 80AC3D18 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0107C 80AC3D1C 908E0252 */  lbu     $t6, 0x0252($a0)           ## 00000252
/* 01080 80AC3D20 30A500FF */  andi    $a1, $a1, 0x00FF           ## $a1 = 00000000
/* 01084 80AC3D24 30A300FF */  andi    $v1, $a1, 0x00FF           ## $v1 = 00000000
/* 01088 80AC3D28 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 0108C 80AC3D2C 11E00025 */  beq     $t7, $zero, .L80AC3DC4     
/* 01090 80AC3D30 24A70004 */  addiu   $a3, $a1, 0x0004           ## $a3 = 00000004
/* 01094 80AC3D34 24A60001 */  addiu   $a2, $a1, 0x0001           ## $a2 = 00000001
/* 01098 80AC3D38 30D800FF */  andi    $t8, $a2, 0x00FF           ## $t8 = 00000001
/* 0109C 80AC3D3C 24A70004 */  addiu   $a3, $a1, 0x0004           ## $a3 = 00000004
/* 010A0 80AC3D40 0307082A */  slt     $at, $t8, $a3              
/* 010A4 80AC3D44 30C300FF */  andi    $v1, $a2, 0x00FF           ## $v1 = 00000001
/* 010A8 80AC3D48 1020000D */  beq     $at, $zero, .L80AC3D80     
/* 010AC 80AC3D4C 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
/* 010B0 80AC3D50 0003C880 */  sll     $t9, $v1,  2               
.L80AC3D54:
/* 010B4 80AC3D54 00994021 */  addu    $t0, $a0, $t9              
/* 010B8 80AC3D58 8D090200 */  lw      $t1, 0x0200($t0)           ## 00000200
/* 010BC 80AC3D5C 51200004 */  beql    $t1, $zero, .L80AC3D70     
/* 010C0 80AC3D60 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000003
/* 010C4 80AC3D64 03E00008 */  jr      $ra                        
/* 010C8 80AC3D68 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000003
.L80AC3D6C:
/* 010CC 80AC3D6C 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000005
.L80AC3D70:
/* 010D0 80AC3D70 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000005
/* 010D4 80AC3D74 0067082A */  slt     $at, $v1, $a3              
/* 010D8 80AC3D78 5420FFF6 */  bnel    $at, $zero, .L80AC3D54     
/* 010DC 80AC3D7C 0003C880 */  sll     $t9, $v1,  2               
.L80AC3D80:
/* 010E0 80AC3D80 0047082A */  slt     $at, $v0, $a3              
/* 010E4 80AC3D84 1020002F */  beq     $at, $zero, .L80AC3E44     
/* 010E8 80AC3D88 30A300FF */  andi    $v1, $a1, 0x00FF           ## $v1 = 00000000
/* 010EC 80AC3D8C 00035080 */  sll     $t2, $v1,  2               
.L80AC3D90:
/* 010F0 80AC3D90 008A5821 */  addu    $t3, $a0, $t2              
/* 010F4 80AC3D94 8D6C0200 */  lw      $t4, 0x0200($t3)           ## 00000200
/* 010F8 80AC3D98 51800004 */  beql    $t4, $zero, .L80AC3DAC     
/* 010FC 80AC3D9C 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000002
/* 01100 80AC3DA0 03E00008 */  jr      $ra                        
/* 01104 80AC3DA4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000002
.L80AC3DA8:
/* 01108 80AC3DA8 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000004
.L80AC3DAC:
/* 0110C 80AC3DAC 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000004
/* 01110 80AC3DB0 0067082A */  slt     $at, $v1, $a3              
/* 01114 80AC3DB4 5420FFF6 */  bnel    $at, $zero, .L80AC3D90     
/* 01118 80AC3DB8 00035080 */  sll     $t2, $v1,  2               
/* 0111C 80AC3DBC 10000022 */  beq     $zero, $zero, .L80AC3E48   
/* 01120 80AC3DC0 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
.L80AC3DC4:
/* 01124 80AC3DC4 00A7082A */  slt     $at, $a1, $a3              
/* 01128 80AC3DC8 1020000D */  beq     $at, $zero, .L80AC3E00     
/* 0112C 80AC3DCC 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
/* 01130 80AC3DD0 00036880 */  sll     $t5, $v1,  2               
.L80AC3DD4:
/* 01134 80AC3DD4 008D7021 */  addu    $t6, $a0, $t5              
/* 01138 80AC3DD8 8DCF0200 */  lw      $t7, 0x0200($t6)           ## 00000200
/* 0113C 80AC3DDC 51E00004 */  beql    $t7, $zero, .L80AC3DF0     
/* 01140 80AC3DE0 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000006
/* 01144 80AC3DE4 03E00008 */  jr      $ra                        
/* 01148 80AC3DE8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000006
.L80AC3DEC:
/* 0114C 80AC3DEC 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000008
.L80AC3DF0:
/* 01150 80AC3DF0 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000008
/* 01154 80AC3DF4 0067082A */  slt     $at, $v1, $a3              
/* 01158 80AC3DF8 5420FFF6 */  bnel    $at, $zero, .L80AC3DD4     
/* 0115C 80AC3DFC 00036880 */  sll     $t5, $v1,  2               
.L80AC3E00:
/* 01160 80AC3E00 24460001 */  addiu   $a2, $v0, 0x0001           ## $a2 = 00000007
/* 01164 80AC3E04 30D800FF */  andi    $t8, $a2, 0x00FF           ## $t8 = 00000007
/* 01168 80AC3E08 0307082A */  slt     $at, $t8, $a3              
/* 0116C 80AC3E0C 1020000D */  beq     $at, $zero, .L80AC3E44     
/* 01170 80AC3E10 30C300FF */  andi    $v1, $a2, 0x00FF           ## $v1 = 00000007
/* 01174 80AC3E14 0003C880 */  sll     $t9, $v1,  2               
.L80AC3E18:
/* 01178 80AC3E18 00994021 */  addu    $t0, $a0, $t9              
/* 0117C 80AC3E1C 8D090200 */  lw      $t1, 0x0200($t0)           ## 00000200
/* 01180 80AC3E20 51200004 */  beql    $t1, $zero, .L80AC3E34     
/* 01184 80AC3E24 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 00000009
/* 01188 80AC3E28 03E00008 */  jr      $ra                        
/* 0118C 80AC3E2C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000009
.L80AC3E30:
/* 01190 80AC3E30 24630002 */  addiu   $v1, $v1, 0x0002           ## $v1 = 0000000B
.L80AC3E34:
/* 01194 80AC3E34 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 0000000B
/* 01198 80AC3E38 0067082A */  slt     $at, $v1, $a3              
/* 0119C 80AC3E3C 5420FFF6 */  bnel    $at, $zero, .L80AC3E18     
/* 011A0 80AC3E40 0003C880 */  sll     $t9, $v1,  2               
.L80AC3E44:
/* 011A4 80AC3E44 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
.L80AC3E48:
/* 011A8 80AC3E48 03E00008 */  jr      $ra                        
/* 011AC 80AC3E4C 00000000 */  nop


