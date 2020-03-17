glabel func_809BAF44
/* 02C64 809BAF44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02C68 809BAF48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02C6C 809BAF4C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02C70 809BAF50 908202BC */  lbu     $v0, 0x02BC($a0)           ## 000002BC
/* 02C74 809BAF54 304E0004 */  andi    $t6, $v0, 0x0004           ## $t6 = 00000000
/* 02C78 809BAF58 51C0001D */  beql    $t6, $zero, .L809BAFD0     
/* 02C7C 809BAF5C 908202BD */  lbu     $v0, 0x02BD($a0)           ## 000002BD
/* 02C80 809BAF60 8C980250 */  lw      $t8, 0x0250($a0)           ## 00000250
/* 02C84 809BAF64 304FFFFB */  andi    $t7, $v0, 0xFFFB           ## $t7 = 00000000
/* 02C88 809BAF68 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02C8C 809BAF6C 13010017 */  beq     $t8, $at, .L809BAFCC       
/* 02C90 809BAF70 A08F02BC */  sb      $t7, 0x02BC($a0)           ## 000002BC
/* 02C94 809BAF74 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 02C98 809BAF78 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02C9C 809BAF7C 2861FFFE */  slti    $at, $v1, 0xFFFE           
/* 02CA0 809BAF80 54200012 */  bnel    $at, $zero, .L809BAFCC     
/* 02CA4 809BAF84 A499026E */  sh      $t9, 0x026E($a0)           ## 0000026E
/* 02CA8 809BAF88 8482008A */  lh      $v0, 0x008A($a0)           ## 0000008A
/* 02CAC 809BAF8C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 02CB0 809BAF90 00411021 */  addu    $v0, $v0, $at              
/* 02CB4 809BAF94 00021400 */  sll     $v0, $v0, 16               
/* 02CB8 809BAF98 00021403 */  sra     $v0, $v0, 16               
/* 02CBC 809BAF9C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02CC0 809BAFA0 A48200B6 */  sh      $v0, 0x00B6($a0)           ## 000000B6
/* 02CC4 809BAFA4 14610004 */  bne     $v1, $at, .L809BAFB8       
/* 02CC8 809BAFA8 A4820032 */  sh      $v0, 0x0032($a0)           ## 00000032
/* 02CCC 809BAFAC 0C26E146 */  jal     func_809B8518              
/* 02CD0 809BAFB0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02CD4 809BAFB4 8FA40020 */  lw      $a0, 0x0020($sp)           
.L809BAFB8:
/* 02CD8 809BAFB8 0C26E5BB */  jal     func_809B96EC              
/* 02CDC 809BAFBC 00000000 */  nop
/* 02CE0 809BAFC0 100000AA */  beq     $zero, $zero, .L809BB26C   
/* 02CE4 809BAFC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CE8 809BAFC8 A499026E */  sh      $t9, 0x026E($a0)           ## 0000026E
.L809BAFCC:
/* 02CEC 809BAFCC 908202BD */  lbu     $v0, 0x02BD($a0)           ## 000002BD
.L809BAFD0:
/* 02CF0 809BAFD0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02CF4 809BAFD4 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 02CF8 809BAFD8 110000A3 */  beq     $t0, $zero, .L809BB268     
/* 02CFC 809BAFDC 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 02D00 809BAFE0 908A00B1 */  lbu     $t2, 0x00B1($a0)           ## 000000B1
/* 02D04 809BAFE4 A08902BD */  sb      $t1, 0x02BD($a0)           ## 000002BD
/* 02D08 809BAFE8 8C8502C8 */  lw      $a1, 0x02C8($a0)           ## 000002C8
/* 02D0C 809BAFEC A08A02AA */  sb      $t2, 0x02AA($a0)           ## 000002AA
/* 02D10 809BAFF0 0C00D594 */  jal     func_80035650              
/* 02D14 809BAFF4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D18 809BAFF8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02D1C 809BAFFC 908202AA */  lbu     $v0, 0x02AA($a0)           ## 000002AA
/* 02D20 809BB000 244BFFFB */  addiu   $t3, $v0, 0xFFFB           ## $t3 = FFFFFFFB
/* 02D24 809BB004 2D61000B */  sltiu   $at, $t3, 0x000B           
/* 02D28 809BB008 1020001D */  beq     $at, $zero, .L809BB080     
/* 02D2C 809BB00C 000B5880 */  sll     $t3, $t3,  2               
/* 02D30 809BB010 3C01809C */  lui     $at, %hi(jtbl_809BBCD0)       ## $at = 809C0000
/* 02D34 809BB014 002B0821 */  addu    $at, $at, $t3              
/* 02D38 809BB018 8C2BBCD0 */  lw      $t3, %lo(jtbl_809BBCD0)($at)  
/* 02D3C 809BB01C 01600008 */  jr      $t3                        
/* 02D40 809BB020 00000000 */  nop
glabel L809BB024
/* 02D44 809BB024 8C8C02C8 */  lw      $t4, 0x02C8($a0)           ## 000002C8
/* 02D48 809BB028 8D8D0024 */  lw      $t5, 0x0024($t4)           ## 00000024
/* 02D4C 809BB02C 91AE0005 */  lbu     $t6, 0x0005($t5)           ## 00000005
/* 02D50 809BB030 A48E0110 */  sh      $t6, 0x0110($a0)           ## 00000110
glabel L809BB034
/* 02D54 809BB034 240F0030 */  addiu   $t7, $zero, 0x0030         ## $t7 = 00000030
/* 02D58 809BB038 A48F02A8 */  sh      $t7, 0x02A8($a0)           ## 000002A8
/* 02D5C 809BB03C 10000010 */  beq     $zero, $zero, .L809BB080   
/* 02D60 809BB040 908202AA */  lbu     $v0, 0x02AA($a0)           ## 000002AA
glabel L809BB044
/* 02D64 809BB044 8C9802C8 */  lw      $t8, 0x02C8($a0)           ## 000002C8
/* 02D68 809BB048 8F190024 */  lw      $t9, 0x0024($t8)           ## 00000024
/* 02D6C 809BB04C 93280005 */  lbu     $t0, 0x0005($t9)           ## 00000005
/* 02D70 809BB050 10000085 */  beq     $zero, $zero, .L809BB268   
/* 02D74 809BB054 A4880110 */  sh      $t0, 0x0110($a0)           ## 00000110
glabel L809BB058
/* 02D78 809BB058 8C890250 */  lw      $t1, 0x0250($a0)           ## 00000250
/* 02D7C 809BB05C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02D80 809BB060 51210082 */  beql    $t1, $at, .L809BB26C       
/* 02D84 809BB064 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02D88 809BB068 0C00D58A */  jal     Actor_ApplyDamage
              
/* 02D8C 809BB06C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02D90 809BB070 0C26EB24 */  jal     func_809BAC90              
/* 02D94 809BB074 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02D98 809BB078 1000007C */  beq     $zero, $zero, .L809BB26C   
/* 02D9C 809BB07C 8FBF001C */  lw      $ra, 0x001C($sp)           
glabel L809BB080
.L809BB080:
/* 02DA0 809BB080 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 02DA4 809BB084 1041000B */  beq     $v0, $at, .L809BB0B4       
/* 02DA8 809BB088 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02DAC 809BB08C 10410009 */  beq     $v0, $at, .L809BB0B4       
/* 02DB0 809BB090 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 02DB4 809BB094 10410007 */  beq     $v0, $at, .L809BB0B4       
/* 02DB8 809BB098 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02DBC 809BB09C 10410005 */  beq     $v0, $at, .L809BB0B4       
/* 02DC0 809BB0A0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 02DC4 809BB0A4 10410003 */  beq     $v0, $at, .L809BB0B4       
/* 02DC8 809BB0A8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02DCC 809BB0AC 5441001A */  bnel    $v0, $at, .L809BB118       
/* 02DD0 809BB0B0 8C8C0250 */  lw      $t4, 0x0250($a0)           ## 00000250
.L809BB0B4:
/* 02DD4 809BB0B4 8C820250 */  lw      $v0, 0x0250($a0)           ## 00000250
/* 02DD8 809BB0B8 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02DDC 809BB0BC 14410005 */  bne     $v0, $at, .L809BB0D4       
/* 02DE0 809BB0C0 00000000 */  nop
/* 02DE4 809BB0C4 8C8A0260 */  lw      $t2, 0x0260($a0)           ## 00000260
/* 02DE8 809BB0C8 294100BE */  slti    $at, $t2, 0x00BE           
/* 02DEC 809BB0CC 50200006 */  beql    $at, $zero, .L809BB0E8     
/* 02DF0 809BB0D0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L809BB0D4:
/* 02DF4 809BB0D4 0C00D58A */  jal     Actor_ApplyDamage
              
/* 02DF8 809BB0D8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02DFC 809BB0DC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02E00 809BB0E0 8C820250 */  lw      $v0, 0x0250($a0)           ## 00000250
/* 02E04 809BB0E4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
.L809BB0E8:
/* 02E08 809BB0E8 10410008 */  beq     $v0, $at, .L809BB10C       
/* 02E0C 809BB0EC 00000000 */  nop
/* 02E10 809BB0F0 848B001C */  lh      $t3, 0x001C($a0)           ## 0000001C
/* 02E14 809BB0F4 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 02E18 809BB0F8 11610004 */  beq     $t3, $at, .L809BB10C       
/* 02E1C 809BB0FC 00000000 */  nop
/* 02E20 809BB100 0C26E5BB */  jal     func_809B96EC              
/* 02E24 809BB104 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02E28 809BB108 8FA40020 */  lw      $a0, 0x0020($sp)           
.L809BB10C:
/* 02E2C 809BB10C 1000001C */  beq     $zero, $zero, .L809BB180   
/* 02E30 809BB110 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 02E34 809BB114 8C8C0250 */  lw      $t4, 0x0250($a0)           ## 00000250
.L809BB118:
/* 02E38 809BB118 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02E3C 809BB11C 55810006 */  bnel    $t4, $at, .L809BB138       
/* 02E40 809BB120 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 02E44 809BB124 8C8D0260 */  lw      $t5, 0x0260($a0)           ## 00000260
/* 02E48 809BB128 29A100BE */  slti    $at, $t5, 0x00BE           
/* 02E4C 809BB12C 1420000B */  bne     $at, $zero, .L809BB15C     
/* 02E50 809BB130 00000000 */  nop
/* 02E54 809BB134 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
.L809BB138:
/* 02E58 809BB138 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 02E5C 809BB13C 11C1000C */  beq     $t6, $at, .L809BB170       
/* 02E60 809BB140 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02E64 809BB144 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 02E68 809BB148 C484028C */  lwc1    $f4, 0x028C($a0)           ## 0000028C
/* 02E6C 809BB14C 4606203C */  c.lt.s  $f4, $f6                   
/* 02E70 809BB150 00000000 */  nop
/* 02E74 809BB154 45020007 */  bc1fl   .L809BB174                 
/* 02E78 809BB158 908F02BD */  lbu     $t7, 0x02BD($a0)           ## 000002BD
.L809BB15C:
/* 02E7C 809BB15C 0C00D58A */  jal     Actor_ApplyDamage
              
/* 02E80 809BB160 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02E84 809BB164 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02E88 809BB168 10000005 */  beq     $zero, $zero, .L809BB180   
/* 02E8C 809BB16C 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
.L809BB170:
/* 02E90 809BB170 908F02BD */  lbu     $t7, 0x02BD($a0)           ## 000002BD
.L809BB174:
/* 02E94 809BB174 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 02E98 809BB178 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 02E9C 809BB17C A09802BD */  sb      $t8, 0x02BD($a0)           ## 000002BD
.L809BB180:
/* 02EA0 809BB180 909900AF */  lbu     $t9, 0x00AF($a0)           ## 000000AF
/* 02EA4 809BB184 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 02EA8 809BB188 1720000D */  bne     $t9, $zero, .L809BB1C0     
/* 02EAC 809BB18C 00000000 */  nop
/* 02EB0 809BB190 8C880004 */  lw      $t0, 0x0004($a0)           ## 00000004
/* 02EB4 809BB194 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02EB8 809BB198 01014824 */  and     $t1, $t0, $at              
/* 02EBC 809BB19C 14610004 */  bne     $v1, $at, .L809BB1B0       
/* 02EC0 809BB1A0 AC890004 */  sw      $t1, 0x0004($a0)           ## 00000004
/* 02EC4 809BB1A4 0C26E146 */  jal     func_809B8518              
/* 02EC8 809BB1A8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02ECC 809BB1AC 8FA40020 */  lw      $a0, 0x0020($sp)           
.L809BB1B0:
/* 02ED0 809BB1B0 0C26E2C0 */  jal     func_809B8B00              
/* 02ED4 809BB1B4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02ED8 809BB1B8 1000002C */  beq     $zero, $zero, .L809BB26C   
/* 02EDC 809BB1BC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BB1C0:
/* 02EE0 809BB1C0 14610018 */  bne     $v1, $at, .L809BB224       
/* 02EE4 809BB1C4 8C820250 */  lw      $v0, 0x0250($a0)           ## 00000250
/* 02EE8 809BB1C8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 02EEC 809BB1CC 10410003 */  beq     $v0, $at, .L809BB1DC       
/* 02EF0 809BB1D0 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 02EF4 809BB1D4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02EF8 809BB1D8 14410012 */  bne     $v0, $at, .L809BB224       
.L809BB1DC:
/* 02EFC 809BB1DC 240A000C */  addiu   $t2, $zero, 0x000C         ## $t2 = 0000000C
/* 02F00 809BB1E0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02F04 809BB1E4 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 02F08 809BB1E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02F0C 809BB1EC 0C00D09B */  jal     func_8003426C              
/* 02F10 809BB1F0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02F14 809BB1F4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 02F18 809BB1F8 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 02F1C 809BB1FC 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 02F20 809BB200 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02F24 809BB204 848B008A */  lh      $t3, 0x008A($a0)           ## 0000008A
/* 02F28 809BB208 240538E3 */  addiu   $a1, $zero, 0x38E3         ## $a1 = 000038E3
/* 02F2C 809BB20C E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 02F30 809BB210 E48A027C */  swc1    $f10, 0x027C($a0)          ## 0000027C
/* 02F34 809BB214 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02F38 809BB218 A48B0032 */  sh      $t3, 0x0032($a0)           ## 00000032
/* 02F3C 809BB21C 10000013 */  beq     $zero, $zero, .L809BB26C   
/* 02F40 809BB220 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BB224:
/* 02F44 809BB224 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02F48 809BB228 54410005 */  bnel    $v0, $at, .L809BB240       
/* 02F4C 809BB22C 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
/* 02F50 809BB230 8C8C0260 */  lw      $t4, 0x0260($a0)           ## 00000260
/* 02F54 809BB234 298100BE */  slti    $at, $t4, 0x00BE           
/* 02F58 809BB238 14200009 */  bne     $at, $zero, .L809BB260     
/* 02F5C 809BB23C 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
.L809BB240:
/* 02F60 809BB240 10610009 */  beq     $v1, $at, .L809BB268       
/* 02F64 809BB244 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02F68 809BB248 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 02F6C 809BB24C C490028C */  lwc1    $f16, 0x028C($a0)          ## 0000028C
/* 02F70 809BB250 4612803C */  c.lt.s  $f16, $f18                 
/* 02F74 809BB254 00000000 */  nop
/* 02F78 809BB258 45020004 */  bc1fl   .L809BB26C                 
/* 02F7C 809BB25C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BB260:
/* 02F80 809BB260 0C26E344 */  jal     func_809B8D10              
/* 02F84 809BB264 00000000 */  nop
glabel L809BB268
.L809BB268:
/* 02F88 809BB268 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BB26C:
/* 02F8C 809BB26C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02F90 809BB270 03E00008 */  jr      $ra                        
/* 02F94 809BB274 00000000 */  nop


