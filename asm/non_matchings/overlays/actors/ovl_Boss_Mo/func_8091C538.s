.late_rodata
glabel D_80926B78
    .float 2500.0

glabel D_80926B7C
    .float 3000.0

glabel D_80926B80
    .float 1500.0

glabel D_80926B84
    .float 2500.0

glabel D_80926B88
    .float 3000.0

glabel D_80926B8C
    .float 1500.0

glabel D_80926B90
    .float 2500.0

glabel D_80926B94
    .float 3000.0

glabel D_80926B98
    .float 1500.0

glabel D_80926B9C
    .float 2500.0

glabel D_80926BA0
    .float 1300.0

glabel D_80926BA4
    .float 7000.0

glabel D_80926BA8
    .float 5000.0

glabel D_80926BAC
    .float 2500.0

glabel D_80926BB0
    .float 5000.0

glabel D_80926BB4
    .float 1500.0

glabel D_80926BB8
    .float 2500.0

glabel D_80926BBC
    .float 1300.0

glabel D_80926BC0
    .float 7000.0

glabel D_80926BC4
    .float 5000.0

glabel D_80926BC8
 .word 0x450FC000
glabel jtbl_80926BCC
.word L8091E614
.word L8091E83C
.word L8091EA54
.word L8091E624
.word L8091F118
.word L8091ED18
.word L8091F118
glabel jtbl_80926BE8
.word L8091CD0C
.word L8091CD0C
.word L8091D0B0
.word L8091D430
.word L8091D430
.word L8091D918
.word L8091F118
.word L8091F118
.word L8091F118
.word L8091F118
.word L8091CAD8
.word L8091CB1C
glabel D_80926C18
    .float 0.01

glabel D_80926C1C
    .float 0.025

glabel D_80926C20
    .float 0.7

glabel D_80926C24
    .float 0.01

glabel D_80926C28
    .float 0.001

glabel D_80926C2C
    .float 0.001

glabel D_80926C30
    .float 0.001

glabel D_80926C34
    .float 0.001

glabel D_80926C38
    .float 0.025

glabel D_80926C3C
    .float 0.01

glabel D_80926C40
    .float 0.3

glabel D_80926C44
    .float 0.03

glabel D_80926C48
    .float 0.01

glabel D_80926C4C
    .float 0.2

glabel D_80926C50
    .float 0.1

glabel D_80926C54
    .float 0.005

glabel D_80926C58
    .float 7000.0

glabel D_80926C5C
    .float 5000.0

glabel D_80926C60
    .float 0.025

glabel D_80926C64
    .float 0.01

glabel D_80926C68
    .float 3.14159274101

glabel D_80926C6C
 .word 0x41A73333
glabel D_80926C70
    .float 0.001

glabel D_80926C74
    .float 0.025

glabel D_80926C78
    .float 0.05

glabel D_80926C7C
 .word 0x44228000
glabel D_80926C80
    .float 0.025

glabel D_80926C84
    .float 0.05

glabel D_80926C88
 .word 0x44228000
glabel D_80926C8C
    .float 0.025

glabel D_80926C90
    .float 0.1

glabel D_80926C94
    .float 0.05

glabel D_80926C98
    .float 0.001

glabel D_80926C9C
    .float 0.05

glabel D_80926CA0
    .float 0.05

glabel D_80926CA4
    .float 0.3

glabel D_80926CA8
 .word 0x44228000
glabel D_80926CAC
    .float 0.2

glabel D_80926CB0
 .word 0x3A03126F
glabel D_80926CB4
    .float 0.002

glabel D_80926CB8
 .word 0x3E6B851F
glabel D_80926CBC
    .float 0.03

glabel D_80926CC0
    .float 0.0015

glabel D_80926CC4
 .word 0x3E051EB8
glabel D_80926CC8
    .float 0.8

glabel D_80926CCC
    .float 0.001

glabel D_80926CD0
    .float 0.1

glabel D_80926CD4
    .float 0.1

glabel D_80926CD8
    .float 0.02

glabel D_80926CDC
    .float 0.05

.text
glabel func_8091C538
/* 00A38 8091C538 27BDFE48 */  addiu   $sp, $sp, 0xFE48           ## $sp = FFFFFE48
/* 00A3C 8091C53C AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00A40 8091C540 AFB50078 */  sw      $s5, 0x0078($sp)           
/* 00A44 8091C544 AFB40074 */  sw      $s4, 0x0074($sp)           
/* 00A48 8091C548 AFB30070 */  sw      $s3, 0x0070($sp)           
/* 00A4C 8091C54C AFB2006C */  sw      $s2, 0x006C($sp)           
/* 00A50 8091C550 AFB10068 */  sw      $s1, 0x0068($sp)           
/* 00A54 8091C554 AFB00064 */  sw      $s0, 0x0064($sp)           
/* 00A58 8091C558 F7BE0058 */  sdc1    $f30, 0x0058($sp)          
/* 00A5C 8091C55C F7BC0050 */  sdc1    $f28, 0x0050($sp)          
/* 00A60 8091C560 F7BA0048 */  sdc1    $f26, 0x0048($sp)          
/* 00A64 8091C564 F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00A68 8091C568 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00A6C 8091C56C F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00A70 8091C570 AFA501BC */  sw      $a1, 0x01BC($sp)           
/* 00A74 8091C574 A7A001B4 */  sh      $zero, 0x01B4($sp)         
/* 00A78 8091C578 8C8F014C */  lw      $t7, 0x014C($a0)           ## 0000014C
/* 00A7C 8091C57C 8CB51C44 */  lw      $s5, 0x1C44($a1)           ## 00001C44
/* 00A80 8091C580 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00A84 8091C584 AFAF019C */  sw      $t7, 0x019C($sp)           
/* 00A88 8091C588 84830158 */  lh      $v1, 0x0158($a0)           ## 00000158
/* 00A8C 8091C58C 00A07025 */  or      $t6, $a1, $zero            ## $t6 = 00000000
/* 00A90 8091C590 286100CC */  slti    $at, $v1, 0x00CC           
/* 00A94 8091C594 10200009 */  beq     $at, $zero, .L8091C5BC     
/* 00A98 8091C598 00000000 */  nop
/* 00A9C 8091C59C 8DD807C0 */  lw      $t8, 0x07C0($t6)           ## 000007C0
/* 00AA0 8091C5A0 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 00AA4 8091C5A4 8F190028 */  lw      $t9, 0x0028($t8)           ## 00000028
/* 00AA8 8091C5A8 87280002 */  lh      $t0, 0x0002($t9)           ## 00000002
/* 00AAC 8091C5AC 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00AB0 8091C5B0 00000000 */  nop
/* 00AB4 8091C5B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00AB8 8091C5B8 E6460028 */  swc1    $f6, 0x0028($s2)           ## 00000028
.L8091C5BC:
/* 00ABC 8091C5BC 10600009 */  beq     $v1, $zero, .L8091C5E4     
/* 00AC0 8091C5C0 286100C8 */  slti    $at, $v1, 0x00C8           
/* 00AC4 8091C5C4 10200007 */  beq     $at, $zero, .L8091C5E4     
/* 00AC8 8091C5C8 24010065 */  addiu   $at, $zero, 0x0065         ## $at = 00000065
/* 00ACC 8091C5CC 10610005 */  beq     $v1, $at, .L8091C5E4       
/* 00AD0 8091C5D0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AD4 8091C5D4 10610003 */  beq     $v1, $at, .L8091C5E4       
/* 00AD8 8091C5D8 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00ADC 8091C5DC 54610113 */  bnel    $v1, $at, .L8091CA2C       
/* 00AE0 8091C5E0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L8091C5E4:
/* 00AE4 8091C5E4 1460002F */  bne     $v1, $zero, .L8091C6A4     
/* 00AE8 8091C5E8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00AEC 8091C5EC 3C098092 */  lui     $t1, %hi(D_80925CD0)       ## $t1 = 80920000
/* 00AF0 8091C5F0 8D295CD0 */  lw      $t1, %lo(D_80925CD0)($t1)  
/* 00AF4 8091C5F4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00AF8 8091C5F8 852A0F60 */  lh      $t2, 0x0F60($t1)           ## 80920F60
/* 00AFC 8091C5FC 51400014 */  beql    $t2, $zero, .L8091C650     
/* 00B00 8091C600 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 00B04 8091C604 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00B08 8091C608 44810000 */  mtc1    $at, $f0                   ## $f0 = 1000.00
/* 00B0C 8091C60C 3C018092 */  lui     $at, %hi(D_80926B78)       ## $at = 80920000
/* 00B10 8091C610 C4226B78 */  lwc1    $f2, %lo(D_80926B78)($at)  
/* 00B14 8091C614 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00B18 8091C618 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2000.00
/* 00B1C 8091C61C 3C018092 */  lui     $at, %hi(D_80926B7C)       ## $at = 80920000
/* 00B20 8091C620 C43A6B7C */  lwc1    $f26, %lo(D_80926B7C)($at) 
/* 00B24 8091C624 3C018092 */  lui     $at, %hi(D_80926B80)       ## $at = 80920000
/* 00B28 8091C628 C4286B80 */  lwc1    $f8, %lo(D_80926B80)($at)  
/* 00B2C 8091C62C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00B30 8091C630 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00B34 8091C634 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 00B38 8091C638 E7A00190 */  swc1    $f0, 0x0190($sp)           
/* 00B3C 8091C63C E7A00184 */  swc1    $f0, 0x0184($sp)           
/* 00B40 8091C640 E7A20188 */  swc1    $f2, 0x0188($sp)           
/* 00B44 8091C644 10000012 */  beq     $zero, $zero, .L8091C690   
/* 00B48 8091C648 E7A8018C */  swc1    $f8, 0x018C($sp)           
/* 00B4C 8091C64C 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
.L8091C650:
/* 00B50 8091C650 3C018092 */  lui     $at, %hi(D_80926B84)       ## $at = 80920000
/* 00B54 8091C654 C4226B84 */  lwc1    $f2, %lo(D_80926B84)($at)  
/* 00B58 8091C658 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00B5C 8091C65C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2000.00
/* 00B60 8091C660 3C018092 */  lui     $at, %hi(D_80926B88)       ## $at = 80920000
/* 00B64 8091C664 C43A6B88 */  lwc1    $f26, %lo(D_80926B88)($at) 
/* 00B68 8091C668 3C018092 */  lui     $at, %hi(D_80926B8C)       ## $at = 80920000
/* 00B6C 8091C66C C42A6B8C */  lwc1    $f10, %lo(D_80926B8C)($at) 
/* 00B70 8091C670 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00B74 8091C674 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 00B78 8091C678 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00B7C 8091C67C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 00B80 8091C680 E7A00190 */  swc1    $f0, 0x0190($sp)           
/* 00B84 8091C684 E7A00184 */  swc1    $f0, 0x0184($sp)           
/* 00B88 8091C688 E7A20188 */  swc1    $f2, 0x0188($sp)           
/* 00B8C 8091C68C E7AA018C */  swc1    $f10, 0x018C($sp)          
.L8091C690:
/* 00B90 8091C690 E7B40180 */  swc1    $f20, 0x0180($sp)          
/* 00B94 8091C694 E7B6017C */  swc1    $f22, 0x017C($sp)          
/* 00B98 8091C698 E7B80198 */  swc1    $f24, 0x0198($sp)          
/* 00B9C 8091C69C 100000B1 */  beq     $zero, $zero, .L8091C964   
/* 00BA0 8091C6A0 E7BA0194 */  swc1    $f26, 0x0194($sp)          
.L8091C6A4:
/* 00BA4 8091C6A4 14610022 */  bne     $v1, $at, .L8091C730       
/* 00BA8 8091C6A8 3C018092 */  lui     $at, %hi(D_80926B90)       ## $at = 80920000
/* 00BAC 8091C6AC C4386B90 */  lwc1    $f24, %lo(D_80926B90)($at) 
/* 00BB0 8091C6B0 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 00BB4 8091C6B4 4481D000 */  mtc1    $at, $f26                  ## $f26 = -1000.00
/* 00BB8 8091C6B8 3C018092 */  lui     $at, %hi(D_80926B94)       ## $at = 80920000
/* 00BBC 8091C6BC C4306B94 */  lwc1    $f16, %lo(D_80926B94)($at) 
/* 00BC0 8091C6C0 3C018092 */  lui     $at, %hi(D_80926B98)       ## $at = 80920000
/* 00BC4 8091C6C4 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00BC8 8091C6C8 C4326B98 */  lwc1    $f18, %lo(D_80926B98)($at) 
/* 00BCC 8091C6CC E7B80188 */  swc1    $f24, 0x0188($sp)          
/* 00BD0 8091C6D0 E7B00190 */  swc1    $f16, 0x0190($sp)          
/* 00BD4 8091C6D4 E7B2018C */  swc1    $f18, 0x018C($sp)          
/* 00BD8 8091C6D8 E7BE0184 */  swc1    $f30, 0x0184($sp)          
/* 00BDC 8091C6DC 864B017C */  lh      $t3, 0x017C($s2)           ## 0000017C
/* 00BE0 8091C6E0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00BE4 8091C6E4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 00BE8 8091C6E8 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00BEC 8091C6EC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 60.00
/* 00BF0 8091C6F0 316C000F */  andi    $t4, $t3, 0x000F           ## $t4 = 00000000
/* 00BF4 8091C6F4 5580000A */  bnel    $t4, $zero, .L8091C720     
/* 00BF8 8091C6F8 E7B40180 */  swc1    $f20, 0x0180($sp)          
/* 00BFC 8091C6FC 864D017E */  lh      $t5, 0x017E($s2)           ## 0000017E
/* 00C00 8091C700 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 00C04 8091C704 240538F2 */  addiu   $a1, $zero, 0x38F2         ## $a1 = 000038F2
/* 00C08 8091C708 29A1001E */  slti    $at, $t5, 0x001E           
/* 00C0C 8091C70C 10200003 */  beq     $at, $zero, .L8091C71C     
/* 00C10 8091C710 3C068013 */  lui     $a2, 0x8013                ## $a2 = 80130000
/* 00C14 8091C714 0C03D2D6 */  jal     func_800F4B58              
/* 00C18 8091C718 24C605D0 */  addiu   $a2, $a2, 0x05D0           ## $a2 = 801305D0
.L8091C71C:
/* 00C1C 8091C71C E7B40180 */  swc1    $f20, 0x0180($sp)          
.L8091C720:
/* 00C20 8091C720 E7B6017C */  swc1    $f22, 0x017C($sp)          
/* 00C24 8091C724 E7B80198 */  swc1    $f24, 0x0198($sp)          
/* 00C28 8091C728 1000008E */  beq     $zero, $zero, .L8091C964   
/* 00C2C 8091C72C E7BA0194 */  swc1    $f26, 0x0194($sp)          
.L8091C730:
/* 00C30 8091C730 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00C34 8091C734 54610059 */  bnel    $v1, $at, .L8091C89C       
/* 00C38 8091C738 24010065 */  addiu   $at, $zero, 0x0065         ## $at = 00000065
/* 00C3C 8091C73C 864F017E */  lh      $t7, 0x017E($s2)           ## 0000017E
/* 00C40 8091C740 29E10029 */  slti    $at, $t7, 0x0029           
/* 00C44 8091C744 14200029 */  bne     $at, $zero, .L8091C7EC     
/* 00C48 8091C748 3C018092 */  lui     $at, %hi(D_80926B9C)       ## $at = 80920000
/* 00C4C 8091C74C C4226B9C */  lwc1    $f2, %lo(D_80926B9C)($at)  
/* 00C50 8091C750 3C018092 */  lui     $at, %hi(D_80926BA0)       ## $at = 80920000
/* 00C54 8091C754 C4386BA0 */  lwc1    $f24, %lo(D_80926BA0)($at) 
/* 00C58 8091C758 3C01C548 */  lui     $at, 0xC548                ## $at = C5480000
/* 00C5C 8091C75C 4481D000 */  mtc1    $at, $f26                  ## $f26 = -3200.00
/* 00C60 8091C760 3C018092 */  lui     $at, %hi(D_80926BA4)       ## $at = 80920000
/* 00C64 8091C764 C4246BA4 */  lwc1    $f4, %lo(D_80926BA4)($at)  
/* 00C68 8091C768 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00C6C 8091C76C 44813000 */  mtc1    $at, $f6                   ## $f6 = 800.00
/* 00C70 8091C770 3C018092 */  lui     $at, %hi(D_80926BA8)       ## $at = 80920000
/* 00C74 8091C774 C4286BA8 */  lwc1    $f8, %lo(D_80926BA8)($at)  
/* 00C78 8091C778 E7A20188 */  swc1    $f2, 0x0188($sp)           
/* 00C7C 8091C77C E7A40190 */  swc1    $f4, 0x0190($sp)           
/* 00C80 8091C780 E7A6018C */  swc1    $f6, 0x018C($sp)           
/* 00C84 8091C784 E7A80184 */  swc1    $f8, 0x0184($sp)           
/* 00C88 8091C788 864E017C */  lh      $t6, 0x017C($s2)           ## 0000017C
/* 00C8C 8091C78C 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00C90 8091C790 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 00C94 8091C794 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00C98 8091C798 4481B000 */  mtc1    $at, $f22                  ## $f22 = 60.00
/* 00C9C 8091C79C 31D8001F */  andi    $t8, $t6, 0x001F           ## $t8 = 00000000
/* 00CA0 8091C7A0 17000010 */  bne     $t8, $zero, .L8091C7E4     
/* 00CA4 8091C7A4 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 00CA8 8091C7A8 3C068013 */  lui     $a2, 0x8013                ## $a2 = 80130000
/* 00CAC 8091C7AC 24C605D0 */  addiu   $a2, $a2, 0x05D0           ## $a2 = 801305D0
/* 00CB0 8091C7B0 0C03D2D6 */  jal     func_800F4B58              
/* 00CB4 8091C7B4 240538F2 */  addiu   $a1, $zero, 0x38F2         ## $a1 = 000038F2
/* 00CB8 8091C7B8 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00CBC 8091C7BC 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00CC0 8091C7C0 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00CC4 8091C7C4 0C02A800 */  jal     func_800AA000              
/* 00CC8 8091C7C8 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00CCC 8091C7CC 8EB90678 */  lw      $t9, 0x0678($s5)           ## 00000678
/* 00CD0 8091C7D0 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00CD4 8091C7D4 97250092 */  lhu     $a1, 0x0092($t9)           ## 00000092
/* 00CD8 8091C7D8 24A56806 */  addiu   $a1, $a1, 0x6806           ## $a1 = 00006806
/* 00CDC 8091C7DC 0C00BDF7 */  jal     func_8002F7DC              
/* 00CE0 8091C7E0 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00006806
.L8091C7E4:
/* 00CE4 8091C7E4 10000028 */  beq     $zero, $zero, .L8091C888   
/* 00CE8 8091C7E8 E7B40180 */  swc1    $f20, 0x0180($sp)          
.L8091C7EC:
/* 00CEC 8091C7EC 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00CF0 8091C7F0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 70.00
/* 00CF4 8091C7F4 3C018092 */  lui     $at, %hi(D_80926BAC)       ## $at = 80920000
/* 00CF8 8091C7F8 C4226BAC */  lwc1    $f2, %lo(D_80926BAC)($at)  
/* 00CFC 8091C7FC 3C0144FA */  lui     $at, 0x44FA                ## $at = 44FA0000
/* 00D00 8091C800 4481C000 */  mtc1    $at, $f24                  ## $f24 = 2000.00
/* 00D04 8091C804 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 00D08 8091C808 4481D000 */  mtc1    $at, $f26                  ## $f26 = -1000.00
/* 00D0C 8091C80C 3C018092 */  lui     $at, %hi(D_80926BB0)       ## $at = 80920000
/* 00D10 8091C810 C42A6BB0 */  lwc1    $f10, %lo(D_80926BB0)($at) 
/* 00D14 8091C814 3C018092 */  lui     $at, %hi(D_80926BB4)       ## $at = 80920000
/* 00D18 8091C818 C4306BB4 */  lwc1    $f16, %lo(D_80926BB4)($at) 
/* 00D1C 8091C81C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00D20 8091C820 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 00D24 8091C824 E7A20188 */  swc1    $f2, 0x0188($sp)           
/* 00D28 8091C828 E7AA0190 */  swc1    $f10, 0x0190($sp)          
/* 00D2C 8091C82C E7B0018C */  swc1    $f16, 0x018C($sp)          
/* 00D30 8091C830 E7B20184 */  swc1    $f18, 0x0184($sp)          
/* 00D34 8091C834 8648017C */  lh      $t0, 0x017C($s2)           ## 0000017C
/* 00D38 8091C838 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 00D3C 8091C83C 240538F2 */  addiu   $a1, $zero, 0x38F2         ## $a1 = 000038F2
/* 00D40 8091C840 3109000F */  andi    $t1, $t0, 0x000F           ## $t1 = 00000000
/* 00D44 8091C844 1520000F */  bne     $t1, $zero, .L8091C884     
/* 00D48 8091C848 4600B506 */  mov.s   $f20, $f22                 
/* 00D4C 8091C84C 3C068013 */  lui     $a2, 0x8013                ## $a2 = 80130000
/* 00D50 8091C850 0C03D2D6 */  jal     func_800F4B58              
/* 00D54 8091C854 24C605D0 */  addiu   $a2, $a2, 0x05D0           ## $a2 = 801305D0
/* 00D58 8091C858 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 00D5C 8091C85C 240500A0 */  addiu   $a1, $zero, 0x00A0         ## $a1 = 000000A0
/* 00D60 8091C860 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00D64 8091C864 0C02A800 */  jal     func_800AA000              
/* 00D68 8091C868 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
/* 00D6C 8091C86C 8EAA0678 */  lw      $t2, 0x0678($s5)           ## 00000678
/* 00D70 8091C870 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00D74 8091C874 95450092 */  lhu     $a1, 0x0092($t2)           ## 00000092
/* 00D78 8091C878 24A56806 */  addiu   $a1, $a1, 0x6806           ## $a1 = 00006806
/* 00D7C 8091C87C 0C00BDF7 */  jal     func_8002F7DC              
/* 00D80 8091C880 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00006806
.L8091C884:
/* 00D84 8091C884 E7B40180 */  swc1    $f20, 0x0180($sp)          
.L8091C888:
/* 00D88 8091C888 E7B6017C */  swc1    $f22, 0x017C($sp)          
/* 00D8C 8091C88C E7B80198 */  swc1    $f24, 0x0198($sp)          
/* 00D90 8091C890 10000034 */  beq     $zero, $zero, .L8091C964   
/* 00D94 8091C894 E7BA0194 */  swc1    $f26, 0x0194($sp)          
/* 00D98 8091C898 24010065 */  addiu   $at, $zero, 0x0065         ## $at = 00000065
.L8091C89C:
/* 00D9C 8091C89C 14610018 */  bne     $v1, $at, .L8091C900       
/* 00DA0 8091C8A0 3C018092 */  lui     $at, %hi(D_80926BB8)       ## $at = 80920000
/* 00DA4 8091C8A4 C4226BB8 */  lwc1    $f2, %lo(D_80926BB8)($at)  
/* 00DA8 8091C8A8 3C018092 */  lui     $at, %hi(D_80926BBC)       ## $at = 80920000
/* 00DAC 8091C8AC C4386BBC */  lwc1    $f24, %lo(D_80926BBC)($at) 
/* 00DB0 8091C8B0 3C014548 */  lui     $at, 0x4548                ## $at = 45480000
/* 00DB4 8091C8B4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 3200.00
/* 00DB8 8091C8B8 3C018092 */  lui     $at, %hi(D_80926BC0)       ## $at = 80920000
/* 00DBC 8091C8BC C4246BC0 */  lwc1    $f4, %lo(D_80926BC0)($at)  
/* 00DC0 8091C8C0 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00DC4 8091C8C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 800.00
/* 00DC8 8091C8C8 3C018092 */  lui     $at, %hi(D_80926BC4)       ## $at = 80920000
/* 00DCC 8091C8CC C4286BC4 */  lwc1    $f8, %lo(D_80926BC4)($at)  
/* 00DD0 8091C8D0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00DD4 8091C8D4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 00DD8 8091C8D8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 00DDC 8091C8DC E7A20188 */  swc1    $f2, 0x0188($sp)           
/* 00DE0 8091C8E0 E7B80198 */  swc1    $f24, 0x0198($sp)          
/* 00DE4 8091C8E4 E7BA0194 */  swc1    $f26, 0x0194($sp)          
/* 00DE8 8091C8E8 E7A40190 */  swc1    $f4, 0x0190($sp)           
/* 00DEC 8091C8EC E7A6018C */  swc1    $f6, 0x018C($sp)           
/* 00DF0 8091C8F0 E7A80184 */  swc1    $f8, 0x0184($sp)           
/* 00DF4 8091C8F4 E7B40180 */  swc1    $f20, 0x0180($sp)          
/* 00DF8 8091C8F8 1000001A */  beq     $zero, $zero, .L8091C964   
/* 00DFC 8091C8FC E7B6017C */  swc1    $f22, 0x017C($sp)          
.L8091C900:
/* 00E00 8091C900 286100C8 */  slti    $at, $v1, 0x00C8           
/* 00E04 8091C904 14200017 */  bne     $at, $zero, .L8091C964     
/* 00E08 8091C908 3C01C3C8 */  lui     $at, 0xC3C8                ## $at = C3C80000
/* 00E0C 8091C90C 4481C000 */  mtc1    $at, $f24                  ## $f24 = -400.00
/* 00E10 8091C910 3C01C548 */  lui     $at, 0xC548                ## $at = C5480000
/* 00E14 8091C914 4481D000 */  mtc1    $at, $f26                  ## $f26 = -3200.00
/* 00E18 8091C918 3C018092 */  lui     $at, %hi(D_80926BC8)       ## $at = 80920000
/* 00E1C 8091C91C C4306BC8 */  lwc1    $f16, %lo(D_80926BC8)($at) 
/* 00E20 8091C920 3C014548 */  lui     $at, 0x4548                ## $at = 45480000
/* 00E24 8091C924 44819000 */  mtc1    $at, $f18                  ## $f18 = 3200.00
/* 00E28 8091C928 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00E2C 8091C92C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00E30 8091C930 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00E34 8091C934 4481A000 */  mtc1    $at, $f20                  ## $f20 = 30.00
/* 00E38 8091C938 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00E3C 8091C93C 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 00E40 8091C940 4481B000 */  mtc1    $at, $f22                  ## $f22 = 60.00
/* 00E44 8091C944 E7B80198 */  swc1    $f24, 0x0198($sp)          
/* 00E48 8091C948 E7BA0194 */  swc1    $f26, 0x0194($sp)          
/* 00E4C 8091C94C E7B0018C */  swc1    $f16, 0x018C($sp)          
/* 00E50 8091C950 E7B20188 */  swc1    $f18, 0x0188($sp)          
/* 00E54 8091C954 E7A40184 */  swc1    $f4, 0x0184($sp)           
/* 00E58 8091C958 E7B40180 */  swc1    $f20, 0x0180($sp)          
/* 00E5C 8091C95C E7AA0190 */  swc1    $f10, 0x0190($sp)          
/* 00E60 8091C960 E7B6017C */  swc1    $f22, 0x017C($sp)          
.L8091C964:
/* 00E64 8091C964 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00E68 8091C968 4481E000 */  mtc1    $at, $f28                  ## $f28 = 1.00
/* 00E6C 8091C96C C7B40180 */  lwc1    $f20, 0x0180($sp)          
/* 00E70 8091C970 C7B80198 */  lwc1    $f24, 0x0198($sp)          
/* 00E74 8091C974 4406E000 */  mfc1    $a2, $f28                  
/* 00E78 8091C978 4407A000 */  mfc1    $a3, $f20                  
/* 00E7C 8091C97C 4405C000 */  mfc1    $a1, $f24                  
/* 00E80 8091C980 C7B6017C */  lwc1    $f22, 0x017C($sp)          
/* 00E84 8091C984 C7BA0194 */  lwc1    $f26, 0x0194($sp)          
/* 00E88 8091C988 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00E8C 8091C98C 26440190 */  addiu   $a0, $s2, 0x0190           ## $a0 = 00000190
/* 00E90 8091C990 4405D000 */  mfc1    $a1, $f26                  
/* 00E94 8091C994 4406E000 */  mfc1    $a2, $f28                  
/* 00E98 8091C998 26440188 */  addiu   $a0, $s2, 0x0188           ## $a0 = 00000188
/* 00E9C 8091C99C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EA0 8091C9A0 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00EA4 8091C9A4 4406E000 */  mfc1    $a2, $f28                  
/* 00EA8 8091C9A8 4407B000 */  mfc1    $a3, $f22                  
/* 00EAC 8091C9AC 2644018C */  addiu   $a0, $s2, 0x018C           ## $a0 = 0000018C
/* 00EB0 8091C9B0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EB4 8091C9B4 8FA50190 */  lw      $a1, 0x0190($sp)           
/* 00EB8 8091C9B8 4406E000 */  mfc1    $a2, $f28                  
/* 00EBC 8091C9BC 4407A000 */  mfc1    $a3, $f20                  
/* 00EC0 8091C9C0 2644019C */  addiu   $a0, $s2, 0x019C           ## $a0 = 0000019C
/* 00EC4 8091C9C4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EC8 8091C9C8 8FA5018C */  lw      $a1, 0x018C($sp)           
/* 00ECC 8091C9CC 4406E000 */  mfc1    $a2, $f28                  
/* 00ED0 8091C9D0 26440194 */  addiu   $a0, $s2, 0x0194           ## $a0 = 00000194
/* 00ED4 8091C9D4 8FA50188 */  lw      $a1, 0x0188($sp)           
/* 00ED8 8091C9D8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EDC 8091C9DC 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00EE0 8091C9E0 4406E000 */  mfc1    $a2, $f28                  
/* 00EE4 8091C9E4 4407B000 */  mfc1    $a3, $f22                  
/* 00EE8 8091C9E8 26440198 */  addiu   $a0, $s2, 0x0198           ## $a0 = 00000198
/* 00EEC 8091C9EC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EF0 8091C9F0 8FA50184 */  lw      $a1, 0x0184($sp)           
/* 00EF4 8091C9F4 C6460190 */  lwc1    $f6, 0x0190($s2)           ## 00000190
/* 00EF8 8091C9F8 C64A019C */  lwc1    $f10, 0x019C($s2)          ## 0000019C
/* 00EFC 8091C9FC 864B016E */  lh      $t3, 0x016E($s2)           ## 0000016E
/* 00F00 8091CA00 4600320D */  trunc.w.s $f8, $f6                   
/* 00F04 8091CA04 86590170 */  lh      $t9, 0x0170($s2)           ## 00000170
/* 00F08 8091CA08 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 00F0C 8091CA0C 4600540D */  trunc.w.s $f16, $f10                 
/* 00F10 8091CA10 440E4000 */  mfc1    $t6, $f8                   
/* 00F14 8091CA14 440C8000 */  mfc1    $t4, $f16                  
/* 00F18 8091CA18 016EC021 */  addu    $t8, $t3, $t6              
/* 00F1C 8091CA1C A658016E */  sh      $t8, 0x016E($s2)           ## 0000016E
/* 00F20 8091CA20 032C6821 */  addu    $t5, $t9, $t4              
/* 00F24 8091CA24 A64D0170 */  sh      $t5, 0x0170($s2)           ## 00000170
/* 00F28 8091CA28 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L8091CA2C:
/* 00F2C 8091CA2C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 1.00
/* 00F30 8091CA30 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00F34 8091CA34 28610066 */  slti    $at, $v1, 0x0066           
/* 00F38 8091CA38 14200011 */  bne     $at, $zero, .L8091CA80     
/* 00F3C 8091CA3C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00F40 8091CA40 28410067 */  slti    $at, $v0, 0x0067           
/* 00F44 8091CA44 14200009 */  bne     $at, $zero, .L8091CA6C     
/* 00F48 8091CA48 244FFF38 */  addiu   $t7, $v0, 0xFF38           ## $t7 = FFFFFF38
/* 00F4C 8091CA4C 2DE10007 */  sltiu   $at, $t7, 0x0007           
/* 00F50 8091CA50 102009B1 */  beq     $at, $zero, .L8091F118     
/* 00F54 8091CA54 000F7880 */  sll     $t7, $t7,  2               
/* 00F58 8091CA58 3C018092 */  lui     $at, %hi(jtbl_80926BCC)       ## $at = 80920000
/* 00F5C 8091CA5C 002F0821 */  addu    $at, $at, $t7              
/* 00F60 8091CA60 8C2F6BCC */  lw      $t7, %lo(jtbl_80926BCC)($at)  
/* 00F64 8091CA64 01E00008 */  jr      $t7                        
/* 00F68 8091CA68 00000000 */  nop
.L8091CA6C:
/* 00F6C 8091CA6C 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 00F70 8091CA70 104106B3 */  beq     $v0, $at, .L8091E540       
/* 00F74 8091CA74 264401A4 */  addiu   $a0, $s2, 0x01A4           ## $a0 = 000001A4
/* 00F78 8091CA78 100009A8 */  beq     $zero, $zero, .L8091F11C   
/* 00F7C 8091CA7C C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
.L8091CA80:
/* 00F80 8091CA80 28410065 */  slti    $at, $v0, 0x0065           
/* 00F84 8091CA84 14200006 */  bne     $at, $zero, .L8091CAA0     
/* 00F88 8091CA88 00025880 */  sll     $t3, $v0,  2               
/* 00F8C 8091CA8C 24010065 */  addiu   $at, $zero, 0x0065         ## $at = 00000065
/* 00F90 8091CA90 5041054E */  beql    $v0, $at, .L8091DFCC       
/* 00F94 8091CA94 86480F62 */  lh      $t0, 0x0F62($s2)           ## 00000F62
/* 00F98 8091CA98 100009A0 */  beq     $zero, $zero, .L8091F11C   
/* 00F9C 8091CA9C C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
.L8091CAA0:
/* 00FA0 8091CAA0 2841000C */  slti    $at, $v0, 0x000C           
/* 00FA4 8091CAA4 14200005 */  bne     $at, $zero, .L8091CABC     
/* 00FA8 8091CAA8 24010064 */  addiu   $at, $zero, 0x0064         ## $at = 00000064
/* 00FAC 8091CAAC 104104DE */  beq     $v0, $at, .L8091DE28       
/* 00FB0 8091CAB0 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 00FB4 8091CAB4 10000999 */  beq     $zero, $zero, .L8091F11C   
/* 00FB8 8091CAB8 C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
.L8091CABC:
/* 00FBC 8091CABC 2C41000C */  sltiu   $at, $v0, 0x000C           
/* 00FC0 8091CAC0 10200995 */  beq     $at, $zero, .L8091F118     
/* 00FC4 8091CAC4 3C018092 */  lui     $at, %hi(jtbl_80926BE8)       ## $at = 80920000
/* 00FC8 8091CAC8 002B0821 */  addu    $at, $at, $t3              
/* 00FCC 8091CACC 8C2B6BE8 */  lw      $t3, %lo(jtbl_80926BE8)($at)  
/* 00FD0 8091CAD0 01600008 */  jr      $t3                        
/* 00FD4 8091CAD4 00000000 */  nop
glabel L8091CAD8
/* 00FD8 8091CAD8 8E4E0004 */  lw      $t6, 0x0004($s2)           ## 00000004
/* 00FDC 8091CADC 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00FE0 8091CAE0 3C138092 */  lui     $s3, %hi(D_80925CD8)       ## $s3 = 80920000
/* 00FE4 8091CAE4 01C1C024 */  and     $t8, $t6, $at              
/* 00FE8 8091CAE8 26735CD8 */  addiu   $s3, $s3, %lo(D_80925CD8)  ## $s3 = 80925CD8
/* 00FEC 8091CAEC AE580004 */  sw      $t8, 0x0004($s2)           ## 00000004
/* 00FF0 8091CAF0 8E680000 */  lw      $t0, 0x0000($s3)           ## 80925CD8
/* 00FF4 8091CAF4 2409000B */  addiu   $t1, $zero, 0x000B         ## $t1 = 0000000B
/* 00FF8 8091CAF8 240A0046 */  addiu   $t2, $zero, 0x0046         ## $t2 = 00000046
/* 00FFC 8091CAFC 16480005 */  bne     $s2, $t0, .L8091CB14       
/* 01000 8091CB00 00000000 */  nop
/* 01004 8091CB04 8659008A */  lh      $t9, 0x008A($s2)           ## 0000008A
/* 01008 8091CB08 A6490158 */  sh      $t1, 0x0158($s2)           ## 00000158
/* 0100C 8091CB0C A64A017E */  sh      $t2, 0x017E($s2)           ## 0000017E
/* 01010 8091CB10 A65900B6 */  sh      $t9, 0x00B6($s2)           ## 000000B6
.L8091CB14:
/* 01014 8091CB14 10000980 */  beq     $zero, $zero, .L8091F118   
/* 01018 8091CB18 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091CB1C
/* 0101C 8091CB1C 864F017E */  lh      $t7, 0x017E($s2)           ## 0000017E
/* 01020 8091CB20 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01024 8091CB24 240D0014 */  addiu   $t5, $zero, 0x0014         ## $t5 = 00000014
/* 01028 8091CB28 29E10014 */  slti    $at, $t7, 0x0014           
/* 0102C 8091CB2C A24C01D1 */  sb      $t4, 0x01D1($s2)           ## 000001D1
/* 01030 8091CB30 1020001A */  beq     $at, $zero, .L8091CB9C     
/* 01034 8091CB34 A64D01CC */  sh      $t5, 0x01CC($s2)           ## 000001CC
/* 01038 8091CB38 3C018092 */  lui     $at, %hi(D_80926C18)       ## $at = 80920000
/* 0103C 8091CB3C C4366C18 */  lwc1    $f22, %lo(D_80926C18)($at) 
/* 01040 8091CB40 3C053E19 */  lui     $a1, 0x3E19                ## $a1 = 3E190000
/* 01044 8091CB44 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3E19999A
/* 01048 8091CB48 4407B000 */  mfc1    $a3, $f22                  
/* 0104C 8091CB4C 264401E0 */  addiu   $a0, $s2, 0x01E0           ## $a0 = 000001E0
/* 01050 8091CB50 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01054 8091CB54 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01058 8091CB58 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 0105C 8091CB5C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 150.00
/* 01060 8091CB60 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01064 8091CB64 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 01068 8091CB68 4406E000 */  mfc1    $a2, $f28                  
/* 0106C 8091CB6C 4405A000 */  mfc1    $a1, $f20                  
/* 01070 8091CB70 4407D000 */  mfc1    $a3, $f26                  
/* 01074 8091CB74 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01078 8091CB78 264401A4 */  addiu   $a0, $s2, 0x01A4           ## $a0 = 000001A4
/* 0107C 8091CB7C C65201A4 */  lwc1    $f18, 0x01A4($s2)          ## 000001A4
/* 01080 8091CB80 240B003C */  addiu   $t3, $zero, 0x003C         ## $t3 = 0000003C
/* 01084 8091CB84 4612A03E */  c.le.s  $f20, $f18                 
/* 01088 8091CB88 00000000 */  nop
/* 0108C 8091CB8C 45020004 */  bc1fl   .L8091CBA0                 
/* 01090 8091CB90 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
/* 01094 8091CB94 A6400158 */  sh      $zero, 0x0158($s2)         ## 00000158
/* 01098 8091CB98 A64B017E */  sh      $t3, 0x017E($s2)           ## 0000017E
.L8091CB9C:
/* 0109C 8091CB9C 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
.L8091CBA0:
/* 010A0 8091CBA0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 010A4 8091CBA4 28410033 */  slti    $at, $v0, 0x0033           
/* 010A8 8091CBA8 54200004 */  bnel    $at, $zero, .L8091CBBC     
/* 010AC 8091CBAC 28410029 */  slti    $at, $v0, 0x0029           
/* 010B0 8091CBB0 10000012 */  beq     $zero, $zero, .L8091CBFC   
/* 010B4 8091CBB4 A7AE017A */  sh      $t6, 0x017A($sp)           
/* 010B8 8091CBB8 28410029 */  slti    $at, $v0, 0x0029           
.L8091CBBC:
/* 010BC 8091CBBC 14200003 */  bne     $at, $zero, .L8091CBCC     
/* 010C0 8091CBC0 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 010C4 8091CBC4 1000000D */  beq     $zero, $zero, .L8091CBFC   
/* 010C8 8091CBC8 A7B8017A */  sh      $t8, 0x017A($sp)           
.L8091CBCC:
/* 010CC 8091CBCC 2841001F */  slti    $at, $v0, 0x001F           
/* 010D0 8091CBD0 14200003 */  bne     $at, $zero, .L8091CBE0     
/* 010D4 8091CBD4 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 010D8 8091CBD8 10000008 */  beq     $zero, $zero, .L8091CBFC   
/* 010DC 8091CBDC A7A8017A */  sh      $t0, 0x017A($sp)           
.L8091CBE0:
/* 010E0 8091CBE0 28410015 */  slti    $at, $v0, 0x0015           
/* 010E4 8091CBE4 14200004 */  bne     $at, $zero, .L8091CBF8     
/* 010E8 8091CBE8 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 010EC 8091CBEC 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 010F0 8091CBF0 10000002 */  beq     $zero, $zero, .L8091CBFC   
/* 010F4 8091CBF4 A7A9017A */  sh      $t1, 0x017A($sp)           
.L8091CBF8:
/* 010F8 8091CBF8 A7AA017A */  sh      $t2, 0x017A($sp)           
.L8091CBFC:
/* 010FC 8091CBFC 87B9017A */  lh      $t9, 0x017A($sp)           
/* 01100 8091CC00 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01104 8091CC04 8FB501BC */  lw      $s5, 0x01BC($sp)           
/* 01108 8091CC08 1B20003E */  blez    $t9, .L8091CD04            
/* 0110C 8091CC0C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01110 8091CC10 02A1A821 */  addu    $s5, $s5, $at              
/* 01114 8091CC14 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 01118 8091CC18 4481E000 */  mtc1    $at, $f28                  ## $f28 = 110.00
/* 0111C 8091CC1C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01120 8091CC20 4481D000 */  mtc1    $at, $f26                  ## $f26 = 40.00
/* 01124 8091CC24 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01128 8091CC28 4481C000 */  mtc1    $at, $f24                  ## $f24 = 65536.00
/* 0112C 8091CC2C 26530024 */  addiu   $s3, $s2, 0x0024           ## $s3 = 00000024
/* 01130 8091CC30 27B0016C */  addiu   $s0, $sp, 0x016C           ## $s0 = FFFFFFB4
/* 01134 8091CC34 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L8091CC38:
/* 01138 8091CC38 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 0113C 8091CC3C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01140 8091CC40 00000000 */  nop
/* 01144 8091CC44 46000506 */  mov.s   $f20, $f0                  
/* 01148 8091CC48 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0114C 8091CC4C 4600C306 */  mov.s   $f12, $f24                 
/* 01150 8091CC50 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 00000024
/* 01154 8091CC54 46000586 */  mov.s   $f22, $f0                  
/* 01158 8091CC58 46000306 */  mov.s   $f12, $f0                  
/* 0115C 8091CC5C AE0D0000 */  sw      $t5, 0x0000($s0)           ## FFFFFFB4
/* 01160 8091CC60 8E6C0004 */  lw      $t4, 0x0004($s3)           ## 00000028
/* 01164 8091CC64 AE0C0004 */  sw      $t4, 0x0004($s0)           ## FFFFFFB8
/* 01168 8091CC68 8E6D0008 */  lw      $t5, 0x0008($s3)           ## 0000002C
/* 0116C 8091CC6C 0C0400A4 */  jal     sinf
              
/* 01170 8091CC70 AE0D0008 */  sw      $t5, 0x0008($s0)           ## FFFFFFBC
/* 01174 8091CC74 46140182 */  mul.s   $f6, $f0, $f20             
/* 01178 8091CC78 C7A4016C */  lwc1    $f4, 0x016C($sp)           
/* 0117C 8091CC7C 4600B306 */  mov.s   $f12, $f22                 
/* 01180 8091CC80 46062200 */  add.s   $f8, $f4, $f6              
/* 01184 8091CC84 0C041184 */  jal     cosf
              
/* 01188 8091CC88 E7A8016C */  swc1    $f8, 0x016C($sp)           
/* 0118C 8091CC8C 46140402 */  mul.s   $f16, $f0, $f20            
/* 01190 8091CC90 C7AA0174 */  lwc1    $f10, 0x0174($sp)          
/* 01194 8091CC94 8FAF01BC */  lw      $t7, 0x01BC($sp)           
/* 01198 8091CC98 4406D000 */  mfc1    $a2, $f26                  
/* 0119C 8091CC9C 4407E000 */  mfc1    $a3, $f28                  
/* 011A0 8091CCA0 24080050 */  addiu   $t0, $zero, 0x0050         ## $t0 = 00000050
/* 011A4 8091CCA4 24090122 */  addiu   $t1, $zero, 0x0122         ## $t1 = 00000122
/* 011A8 8091CCA8 46105480 */  add.s   $f18, $f10, $f16           
/* 011AC 8091CCAC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 011B0 8091CCB0 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFFB4
/* 011B4 8091CCB4 E7B20174 */  swc1    $f18, 0x0174($sp)          
/* 011B8 8091CCB8 8DEB07C0 */  lw      $t3, 0x07C0($t7)           ## 000007C0
/* 011BC 8091CCBC 8D6E0028 */  lw      $t6, 0x0028($t3)           ## 00000028
/* 011C0 8091CCC0 85D80002 */  lh      $t8, 0x0002($t6)           ## 00000002
/* 011C4 8091CCC4 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 011C8 8091CCC8 00000000 */  nop
/* 011CC 8091CCCC 468021A0 */  cvt.s.w $f6, $f4                   
/* 011D0 8091CCD0 E7A60170 */  swc1    $f6, 0x0170($sp)           
/* 011D4 8091CCD4 8EA41E10 */  lw      $a0, 0x1E10($s5)           ## 00001E10
/* 011D8 8091CCD8 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 011DC 8091CCDC AFA90014 */  sw      $t1, 0x0014($sp)           
/* 011E0 8091CCE0 0C246F4E */  jal     func_8091BD38              
/* 011E4 8091CCE4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 011E8 8091CCE8 87B9017A */  lh      $t9, 0x017A($sp)           
/* 011EC 8091CCEC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 011F0 8091CCF0 00118C00 */  sll     $s1, $s1, 16               
/* 011F4 8091CCF4 00118C03 */  sra     $s1, $s1, 16               
/* 011F8 8091CCF8 0239082A */  slt     $at, $s1, $t9              
/* 011FC 8091CCFC 5420FFCE */  bnel    $at, $zero, .L8091CC38     
/* 01200 8091CD00 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
.L8091CD04:
/* 01204 8091CD04 10000904 */  beq     $zero, $zero, .L8091F118   
/* 01208 8091CD08 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091CD0C
/* 0120C 8091CD0C 3C0C8092 */  lui     $t4, %hi(D_80925CD0)       ## $t4 = 80920000
/* 01210 8091CD10 8D8C5CD0 */  lw      $t4, %lo(D_80925CD0)($t4)  
/* 01214 8091CD14 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 01218 8091CD18 858D0F60 */  lh      $t5, 0x0F60($t4)           ## 80920F60
/* 0121C 8091CD1C 55A00004 */  bnel    $t5, $zero, .L8091CD30     
/* 01220 8091CD20 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01224 8091CD24 0C01E245 */  jal     func_80078914              
/* 01228 8091CD28 240530F0 */  addiu   $a1, $zero, 0x30F0         ## $a1 = 000030F0
/* 0122C 8091CD2C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
.L8091CD30:
/* 01230 8091CD30 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 01234 8091CD34 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 01238 8091CD38 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 0123C 8091CD3C 264401C8 */  addiu   $a0, $s2, 0x01C8           ## $a0 = 000001C8
/* 01240 8091CD40 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01244 8091CD44 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 01248 8091CD48 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0124C 8091CD4C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 01250 8091CD50 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01254 8091CD54 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 01258 8091CD58 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 0125C 8091CD5C C6480188 */  lwc1    $f8, 0x0188($s2)           ## 00000188
.L8091CD60:
/* 01260 8091CD60 8649016E */  lh      $t1, 0x016E($s2)           ## 0000016E
/* 01264 8091CD64 4600428D */  trunc.w.s $f10, $f8                  
/* 01268 8091CD68 440B5000 */  mfc1    $t3, $f10                  
/* 0126C 8091CD6C 00000000 */  nop
/* 01270 8091CD70 000B7400 */  sll     $t6, $t3, 16               
/* 01274 8091CD74 000EC403 */  sra     $t8, $t6, 16               
/* 01278 8091CD78 03110019 */  multu   $t8, $s1                   
/* 0127C 8091CD7C 00004012 */  mflo    $t0                        
/* 01280 8091CD80 01092021 */  addu    $a0, $t0, $t1              
/* 01284 8091CD84 00042400 */  sll     $a0, $a0, 16               
/* 01288 8091CD88 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0128C 8091CD8C 00042403 */  sra     $a0, $a0, 16               
/* 01290 8091CD90 44918000 */  mtc1    $s1, $f16                  ## $f16 = 0.00
/* 01294 8091CD94 C64A0194 */  lwc1    $f10, 0x0194($s2)          ## 00000194
/* 01298 8091CD98 3C018092 */  lui     $at, %hi(D_80926C1C)       ## $at = 80920000
/* 0129C 8091CD9C 468084A0 */  cvt.s.w $f18, $f16                 
/* 012A0 8091CDA0 C4246C1C */  lwc1    $f4, %lo(D_80926C1C)($at)  
/* 012A4 8091CDA4 864B0170 */  lh      $t3, 0x0170($s2)           ## 00000170
/* 012A8 8091CDA8 C646018C */  lwc1    $f6, 0x018C($s2)           ## 0000018C
/* 012AC 8091CDAC 4600540D */  trunc.w.s $f16, $f10                 
/* 012B0 8091CDB0 46049502 */  mul.s   $f20, $f18, $f4            
/* 012B4 8091CDB4 44198000 */  mfc1    $t9, $f16                  
/* 012B8 8091CDB8 00000000 */  nop
/* 012BC 8091CDBC 00196400 */  sll     $t4, $t9, 16               
/* 012C0 8091CDC0 000C6C03 */  sra     $t5, $t4, 16               
/* 012C4 8091CDC4 01B10019 */  multu   $t5, $s1                   
/* 012C8 8091CDC8 4600A202 */  mul.s   $f8, $f20, $f0             
/* 012CC 8091CDCC 00000000 */  nop
/* 012D0 8091CDD0 46083582 */  mul.s   $f22, $f6, $f8             
/* 012D4 8091CDD4 00007812 */  mflo    $t7                        
/* 012D8 8091CDD8 01EB2021 */  addu    $a0, $t7, $t3              
/* 012DC 8091CDDC 00042400 */  sll     $a0, $a0, 16               
/* 012E0 8091CDE0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 012E4 8091CDE4 00042403 */  sra     $a0, $a0, 16               
/* 012E8 8091CDE8 02340019 */  multu   $s1, $s4                   
/* 012EC 8091CDEC 4600A782 */  mul.s   $f30, $f20, $f0            
/* 012F0 8091CDF0 C65201A0 */  lwc1    $f18, 0x01A0($s2)          ## 000001A0
/* 012F4 8091CDF4 C6500198 */  lwc1    $f16, 0x0198($s2)          ## 00000198
/* 012F8 8091CDF8 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 012FC 8091CDFC 461A9482 */  mul.s   $f18, $f18, $f26           
/* 01300 8091CE00 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 01304 8091CE04 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01308 8091CE08 461E8602 */  mul.s   $f24, $f16, $f30           
/* 0130C 8091CE0C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 01310 8091CE10 00007012 */  mflo    $t6                        
/* 01314 8091CE14 024E2021 */  addu    $a0, $s2, $t6              
/* 01318 8091CE18 44059000 */  mfc1    $a1, $f18                  
/* 0131C 8091CE1C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01320 8091CE20 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 01324 8091CE24 2401001C */  addiu   $at, $zero, 0x001C         ## $at = 0000001C
/* 01328 8091CE28 56210007 */  bnel    $s1, $at, .L8091CE48       
/* 0132C 8091CE2C C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
/* 01330 8091CE30 02330019 */  multu   $s1, $s3                   
/* 01334 8091CE34 0000C012 */  mflo    $t8                        
/* 01338 8091CE38 02584021 */  addu    $t0, $s2, $t8              
/* 0133C 8091CE3C 85090C6C */  lh      $t1, 0x0C6C($t0)           ## 00000C6C
/* 01340 8091CE40 A7A901B4 */  sh      $t1, 0x01B4($sp)           
/* 01344 8091CE44 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
.L8091CE48:
/* 01348 8091CE48 02330019 */  multu   $s1, $s3                   
/* 0134C 8091CE4C C6460D68 */  lwc1    $f6, 0x0D68($s2)           ## 00000D68
/* 01350 8091CE50 4610E483 */  div.s   $f18, $f28, $f16           
/* 01354 8091CE54 4600B28D */  trunc.w.s $f10, $f22                 
/* 01358 8091CE58 4600320D */  trunc.w.s $f8, $f6                   
/* 0135C 8091CE5C 44055000 */  mfc1    $a1, $f10                  
/* 01360 8091CE60 00005012 */  mflo    $t2                        
/* 01364 8091CE64 024A8021 */  addu    $s0, $s2, $t2              
/* 01368 8091CE68 44074000 */  mfc1    $a3, $f8                   
/* 0136C 8091CE6C 00052C00 */  sll     $a1, $a1, 16               
/* 01370 8091CE70 00052C03 */  sra     $a1, $a1, 16               
/* 01374 8091CE74 00073C00 */  sll     $a3, $a3, 16               
/* 01378 8091CE78 00073C03 */  sra     $a3, $a3, 16               
/* 0137C 8091CE7C 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 00000C20
/* 01380 8091CE80 4600910D */  trunc.w.s $f4, $f18                  
/* 01384 8091CE84 44062000 */  mfc1    $a2, $f4                   
/* 01388 8091CE88 00000000 */  nop
/* 0138C 8091CE8C 00063400 */  sll     $a2, $a2, 16               
/* 01390 8091CE90 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01394 8091CE94 00063403 */  sra     $a2, $a2, 16               
/* 01398 8091CE98 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
/* 0139C 8091CE9C C6460D68 */  lwc1    $f6, 0x0D68($s2)           ## 00000D68
/* 013A0 8091CEA0 4600C28D */  trunc.w.s $f10, $f24                 
/* 013A4 8091CEA4 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 00000C24
/* 013A8 8091CEA8 4610E483 */  div.s   $f18, $f28, $f16           
/* 013AC 8091CEAC 44055000 */  mfc1    $a1, $f10                  
/* 013B0 8091CEB0 4600320D */  trunc.w.s $f8, $f6                   
/* 013B4 8091CEB4 00052C00 */  sll     $a1, $a1, 16               
/* 013B8 8091CEB8 00052C03 */  sra     $a1, $a1, 16               
/* 013BC 8091CEBC 44074000 */  mfc1    $a3, $f8                   
/* 013C0 8091CEC0 00000000 */  nop
/* 013C4 8091CEC4 00073C00 */  sll     $a3, $a3, 16               
/* 013C8 8091CEC8 00073C03 */  sra     $a3, $a3, 16               
/* 013CC 8091CECC 4600910D */  trunc.w.s $f4, $f18                  
/* 013D0 8091CED0 44062000 */  mfc1    $a2, $f4                   
/* 013D4 8091CED4 00000000 */  nop
/* 013D8 8091CED8 00063400 */  sll     $a2, $a2, 16               
/* 013DC 8091CEDC 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 013E0 8091CEE0 00063403 */  sra     $a2, $a2, 16               
/* 013E4 8091CEE4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 013E8 8091CEE8 00118C00 */  sll     $s1, $s1, 16               
/* 013EC 8091CEEC 00118C03 */  sra     $s1, $s1, 16               
/* 013F0 8091CEF0 2A210029 */  slti    $at, $s1, 0x0029           
/* 013F4 8091CEF4 5420FF9A */  bnel    $at, $zero, .L8091CD60     
/* 013F8 8091CEF8 C6480188 */  lwc1    $f8, 0x0188($s2)           ## 00000188
/* 013FC 8091CEFC 8E480024 */  lw      $t0, 0x0024($s2)           ## 00000024
/* 01400 8091CF00 8E580028 */  lw      $t8, 0x0028($s2)           ## 00000028
/* 01404 8091CF04 4406E000 */  mfc1    $a2, $f28                  
/* 01408 8091CF08 AE4801D4 */  sw      $t0, 0x01D4($s2)           ## 000001D4
/* 0140C 8091CF0C 8E48002C */  lw      $t0, 0x002C($s2)           ## 0000002C
/* 01410 8091CF10 3C073D23 */  lui     $a3, 0x3D23                ## $a3 = 3D230000
/* 01414 8091CF14 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3D23D70A
/* 01418 8091CF18 26440068 */  addiu   $a0, $s2, 0x0068           ## $a0 = 00000068
/* 0141C 8091CF1C 3C053F40 */  lui     $a1, 0x3F40                ## $a1 = 3F400000
/* 01420 8091CF20 AE5801D8 */  sw      $t8, 0x01D8($s2)           ## 000001D8
/* 01424 8091CF24 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01428 8091CF28 AE4801DC */  sw      $t0, 0x01DC($s2)           ## 000001DC
/* 0142C 8091CF2C 86490158 */  lh      $t1, 0x0158($s2)           ## 00000158
/* 01430 8091CF30 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01434 8091CF34 264400B6 */  addiu   $a0, $s2, 0x00B6           ## $a0 = 000000B6
/* 01438 8091CF38 5521000A */  bnel    $t1, $at, .L8091CF64       
/* 0143C 8091CF3C 4405E000 */  mfc1    $a1, $f28                  
/* 01440 8091CF40 864A008A */  lh      $t2, 0x008A($s2)           ## 0000008A
/* 01444 8091CF44 865901CE */  lh      $t9, 0x01CE($s2)           ## 000001CE
/* 01448 8091CF48 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 0144C 8091CF4C 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 01450 8091CF50 01592821 */  addu    $a1, $t2, $t9              
/* 01454 8091CF54 00052C00 */  sll     $a1, $a1, 16               
/* 01458 8091CF58 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0145C 8091CF5C 00052C03 */  sra     $a1, $a1, 16               
/* 01460 8091CF60 4405E000 */  mfc1    $a1, $f28                  
.L8091CF64:
/* 01464 8091CF64 3C073D23 */  lui     $a3, 0x3D23                ## $a3 = 3D230000
/* 01468 8091CF68 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3D23D70A
/* 0146C 8091CF6C 264401A0 */  addiu   $a0, $s2, 0x01A0           ## $a0 = 000001A0
/* 01470 8091CF70 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01474 8091CF74 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01478 8091CF78 3C0C8092 */  lui     $t4, %hi(D_80925CD0)       ## $t4 = 80920000
/* 0147C 8091CF7C 8D8C5CD0 */  lw      $t4, %lo(D_80925CD0)($t4)  
/* 01480 8091CF80 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 01484 8091CF84 3C073B03 */  lui     $a3, 0x3B03                ## $a3 = 3B030000
/* 01488 8091CF88 858D0F60 */  lh      $t5, 0x0F60($t4)           ## 80920F60
/* 0148C 8091CF8C 51A0000F */  beql    $t5, $zero, .L8091CFCC     
/* 01490 8091CF90 4405E000 */  mfc1    $a1, $f28                  
/* 01494 8091CF94 4405E000 */  mfc1    $a1, $f28                  
/* 01498 8091CF98 4406E000 */  mfc1    $a2, $f28                  
/* 0149C 8091CF9C 3C073A83 */  lui     $a3, 0x3A83                ## $a3 = 3A830000
/* 014A0 8091CFA0 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3A83126F
/* 014A4 8091CFA4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 014A8 8091CFA8 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 014AC 8091CFAC 4406E000 */  mfc1    $a2, $f28                  
/* 014B0 8091CFB0 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 014B4 8091CFB4 3C054370 */  lui     $a1, 0x4370                ## $a1 = 43700000
/* 014B8 8091CFB8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 014BC 8091CFBC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 014C0 8091CFC0 1000000B */  beq     $zero, $zero, .L8091CFF0   
/* 014C4 8091CFC4 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 014C8 8091CFC8 4405E000 */  mfc1    $a1, $f28                  
.L8091CFCC:
/* 014CC 8091CFCC 4406E000 */  mfc1    $a2, $f28                  
/* 014D0 8091CFD0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 014D4 8091CFD4 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 0000126F
/* 014D8 8091CFD8 4406E000 */  mfc1    $a2, $f28                  
/* 014DC 8091CFDC 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 014E0 8091CFE0 3C0543C8 */  lui     $a1, 0x43C8                ## $a1 = 43C80000
/* 014E4 8091CFE4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 014E8 8091CFE8 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 014EC 8091CFEC 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
.L8091CFF0:
/* 014F0 8091CFF0 5460001A */  bnel    $v1, $zero, .L8091D05C     
/* 014F4 8091CFF4 864A017E */  lh      $t2, 0x017E($s2)           ## 0000017E
/* 014F8 8091CFF8 864F017E */  lh      $t7, 0x017E($s2)           ## 0000017E
/* 014FC 8091CFFC 8FAB019C */  lw      $t3, 0x019C($sp)           
/* 01500 8091D000 55E00846 */  bnel    $t7, $zero, .L8091F11C     
/* 01504 8091D004 C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
/* 01508 8091D008 11600006 */  beq     $t3, $zero, .L8091D024     
/* 0150C 8091D00C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01510 8091D010 85620158 */  lh      $v0, 0x0158($t3)           ## 00000158
/* 01514 8091D014 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01518 8091D018 1041083F */  beq     $v0, $at, .L8091F118       
/* 0151C 8091D01C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01520 8091D020 1041083D */  beq     $v0, $at, .L8091F118       
.L8091D024:
/* 01524 8091D024 24180032 */  addiu   $t8, $zero, 0x0032         ## $t8 = 00000032
/* 01528 8091D028 A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
/* 0152C 8091D02C 0C03D2FA */  jal     func_800F4BE8              
/* 01530 8091D030 A658017E */  sh      $t8, 0x017E($s2)           ## 0000017E
/* 01534 8091D034 3C014580 */  lui     $at, 0x4580                ## $at = 45800000
/* 01538 8091D038 44816000 */  mtc1    $at, $f12                  ## $f12 = 4096.00
/* 0153C 8091D03C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 01540 8091D040 00000000 */  nop
/* 01544 8091D044 4600028D */  trunc.w.s $f10, $f0                  
/* 01548 8091D048 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 0154C 8091D04C 44095000 */  mfc1    $t1, $f10                  
/* 01550 8091D050 10000831 */  beq     $zero, $zero, .L8091F118   
/* 01554 8091D054 A64901CE */  sh      $t1, 0x01CE($s2)           ## 000001CE
/* 01558 8091D058 864A017E */  lh      $t2, 0x017E($s2)           ## 0000017E
.L8091D05C:
/* 0155C 8091D05C 86420D14 */  lh      $v0, 0x0D14($s2)           ## 00000D14
/* 01560 8091D060 5540082E */  bnel    $t2, $zero, .L8091F11C     
/* 01564 8091D064 C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
/* 01568 8091D068 0440082B */  bltz    $v0, .L8091F118            
/* 0156C 8091D06C 87B901B4 */  lh      $t9, 0x01B4($sp)           
/* 01570 8091D070 07210829 */  bgez    $t9, .L8091F118            
/* 01574 8091D074 3C108092 */  lui     $s0, %hi(D_80925CD4)       ## $s0 = 80920000
/* 01578 8091D078 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 0157C 8091D07C 26105CD4 */  addiu   $s0, $s0, %lo(D_80925CD4)  ## $s0 = 80925CD4
/* 01580 8091D080 A64C0158 */  sh      $t4, 0x0158($s2)           ## 00000158
/* 01584 8091D084 8E0D0000 */  lw      $t5, 0x0000($s0)           ## 80925CD4
/* 01588 8091D088 240F00AF */  addiu   $t7, $zero, 0x00AF         ## $t7 = 000000AF
/* 0158C 8091D08C 240B0037 */  addiu   $t3, $zero, 0x0037         ## $t3 = 00000037
/* 01590 8091D090 564D0005 */  bnel    $s2, $t5, .L8091D0A8       
/* 01594 8091D094 A64B017E */  sh      $t3, 0x017E($s2)           ## 0000017E
/* 01598 8091D098 A64F017E */  sh      $t7, 0x017E($s2)           ## 0000017E
/* 0159C 8091D09C 1000081E */  beq     $zero, $zero, .L8091F118   
/* 015A0 8091D0A0 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 015A4 8091D0A4 A64B017E */  sh      $t3, 0x017E($s2)           ## 0000017E
.L8091D0A8:
/* 015A8 8091D0A8 1000081B */  beq     $zero, $zero, .L8091F118   
/* 015AC 8091D0AC 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091D0B0
/* 015B0 8091D0B0 8E4E0004 */  lw      $t6, 0x0004($s2)           ## 00000004
/* 015B4 8091D0B4 3C010100 */  lui     $at, 0x0100                ## $at = 01000000
/* 015B8 8091D0B8 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 015BC 8091D0BC 01C1C025 */  or      $t8, $t6, $at              ## $t8 = 01000000
/* 015C0 8091D0C0 AE580004 */  sw      $t8, 0x0004($s2)           ## 00000004
/* 015C4 8091D0C4 0C01E245 */  jal     func_80078914              
/* 015C8 8091D0C8 240530F1 */  addiu   $a1, $zero, 0x30F1         ## $a1 = 000030F1
/* 015CC 8091D0CC 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 015D0 8091D0D0 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 015D4 8091D0D4 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 015D8 8091D0D8 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 015DC 8091D0DC 264401C8 */  addiu   $a0, $s2, 0x01C8           ## $a0 = 000001C8
/* 015E0 8091D0E0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 015E4 8091D0E4 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 015E8 8091D0E8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 015EC 8091D0EC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 015F0 8091D0F0 3C018092 */  lui     $at, %hi(D_80926C20)       ## $at = 80920000
/* 015F4 8091D0F4 C4346C20 */  lwc1    $f20, %lo(D_80926C20)($at) 
/* 015F8 8091D0F8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 015FC 8091D0FC 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 01600 8091D100 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 01604 8091D104 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
.L8091D108:
/* 01608 8091D108 01315023 */  subu    $t2, $t1, $s1              
/* 0160C 8091D10C 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 01610 8091D110 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01614 8091D114 44812000 */  mtc1    $at, $f4                   ## $f4 = 25.00
/* 01618 8091D118 468084A0 */  cvt.s.w $f18, $f16                 
/* 0161C 8091D11C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01620 8091D120 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 01624 8091D124 02340019 */  multu   $s1, $s4                   
/* 01628 8091D128 4407A000 */  mfc1    $a3, $f20                  
/* 0162C 8091D12C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01630 8091D130 46049182 */  mul.s   $f6, $f18, $f4             
/* 01634 8091D134 C65201A0 */  lwc1    $f18, 0x01A0($s2)          ## 000001A0
/* 01638 8091D138 46083283 */  div.s   $f10, $f6, $f8             
/* 0163C 8091D13C 00004012 */  mflo    $t0                        
/* 01640 8091D140 02482021 */  addu    $a0, $s2, $t0              
/* 01644 8091D144 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 01648 8091D148 461A5400 */  add.s   $f16, $f10, $f26           
/* 0164C 8091D14C 46109102 */  mul.s   $f4, $f18, $f16            
/* 01650 8091D150 44052000 */  mfc1    $a1, $f4                   
/* 01654 8091D154 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01658 8091D158 00000000 */  nop
/* 0165C 8091D15C C6460D64 */  lwc1    $f6, 0x0D64($s2)           ## 00000D64
/* 01660 8091D160 02330019 */  multu   $s1, $s3                   
/* 01664 8091D164 C6520D68 */  lwc1    $f18, 0x0D68($s2)          ## 00000D68
/* 01668 8091D168 4606E203 */  div.s   $f8, $f28, $f6             
/* 0166C 8091D16C 00116040 */  sll     $t4, $s1,  1               
/* 01670 8091D170 3C058092 */  lui     $a1, %hi(D_80926134)       ## $a1 = 80920000
/* 01674 8091D174 00AC2821 */  addu    $a1, $a1, $t4              
/* 01678 8091D178 4600940D */  trunc.w.s $f16, $f18                 
/* 0167C 8091D17C 84A56134 */  lh      $a1, %lo(D_80926134)($a1)  
/* 01680 8091D180 44078000 */  mfc1    $a3, $f16                  
/* 01684 8091D184 0000C812 */  mflo    $t9                        
/* 01688 8091D188 00052A00 */  sll     $a1, $a1,  8               
/* 0168C 8091D18C 00052C00 */  sll     $a1, $a1, 16               
/* 01690 8091D190 02598021 */  addu    $s0, $s2, $t9              
/* 01694 8091D194 00073C00 */  sll     $a3, $a3, 16               
/* 01698 8091D198 00073C03 */  sra     $a3, $a3, 16               
/* 0169C 8091D19C 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 80926940
/* 016A0 8091D1A0 00052C03 */  sra     $a1, $a1, 16               
/* 016A4 8091D1A4 4600428D */  trunc.w.s $f10, $f8                  
/* 016A8 8091D1A8 44065000 */  mfc1    $a2, $f10                  
/* 016AC 8091D1AC 00000000 */  nop
/* 016B0 8091D1B0 00063400 */  sll     $a2, $a2, 16               
/* 016B4 8091D1B4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 016B8 8091D1B8 00063403 */  sra     $a2, $a2, 16               
/* 016BC 8091D1BC C6440D64 */  lwc1    $f4, 0x0D64($s2)           ## 00000D64
/* 016C0 8091D1C0 C64A0D68 */  lwc1    $f10, 0x0D68($s2)          ## 00000D68
/* 016C4 8091D1C4 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 80926944
/* 016C8 8091D1C8 4604E183 */  div.s   $f6, $f28, $f4             
/* 016CC 8091D1CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 016D0 8091D1D0 4600548D */  trunc.w.s $f18, $f10                 
/* 016D4 8091D1D4 44079000 */  mfc1    $a3, $f18                  
/* 016D8 8091D1D8 00000000 */  nop
/* 016DC 8091D1DC 00073C00 */  sll     $a3, $a3, 16               
/* 016E0 8091D1E0 00073C03 */  sra     $a3, $a3, 16               
/* 016E4 8091D1E4 4600320D */  trunc.w.s $f8, $f6                   
/* 016E8 8091D1E8 44064000 */  mfc1    $a2, $f8                   
/* 016EC 8091D1EC 00000000 */  nop
/* 016F0 8091D1F0 00063400 */  sll     $a2, $a2, 16               
/* 016F4 8091D1F4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 016F8 8091D1F8 00063403 */  sra     $a2, $a2, 16               
/* 016FC 8091D1FC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 01700 8091D200 00118C00 */  sll     $s1, $s1, 16               
/* 01704 8091D204 00118C03 */  sra     $s1, $s1, 16               
/* 01708 8091D208 2A210029 */  slti    $at, $s1, 0x0029           
/* 0170C 8091D20C 5420FFBE */  bnel    $at, $zero, .L8091D108     
/* 01710 8091D210 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 01714 8091D214 8E480024 */  lw      $t0, 0x0024($s2)           ## 00000024
/* 01718 8091D218 3C018092 */  lui     $at, %hi(D_80926C24)       ## $at = 80920000
/* 0171C 8091D21C C4366C24 */  lwc1    $f22, %lo(D_80926C24)($at) 
/* 01720 8091D220 AE4801D4 */  sw      $t0, 0x01D4($s2)           ## 000001D4
/* 01724 8091D224 8E48002C */  lw      $t0, 0x002C($s2)           ## 0000002C
/* 01728 8091D228 8E580028 */  lw      $t8, 0x0028($s2)           ## 00000028
/* 0172C 8091D22C 4406E000 */  mfc1    $a2, $f28                  
/* 01730 8091D230 4407B000 */  mfc1    $a3, $f22                  
/* 01734 8091D234 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 01738 8091D238 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 0173C 8091D23C AE4801DC */  sw      $t0, 0x01DC($s2)           ## 000001DC
/* 01740 8091D240 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01744 8091D244 AE5801D8 */  sw      $t8, 0x01D8($s2)           ## 000001D8
/* 01748 8091D248 4406E000 */  mfc1    $a2, $f28                  
/* 0174C 8091D24C 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 01750 8091D250 3C054320 */  lui     $a1, 0x4320                ## $a1 = 43200000
/* 01754 8091D254 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01758 8091D258 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0175C 8091D25C 8649017E */  lh      $t1, 0x017E($s2)           ## 0000017E
/* 01760 8091D260 51200005 */  beql    $t1, $zero, .L8091D278     
/* 01764 8091D264 C6460E7C */  lwc1    $f6, 0x0E7C($s2)           ## 00000E7C
/* 01768 8091D268 924A01D2 */  lbu     $t2, 0x01D2($s2)           ## 000001D2
/* 0176C 8091D26C 1140006E */  beq     $t2, $zero, .L8091D428     
/* 01770 8091D270 00000000 */  nop
/* 01774 8091D274 C6460E7C */  lwc1    $f6, 0x0E7C($s2)           ## 00000E7C
.L8091D278:
/* 01778 8091D278 C6A80028 */  lwc1    $f8, 0x0028($s5)           ## 00000028
/* 0177C 8091D27C C6500E78 */  lwc1    $f16, 0x0E78($s2)          ## 00000E78
/* 01780 8091D280 C6A40024 */  lwc1    $f4, 0x0024($s5)           ## 00000024
/* 01784 8091D284 46083081 */  sub.s   $f2, $f6, $f8              
/* 01788 8091D288 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0178C 8091D28C C64A0E80 */  lwc1    $f10, 0x0E80($s2)          ## 00000E80
/* 01790 8091D290 46048301 */  sub.s   $f12, $f16, $f4            
/* 01794 8091D294 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 01798 8091D298 C6B2002C */  lwc1    $f18, 0x002C($s5)          ## 0000002C
/* 0179C 8091D29C 46001005 */  abs.s   $f0, $f2                   
/* 017A0 8091D2A0 8FB9019C */  lw      $t9, 0x019C($sp)           
/* 017A4 8091D2A4 4610003C */  c.lt.s  $f0, $f16                  
/* 017A8 8091D2A8 240A001E */  addiu   $t2, $zero, 0x001E         ## $t2 = 0000001E
/* 017AC 8091D2AC 46125381 */  sub.s   $f14, $f10, $f18           
/* 017B0 8091D2B0 45020029 */  bc1fl   .L8091D358                 
/* 017B4 8091D2B4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 017B8 8091D2B8 13200007 */  beq     $t9, $zero, .L8091D2D8     
/* 017BC 8091D2BC 00000000 */  nop
/* 017C0 8091D2C0 87220158 */  lh      $v0, 0x0158($t9)           ## 00000158
/* 017C4 8091D2C4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 017C8 8091D2C8 10410022 */  beq     $v0, $at, .L8091D354       
/* 017CC 8091D2CC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 017D0 8091D2D0 50410021 */  beql    $v0, $at, .L8091D358       
/* 017D4 8091D2D4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
.L8091D2D8:
/* 017D8 8091D2D8 460C6102 */  mul.s   $f4, $f12, $f12            
/* 017DC 8091D2DC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 017E0 8091D2E0 44819000 */  mtc1    $at, $f18                  ## $f18 = 120.00
/* 017E4 8091D2E4 46021182 */  mul.s   $f6, $f2, $f2              
/* 017E8 8091D2E8 3C018092 */  lui     $at, %hi(D_80926C28)       ## $at = 80920000
/* 017EC 8091D2EC 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 017F0 8091D2F0 460E7282 */  mul.s   $f10, $f14, $f14           
/* 017F4 8091D2F4 240D0028 */  addiu   $t5, $zero, 0x0028         ## $t5 = 00000028
/* 017F8 8091D2F8 46062200 */  add.s   $f8, $f4, $f6              
/* 017FC 8091D2FC 460A4000 */  add.s   $f0, $f8, $f10             
/* 01800 8091D300 46000004 */  sqrt.s  $f0, $f0                   
/* 01804 8091D304 4612003C */  c.lt.s  $f0, $f18                  
/* 01808 8091D308 00000000 */  nop
/* 0180C 8091D30C 45020012 */  bc1fl   .L8091D358                 
/* 01810 8091D310 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01814 8091D314 864F00B6 */  lh      $t7, 0x00B6($s2)           ## 000000B6
/* 01818 8091D318 864B008A */  lh      $t3, 0x008A($s2)           ## 0000008A
/* 0181C 8091D31C C4346C28 */  lwc1    $f20, %lo(D_80926C28)($at) 
/* 01820 8091D320 A64C0158 */  sh      $t4, 0x0158($s2)           ## 00000158
/* 01824 8091D324 01EB7023 */  subu    $t6, $t7, $t3              
/* 01828 8091D328 000EC400 */  sll     $t8, $t6, 16               
/* 0182C 8091D32C 00184403 */  sra     $t0, $t8, 16               
/* 01830 8091D330 A64D017E */  sh      $t5, 0x017E($s2)           ## 0000017E
/* 01834 8091D334 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 01838 8091D338 05000003 */  bltz    $t0, .L8091D348            
/* 0183C 8091D33C E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
/* 01840 8091D340 10000039 */  beq     $zero, $zero, .L8091D428   
/* 01844 8091D344 A6400176 */  sh      $zero, 0x0176($s2)         ## 00000176
.L8091D348:
/* 01848 8091D348 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0184C 8091D34C 10000036 */  beq     $zero, $zero, .L8091D428   
/* 01850 8091D350 A6490176 */  sh      $t1, 0x0176($s2)           ## 00000176
.L8091D354:
/* 01854 8091D354 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
.L8091D358:
/* 01858 8091D358 44811000 */  mtc1    $at, $f2                   ## $f2 = 300.00
/* 0185C 8091D35C 3C018092 */  lui     $at, %hi(D_80926C2C)       ## $at = 80920000
/* 01860 8091D360 C4346C2C */  lwc1    $f20, %lo(D_80926C2C)($at) 
/* 01864 8091D364 A6400158 */  sh      $zero, 0x0158($s2)         ## 00000158
/* 01868 8091D368 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 0186C 8091D36C E65E0190 */  swc1    $f30, 0x0190($s2)          ## 00000190
/* 01870 8091D370 E65E019C */  swc1    $f30, 0x019C($s2)          ## 0000019C
/* 01874 8091D374 E65E018C */  swc1    $f30, 0x018C($s2)          ## 0000018C
/* 01878 8091D378 E65E0198 */  swc1    $f30, 0x0198($s2)          ## 00000198
/* 0187C 8091D37C A64A017E */  sh      $t2, 0x017E($s2)           ## 0000017E
/* 01880 8091D380 E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
/* 01884 8091D384 C6B00024 */  lwc1    $f16, 0x0024($s5)          ## 00000024
/* 01888 8091D388 C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 0188C 8091D38C 8FB901BC */  lw      $t9, 0x01BC($sp)           
/* 01890 8091D390 240E0065 */  addiu   $t6, $zero, 0x0065         ## $t6 = 00000065
/* 01894 8091D394 46048001 */  sub.s   $f0, $f16, $f4             
/* 01898 8091D398 2418004B */  addiu   $t8, $zero, 0x004B         ## $t8 = 0000004B
/* 0189C 8091D39C 46000005 */  abs.s   $f0, $f0                   
/* 018A0 8091D3A0 4600103C */  c.lt.s  $f2, $f0                   
/* 018A4 8091D3A4 00000000 */  nop
/* 018A8 8091D3A8 4503001E */  bc1tl   .L8091D424                 
/* 018AC 8091D3AC A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
/* 018B0 8091D3B0 8F2C07C0 */  lw      $t4, 0x07C0($t9)           ## 000007C0
/* 018B4 8091D3B4 C6A60028 */  lwc1    $f6, 0x0028($s5)           ## 00000028
/* 018B8 8091D3B8 8FAB019C */  lw      $t3, 0x019C($sp)           
/* 018BC 8091D3BC 8D8D0028 */  lw      $t5, 0x0028($t4)           ## 0000002B
/* 018C0 8091D3C0 85AF0002 */  lh      $t7, 0x0002($t5)           ## 0000002A
/* 018C4 8091D3C4 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 018C8 8091D3C8 00000000 */  nop
/* 018CC 8091D3CC 468042A0 */  cvt.s.w $f10, $f8                  
/* 018D0 8091D3D0 460A303C */  c.lt.s  $f6, $f10                  
/* 018D4 8091D3D4 00000000 */  nop
/* 018D8 8091D3D8 45030012 */  bc1tl   .L8091D424                 
/* 018DC 8091D3DC A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
/* 018E0 8091D3E0 51600008 */  beql    $t3, $zero, .L8091D404     
/* 018E4 8091D3E4 C6B2002C */  lwc1    $f18, 0x002C($s5)          ## 0000002C
/* 018E8 8091D3E8 85620158 */  lh      $v0, 0x0158($t3)           ## 00000158
/* 018EC 8091D3EC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 018F0 8091D3F0 1041000B */  beq     $v0, $at, .L8091D420       
/* 018F4 8091D3F4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 018F8 8091D3F8 5041000A */  beql    $v0, $at, .L8091D424       
/* 018FC 8091D3FC A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
/* 01900 8091D400 C6B2002C */  lwc1    $f18, 0x002C($s5)          ## 0000002C
.L8091D404:
/* 01904 8091D404 C650002C */  lwc1    $f16, 0x002C($s2)          ## 0000002C
/* 01908 8091D408 46109001 */  sub.s   $f0, $f18, $f16            
/* 0190C 8091D40C 46000005 */  abs.s   $f0, $f0                   
/* 01910 8091D410 4600103C */  c.lt.s  $f2, $f0                   
/* 01914 8091D414 00000000 */  nop
/* 01918 8091D418 45000003 */  bc1f    .L8091D428                 
/* 0191C 8091D41C 00000000 */  nop
.L8091D420:
/* 01920 8091D420 A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
.L8091D424:
/* 01924 8091D424 A658017E */  sh      $t8, 0x017E($s2)           ## 0000017E
.L8091D428:
/* 01928 8091D428 1000073B */  beq     $zero, $zero, .L8091F118   
/* 0192C 8091D42C 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091D430
/* 01930 8091D430 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01934 8091D434 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 01938 8091D438 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 0193C 8091D43C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01940 8091D440 264401C8 */  addiu   $a0, $s2, 0x01C8           ## $a0 = 000001C8
/* 01944 8091D444 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01948 8091D448 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 0194C 8091D44C 8648017E */  lh      $t0, 0x017E($s2)           ## 0000017E
/* 01950 8091D450 2401007D */  addiu   $at, $zero, 0x007D         ## $at = 0000007D
/* 01954 8091D454 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01958 8091D458 15010005 */  bne     $t0, $at, .L8091D470       
/* 0195C 8091D45C 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 01960 8091D460 3C018092 */  lui     $at, %hi(D_80926C30)       ## $at = 80920000
/* 01964 8091D464 C4346C30 */  lwc1    $f20, %lo(D_80926C30)($at) 
/* 01968 8091D468 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 0196C 8091D46C E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
.L8091D470:
/* 01970 8091D470 3C018092 */  lui     $at, %hi(D_80926C34)       ## $at = 80920000
/* 01974 8091D474 3C108092 */  lui     $s0, %hi(D_8092608C)       ## $s0 = 80920000
/* 01978 8091D478 C4346C34 */  lwc1    $f20, %lo(D_80926C34)($at) 
/* 0197C 8091D47C 2610608C */  addiu   $s0, $s0, %lo(D_8092608C)  ## $s0 = 8092608C
/* 01980 8091D480 8649017E */  lh      $t1, 0x017E($s2)           ## 0000017E
.L8091D484:
/* 01984 8091D484 2921001A */  slti    $at, $t1, 0x001A           
/* 01988 8091D488 54200038 */  bnel    $at, $zero, .L8091D56C     
/* 0198C 8091D48C 86590176 */  lh      $t9, 0x0176($s2)           ## 00000176
/* 01990 8091D490 864A0176 */  lh      $t2, 0x0176($s2)           ## 00000176
/* 01994 8091D494 5540001B */  bnel    $t2, $zero, .L8091D504     
/* 01998 8091D498 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
/* 0199C 8091D49C C6440D64 */  lwc1    $f4, 0x0D64($s2)           ## 00000D64
/* 019A0 8091D4A0 02330019 */  multu   $s1, $s3                   
/* 019A4 8091D4A4 C64A0D68 */  lwc1    $f10, 0x0D68($s2)          ## 00000D68
/* 019A8 8091D4A8 4604E203 */  div.s   $f8, $f28, $f4             
/* 019AC 8091D4AC 00116040 */  sll     $t4, $s1,  1               
/* 019B0 8091D4B0 020C6821 */  addu    $t5, $s0, $t4              
/* 019B4 8091D4B4 85A50000 */  lh      $a1, 0x0000($t5)           ## 00000000
/* 019B8 8091D4B8 4600548D */  trunc.w.s $f18, $f10                 
/* 019BC 8091D4BC 00052A00 */  sll     $a1, $a1,  8               
/* 019C0 8091D4C0 00052C00 */  sll     $a1, $a1, 16               
/* 019C4 8091D4C4 44079000 */  mfc1    $a3, $f18                  
/* 019C8 8091D4C8 0000C812 */  mflo    $t9                        
/* 019CC 8091D4CC 02592021 */  addu    $a0, $s2, $t9              
/* 019D0 8091D4D0 00073C00 */  sll     $a3, $a3, 16               
/* 019D4 8091D4D4 00073C03 */  sra     $a3, $a3, 16               
/* 019D8 8091D4D8 24840C70 */  addiu   $a0, $a0, 0x0C70           ## $a0 = 00000C70
/* 019DC 8091D4DC 00052C03 */  sra     $a1, $a1, 16               
/* 019E0 8091D4E0 4600418D */  trunc.w.s $f6, $f8                   
/* 019E4 8091D4E4 44063000 */  mfc1    $a2, $f6                   
/* 019E8 8091D4E8 00000000 */  nop
/* 019EC 8091D4EC 00063400 */  sll     $a2, $a2, 16               
/* 019F0 8091D4F0 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 019F4 8091D4F4 00063403 */  sra     $a2, $a2, 16               
/* 019F8 8091D4F8 10000052 */  beq     $zero, $zero, .L8091D644   
/* 019FC 8091D4FC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 01A00 8091D500 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
.L8091D504:
/* 01A04 8091D504 02330019 */  multu   $s1, $s3                   
/* 01A08 8091D508 C6460D68 */  lwc1    $f6, 0x0D68($s2)           ## 00000D68
/* 01A0C 8091D50C 4610E103 */  div.s   $f4, $f28, $f16            
/* 01A10 8091D510 0011C040 */  sll     $t8, $s1,  1               
/* 01A14 8091D514 02184021 */  addu    $t0, $s0, $t8              
/* 01A18 8091D518 85050000 */  lh      $a1, 0x0000($t0)           ## 00000000
/* 01A1C 8091D51C 4600328D */  trunc.w.s $f10, $f6                  
/* 01A20 8091D520 00050823 */  subu    $at, $zero, $a1            
/* 01A24 8091D524 00202825 */  or      $a1, $at, $zero            ## $a1 = 00000000
/* 01A28 8091D528 44075000 */  mfc1    $a3, $f10                  
/* 01A2C 8091D52C 00007012 */  mflo    $t6                        
/* 01A30 8091D530 024E2021 */  addu    $a0, $s2, $t6              
/* 01A34 8091D534 00052E00 */  sll     $a1, $a1, 24               
/* 01A38 8091D538 00073C00 */  sll     $a3, $a3, 16               
/* 01A3C 8091D53C 00073C03 */  sra     $a3, $a3, 16               
/* 01A40 8091D540 00052C03 */  sra     $a1, $a1, 16               
/* 01A44 8091D544 24840C70 */  addiu   $a0, $a0, 0x0C70           ## $a0 = 00000C70
/* 01A48 8091D548 4600220D */  trunc.w.s $f8, $f4                   
/* 01A4C 8091D54C 44064000 */  mfc1    $a2, $f8                   
/* 01A50 8091D550 00000000 */  nop
/* 01A54 8091D554 00063400 */  sll     $a2, $a2, 16               
/* 01A58 8091D558 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01A5C 8091D55C 00063403 */  sra     $a2, $a2, 16               
/* 01A60 8091D560 10000038 */  beq     $zero, $zero, .L8091D644   
/* 01A64 8091D564 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
/* 01A68 8091D568 86590176 */  lh      $t9, 0x0176($s2)           ## 00000176
.L8091D56C:
/* 01A6C 8091D56C 5720001C */  bnel    $t9, $zero, .L8091D5E0     
/* 01A70 8091D570 C64A0D64 */  lwc1    $f10, 0x0D64($s2)          ## 00000D64
/* 01A74 8091D574 C6520D64 */  lwc1    $f18, 0x0D64($s2)          ## 00000D64
/* 01A78 8091D578 02330019 */  multu   $s1, $s3                   
/* 01A7C 8091D57C C6480D68 */  lwc1    $f8, 0x0D68($s2)           ## 00000D68
/* 01A80 8091D580 4612E403 */  div.s   $f16, $f28, $f18           
/* 01A84 8091D584 00116840 */  sll     $t5, $s1,  1               
/* 01A88 8091D588 3C058092 */  lui     $a1, %hi(D_809260E0)       ## $a1 = 80920000
/* 01A8C 8091D58C 00AD2821 */  addu    $a1, $a1, $t5              
/* 01A90 8091D590 4600418D */  trunc.w.s $f6, $f8                   
/* 01A94 8091D594 84A560E0 */  lh      $a1, %lo(D_809260E0)($a1)  
/* 01A98 8091D598 44073000 */  mfc1    $a3, $f6                   
/* 01A9C 8091D59C 00006012 */  mflo    $t4                        
/* 01AA0 8091D5A0 00052A00 */  sll     $a1, $a1,  8               
/* 01AA4 8091D5A4 00052C00 */  sll     $a1, $a1, 16               
/* 01AA8 8091D5A8 024C2021 */  addu    $a0, $s2, $t4              
/* 01AAC 8091D5AC 00073C00 */  sll     $a3, $a3, 16               
/* 01AB0 8091D5B0 00073C03 */  sra     $a3, $a3, 16               
/* 01AB4 8091D5B4 24840C70 */  addiu   $a0, $a0, 0x0C70           ## $a0 = 00000C70
/* 01AB8 8091D5B8 00052C03 */  sra     $a1, $a1, 16               
/* 01ABC 8091D5BC 4600810D */  trunc.w.s $f4, $f16                  
/* 01AC0 8091D5C0 44062000 */  mfc1    $a2, $f4                   
/* 01AC4 8091D5C4 00000000 */  nop
/* 01AC8 8091D5C8 00063400 */  sll     $a2, $a2, 16               
/* 01ACC 8091D5CC 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01AD0 8091D5D0 00063403 */  sra     $a2, $a2, 16               
/* 01AD4 8091D5D4 1000001B */  beq     $zero, $zero, .L8091D644   
/* 01AD8 8091D5D8 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000003
/* 01ADC 8091D5DC C64A0D64 */  lwc1    $f10, 0x0D64($s2)          ## 00000D64
.L8091D5E0:
/* 01AE0 8091D5E0 02330019 */  multu   $s1, $s3                   
/* 01AE4 8091D5E4 C6440D68 */  lwc1    $f4, 0x0D68($s2)           ## 00000D68
/* 01AE8 8091D5E8 460AE483 */  div.s   $f18, $f28, $f10           
/* 01AEC 8091D5EC 0011C040 */  sll     $t8, $s1,  1               
/* 01AF0 8091D5F0 3C058092 */  lui     $a1, %hi(D_809260E0)       ## $a1 = 80920000
/* 01AF4 8091D5F4 00B82821 */  addu    $a1, $a1, $t8              
/* 01AF8 8091D5F8 4600220D */  trunc.w.s $f8, $f4                   
/* 01AFC 8091D5FC 84A560E0 */  lh      $a1, %lo(D_809260E0)($a1)  
/* 01B00 8091D600 44074000 */  mfc1    $a3, $f8                   
/* 01B04 8091D604 00050823 */  subu    $at, $zero, $a1            
/* 01B08 8091D608 00202825 */  or      $a1, $at, $zero            ## $a1 = 00000000
/* 01B0C 8091D60C 00007012 */  mflo    $t6                        
/* 01B10 8091D610 024E2021 */  addu    $a0, $s2, $t6              
/* 01B14 8091D614 00052E00 */  sll     $a1, $a1, 24               
/* 01B18 8091D618 00073C00 */  sll     $a3, $a3, 16               
/* 01B1C 8091D61C 00073C03 */  sra     $a3, $a3, 16               
/* 01B20 8091D620 00052C03 */  sra     $a1, $a1, 16               
/* 01B24 8091D624 24840C70 */  addiu   $a0, $a0, 0x0C70           ## $a0 = 00000C70
/* 01B28 8091D628 4600940D */  trunc.w.s $f16, $f18                 
/* 01B2C 8091D62C 44068000 */  mfc1    $a2, $f16                  
/* 01B30 8091D630 00000000 */  nop
/* 01B34 8091D634 00063400 */  sll     $a2, $a2, 16               
/* 01B38 8091D638 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01B3C 8091D63C 00063403 */  sra     $a2, $a2, 16               
/* 01B40 8091D640 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000004
.L8091D644:
/* 01B44 8091D644 00118C00 */  sll     $s1, $s1, 16               
/* 01B48 8091D648 00118C03 */  sra     $s1, $s1, 16               
/* 01B4C 8091D64C 2A210029 */  slti    $at, $s1, 0x0029           
/* 01B50 8091D650 5420FF8C */  bnel    $at, $zero, .L8091D484     
/* 01B54 8091D654 8649017E */  lh      $t1, 0x017E($s2)           ## 0000017E
/* 01B58 8091D658 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 01B5C 8091D65C 4406E000 */  mfc1    $a2, $f28                  
/* 01B60 8091D660 3C073C23 */  lui     $a3, 0x3C23                ## $a3 = 3C230000
/* 01B64 8091D664 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3C23D70A
/* 01B68 8091D668 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 01B6C 8091D66C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01B70 8091D670 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 01B74 8091D674 4406E000 */  mfc1    $a2, $f28                  
/* 01B78 8091D678 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 01B7C 8091D67C 3C054470 */  lui     $a1, 0x4470                ## $a1 = 44700000
/* 01B80 8091D680 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01B84 8091D684 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 01B88 8091D688 864A017E */  lh      $t2, 0x017E($s2)           ## 0000017E
/* 01B8C 8091D68C 264400B6 */  addiu   $a0, $s2, 0x00B6           ## $a0 = 000000B6
/* 01B90 8091D690 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 01B94 8091D694 2941001E */  slti    $at, $t2, 0x001E           
/* 01B98 8091D698 14200003 */  bne     $at, $zero, .L8091D6A8     
/* 01B9C 8091D69C 240700C8 */  addiu   $a3, $zero, 0x00C8         ## $a3 = 000000C8
/* 01BA0 8091D6A0 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01BA4 8091D6A4 8645008A */  lh      $a1, 0x008A($s2)           ## 0000008A
.L8091D6A8:
/* 01BA8 8091D6A8 86590158 */  lh      $t9, 0x0158($s2)           ## 00000158
/* 01BAC 8091D6AC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01BB0 8091D6B0 5721003A */  bnel    $t9, $at, .L8091D79C       
/* 01BB4 8091D6B4 86490158 */  lh      $t1, 0x0158($s2)           ## 00000158
/* 01BB8 8091D6B8 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
/* 01BBC 8091D6BC 28410005 */  slti    $at, $v0, 0x0005           
/* 01BC0 8091D6C0 5420002B */  bnel    $at, $zero, .L8091D770     
/* 01BC4 8091D6C4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01BC8 8091D6C8 924C01D2 */  lbu     $t4, 0x01D2($s2)           ## 000001D2
/* 01BCC 8091D6CC 51800028 */  beql    $t4, $zero, .L8091D770     
/* 01BD0 8091D6D0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01BD4 8091D6D4 8EAD0118 */  lw      $t5, 0x0118($s5)           ## 00000118
/* 01BD8 8091D6D8 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01BDC 8091D6DC 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01BE0 8091D6E0 15A00022 */  bne     $t5, $zero, .L8091D76C     
/* 01BE4 8091D6E4 0324C821 */  addu    $t9, $t9, $a0              
/* 01BE8 8091D6E8 8F391D4C */  lw      $t9, 0x1D4C($t9)           ## 00011D4C
/* 01BEC 8091D6EC 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 01BF0 8091D6F0 0320F809 */  jalr    $ra, $t9                   
/* 01BF4 8091D6F4 00000000 */  nop
/* 01BF8 8091D6F8 10400013 */  beq     $v0, $zero, .L8091D748     
/* 01BFC 8091D6FC 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 01C00 8091D700 AEB20118 */  sw      $s2, 0x0118($s5)           ## 00000118
/* 01C04 8091D704 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 01C08 8091D708 A64B0158 */  sh      $t3, 0x0158($s2)           ## 00000158
/* 01C0C 8091D70C 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 01C10 8091D710 0C01E245 */  jal     func_80078914              
/* 01C14 8091D714 240538F3 */  addiu   $a1, $zero, 0x38F3         ## $a1 = 000038F3
/* 01C18 8091D718 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 01C1C 8091D71C 3C0E8013 */  lui     $t6, 0x8013                ## $t6 = 80130000
/* 01C20 8091D720 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 01C24 8091D724 25CE33E8 */  addiu   $t6, $t6, 0x33E8           ## $t6 = 801333E8
/* 01C28 8091D728 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 01C2C 8091D72C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01C30 8091D730 24046805 */  addiu   $a0, $zero, 0x6805         ## $a0 = 00006805
/* 01C34 8091D734 26A500E4 */  addiu   $a1, $s5, 0x00E4           ## $a1 = 000000E4
/* 01C38 8091D738 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01C3C 8091D73C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01C40 8091D740 1000000A */  beq     $zero, $zero, .L8091D76C   
/* 01C44 8091D744 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
.L8091D748:
/* 01C48 8091D748 A658017E */  sh      $t8, 0x017E($s2)           ## 0000017E
/* 01C4C 8091D74C A6400158 */  sh      $zero, 0x0158($s2)         ## 00000158
/* 01C50 8091D750 E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
/* 01C54 8091D754 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 01C58 8091D758 E65E0198 */  swc1    $f30, 0x0198($s2)          ## 00000198
/* 01C5C 8091D75C E65E018C */  swc1    $f30, 0x018C($s2)          ## 0000018C
/* 01C60 8091D760 E65E019C */  swc1    $f30, 0x019C($s2)          ## 0000019C
/* 01C64 8091D764 E65E0190 */  swc1    $f30, 0x0190($s2)          ## 00000190
/* 01C68 8091D768 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
.L8091D76C:
/* 01C6C 8091D76C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
.L8091D770:
/* 01C70 8091D770 14410009 */  bne     $v0, $at, .L8091D798       
/* 01C74 8091D774 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 01C78 8091D778 A6400158 */  sh      $zero, 0x0158($s2)         ## 00000158
/* 01C7C 8091D77C E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
/* 01C80 8091D780 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 01C84 8091D784 E65E0198 */  swc1    $f30, 0x0198($s2)          ## 00000198
/* 01C88 8091D788 E65E018C */  swc1    $f30, 0x018C($s2)          ## 0000018C
/* 01C8C 8091D78C E65E019C */  swc1    $f30, 0x019C($s2)          ## 0000019C
/* 01C90 8091D790 E65E0190 */  swc1    $f30, 0x0190($s2)          ## 00000190
/* 01C94 8091D794 A648017E */  sh      $t0, 0x017E($s2)           ## 0000017E
.L8091D798:
/* 01C98 8091D798 86490158 */  lh      $t1, 0x0158($s2)           ## 00000158
.L8091D79C:
/* 01C9C 8091D79C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 01CA0 8091D7A0 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 01CA4 8091D7A4 1521005A */  bne     $t1, $at, .L8091D910       
/* 01CA8 8091D7A8 26A40024 */  addiu   $a0, $s5, 0x0024           ## $a0 = 00000024
/* 01CAC 8091D7AC A6AA0850 */  sh      $t2, 0x0850($s5)           ## 00000850
/* 01CB0 8091D7B0 E6BE0060 */  swc1    $f30, 0x0060($s5)          ## 00000060
/* 01CB4 8091D7B4 E6BE0068 */  swc1    $f30, 0x0068($s5)          ## 00000068
/* 01CB8 8091D7B8 8E4501E4 */  lw      $a1, 0x01E4($s2)           ## 000001E4
/* 01CBC 8091D7BC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CC0 8091D7C0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01CC4 8091D7C4 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01CC8 8091D7C8 26A40028 */  addiu   $a0, $s5, 0x0028           ## $a0 = 00000028
/* 01CCC 8091D7CC 8E4501E8 */  lw      $a1, 0x01E8($s2)           ## 000001E8
/* 01CD0 8091D7D0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CD4 8091D7D4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01CD8 8091D7D8 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01CDC 8091D7DC 26A4002C */  addiu   $a0, $s5, 0x002C           ## $a0 = 0000002C
/* 01CE0 8091D7E0 8E4501EC */  lw      $a1, 0x01EC($s2)           ## 000001EC
/* 01CE4 8091D7E4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01CE8 8091D7E8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01CEC 8091D7EC 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01CF0 8091D7F0 26A400B4 */  addiu   $a0, $s5, 0x00B4           ## $a0 = 000000B4
/* 01CF4 8091D7F4 864501F0 */  lh      $a1, 0x01F0($s2)           ## 000001F0
/* 01CF8 8091D7F8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01CFC 8091D7FC 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01D00 8091D800 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01D04 8091D804 26A400B6 */  addiu   $a0, $s5, 0x00B6           ## $a0 = 000000B6
/* 01D08 8091D808 864501F2 */  lh      $a1, 0x01F2($s2)           ## 000001F2
/* 01D0C 8091D80C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01D10 8091D810 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01D14 8091D814 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01D18 8091D818 26A400B8 */  addiu   $a0, $s5, 0x00B8           ## $a0 = 000000B8
/* 01D1C 8091D81C 864501F4 */  lh      $a1, 0x01F4($s2)           ## 000001F4
/* 01D20 8091D820 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01D24 8091D824 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01D28 8091D828 240707D0 */  addiu   $a3, $zero, 0x07D0         ## $a3 = 000007D0
/* 01D2C 8091D82C 864C017E */  lh      $t4, 0x017E($s2)           ## 0000017E
/* 01D30 8091D830 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01D34 8091D834 15800036 */  bne     $t4, $zero, .L8091D910     
/* 01D38 8091D838 00000000 */  nop
/* 01D3C 8091D83C 0C030129 */  jal     Gameplay_GetCamera              
/* 01D40 8091D840 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01D44 8091D844 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 01D48 8091D848 240F0096 */  addiu   $t7, $zero, 0x0096         ## $t7 = 00000096
/* 01D4C 8091D84C 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 01D50 8091D850 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01D54 8091D854 A64D0158 */  sh      $t5, 0x0158($s2)           ## 00000158
/* 01D58 8091D858 E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
/* 01D5C 8091D85C E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 01D60 8091D860 E65E0198 */  swc1    $f30, 0x0198($s2)          ## 00000198
/* 01D64 8091D864 E65E018C */  swc1    $f30, 0x018C($s2)          ## 0000018C
/* 01D68 8091D868 E65E019C */  swc1    $f30, 0x019C($s2)          ## 0000019C
/* 01D6C 8091D86C E65E0190 */  swc1    $f30, 0x0190($s2)          ## 00000190
/* 01D70 8091D870 A64F017E */  sh      $t7, 0x017E($s2)           ## 0000017E
/* 01D74 8091D874 A6400178 */  sh      $zero, 0x0178($s2)         ## 00000178
/* 01D78 8091D878 0C03D2FA */  jal     func_800F4BE8              
/* 01D7C 8091D87C A659017C */  sh      $t9, 0x017C($s2)           ## 0000017C
/* 01D80 8091D880 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01D84 8091D884 0C019148 */  jal     func_80064520              
/* 01D88 8091D888 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
/* 01D8C 8091D88C 0C03008C */  jal     Gameplay_CreateSubCamera              
/* 01D90 8091D890 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01D94 8091D894 A6420F62 */  sh      $v0, 0x0F62($s2)           ## 00000F62
/* 01D98 8091D898 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01D9C 8091D89C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01DA0 8091D8A0 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 01DA4 8091D8A4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01DA8 8091D8A8 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01DAC 8091D8AC 86450F62 */  lh      $a1, 0x0F62($s2)           ## 00000F62
/* 01DB0 8091D8B0 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 01DB4 8091D8B4 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01DB8 8091D8B8 8E18005C */  lw      $t8, 0x005C($s0)           ## 0000005C
/* 01DBC 8091D8BC C64A0024 */  lwc1    $f10, 0x0024($s2)          ## 00000024
/* 01DC0 8091D8C0 C650002C */  lwc1    $f16, 0x002C($s2)          ## 0000002C
/* 01DC4 8091D8C4 AE580F68 */  sw      $t8, 0x0F68($s2)           ## 00000F68
/* 01DC8 8091D8C8 8E0E0060 */  lw      $t6, 0x0060($s0)           ## 00000060
/* 01DCC 8091D8CC C6460F68 */  lwc1    $f6, 0x0F68($s2)           ## 00000F68
/* 01DD0 8091D8D0 AE4E0F6C */  sw      $t6, 0x0F6C($s2)           ## 00000F6C
/* 01DD4 8091D8D4 8E180064 */  lw      $t8, 0x0064($s0)           ## 00000064
/* 01DD8 8091D8D8 460A3301 */  sub.s   $f12, $f6, $f10            
/* 01DDC 8091D8DC AE580F70 */  sw      $t8, 0x0F70($s2)           ## 00000F70
/* 01DE0 8091D8E0 8E090050 */  lw      $t1, 0x0050($s0)           ## 00000050
/* 01DE4 8091D8E4 C6520F70 */  lwc1    $f18, 0x0F70($s2)          ## 00000F70
/* 01DE8 8091D8E8 AE490F74 */  sw      $t1, 0x0F74($s2)           ## 00000F74
/* 01DEC 8091D8EC 8E080054 */  lw      $t0, 0x0054($s0)           ## 00000054
/* 01DF0 8091D8F0 46109381 */  sub.s   $f14, $f18, $f16           
/* 01DF4 8091D8F4 AE480F78 */  sw      $t0, 0x0F78($s2)           ## 00000F78
/* 01DF8 8091D8F8 8E090058 */  lw      $t1, 0x0058($s0)           ## 00000058
/* 01DFC 8091D8FC 0C03F494 */  jal     Math_atan2f              
/* 01E00 8091D900 AE490F7C */  sw      $t1, 0x0F7C($s2)           ## 00000F7C
/* 01E04 8091D904 E6401004 */  swc1    $f0, 0x1004($s2)           ## 00001004
/* 01E08 8091D908 10000003 */  beq     $zero, $zero, .L8091D918   
/* 01E0C 8091D90C E65E1008 */  swc1    $f30, 0x1008($s2)          ## 00001008
.L8091D910:
/* 01E10 8091D910 10000601 */  beq     $zero, $zero, .L8091F118   
/* 01E14 8091D914 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091D918
.L8091D918:
/* 01E18 8091D918 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
/* 01E1C 8091D91C 264A0D64 */  addiu   $t2, $s2, 0x0D64           ## $t2 = 00000D64
/* 01E20 8091D920 264C0D68 */  addiu   $t4, $s2, 0x0D68           ## $t4 = 00000D68
/* 01E24 8091D924 2401008A */  addiu   $at, $zero, 0x008A         ## $at = 0000008A
/* 01E28 8091D928 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 01E2C 8091D92C AFAC0084 */  sw      $t4, 0x0084($sp)           
/* 01E30 8091D930 AFAA0088 */  sw      $t2, 0x0088($sp)           
/* 01E34 8091D934 14410006 */  bne     $v0, $at, .L8091D950       
/* 01E38 8091D938 265001C8 */  addiu   $s0, $s2, 0x01C8           ## $s0 = 000001C8
/* 01E3C 8091D93C 0C02CE10 */  jal     func_800B3840              ## letterbox_target_addr
/* 01E40 8091D940 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 01E44 8091D944 0C020978 */  jal     Interface_ChangeAlpha              
/* 01E48 8091D948 2404000B */  addiu   $a0, $zero, 0x000B         ## $a0 = 0000000B
/* 01E4C 8091D94C 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
.L8091D950:
/* 01E50 8091D950 304D0007 */  andi    $t5, $v0, 0x0007           ## $t5 = 00000000
/* 01E54 8091D954 15A00007 */  bne     $t5, $zero, .L8091D974     
/* 01E58 8091D958 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 01E5C 8091D95C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01E60 8091D960 0324C821 */  addu    $t9, $t9, $a0              
/* 01E64 8091D964 8F391D58 */  lw      $t9, 0x1D58($t9)           ## 00011D58
/* 01E68 8091D968 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 01E6C 8091D96C 0320F809 */  jalr    $ra, $t9                   
/* 01E70 8091D970 00000000 */  nop
.L8091D974:
/* 01E74 8091D974 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01E78 8091D978 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 01E7C 8091D97C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 01E80 8091D980 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01E84 8091D984 02002025 */  or      $a0, $s0, $zero            ## $a0 = 000001C8
/* 01E88 8091D988 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01E8C 8091D98C 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 01E90 8091D990 864B0CC6 */  lh      $t3, 0x0CC6($s2)           ## 00000CC6
/* 01E94 8091D994 8FAE01BC */  lw      $t6, 0x01BC($sp)           
/* 01E98 8091D998 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 01E9C 8091D99C A7AB01B4 */  sh      $t3, 0x01B4($sp)           
/* 01EA0 8091D9A0 95C20020 */  lhu     $v0, 0x0020($t6)           ## 00000020
/* 01EA4 8091D9A4 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 01EA8 8091D9A8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 01EAC 8091D9AC 0041C027 */  nor     $t8, $v0, $at              
/* 01EB0 8091D9B0 13000004 */  beq     $t8, $zero, .L8091D9C4     
/* 01EB4 8091D9B4 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 01EB8 8091D9B8 00414027 */  nor     $t0, $v0, $at              
/* 01EBC 8091D9BC 55000005 */  bnel    $t0, $zero, .L8091D9D4     
/* 01EC0 8091D9C0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
.L8091D9C4:
/* 01EC4 8091D9C4 86490178 */  lh      $t1, 0x0178($s2)           ## 00000178
/* 01EC8 8091D9C8 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 01ECC 8091D9CC A64A0178 */  sh      $t2, 0x0178($s2)           ## 00000178
/* 01ED0 8091D9D0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
.L8091D9D4:
/* 01ED4 8091D9D4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 01ED8 8091D9D8 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 01EDC 8091D9DC 2A210014 */  slti    $at, $s1, 0x0014           
.L8091D9E0:
/* 01EE0 8091D9E0 50200067 */  beql    $at, $zero, .L8091DB80     
/* 01EE4 8091D9E4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 01EE8 8091D9E8 C6440188 */  lwc1    $f4, 0x0188($s2)           ## 00000188
/* 01EEC 8091D9EC 864E016E */  lh      $t6, 0x016E($s2)           ## 0000016E
/* 01EF0 8091D9F0 4600220D */  trunc.w.s $f8, $f4                   
/* 01EF4 8091D9F4 440D4000 */  mfc1    $t5, $f8                   
/* 01EF8 8091D9F8 00000000 */  nop
/* 01EFC 8091D9FC 000D7C00 */  sll     $t7, $t5, 16               
/* 01F00 8091DA00 000FCC03 */  sra     $t9, $t7, 16               
/* 01F04 8091DA04 03310019 */  multu   $t9, $s1                   
/* 01F08 8091DA08 00005812 */  mflo    $t3                        
/* 01F0C 8091DA0C 016E2021 */  addu    $a0, $t3, $t6              
/* 01F10 8091DA10 00042400 */  sll     $a0, $a0, 16               
/* 01F14 8091DA14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01F18 8091DA18 00042403 */  sra     $a0, $a0, 16               
/* 01F1C 8091DA1C 44913000 */  mtc1    $s1, $f6                   ## $f6 = 0.00
/* 01F20 8091DA20 C6480194 */  lwc1    $f8, 0x0194($s2)           ## 00000194
/* 01F24 8091DA24 3C018092 */  lui     $at, %hi(D_80926C38)       ## $at = 80920000
/* 01F28 8091DA28 468032A0 */  cvt.s.w $f10, $f6                  
/* 01F2C 8091DA2C C4326C38 */  lwc1    $f18, %lo(D_80926C38)($at) 
/* 01F30 8091DA30 864D0170 */  lh      $t5, 0x0170($s2)           ## 00000170
/* 01F34 8091DA34 C650018C */  lwc1    $f16, 0x018C($s2)          ## 0000018C
/* 01F38 8091DA38 4600418D */  trunc.w.s $f6, $f8                   
/* 01F3C 8091DA3C 46125502 */  mul.s   $f20, $f10, $f18           
/* 01F40 8091DA40 44083000 */  mfc1    $t0, $f6                   
/* 01F44 8091DA44 00000000 */  nop
/* 01F48 8091DA48 00084C00 */  sll     $t1, $t0, 16               
/* 01F4C 8091DA4C 00095403 */  sra     $t2, $t1, 16               
/* 01F50 8091DA50 01510019 */  multu   $t2, $s1                   
/* 01F54 8091DA54 4600A102 */  mul.s   $f4, $f20, $f0             
/* 01F58 8091DA58 00000000 */  nop
/* 01F5C 8091DA5C 46048582 */  mul.s   $f22, $f16, $f4            
/* 01F60 8091DA60 00006012 */  mflo    $t4                        
/* 01F64 8091DA64 018D2021 */  addu    $a0, $t4, $t5              
/* 01F68 8091DA68 00042400 */  sll     $a0, $a0, 16               
/* 01F6C 8091DA6C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01F70 8091DA70 00042403 */  sra     $a0, $a0, 16               
/* 01F74 8091DA74 24190028 */  addiu   $t9, $zero, 0x0028         ## $t9 = 00000028
/* 01F78 8091DA78 4600A482 */  mul.s   $f18, $f20, $f0            
/* 01F7C 8091DA7C 03315823 */  subu    $t3, $t9, $s1              
/* 01F80 8091DA80 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 01F84 8091DA84 C64A0198 */  lwc1    $f10, 0x0198($s2)          ## 00000198
/* 01F88 8091DA88 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01F8C 8091DA8C 44814000 */  mtc1    $at, $f8                   ## $f8 = 25.00
/* 01F90 8091DA90 46808120 */  cvt.s.w $f4, $f16                  
/* 01F94 8091DA94 46125602 */  mul.s   $f24, $f10, $f18           
/* 01F98 8091DA98 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01F9C 8091DA9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 01FA0 8091DAA0 02340019 */  multu   $s1, $s4                   
/* 01FA4 8091DAA4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01FA8 8091DAA8 46082182 */  mul.s   $f6, $f4, $f8              
/* 01FAC 8091DAAC C64401A0 */  lwc1    $f4, 0x01A0($s2)           ## 000001A0
/* 01FB0 8091DAB0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01FB4 8091DAB4 00C03821 */  addu    $a3, $a2, $zero            
/* 01FB8 8091DAB8 460A3483 */  div.s   $f18, $f6, $f10            
/* 01FBC 8091DABC 00007812 */  mflo    $t7                        
/* 01FC0 8091DAC0 024F2021 */  addu    $a0, $s2, $t7              
/* 01FC4 8091DAC4 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 01FC8 8091DAC8 461A9400 */  add.s   $f16, $f18, $f26           
/* 01FCC 8091DACC 46102202 */  mul.s   $f8, $f4, $f16             
/* 01FD0 8091DAD0 44054000 */  mfc1    $a1, $f8                   
/* 01FD4 8091DAD4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01FD8 8091DAD8 00000000 */  nop
/* 01FDC 8091DADC C64A0D64 */  lwc1    $f10, 0x0D64($s2)          ## 00000D64
/* 01FE0 8091DAE0 02330019 */  multu   $s1, $s3                   
/* 01FE4 8091DAE4 C6500D68 */  lwc1    $f16, 0x0D68($s2)          ## 00000D68
/* 01FE8 8091DAE8 460AE483 */  div.s   $f18, $f28, $f10           
/* 01FEC 8091DAEC 4600B18D */  trunc.w.s $f6, $f22                  
/* 01FF0 8091DAF0 4600820D */  trunc.w.s $f8, $f16                  
/* 01FF4 8091DAF4 44053000 */  mfc1    $a1, $f6                   
/* 01FF8 8091DAF8 00007012 */  mflo    $t6                        
/* 01FFC 8091DAFC 024E8021 */  addu    $s0, $s2, $t6              
/* 02000 8091DB00 44074000 */  mfc1    $a3, $f8                   
/* 02004 8091DB04 00052C00 */  sll     $a1, $a1, 16               
/* 02008 8091DB08 00052C03 */  sra     $a1, $a1, 16               
/* 0200C 8091DB0C 00073C00 */  sll     $a3, $a3, 16               
/* 02010 8091DB10 00073C03 */  sra     $a3, $a3, 16               
/* 02014 8091DB14 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 00000E34
/* 02018 8091DB18 4600910D */  trunc.w.s $f4, $f18                  
/* 0201C 8091DB1C 44062000 */  mfc1    $a2, $f4                   
/* 02020 8091DB20 00000000 */  nop
/* 02024 8091DB24 00063400 */  sll     $a2, $a2, 16               
/* 02028 8091DB28 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0202C 8091DB2C 00063403 */  sra     $a2, $a2, 16               
/* 02030 8091DB30 C64A0D64 */  lwc1    $f10, 0x0D64($s2)          ## 00000D64
/* 02034 8091DB34 C6500D68 */  lwc1    $f16, 0x0D68($s2)          ## 00000D68
/* 02038 8091DB38 4600C18D */  trunc.w.s $f6, $f24                  
/* 0203C 8091DB3C 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 00000E38
/* 02040 8091DB40 460AE483 */  div.s   $f18, $f28, $f10           
/* 02044 8091DB44 44053000 */  mfc1    $a1, $f6                   
/* 02048 8091DB48 4600820D */  trunc.w.s $f8, $f16                  
/* 0204C 8091DB4C 00052C00 */  sll     $a1, $a1, 16               
/* 02050 8091DB50 00052C03 */  sra     $a1, $a1, 16               
/* 02054 8091DB54 44074000 */  mfc1    $a3, $f8                   
/* 02058 8091DB58 00000000 */  nop
/* 0205C 8091DB5C 00073C00 */  sll     $a3, $a3, 16               
/* 02060 8091DB60 00073C03 */  sra     $a3, $a3, 16               
/* 02064 8091DB64 4600910D */  trunc.w.s $f4, $f18                  
/* 02068 8091DB68 44062000 */  mfc1    $a2, $f4                   
/* 0206C 8091DB6C 00000000 */  nop
/* 02070 8091DB70 00063400 */  sll     $a2, $a2, 16               
/* 02074 8091DB74 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02078 8091DB78 00063403 */  sra     $a2, $a2, 16               
/* 0207C 8091DB7C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L8091DB80:
/* 02080 8091DB80 00118C00 */  sll     $s1, $s1, 16               
/* 02084 8091DB84 00118C03 */  sra     $s1, $s1, 16               
/* 02088 8091DB88 2A210029 */  slti    $at, $s1, 0x0029           
/* 0208C 8091DB8C 5420FF94 */  bnel    $at, $zero, .L8091D9E0     
/* 02090 8091DB90 2A210014 */  slti    $at, $s1, 0x0014           
/* 02094 8091DB94 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 02098 8091DB98 A6AF0850 */  sh      $t7, 0x0850($s5)           ## 00000850
/* 0209C 8091DB9C C64601E4 */  lwc1    $f6, 0x01E4($s2)           ## 000001E4
/* 020A0 8091DBA0 3C018092 */  lui     $at, %hi(D_80926C3C)       ## $at = 80920000
/* 020A4 8091DBA4 4405E000 */  mfc1    $a1, $f28                  
/* 020A8 8091DBA8 E6A60024 */  swc1    $f6, 0x0024($s5)           ## 00000024
/* 020AC 8091DBAC C64A01E8 */  lwc1    $f10, 0x01E8($s2)          ## 000001E8
/* 020B0 8091DBB0 264401A0 */  addiu   $a0, $s2, 0x01A0           ## $a0 = 000001A0
/* 020B4 8091DBB4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 020B8 8091DBB8 E6AA0028 */  swc1    $f10, 0x0028($s5)          ## 00000028
/* 020BC 8091DBBC C65201EC */  lwc1    $f18, 0x01EC($s2)          ## 000001EC
/* 020C0 8091DBC0 E6B2002C */  swc1    $f18, 0x002C($s5)          ## 0000002C
/* 020C4 8091DBC4 864201F0 */  lh      $v0, 0x01F0($s2)           ## 000001F0
/* 020C8 8091DBC8 A6A200B4 */  sh      $v0, 0x00B4($s5)           ## 000000B4
/* 020CC 8091DBCC A6A20030 */  sh      $v0, 0x0030($s5)           ## 00000030
/* 020D0 8091DBD0 864201F2 */  lh      $v0, 0x01F2($s2)           ## 000001F2
/* 020D4 8091DBD4 A6A200B6 */  sh      $v0, 0x00B6($s5)           ## 000000B6
/* 020D8 8091DBD8 A6A20032 */  sh      $v0, 0x0032($s5)           ## 00000032
/* 020DC 8091DBDC 864201F4 */  lh      $v0, 0x01F4($s2)           ## 000001F4
/* 020E0 8091DBE0 A6A200B8 */  sh      $v0, 0x00B8($s5)           ## 000000B8
/* 020E4 8091DBE4 C4366C3C */  lwc1    $f22, %lo(D_80926C3C)($at) 
/* 020E8 8091DBE8 E6BE0060 */  swc1    $f30, 0x0060($s5)          ## 00000060
/* 020EC 8091DBEC E6BE0068 */  swc1    $f30, 0x0068($s5)          ## 00000068
/* 020F0 8091DBF0 4407B000 */  mfc1    $a3, $f22                  
/* 020F4 8091DBF4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 020F8 8091DBF8 A6A20034 */  sh      $v0, 0x0034($s5)           ## 00000034
/* 020FC 8091DBFC 4406E000 */  mfc1    $a2, $f28                  
/* 02100 8091DC00 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 02104 8091DC04 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 02108 8091DC08 8FA40088 */  lw      $a0, 0x0088($sp)           
/* 0210C 8091DC0C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02110 8091DC10 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 02114 8091DC14 4406E000 */  mfc1    $a2, $f28                  
/* 02118 8091DC18 8FA40084 */  lw      $a0, 0x0084($sp)           
/* 0211C 8091DC1C 3C0543F0 */  lui     $a1, 0x43F0                ## $a1 = 43F00000
/* 02120 8091DC20 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02124 8091DC24 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 02128 8091DC28 3C018092 */  lui     $at, %hi(D_80926C40)       ## $at = 80920000
/* 0212C 8091DC2C C4346C40 */  lwc1    $f20, %lo(D_80926C40)($at) 
/* 02130 8091DC30 3C018092 */  lui     $at, %hi(D_80926C44)       ## $at = 80920000
/* 02134 8091DC34 C4386C44 */  lwc1    $f24, %lo(D_80926C44)($at) 
/* 02138 8091DC38 4405A000 */  mfc1    $a1, $f20                  
/* 0213C 8091DC3C 26440D6C */  addiu   $a0, $s2, 0x0D6C           ## $a0 = 00000D6C
/* 02140 8091DC40 4407C000 */  mfc1    $a3, $f24                  
/* 02144 8091DC44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02148 8091DC48 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0214C 8091DC4C 86590178 */  lh      $t9, 0x0178($s2)           ## 00000178
/* 02150 8091DC50 2B210028 */  slti    $at, $t9, 0x0028           
/* 02154 8091DC54 50200005 */  beql    $at, $zero, .L8091DC6C     
/* 02158 8091DC58 86420CC6 */  lh      $v0, 0x0CC6($s2)           ## 00000CC6
/* 0215C 8091DC5C 864B017E */  lh      $t3, 0x017E($s2)           ## 0000017E
/* 02160 8091DC60 55600023 */  bnel    $t3, $zero, .L8091DCF0     
/* 02164 8091DC64 864F0F62 */  lh      $t7, 0x0F62($s2)           ## 00000F62
/* 02168 8091DC68 86420CC6 */  lh      $v0, 0x0CC6($s2)           ## 00000CC6
.L8091DC6C:
/* 0216C 8091DC6C 87AE01B4 */  lh      $t6, 0x01B4($sp)           
/* 02170 8091DC70 0443001F */  bgezl   $v0, .L8091DCF0            
/* 02174 8091DC74 864F0F62 */  lh      $t7, 0x0F62($s2)           ## 00000F62
/* 02178 8091DC78 05C0001C */  bltz    $t6, .L8091DCEC            
/* 0217C 8091DC7C 24180065 */  addiu   $t8, $zero, 0x0065         ## $t8 = 00000065
/* 02180 8091DC80 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 02184 8091DC84 A6580158 */  sh      $t8, 0x0158($s2)           ## 00000158
/* 02188 8091DC88 A6480160 */  sh      $t0, 0x0160($s2)           ## 00000160
/* 0218C 8091DC8C 8EA90118 */  lw      $t1, 0x0118($s5)           ## 00000118
/* 02190 8091DC90 240A0065 */  addiu   $t2, $zero, 0x0065         ## $t2 = 00000065
/* 02194 8091DC94 56490014 */  bnel    $s2, $t1, .L8091DCE8       
/* 02198 8091DC98 240D004B */  addiu   $t5, $zero, 0x004B         ## $t5 = 0000004B
/* 0219C 8091DC9C A6AA0850 */  sh      $t2, 0x0850($s5)           ## 00000850
/* 021A0 8091DCA0 AEA00118 */  sw      $zero, 0x0118($s5)         ## 00000118
/* 021A4 8091DCA4 A2A00444 */  sb      $zero, 0x0444($s5)         ## 00000444
/* 021A8 8091DCA8 864C017E */  lh      $t4, 0x017E($s2)           ## 0000017E
/* 021AC 8091DCAC 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 021B0 8091DCB0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 021B4 8091DCB4 1580000B */  bne     $t4, $zero, .L8091DCE4     
/* 021B8 8091DCB8 3C0641A0 */  lui     $a2, 0x41A0                ## $a2 = 41A00000
/* 021BC 8091DCBC 864700B6 */  lh      $a3, 0x00B6($s2)           ## 000000B6
/* 021C0 8091DCC0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 021C4 8091DCC4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 021C8 8091DCC8 00E13821 */  addu    $a3, $a3, $at              
/* 021CC 8091DCCC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 021D0 8091DCD0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 021D4 8091DCD4 00073C00 */  sll     $a3, $a3, 16               
/* 021D8 8091DCD8 00073C03 */  sra     $a3, $a3, 16               
/* 021DC 8091DCDC 0C00BDB5 */  jal     func_8002F6D4              
/* 021E0 8091DCE0 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L8091DCE4:
/* 021E4 8091DCE4 240D004B */  addiu   $t5, $zero, 0x004B         ## $t5 = 0000004B
.L8091DCE8:
/* 021E8 8091DCE8 A64D017E */  sh      $t5, 0x017E($s2)           ## 0000017E
.L8091DCEC:
/* 021EC 8091DCEC 864F0F62 */  lh      $t7, 0x0F62($s2)           ## 00000F62
.L8091DCF0:
/* 021F0 8091DCF0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 021F4 8091DCF4 26441008 */  addiu   $a0, $s2, 0x1008           ## $a0 = 00001008
/* 021F8 8091DCF8 11E00049 */  beq     $t7, $zero, .L8091DE20     
/* 021FC 8091DCFC 3C073B03 */  lui     $a3, 0x3B03                ## $a3 = 3B030000
/* 02200 8091DD00 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 02204 8091DD04 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02208 8091DD08 44814000 */  mtc1    $at, $f8                   ## $f8 = 200.00
/* 0220C 8091DD0C E7BE0138 */  swc1    $f30, 0x0138($sp)          
/* 02210 8091DD10 E7B0013C */  swc1    $f16, 0x013C($sp)          
/* 02214 8091DD14 E7A80140 */  swc1    $f8, 0x0140($sp)           
/* 02218 8091DD18 C6461004 */  lwc1    $f6, 0x1004($s2)           ## 00001004
/* 0221C 8091DD1C C64A1008 */  lwc1    $f10, 0x1008($s2)          ## 00001008
/* 02220 8091DD20 4405B000 */  mfc1    $a1, $f22                  
/* 02224 8091DD24 4406E000 */  mfc1    $a2, $f28                  
/* 02228 8091DD28 460A3481 */  sub.s   $f18, $f6, $f10            
/* 0222C 8091DD2C 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3B03126F
/* 02230 8091DD30 26500F68 */  addiu   $s0, $s2, 0x0F68           ## $s0 = 00000F68
/* 02234 8091DD34 26510F74 */  addiu   $s1, $s2, 0x0F74           ## $s1 = 00000F74
/* 02238 8091DD38 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0223C 8091DD3C E6521004 */  swc1    $f18, 0x1004($s2)          ## 00001004
/* 02240 8091DD40 C64C1004 */  lwc1    $f12, 0x1004($s2)          ## 00001004
/* 02244 8091DD44 0C034348 */  jal     Matrix_RotateY              
/* 02248 8091DD48 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0224C 8091DD4C 27A40138 */  addiu   $a0, $sp, 0x0138           ## $a0 = FFFFFF80
/* 02250 8091DD50 0C0346BD */  jal     Matrix_MultVec3f              
/* 02254 8091DD54 27A5012C */  addiu   $a1, $sp, 0x012C           ## $a1 = FFFFFF74
/* 02258 8091DD58 C6440024 */  lwc1    $f4, 0x0024($s2)           ## 00000024
/* 0225C 8091DD5C C7B0012C */  lwc1    $f16, 0x012C($sp)          
/* 02260 8091DD60 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02264 8091DD64 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02268 8091DD68 46102200 */  add.s   $f8, $f4, $f16             
/* 0226C 8091DD6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000F68
/* 02270 8091DD70 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 02274 8091DD74 44054000 */  mfc1    $a1, $f8                   
/* 02278 8091DD78 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0227C 8091DD7C 00000000 */  nop
/* 02280 8091DD80 C6460028 */  lwc1    $f6, 0x0028($s2)           ## 00000028
/* 02284 8091DD84 C7AA0130 */  lwc1    $f10, 0x0130($sp)          
/* 02288 8091DD88 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 0228C 8091DD8C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02290 8091DD90 460A3480 */  add.s   $f18, $f6, $f10            
/* 02294 8091DD94 26440F6C */  addiu   $a0, $s2, 0x0F6C           ## $a0 = 00000F6C
/* 02298 8091DD98 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 0229C 8091DD9C 44059000 */  mfc1    $a1, $f18                  
/* 022A0 8091DDA0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 022A4 8091DDA4 00000000 */  nop
/* 022A8 8091DDA8 C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 022AC 8091DDAC C7B00134 */  lwc1    $f16, 0x0134($sp)          
/* 022B0 8091DDB0 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 022B4 8091DDB4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 022B8 8091DDB8 46102200 */  add.s   $f8, $f4, $f16             
/* 022BC 8091DDBC 26440F70 */  addiu   $a0, $s2, 0x0F70           ## $a0 = 00000F70
/* 022C0 8091DDC0 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 022C4 8091DDC4 44054000 */  mfc1    $a1, $f8                   
/* 022C8 8091DDC8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 022CC 8091DDCC 00000000 */  nop
/* 022D0 8091DDD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000F74
/* 022D4 8091DDD4 8EA50024 */  lw      $a1, 0x0024($s5)           ## 00000024
/* 022D8 8091DDD8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 022DC 8091DDDC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 022E0 8091DDE0 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 022E4 8091DDE4 26440F78 */  addiu   $a0, $s2, 0x0F78           ## $a0 = 00000F78
/* 022E8 8091DDE8 8EA50028 */  lw      $a1, 0x0028($s5)           ## 00000028
/* 022EC 8091DDEC 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 022F0 8091DDF0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 022F4 8091DDF4 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 022F8 8091DDF8 26440F7C */  addiu   $a0, $s2, 0x0F7C           ## $a0 = 00000F7C
/* 022FC 8091DDFC 8EA5002C */  lw      $a1, 0x002C($s5)           ## 0000002C
/* 02300 8091DE00 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02304 8091DE04 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02308 8091DE08 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0230C 8091DE0C 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 02310 8091DE10 86450F62 */  lh      $a1, 0x0F62($s2)           ## 00000F62
/* 02314 8091DE14 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000F74
/* 02318 8091DE18 0C030136 */  jal     func_800C04D8              
/* 0231C 8091DE1C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000F68
.L8091DE20:
/* 02320 8091DE20 100004BD */  beq     $zero, $zero, .L8091F118   
/* 02324 8091DE24 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
.L8091DE28:
/* 02328 8091DE28 0C01E245 */  jal     func_80078914              
/* 0232C 8091DE2C 24052028 */  addiu   $a1, $zero, 0x2028         ## $a1 = 00002028
/* 02330 8091DE30 8EB90118 */  lw      $t9, 0x0118($s5)           ## 00000118
/* 02334 8091DE34 240B0065 */  addiu   $t3, $zero, 0x0065         ## $t3 = 00000065
/* 02338 8091DE38 3C018092 */  lui     $at, %hi(D_80926C48)       ## $at = 80920000
/* 0233C 8091DE3C 16590004 */  bne     $s2, $t9, .L8091DE50       
/* 02340 8091DE40 264401E0 */  addiu   $a0, $s2, 0x01E0           ## $a0 = 000001E0
/* 02344 8091DE44 A6AB0850 */  sh      $t3, 0x0850($s5)           ## 00000850
/* 02348 8091DE48 AEA00118 */  sw      $zero, 0x0118($s5)         ## 00000118
/* 0234C 8091DE4C A2A00444 */  sb      $zero, 0x0444($s5)         ## 00000444
.L8091DE50:
/* 02350 8091DE50 C4366C48 */  lwc1    $f22, %lo(D_80926C48)($at) 
/* 02354 8091DE54 3C053E19 */  lui     $a1, 0x3E19                ## $a1 = 3E190000
/* 02358 8091DE58 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 3E19999A
/* 0235C 8091DE5C 4407B000 */  mfc1    $a3, $f22                  
/* 02360 8091DE60 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02364 8091DE64 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02368 8091DE68 864E0174 */  lh      $t6, 0x0174($s2)           ## 00000174
/* 0236C 8091DE6C 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 02370 8091DE70 8FB501BC */  lw      $s5, 0x01BC($sp)           
/* 02374 8091DE74 29C10029 */  slti    $at, $t6, 0x0029           
/* 02378 8091DE78 10200034 */  beq     $at, $zero, .L8091DF4C     
/* 0237C 8091DE7C 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 02380 8091DE80 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02384 8091DE84 02A1A821 */  addu    $s5, $s5, $at              
/* 02388 8091DE88 3C018092 */  lui     $at, %hi(D_80926C4C)       ## $at = 80920000
/* 0238C 8091DE8C C4346C4C */  lwc1    $f20, %lo(D_80926C4C)($at) 
/* 02390 8091DE90 27B10120 */  addiu   $s1, $sp, 0x0120           ## $s1 = FFFFFF68
/* 02394 8091DE94 86580174 */  lh      $t8, 0x0174($s2)           ## 00000174
.L8091DE98:
/* 02398 8091DE98 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0239C 8091DE9C 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 023A0 8091DEA0 03140019 */  multu   $t8, $s4                   
/* 023A4 8091DEA4 00004012 */  mflo    $t0                        
/* 023A8 8091DEA8 02484821 */  addu    $t1, $s2, $t0              
/* 023AC 8091DEAC 8D2C0D70 */  lw      $t4, 0x0D70($t1)           ## 00000D70
/* 023B0 8091DEB0 AE2C0000 */  sw      $t4, 0x0000($s1)           ## FFFFFF68
/* 023B4 8091DEB4 8D2A0D74 */  lw      $t2, 0x0D74($t1)           ## 00000D74
/* 023B8 8091DEB8 AE2A0004 */  sw      $t2, 0x0004($s1)           ## FFFFFF6C
/* 023BC 8091DEBC 8D2C0D78 */  lw      $t4, 0x0D78($t1)           ## 00000D78
/* 023C0 8091DEC0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 023C4 8091DEC4 AE2C0008 */  sw      $t4, 0x0008($s1)           ## FFFFFF70
/* 023C8 8091DEC8 C7A60120 */  lwc1    $f6, 0x0120($sp)           
/* 023CC 8091DECC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 023D0 8091DED0 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 023D4 8091DED4 46003280 */  add.s   $f10, $f6, $f0             
/* 023D8 8091DED8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 023DC 8091DEDC E7AA0120 */  swc1    $f10, 0x0120($sp)          
/* 023E0 8091DEE0 C7B20124 */  lwc1    $f18, 0x0124($sp)          
/* 023E4 8091DEE4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 023E8 8091DEE8 44816000 */  mtc1    $at, $f12                  ## $f12 = 30.00
/* 023EC 8091DEEC 46009100 */  add.s   $f4, $f18, $f0             
/* 023F0 8091DEF0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 023F4 8091DEF4 E7A40124 */  swc1    $f4, 0x0124($sp)           
/* 023F8 8091DEF8 C7B00128 */  lwc1    $f16, 0x0128($sp)          
/* 023FC 8091DEFC 3C018092 */  lui     $at, %hi(D_80926C50)       ## $at = 80920000
/* 02400 8091DF00 C42C6C50 */  lwc1    $f12, %lo(D_80926C50)($at) 
/* 02404 8091DF04 46008200 */  add.s   $f8, $f16, $f0             
/* 02408 8091DF08 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0240C 8091DF0C E7A80128 */  swc1    $f8, 0x0128($sp)           
/* 02410 8091DF10 46140180 */  add.s   $f6, $f0, $f20             
/* 02414 8091DF14 8EA41E10 */  lw      $a0, 0x1E10($s5)           ## 00001E10
/* 02418 8091DF18 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFF68
/* 0241C 8091DF1C 44063000 */  mfc1    $a2, $f6                   
/* 02420 8091DF20 0C246FCE */  jal     func_8091BF38              
/* 02424 8091DF24 00000000 */  nop
/* 02428 8091DF28 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0242C 8091DF2C 00108400 */  sll     $s0, $s0, 16               
/* 02430 8091DF30 00108403 */  sra     $s0, $s0, 16               
/* 02434 8091DF34 2A01000A */  slti    $at, $s0, 0x000A           
/* 02438 8091DF38 5420FFD7 */  bnel    $at, $zero, .L8091DE98     
/* 0243C 8091DF3C 86580174 */  lh      $t8, 0x0174($s2)           ## 00000174
/* 02440 8091DF40 864D0174 */  lh      $t5, 0x0174($s2)           ## 00000174
/* 02444 8091DF44 25AF0001 */  addiu   $t7, $t5, 0x0001           ## $t7 = 00000001
/* 02448 8091DF48 A64F0174 */  sh      $t7, 0x0174($s2)           ## 00000174
.L8091DF4C:
/* 0244C 8091DF4C 4405F000 */  mfc1    $a1, $f30                  
/* 02450 8091DF50 4406E000 */  mfc1    $a2, $f28                  
/* 02454 8091DF54 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 02458 8091DF58 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 0245C 8091DF5C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02460 8091DF60 264401A8 */  addiu   $a0, $s2, 0x01A8           ## $a0 = 000001A8
/* 02464 8091DF64 86590174 */  lh      $t9, 0x0174($s2)           ## 00000174
/* 02468 8091DF68 240E0065 */  addiu   $t6, $zero, 0x0065         ## $t6 = 00000065
/* 0246C 8091DF6C 2418004B */  addiu   $t8, $zero, 0x004B         ## $t8 = 0000004B
/* 02470 8091DF70 2B210029 */  slti    $at, $t9, 0x0029           
/* 02474 8091DF74 50200005 */  beql    $at, $zero, .L8091DF8C     
/* 02478 8091DF78 A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
/* 0247C 8091DF7C 864B017E */  lh      $t3, 0x017E($s2)           ## 0000017E
/* 02480 8091DF80 1560000F */  bne     $t3, $zero, .L8091DFC0     
/* 02484 8091DF84 00000000 */  nop
/* 02488 8091DF88 A64E0158 */  sh      $t6, 0x0158($s2)           ## 00000158
.L8091DF8C:
/* 0248C 8091DF8C A658017E */  sh      $t8, 0x017E($s2)           ## 0000017E
/* 02490 8091DF90 3C018092 */  lui     $at, %hi(D_80926C54)       ## $at = 80920000
/* 02494 8091DF94 C42A6C54 */  lwc1    $f10, %lo(D_80926C54)($at) 
/* 02498 8091DF98 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 0249C 8091DF9C 44819000 */  mtc1    $at, $f18                  ## $f18 = 50.00
/* 024A0 8091DFA0 3C018092 */  lui     $at, %hi(D_80926C58)       ## $at = 80920000
/* 024A4 8091DFA4 E64A0D64 */  swc1    $f10, 0x0D64($s2)          ## 00000D64
/* 024A8 8091DFA8 E6520D68 */  swc1    $f18, 0x0D68($s2)          ## 00000D68
/* 024AC 8091DFAC C4246C58 */  lwc1    $f4, %lo(D_80926C58)($at)  
/* 024B0 8091DFB0 3C018092 */  lui     $at, %hi(D_80926C5C)       ## $at = 80920000
/* 024B4 8091DFB4 E644018C */  swc1    $f4, 0x018C($s2)           ## 0000018C
/* 024B8 8091DFB8 C4306C5C */  lwc1    $f16, %lo(D_80926C5C)($at) 
/* 024BC 8091DFBC E6500198 */  swc1    $f16, 0x0198($s2)          ## 00000198
.L8091DFC0:
/* 024C0 8091DFC0 10000455 */  beq     $zero, $zero, .L8091F118   
/* 024C4 8091DFC4 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 024C8 8091DFC8 86480F62 */  lh      $t0, 0x0F62($s2)           ## 00000F62
.L8091DFCC:
/* 024CC 8091DFCC 26510F74 */  addiu   $s1, $s2, 0x0F74           ## $s1 = 00000F74
/* 024D0 8091DFD0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000F74
/* 024D4 8091DFD4 11000038 */  beq     $t0, $zero, .L8091E0B8     
/* 024D8 8091DFD8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 024DC 8091DFDC 8EA50024 */  lw      $a1, 0x0024($s5)           ## 00000024
/* 024E0 8091DFE0 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 024E4 8091DFE4 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 024E8 8091DFE8 26440F78 */  addiu   $a0, $s2, 0x0F78           ## $a0 = 00000F78
/* 024EC 8091DFEC 8EA50028 */  lw      $a1, 0x0028($s5)           ## 00000028
/* 024F0 8091DFF0 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 024F4 8091DFF4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 024F8 8091DFF8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 024FC 8091DFFC 26440F7C */  addiu   $a0, $s2, 0x0F7C           ## $a0 = 00000F7C
/* 02500 8091E000 8EA5002C */  lw      $a1, 0x002C($s5)           ## 0000002C
/* 02504 8091E004 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02508 8091E008 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0250C 8091E00C 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 02510 8091E010 26500F68 */  addiu   $s0, $s2, 0x0F68           ## $s0 = 00000F68
/* 02514 8091E014 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000F68
/* 02518 8091E018 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 0251C 8091E01C 86450F62 */  lh      $a1, 0x0F62($s2)           ## 00000F62
/* 02520 8091E020 0C030136 */  jal     func_800C04D8              
/* 02524 8091E024 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000F74
/* 02528 8091E028 3C014228 */  lui     $at, 0x4228                ## $at = 42280000
/* 0252C 8091E02C 44814000 */  mtc1    $at, $f8                   ## $f8 = 42.00
/* 02530 8091E030 C6A60028 */  lwc1    $f6, 0x0028($s5)           ## 00000028
/* 02534 8091E034 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 02538 8091E038 4608303E */  c.le.s  $f6, $f8                   
/* 0253C 8091E03C 00000000 */  nop
/* 02540 8091E040 4502001E */  bc1fl   .L8091E0BC                 
/* 02544 8091E044 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02548 8091E048 0C030129 */  jal     Gameplay_GetCamera              
/* 0254C 8091E04C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02550 8091E050 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 00000F68
/* 02554 8091E054 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02558 8091E058 AC4A005C */  sw      $t2, 0x005C($v0)           ## 0000005C
/* 0255C 8091E05C 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000F6C
/* 02560 8091E060 AC490060 */  sw      $t1, 0x0060($v0)           ## 00000060
/* 02564 8091E064 8E0A0008 */  lw      $t2, 0x0008($s0)           ## 00000F70
/* 02568 8091E068 AC4A0064 */  sw      $t2, 0x0064($v0)           ## 00000064
/* 0256C 8091E06C 8E0D0000 */  lw      $t5, 0x0000($s0)           ## 00000F68
/* 02570 8091E070 AC4D0074 */  sw      $t5, 0x0074($v0)           ## 00000074
/* 02574 8091E074 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000F6C
/* 02578 8091E078 AC4C0078 */  sw      $t4, 0x0078($v0)           ## 00000078
/* 0257C 8091E07C 8E0D0008 */  lw      $t5, 0x0008($s0)           ## 00000F70
/* 02580 8091E080 AC4D007C */  sw      $t5, 0x007C($v0)           ## 0000007C
/* 02584 8091E084 8E390000 */  lw      $t9, 0x0000($s1)           ## 00000F74
/* 02588 8091E088 AC590050 */  sw      $t9, 0x0050($v0)           ## 00000050
/* 0258C 8091E08C 8E2F0004 */  lw      $t7, 0x0004($s1)           ## 00000F78
/* 02590 8091E090 AC4F0054 */  sw      $t7, 0x0054($v0)           ## 00000054
/* 02594 8091E094 8E390008 */  lw      $t9, 0x0008($s1)           ## 00000F7C
/* 02598 8091E098 AC590058 */  sw      $t9, 0x0058($v0)           ## 00000058
/* 0259C 8091E09C 86450F62 */  lh      $a1, 0x0F62($s2)           ## 00000F62
/* 025A0 8091E0A0 0C03022B */  jal     func_800C08AC              
/* 025A4 8091E0A4 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 025A8 8091E0A8 A6400F62 */  sh      $zero, 0x0F62($s2)         ## 00000F62
/* 025AC 8091E0AC 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 025B0 8091E0B0 0C01914D */  jal     func_80064534              
/* 025B4 8091E0B4 24851D64 */  addiu   $a1, $a0, 0x1D64           ## $a1 = 00001D64
.L8091E0B8:
/* 025B8 8091E0B8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
.L8091E0BC:
/* 025BC 8091E0BC 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 025C0 8091E0C0 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 025C4 8091E0C4 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 025C8 8091E0C8 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 025CC 8091E0CC C64A0188 */  lwc1    $f10, 0x0188($s2)          ## 00000188
.L8091E0D0:
/* 025D0 8091E0D0 864C016E */  lh      $t4, 0x016E($s2)           ## 0000016E
/* 025D4 8091E0D4 4600548D */  trunc.w.s $f18, $f10                 
/* 025D8 8091E0D8 44189000 */  mfc1    $t8, $f18                  
/* 025DC 8091E0DC 00000000 */  nop
/* 025E0 8091E0E0 00184400 */  sll     $t0, $t8, 16               
/* 025E4 8091E0E4 00084C03 */  sra     $t1, $t0, 16               
/* 025E8 8091E0E8 01310019 */  multu   $t1, $s1                   
/* 025EC 8091E0EC 00005012 */  mflo    $t2                        
/* 025F0 8091E0F0 014C2021 */  addu    $a0, $t2, $t4              
/* 025F4 8091E0F4 00042400 */  sll     $a0, $a0, 16               
/* 025F8 8091E0F8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 025FC 8091E0FC 00042403 */  sra     $a0, $a0, 16               
/* 02600 8091E100 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 02604 8091E104 3C018092 */  lui     $at, %hi(D_80926C60)       ## $at = 80920000
/* 02608 8091E108 C4286C60 */  lwc1    $f8, %lo(D_80926C60)($at)  
/* 0260C 8091E10C 46802420 */  cvt.s.w $f16, $f4                  
/* 02610 8091E110 C64A018C */  lwc1    $f10, 0x018C($s2)          ## 0000018C
/* 02614 8091E114 86580170 */  lh      $t8, 0x0170($s2)           ## 00000170
/* 02618 8091E118 C64401A0 */  lwc1    $f4, 0x01A0($s2)           ## 000001A0
/* 0261C 8091E11C 46088502 */  mul.s   $f20, $f16, $f8            
/* 02620 8091E120 C6500194 */  lwc1    $f16, 0x0194($s2)          ## 00000194
/* 02624 8091E124 4600820D */  trunc.w.s $f8, $f16                  
/* 02628 8091E128 4600A182 */  mul.s   $f6, $f20, $f0             
/* 0262C 8091E12C 440F4000 */  mfc1    $t7, $f8                   
/* 02630 8091E130 00000000 */  nop
/* 02634 8091E134 000FCC00 */  sll     $t9, $t7, 16               
/* 02638 8091E138 00195C03 */  sra     $t3, $t9, 16               
/* 0263C 8091E13C 01710019 */  multu   $t3, $s1                   
/* 02640 8091E140 460A3482 */  mul.s   $f18, $f6, $f10            
/* 02644 8091E144 00000000 */  nop
/* 02648 8091E148 46122582 */  mul.s   $f22, $f4, $f18            
/* 0264C 8091E14C 00007012 */  mflo    $t6                        
/* 02650 8091E150 01D82021 */  addu    $a0, $t6, $t8              
/* 02654 8091E154 00042400 */  sll     $a0, $a0, 16               
/* 02658 8091E158 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0265C 8091E15C 00042403 */  sra     $a0, $a0, 16               
/* 02660 8091E160 4600A182 */  mul.s   $f6, $f20, $f0             
/* 02664 8091E164 C64A0198 */  lwc1    $f10, 0x0198($s2)          ## 00000198
/* 02668 8091E168 C64201A0 */  lwc1    $f2, 0x01A0($s2)           ## 000001A0
/* 0266C 8091E16C 02340019 */  multu   $s1, $s4                   
/* 02670 8091E170 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 02674 8091E174 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 02678 8091E178 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 0267C 8091E17C 460A3102 */  mul.s   $f4, $f6, $f10             
/* 02680 8091E180 00004012 */  mflo    $t0                        
/* 02684 8091E184 46041602 */  mul.s   $f24, $f2, $f4             
/* 02688 8091E188 02482021 */  addu    $a0, $s2, $t0              
/* 0268C 8091E18C 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 02690 8091E190 461A1482 */  mul.s   $f18, $f2, $f26            
/* 02694 8091E194 44059000 */  mfc1    $a1, $f18                  
/* 02698 8091E198 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0269C 8091E19C 00000000 */  nop
/* 026A0 8091E1A0 C6480D64 */  lwc1    $f8, 0x0D64($s2)           ## 00000D64
/* 026A4 8091E1A4 02330019 */  multu   $s1, $s3                   
/* 026A8 8091E1A8 C6440D68 */  lwc1    $f4, 0x0D68($s2)           ## 00000D68
/* 026AC 8091E1AC 4608E183 */  div.s   $f6, $f28, $f8             
/* 026B0 8091E1B0 4600B40D */  trunc.w.s $f16, $f22                 
/* 026B4 8091E1B4 4600248D */  trunc.w.s $f18, $f4                  
/* 026B8 8091E1B8 44058000 */  mfc1    $a1, $f16                  
/* 026BC 8091E1BC 00004812 */  mflo    $t1                        
/* 026C0 8091E1C0 02498021 */  addu    $s0, $s2, $t1              
/* 026C4 8091E1C4 44079000 */  mfc1    $a3, $f18                  
/* 026C8 8091E1C8 00052C00 */  sll     $a1, $a1, 16               
/* 026CC 8091E1CC 00052C03 */  sra     $a1, $a1, 16               
/* 026D0 8091E1D0 00073C00 */  sll     $a3, $a3, 16               
/* 026D4 8091E1D4 00073C03 */  sra     $a3, $a3, 16               
/* 026D8 8091E1D8 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 00001BD4
/* 026DC 8091E1DC 4600328D */  trunc.w.s $f10, $f6                  
/* 026E0 8091E1E0 44065000 */  mfc1    $a2, $f10                  
/* 026E4 8091E1E4 00000000 */  nop
/* 026E8 8091E1E8 00063400 */  sll     $a2, $a2, 16               
/* 026EC 8091E1EC 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 026F0 8091E1F0 00063403 */  sra     $a2, $a2, 16               
/* 026F4 8091E1F4 C6480D64 */  lwc1    $f8, 0x0D64($s2)           ## 00000D64
/* 026F8 8091E1F8 C6440D68 */  lwc1    $f4, 0x0D68($s2)           ## 00000D68
/* 026FC 8091E1FC 4600C40D */  trunc.w.s $f16, $f24                 
/* 02700 8091E200 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 00001BD8
/* 02704 8091E204 4608E183 */  div.s   $f6, $f28, $f8             
/* 02708 8091E208 44058000 */  mfc1    $a1, $f16                  
/* 0270C 8091E20C 4600248D */  trunc.w.s $f18, $f4                  
/* 02710 8091E210 00052C00 */  sll     $a1, $a1, 16               
/* 02714 8091E214 00052C03 */  sra     $a1, $a1, 16               
/* 02718 8091E218 44079000 */  mfc1    $a3, $f18                  
/* 0271C 8091E21C 00000000 */  nop
/* 02720 8091E220 00073C00 */  sll     $a3, $a3, 16               
/* 02724 8091E224 00073C03 */  sra     $a3, $a3, 16               
/* 02728 8091E228 4600328D */  trunc.w.s $f10, $f6                  
/* 0272C 8091E22C 44065000 */  mfc1    $a2, $f10                  
/* 02730 8091E230 00000000 */  nop
/* 02734 8091E234 00063400 */  sll     $a2, $a2, 16               
/* 02738 8091E238 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 0273C 8091E23C 00063403 */  sra     $a2, $a2, 16               
/* 02740 8091E240 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 02744 8091E244 00118C00 */  sll     $s1, $s1, 16               
/* 02748 8091E248 00118C03 */  sra     $s1, $s1, 16               
/* 0274C 8091E24C 2A210029 */  slti    $at, $s1, 0x0029           
/* 02750 8091E250 5420FF9F */  bnel    $at, $zero, .L8091E0D0     
/* 02754 8091E254 C64A0188 */  lwc1    $f10, 0x0188($s2)          ## 00000188
/* 02758 8091E258 4405F000 */  mfc1    $a1, $f30                  
/* 0275C 8091E25C 3C073CA3 */  lui     $a3, 0x3CA3                ## $a3 = 3CA30000
/* 02760 8091E260 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3CA3D70A
/* 02764 8091E264 264401A0 */  addiu   $a0, $s2, 0x01A0           ## $a0 = 000001A0
/* 02768 8091E268 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0276C 8091E26C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02770 8091E270 3C018092 */  lui     $at, %hi(D_80926C64)       ## $at = 80920000
/* 02774 8091E274 C4366C64 */  lwc1    $f22, %lo(D_80926C64)($at) 
/* 02778 8091E278 4406E000 */  mfc1    $a2, $f28                  
/* 0277C 8091E27C 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 02780 8091E280 4407B000 */  mfc1    $a3, $f22                  
/* 02784 8091E284 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02788 8091E288 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 0278C 8091E28C 4406E000 */  mfc1    $a2, $f28                  
/* 02790 8091E290 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 02794 8091E294 3C0543A0 */  lui     $a1, 0x43A0                ## $a1 = 43A00000
/* 02798 8091E298 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0279C 8091E29C 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 027A0 8091E2A0 864E017E */  lh      $t6, 0x017E($s2)           ## 0000017E
/* 027A4 8091E2A4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 027A8 8091E2A8 264401A4 */  addiu   $a0, $s2, 0x01A4           ## $a0 = 000001A4
/* 027AC 8091E2AC 15C00060 */  bne     $t6, $zero, .L8091E430     
/* 027B0 8091E2B0 00000000 */  nop
/* 027B4 8091E2B4 8E580004 */  lw      $t8, 0x0004($s2)           ## 00000004
/* 027B8 8091E2B8 4405F000 */  mfc1    $a1, $f30                  
/* 027BC 8091E2BC 4406E000 */  mfc1    $a2, $f28                  
/* 027C0 8091E2C0 4407D000 */  mfc1    $a3, $f26                  
/* 027C4 8091E2C4 03014024 */  and     $t0, $t8, $at              
/* 027C8 8091E2C8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 027CC 8091E2CC AE480004 */  sw      $t0, 0x0004($s2)           ## 00000004
/* 027D0 8091E2D0 3C018092 */  lui     $at, %hi(D_80926C68)       ## $at = 80920000
/* 027D4 8091E2D4 C43A6C68 */  lwc1    $f26, %lo(D_80926C68)($at) 
/* 027D8 8091E2D8 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 027DC 8091E2DC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 32768.00
/* 027E0 8091E2E0 3C018092 */  lui     $at, %hi(D_80926C6C)       ## $at = 80920000
/* 027E4 8091E2E4 C4366C6C */  lwc1    $f22, %lo(D_80926C6C)($at) 
/* 027E8 8091E2E8 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 027EC 8091E2EC 3C138092 */  lui     $s3, %hi(D_80925CD8)       ## $s3 = 80920000
/* 027F0 8091E2F0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 320.00
/* 027F4 8091E2F4 26735CD8 */  addiu   $s3, $s3, %lo(D_80925CD8)  ## $s3 = 80925CD8
/* 027F8 8091E2F8 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
.L8091E2FC:
/* 027FC 8091E2FC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02800 8091E300 4600B306 */  mov.s   $f12, $f22                 
/* 02804 8091E304 E7BE00FC */  swc1    $f30, 0x00FC($sp)          
/* 02808 8091E308 E7BE0100 */  swc1    $f30, 0x0100($sp)          
/* 0280C 8091E30C E7BE0104 */  swc1    $f30, 0x0104($sp)          
/* 02810 8091E310 86AF0032 */  lh      $t7, 0x0032($s5)           ## 00000032
/* 02814 8091E314 4600040D */  trunc.w.s $f16, $f0                  
/* 02818 8091E318 3C108092 */  lui     $s0, %hi(D_809261A4)       ## $s0 = 80920000
/* 0281C 8091E31C 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 02820 8091E320 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02824 8091E324 440A8000 */  mfc1    $t2, $f16                  
/* 02828 8091E328 468041A0 */  cvt.s.w $f6, $f8                   
/* 0282C 8091E32C 000A6400 */  sll     $t4, $t2, 16               
/* 02830 8091E330 000C6C03 */  sra     $t5, $t4, 16               
/* 02834 8091E334 020D8021 */  addu    $s0, $s0, $t5              
/* 02838 8091E338 921061A4 */  lbu     $s0, %lo(D_809261A4)($s0)  
/* 0283C 8091E33C 46183283 */  div.s   $f10, $f6, $f24            
/* 02840 8091E340 461A5302 */  mul.s   $f12, $f10, $f26           
/* 02844 8091E344 0C034348 */  jal     Matrix_RotateY              
/* 02848 8091E348 00000000 */  nop
/* 0284C 8091E34C 27A400FC */  addiu   $a0, $sp, 0x00FC           ## $a0 = FFFFFF44
/* 02850 8091E350 0C0346BD */  jal     Matrix_MultVec3f              
/* 02854 8091E354 27A500F0 */  addiu   $a1, $sp, 0x00F0           ## $a1 = FFFFFF38
/* 02858 8091E358 C6A40024 */  lwc1    $f4, 0x0024($s5)           ## 00000024
/* 0285C 8091E35C C7B200F0 */  lwc1    $f18, 0x00F0($sp)          
/* 02860 8091E360 3C0B8092 */  lui     $t3, %hi(D_809261BC)       ## $t3 = 80920000
/* 02864 8091E364 256B61BC */  addiu   $t3, $t3, %lo(D_809261BC)  ## $t3 = 809261BC
/* 02868 8091E368 46122400 */  add.s   $f16, $f4, $f18            
/* 0286C 8091E36C 0010C8C0 */  sll     $t9, $s0,  3               
/* 02870 8091E370 032B1021 */  addu    $v0, $t9, $t3              
/* 02874 8091E374 C4420000 */  lwc1    $f2, 0x0000($v0)           ## 00000000
/* 02878 8091E378 E7B000F0 */  swc1    $f16, 0x00F0($sp)          
/* 0287C 8091E37C C7A400F0 */  lwc1    $f4, 0x00F0($sp)           
/* 02880 8091E380 C6A8002C */  lwc1    $f8, 0x002C($s5)           ## 0000002C
/* 02884 8091E384 C7A600F8 */  lwc1    $f6, 0x00F8($sp)           
/* 02888 8091E388 46022001 */  sub.s   $f0, $f4, $f2              
/* 0288C 8091E38C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 02890 8091E390 00118C00 */  sll     $s1, $s1, 16               
/* 02894 8091E394 46064280 */  add.s   $f10, $f8, $f6             
/* 02898 8091E398 00118C03 */  sra     $s1, $s1, 16               
/* 0289C 8091E39C 2A210028 */  slti    $at, $s1, 0x0028           
/* 028A0 8091E3A0 46000005 */  abs.s   $f0, $f0                   
/* 028A4 8091E3A4 E7AA00F8 */  swc1    $f10, 0x00F8($sp)          
/* 028A8 8091E3A8 4614003E */  c.le.s  $f0, $f20                  
/* 028AC 8091E3AC C7B200F8 */  lwc1    $f18, 0x00F8($sp)          
/* 028B0 8091E3B0 4500001D */  bc1f    .L8091E428                 
/* 028B4 8091E3B4 00000000 */  nop
/* 028B8 8091E3B8 C4500004 */  lwc1    $f16, 0x0004($v0)          ## 00000004
/* 028BC 8091E3BC 46109001 */  sub.s   $f0, $f18, $f16            
/* 028C0 8091E3C0 46000005 */  abs.s   $f0, $f0                   
/* 028C4 8091E3C4 4614003E */  c.le.s  $f0, $f20                  
/* 028C8 8091E3C8 00000000 */  nop
/* 028CC 8091E3CC 45000016 */  bc1f    .L8091E428                 
/* 028D0 8091E3D0 00000000 */  nop
/* 028D4 8091E3D4 8E630000 */  lw      $v1, 0x0000($s3)           ## 80925CD8
/* 028D8 8091E3D8 50600005 */  beql    $v1, $zero, .L8091E3F0     
/* 028DC 8091E3DC E64201D4 */  swc1    $f2, 0x01D4($s2)           ## 000001D4
/* 028E0 8091E3E0 906E0156 */  lbu     $t6, 0x0156($v1)           ## 00000156
/* 028E4 8091E3E4 120E0010 */  beq     $s0, $t6, .L8091E428       
/* 028E8 8091E3E8 00000000 */  nop
/* 028EC 8091E3EC E64201D4 */  swc1    $f2, 0x01D4($s2)           ## 000001D4
.L8091E3F0:
/* 028F0 8091E3F0 C4480004 */  lwc1    $f8, 0x0004($v0)           ## 00000004
/* 028F4 8091E3F4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 028F8 8091E3F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 028FC 8091E3FC A2500156 */  sb      $s0, 0x0156($s2)           ## 00000156
/* 02900 8091E400 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02904 8091E404 E64801DC */  swc1    $f8, 0x01DC($s2)           ## 000001DC
/* 02908 8091E408 4600018D */  trunc.w.s $f6, $f0                   
/* 0290C 8091E40C 240D0066 */  addiu   $t5, $zero, 0x0066         ## $t5 = 00000066
/* 02910 8091E410 A64D0158 */  sh      $t5, 0x0158($s2)           ## 00000158
/* 02914 8091E414 440A3000 */  mfc1    $t2, $f6                   
/* 02918 8091E418 00000000 */  nop
/* 0291C 8091E41C 254C001E */  addiu   $t4, $t2, 0x001E           ## $t4 = 0000001E
/* 02920 8091E420 10000003 */  beq     $zero, $zero, .L8091E430   
/* 02924 8091E424 A64C017E */  sh      $t4, 0x017E($s2)           ## 0000017E
.L8091E428:
/* 02928 8091E428 1420FFB4 */  bne     $at, $zero, .L8091E2FC     
/* 0292C 8091E42C 00000000 */  nop
.L8091E430:
/* 02930 8091E430 3C108092 */  lui     $s0, %hi(D_80925CD4)       ## $s0 = 80920000
/* 02934 8091E434 26105CD4 */  addiu   $s0, $s0, %lo(D_80925CD4)  ## $s0 = 80925CD4
/* 02938 8091E438 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 80925CD4
/* 0293C 8091E43C 3C138092 */  lui     $s3, %hi(D_80925CD8)       ## $s3 = 80920000
/* 02940 8091E440 26735CD8 */  addiu   $s3, $s3, %lo(D_80925CD8)  ## $s3 = 80925CD8
/* 02944 8091E444 164F003C */  bne     $s2, $t7, .L8091E538       
/* 02948 8091E448 3C198092 */  lui     $t9, %hi(D_80925CD0)       ## $t9 = 80920000
/* 0294C 8091E44C 8F395CD0 */  lw      $t9, %lo(D_80925CD0)($t9)  
/* 02950 8091E450 932B0155 */  lbu     $t3, 0x0155($t9)           ## 80920155
/* 02954 8091E454 29610003 */  slti    $at, $t3, 0x0003           
/* 02958 8091E458 14200037 */  bne     $at, $zero, .L8091E538     
/* 0295C 8091E45C 00000000 */  nop
/* 02960 8091E460 8E6E0000 */  lw      $t6, 0x0000($s3)           ## 80925CD8
/* 02964 8091E464 8FA501BC */  lw      $a1, 0x01BC($sp)           
/* 02968 8091E468 240600C4 */  addiu   $a2, $zero, 0x00C4         ## $a2 = 000000C4
/* 0296C 8091E46C 15C00032 */  bne     $t6, $zero, .L8091E538     
/* 02970 8091E470 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 02974 8091E474 C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 02978 8091E478 8E470024 */  lw      $a3, 0x0024($s2)           ## 00000024
/* 0297C 8091E47C 24080064 */  addiu   $t0, $zero, 0x0064         ## $t0 = 00000064
/* 02980 8091E480 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 02984 8091E484 C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 02988 8091E488 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 0298C 8091E48C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02990 8091E490 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02994 8091E494 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 02998 8091E498 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 0299C 8091E49C E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 029A0 8091E4A0 AE620000 */  sw      $v0, 0x0000($s3)           ## 80925CD8
/* 029A4 8091E4A4 92490156 */  lbu     $t1, 0x0156($s2)           ## 00000156
/* 029A8 8091E4A8 A0490156 */  sb      $t1, 0x0156($v0)           ## 00000156
/* 029AC 8091E4AC 8E630000 */  lw      $v1, 0x0000($s3)           ## 80925CD8
/* 029B0 8091E4B0 90640156 */  lbu     $a0, 0x0156($v1)           ## 00000156
/* 029B4 8091E4B4 2881000B */  slti    $at, $a0, 0x000B           
/* 029B8 8091E4B8 14200004 */  bne     $at, $zero, .L8091E4CC     
/* 029BC 8091E4BC 248D0001 */  addiu   $t5, $a0, 0x0001           ## $t5 = 00000001
/* 029C0 8091E4C0 248CFFFF */  addiu   $t4, $a0, 0xFFFF           ## $t4 = FFFFFFFF
/* 029C4 8091E4C4 10000002 */  beq     $zero, $zero, .L8091E4D0   
/* 029C8 8091E4C8 A06C0156 */  sb      $t4, 0x0156($v1)           ## 00000156
.L8091E4CC:
/* 029CC 8091E4CC A06D0156 */  sb      $t5, 0x0156($v1)           ## 00000156
.L8091E4D0:
/* 029D0 8091E4D0 8E630000 */  lw      $v1, 0x0000($s3)           ## 80925CD8
/* 029D4 8091E4D4 3C018092 */  lui     $at, %hi(D_809261BC)       ## $at = 80920000
/* 029D8 8091E4D8 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 029DC 8091E4DC 906F0156 */  lbu     $t7, 0x0156($v1)           ## 00000156
/* 029E0 8091E4E0 24090066 */  addiu   $t1, $zero, 0x0066         ## $t1 = 00000066
/* 029E4 8091E4E4 000FC8C0 */  sll     $t9, $t7,  3               
/* 029E8 8091E4E8 00390821 */  addu    $at, $at, $t9              
/* 029EC 8091E4EC C43261BC */  lwc1    $f18, %lo(D_809261BC)($at) 
/* 029F0 8091E4F0 3C018092 */  lui     $at, %hi(D_809261C0)       ## $at = 80920000
/* 029F4 8091E4F4 E47201D4 */  swc1    $f18, 0x01D4($v1)          ## 000001D4
/* 029F8 8091E4F8 8E630000 */  lw      $v1, 0x0000($s3)           ## 80925CD8
/* 029FC 8091E4FC 906B0156 */  lbu     $t3, 0x0156($v1)           ## 00000156
/* 02A00 8091E500 000B70C0 */  sll     $t6, $t3,  3               
/* 02A04 8091E504 002E0821 */  addu    $at, $at, $t6              
/* 02A08 8091E508 C43061C0 */  lwc1    $f16, %lo(D_809261C0)($at) 
/* 02A0C 8091E50C E47001DC */  swc1    $f16, 0x01DC($v1)          ## 000001DC
/* 02A10 8091E510 8E680000 */  lw      $t0, 0x0000($s3)           ## 80925CD8
/* 02A14 8091E514 A518017E */  sh      $t8, 0x017E($t0)           ## 0000017E
/* 02A18 8091E518 8E6A0000 */  lw      $t2, 0x0000($s3)           ## 80925CD8
/* 02A1C 8091E51C A5490158 */  sh      $t1, 0x0158($t2)           ## 00000158
/* 02A20 8091E520 8E0C0000 */  lw      $t4, 0x0000($s0)           ## 80925CD4
/* 02A24 8091E524 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 80925CD8
/* 02A28 8091E528 ADAC014C */  sw      $t4, 0x014C($t5)           ## 0000014D
/* 02A2C 8091E52C 8E190000 */  lw      $t9, 0x0000($s0)           ## 80925CD4
/* 02A30 8091E530 8E6F0000 */  lw      $t7, 0x0000($s3)           ## 80925CD8
/* 02A34 8091E534 AF2F014C */  sw      $t7, 0x014C($t9)           ## 0000014C
.L8091E538:
/* 02A38 8091E538 100002F7 */  beq     $zero, $zero, .L8091F118   
/* 02A3C 8091E53C 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
.L8091E540:
/* 02A40 8091E540 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02A44 8091E544 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 02A48 8091E548 8E4B0004 */  lw      $t3, 0x0004($s2)           ## 00000004
/* 02A4C 8091E54C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02A50 8091E550 4405F000 */  mfc1    $a1, $f30                  
/* 02A54 8091E554 4406E000 */  mfc1    $a2, $f28                  
/* 02A58 8091E558 01617024 */  and     $t6, $t3, $at              
/* 02A5C 8091E55C 4407D000 */  mfc1    $a3, $f26                  
/* 02A60 8091E560 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02A64 8091E564 AE4E0004 */  sw      $t6, 0x0004($s2)           ## 00000004
/* 02A68 8091E568 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 02A6C 8091E56C 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 02A70 8091E570 C64601A4 */  lwc1    $f6, 0x01A4($s2)           ## 000001A4
/* 02A74 8091E574 4608303E */  c.le.s  $f6, $f8                   
/* 02A78 8091E578 00000000 */  nop
/* 02A7C 8091E57C 45000023 */  bc1f    .L8091E60C                 
/* 02A80 8091E580 00000000 */  nop
/* 02A84 8091E584 8658017E */  lh      $t8, 0x017E($s2)           ## 0000017E
/* 02A88 8091E588 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 02A8C 8091E58C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02A90 8091E590 1700001E */  bne     $t8, $zero, .L8091E60C     
/* 02A94 8091E594 00000000 */  nop
/* 02A98 8091E598 C64A01D4 */  lwc1    $f10, 0x01D4($s2)          ## 000001D4
/* 02A9C 8091E59C C64401DC */  lwc1    $f4, 0x01DC($s2)           ## 000001DC
/* 02AA0 8091E5A0 A6400174 */  sh      $zero, 0x0174($s2)         ## 00000174
/* 02AA4 8091E5A4 E64A0024 */  swc1    $f10, 0x0024($s2)          ## 00000024
/* 02AA8 8091E5A8 8E490024 */  lw      $t1, 0x0024($s2)           ## 00000024
/* 02AAC 8091E5AC E644002C */  swc1    $f4, 0x002C($s2)           ## 0000002C
/* 02AB0 8091E5B0 8E480028 */  lw      $t0, 0x0028($s2)           ## 00000028
/* 02AB4 8091E5B4 AE490100 */  sw      $t1, 0x0100($s2)           ## 00000100
/* 02AB8 8091E5B8 8E49002C */  lw      $t1, 0x002C($s2)           ## 0000002C
/* 02ABC 8091E5BC 864A0174 */  lh      $t2, 0x0174($s2)           ## 00000174
/* 02AC0 8091E5C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 02AC4 8091E5C4 E65C01A8 */  swc1    $f28, 0x01A8($s2)          ## 000001A8
/* 02AC8 8091E5C8 A64C0158 */  sh      $t4, 0x0158($s2)           ## 00000158
/* 02ACC 8091E5CC AE480104 */  sw      $t0, 0x0104($s2)           ## 00000104
/* 02AD0 8091E5D0 AE490108 */  sw      $t1, 0x0108($s2)           ## 00000108
/* 02AD4 8091E5D4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 02AD8 8091E5D8 A64A0172 */  sh      $t2, 0x0172($s2)           ## 00000172
/* 02ADC 8091E5DC 4600048D */  trunc.w.s $f18, $f0                  
/* 02AE0 8091E5E0 3C018092 */  lui     $at, %hi(D_80926C70)       ## $at = 80920000
/* 02AE4 8091E5E4 C4346C70 */  lwc1    $f20, %lo(D_80926C70)($at) 
/* 02AE8 8091E5E8 E65E0D68 */  swc1    $f30, 0x0D68($s2)          ## 00000D68
/* 02AEC 8091E5EC 440B9000 */  mfc1    $t3, $f18                  
/* 02AF0 8091E5F0 E65E0190 */  swc1    $f30, 0x0190($s2)          ## 00000190
/* 02AF4 8091E5F4 E65E019C */  swc1    $f30, 0x019C($s2)          ## 0000019C
/* 02AF8 8091E5F8 256E000A */  addiu   $t6, $t3, 0x000A           ## $t6 = 0000000A
/* 02AFC 8091E5FC A64E017E */  sh      $t6, 0x017E($s2)           ## 0000017E
/* 02B00 8091E600 E65E018C */  swc1    $f30, 0x018C($s2)          ## 0000018C
/* 02B04 8091E604 E65E0198 */  swc1    $f30, 0x0198($s2)          ## 00000198
/* 02B08 8091E608 E6540D64 */  swc1    $f20, 0x0D64($s2)          ## 00000D64
.L8091E60C:
/* 02B0C 8091E60C 100002C2 */  beq     $zero, $zero, .L8091F118   
/* 02B10 8091E610 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091E614
/* 02B14 8091E614 24184000 */  addiu   $t8, $zero, 0x4000         ## $t8 = 00004000
/* 02B18 8091E618 A65800B6 */  sh      $t8, 0x00B6($s2)           ## 000000B6
/* 02B1C 8091E61C 100002BE */  beq     $zero, $zero, .L8091F118   
/* 02B20 8091E620 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091E624
/* 02B24 8091E624 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 02B28 8091E628 A64801CC */  sh      $t0, 0x01CC($s2)           ## 000001CC
/* 02B2C 8091E62C 3C048092 */  lui     $a0, %hi(D_80925CD0)       ## $a0 = 80920000
/* 02B30 8091E630 8C845CD0 */  lw      $a0, %lo(D_80925CD0)($a0)  
/* 02B34 8091E634 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02B38 8091E638 3C073F4C */  lui     $a3, 0x3F4C                ## $a3 = 3F4C0000
/* 02B3C 8091E63C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3F4CCCCD
/* 02B40 8091E640 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02B44 8091E644 3C05C396 */  lui     $a1, 0xC396                ## $a1 = C3960000
/* 02B48 8091E648 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02B4C 8091E64C 248401BC */  addiu   $a0, $a0, 0x01BC           ## $a0 = 809201BC
/* 02B50 8091E650 8E490004 */  lw      $t1, 0x0004($s2)           ## 00000004
/* 02B54 8091E654 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02B58 8091E658 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 02B5C 8091E65C 01215024 */  and     $t2, $t1, $at              
/* 02B60 8091E660 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02B64 8091E664 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 02B68 8091E668 AE4A0004 */  sw      $t2, 0x0004($s2)           ## 00000004
/* 02B6C 8091E66C 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 02B70 8091E670 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 02B74 8091E674 C6500188 */  lwc1    $f16, 0x0188($s2)          ## 00000188
.L8091E678:
/* 02B78 8091E678 864E016E */  lh      $t6, 0x016E($s2)           ## 0000016E
/* 02B7C 8091E67C 4600820D */  trunc.w.s $f8, $f16                  
/* 02B80 8091E680 440D4000 */  mfc1    $t5, $f8                   
/* 02B84 8091E684 00000000 */  nop
/* 02B88 8091E688 000D7C00 */  sll     $t7, $t5, 16               
/* 02B8C 8091E68C 000FCC03 */  sra     $t9, $t7, 16               
/* 02B90 8091E690 03310019 */  multu   $t9, $s1                   
/* 02B94 8091E694 00005812 */  mflo    $t3                        
/* 02B98 8091E698 016E2021 */  addu    $a0, $t3, $t6              
/* 02B9C 8091E69C 00042400 */  sll     $a0, $a0, 16               
/* 02BA0 8091E6A0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02BA4 8091E6A4 00042403 */  sra     $a0, $a0, 16               
/* 02BA8 8091E6A8 44913000 */  mtc1    $s1, $f6                   ## $f6 = 0.00
/* 02BAC 8091E6AC C6480194 */  lwc1    $f8, 0x0194($s2)           ## 00000194
/* 02BB0 8091E6B0 3C018092 */  lui     $at, %hi(D_80926C74)       ## $at = 80920000
/* 02BB4 8091E6B4 468032A0 */  cvt.s.w $f10, $f6                  
/* 02BB8 8091E6B8 C4246C74 */  lwc1    $f4, %lo(D_80926C74)($at)  
/* 02BBC 8091E6BC 864D0170 */  lh      $t5, 0x0170($s2)           ## 00000170
/* 02BC0 8091E6C0 C652018C */  lwc1    $f18, 0x018C($s2)          ## 0000018C
/* 02BC4 8091E6C4 4600418D */  trunc.w.s $f6, $f8                   
/* 02BC8 8091E6C8 46045502 */  mul.s   $f20, $f10, $f4            
/* 02BCC 8091E6CC 44083000 */  mfc1    $t0, $f6                   
/* 02BD0 8091E6D0 00000000 */  nop
/* 02BD4 8091E6D4 00084C00 */  sll     $t1, $t0, 16               
/* 02BD8 8091E6D8 00095403 */  sra     $t2, $t1, 16               
/* 02BDC 8091E6DC 01510019 */  multu   $t2, $s1                   
/* 02BE0 8091E6E0 4600A402 */  mul.s   $f16, $f20, $f0            
/* 02BE4 8091E6E4 00000000 */  nop
/* 02BE8 8091E6E8 46109582 */  mul.s   $f22, $f18, $f16           
/* 02BEC 8091E6EC 00006012 */  mflo    $t4                        
/* 02BF0 8091E6F0 018D2021 */  addu    $a0, $t4, $t5              
/* 02BF4 8091E6F4 00042400 */  sll     $a0, $a0, 16               
/* 02BF8 8091E6F8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02BFC 8091E6FC 00042403 */  sra     $a0, $a0, 16               
/* 02C00 8091E700 02340019 */  multu   $s1, $s4                   
/* 02C04 8091E704 4600A482 */  mul.s   $f18, $f20, $f0            
/* 02C08 8091E708 C65001A0 */  lwc1    $f16, 0x01A0($s2)          ## 000001A0
/* 02C0C 8091E70C C64E0198 */  lwc1    $f14, 0x0198($s2)          ## 00000198
/* 02C10 8091E710 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02C14 8091E714 461A8402 */  mul.s   $f16, $f16, $f26           
/* 02C18 8091E718 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 02C1C 8091E71C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02C20 8091E720 46127602 */  mul.s   $f24, $f14, $f18           
/* 02C24 8091E724 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 02C28 8091E728 00007812 */  mflo    $t7                        
/* 02C2C 8091E72C 024F2021 */  addu    $a0, $s2, $t7              
/* 02C30 8091E730 44058000 */  mfc1    $a1, $f16                  
/* 02C34 8091E734 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02C38 8091E738 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 02C3C 8091E73C C6460D64 */  lwc1    $f6, 0x0D64($s2)           ## 00000D64
/* 02C40 8091E740 02330019 */  multu   $s1, $s3                   
/* 02C44 8091E744 C6520D68 */  lwc1    $f18, 0x0D68($s2)          ## 00000D68
/* 02C48 8091E748 4606E283 */  div.s   $f10, $f28, $f6            
/* 02C4C 8091E74C 4600B20D */  trunc.w.s $f8, $f22                  
/* 02C50 8091E750 4600940D */  trunc.w.s $f16, $f18                 
/* 02C54 8091E754 44054000 */  mfc1    $a1, $f8                   
/* 02C58 8091E758 0000C812 */  mflo    $t9                        
/* 02C5C 8091E75C 02598021 */  addu    $s0, $s2, $t9              
/* 02C60 8091E760 44078000 */  mfc1    $a3, $f16                  
/* 02C64 8091E764 00052C00 */  sll     $a1, $a1, 16               
/* 02C68 8091E768 00052C03 */  sra     $a1, $a1, 16               
/* 02C6C 8091E76C 00073C00 */  sll     $a3, $a3, 16               
/* 02C70 8091E770 00073C03 */  sra     $a3, $a3, 16               
/* 02C74 8091E774 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 80926940
/* 02C78 8091E778 4600510D */  trunc.w.s $f4, $f10                  
/* 02C7C 8091E77C 44062000 */  mfc1    $a2, $f4                   
/* 02C80 8091E780 00000000 */  nop
/* 02C84 8091E784 00063400 */  sll     $a2, $a2, 16               
/* 02C88 8091E788 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02C8C 8091E78C 00063403 */  sra     $a2, $a2, 16               
/* 02C90 8091E790 C6460D64 */  lwc1    $f6, 0x0D64($s2)           ## 00000D64
/* 02C94 8091E794 C6520D68 */  lwc1    $f18, 0x0D68($s2)          ## 00000D68
/* 02C98 8091E798 4600C20D */  trunc.w.s $f8, $f24                  
/* 02C9C 8091E79C 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 80926944
/* 02CA0 8091E7A0 4606E283 */  div.s   $f10, $f28, $f6            
/* 02CA4 8091E7A4 44054000 */  mfc1    $a1, $f8                   
/* 02CA8 8091E7A8 4600940D */  trunc.w.s $f16, $f18                 
/* 02CAC 8091E7AC 00052C00 */  sll     $a1, $a1, 16               
/* 02CB0 8091E7B0 00052C03 */  sra     $a1, $a1, 16               
/* 02CB4 8091E7B4 44078000 */  mfc1    $a3, $f16                  
/* 02CB8 8091E7B8 00000000 */  nop
/* 02CBC 8091E7BC 00073C00 */  sll     $a3, $a3, 16               
/* 02CC0 8091E7C0 00073C03 */  sra     $a3, $a3, 16               
/* 02CC4 8091E7C4 4600510D */  trunc.w.s $f4, $f10                  
/* 02CC8 8091E7C8 44062000 */  mfc1    $a2, $f4                   
/* 02CCC 8091E7CC 00000000 */  nop
/* 02CD0 8091E7D0 00063400 */  sll     $a2, $a2, 16               
/* 02CD4 8091E7D4 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02CD8 8091E7D8 00063403 */  sra     $a2, $a2, 16               
/* 02CDC 8091E7DC 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 02CE0 8091E7E0 00118C00 */  sll     $s1, $s1, 16               
/* 02CE4 8091E7E4 00118C03 */  sra     $s1, $s1, 16               
/* 02CE8 8091E7E8 2A210029 */  slti    $at, $s1, 0x0029           
/* 02CEC 8091E7EC 5420FFA2 */  bnel    $at, $zero, .L8091E678     
/* 02CF0 8091E7F0 C6500188 */  lwc1    $f16, 0x0188($s2)          ## 00000188
/* 02CF4 8091E7F4 3C054089 */  lui     $a1, 0x4089                ## $a1 = 40890000
/* 02CF8 8091E7F8 3C073D23 */  lui     $a3, 0x3D23                ## $a3 = 3D230000
/* 02CFC 8091E7FC E65E0068 */  swc1    $f30, 0x0068($s2)          ## 00000068
/* 02D00 8091E800 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3D23D70A
/* 02D04 8091E804 34A5999A */  ori     $a1, $a1, 0x999A           ## $a1 = 4089999A
/* 02D08 8091E808 264401A0 */  addiu   $a0, $s2, 0x01A0           ## $a0 = 000001A0
/* 02D0C 8091E80C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02D10 8091E810 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02D14 8091E814 3C018092 */  lui     $at, %hi(D_80926C78)       ## $at = 80920000
/* 02D18 8091E818 C4366C78 */  lwc1    $f22, %lo(D_80926C78)($at) 
/* 02D1C 8091E81C 3C053FA6 */  lui     $a1, 0x3FA6                ## $a1 = 3FA60000
/* 02D20 8091E820 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FA66666
/* 02D24 8091E824 4407B000 */  mfc1    $a3, $f22                  
/* 02D28 8091E828 26440D6C */  addiu   $a0, $s2, 0x0D6C           ## $a0 = 00000D6C
/* 02D2C 8091E82C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02D30 8091E830 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02D34 8091E834 10000238 */  beq     $zero, $zero, .L8091F118   
/* 02D38 8091E838 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091E83C
/* 02D3C 8091E83C 3C028092 */  lui     $v0, %hi(D_80925CD0)       ## $v0 = 80920000
/* 02D40 8091E840 240C0014 */  addiu   $t4, $zero, 0x0014         ## $t4 = 00000014
/* 02D44 8091E844 240D4000 */  addiu   $t5, $zero, 0x4000         ## $t5 = 00004000
/* 02D48 8091E848 240F8000 */  addiu   $t7, $zero, 0x8000         ## $t7 = FFFF8000
/* 02D4C 8091E84C 24425CD0 */  addiu   $v0, $v0, %lo(D_80925CD0)  ## $v0 = 80925CD0
/* 02D50 8091E850 A64C01CC */  sh      $t4, 0x01CC($s2)           ## 000001CC
/* 02D54 8091E854 A64D00B6 */  sh      $t5, 0x00B6($s2)           ## 000000B6
/* 02D58 8091E858 A64F00B4 */  sh      $t7, 0x00B4($s2)           ## 000000B4
/* 02D5C 8091E85C 8C590000 */  lw      $t9, 0x0000($v0)           ## 80925CD0
/* 02D60 8091E860 3C018092 */  lui     $at, %hi(D_80926C7C)       ## $at = 80920000
/* 02D64 8091E864 C4266C7C */  lwc1    $f6, %lo(D_80926C7C)($at)  
/* 02D68 8091E868 C72801BC */  lwc1    $f8, 0x01BC($t9)           ## 000001BC
/* 02D6C 8091E86C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02D70 8091E870 3C073FA6 */  lui     $a3, 0x3FA6                ## $a3 = 3FA60000
/* 02D74 8091E874 46064280 */  add.s   $f10, $f8, $f6             
/* 02D78 8091E878 34E76666 */  ori     $a3, $a3, 0x6666           ## $a3 = 3FA66666
/* 02D7C 8091E87C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02D80 8091E880 3C05C396 */  lui     $a1, 0xC396                ## $a1 = C3960000
/* 02D84 8091E884 E64A0028 */  swc1    $f10, 0x0028($s2)          ## 00000028
/* 02D88 8091E888 8C440000 */  lw      $a0, 0x0000($v0)           ## 80925CD0
/* 02D8C 8091E88C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02D90 8091E890 248401BC */  addiu   $a0, $a0, 0x01BC           ## $a0 = 000001BC
/* 02D94 8091E894 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02D98 8091E898 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 02D9C 8091E89C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 02DA0 8091E8A0 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 02DA4 8091E8A4 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 02DA8 8091E8A8 C6440188 */  lwc1    $f4, 0x0188($s2)           ## 00000188
.L8091E8AC:
/* 02DAC 8091E8AC 864A016E */  lh      $t2, 0x016E($s2)           ## 0000016E
/* 02DB0 8091E8B0 4600248D */  trunc.w.s $f18, $f4                  
/* 02DB4 8091E8B4 440E9000 */  mfc1    $t6, $f18                  
/* 02DB8 8091E8B8 00000000 */  nop
/* 02DBC 8091E8BC 000EC400 */  sll     $t8, $t6, 16               
/* 02DC0 8091E8C0 00184403 */  sra     $t0, $t8, 16               
/* 02DC4 8091E8C4 01110019 */  multu   $t0, $s1                   
/* 02DC8 8091E8C8 00004812 */  mflo    $t1                        
/* 02DCC 8091E8CC 012A2021 */  addu    $a0, $t1, $t2              
/* 02DD0 8091E8D0 00042400 */  sll     $a0, $a0, 16               
/* 02DD4 8091E8D4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02DD8 8091E8D8 00042403 */  sra     $a0, $a0, 16               
/* 02DDC 8091E8DC 44918000 */  mtc1    $s1, $f16                  ## $f16 = 0.00
/* 02DE0 8091E8E0 C6520194 */  lwc1    $f18, 0x0194($s2)          ## 00000194
/* 02DE4 8091E8E4 3C018092 */  lui     $at, %hi(D_80926C80)       ## $at = 80920000
/* 02DE8 8091E8E8 46808220 */  cvt.s.w $f8, $f16                  
/* 02DEC 8091E8EC C4266C80 */  lwc1    $f6, %lo(D_80926C80)($at)  
/* 02DF0 8091E8F0 864E0170 */  lh      $t6, 0x0170($s2)           ## 00000170
/* 02DF4 8091E8F4 C64A018C */  lwc1    $f10, 0x018C($s2)          ## 0000018C
/* 02DF8 8091E8F8 4600940D */  trunc.w.s $f16, $f18                 
/* 02DFC 8091E8FC 46064502 */  mul.s   $f20, $f8, $f6             
/* 02E00 8091E900 440D8000 */  mfc1    $t5, $f16                  
/* 02E04 8091E904 00000000 */  nop
/* 02E08 8091E908 000D7C00 */  sll     $t7, $t5, 16               
/* 02E0C 8091E90C 000FCC03 */  sra     $t9, $t7, 16               
/* 02E10 8091E910 03310019 */  multu   $t9, $s1                   
/* 02E14 8091E914 4600A102 */  mul.s   $f4, $f20, $f0             
/* 02E18 8091E918 00000000 */  nop
/* 02E1C 8091E91C 46045582 */  mul.s   $f22, $f10, $f4            
/* 02E20 8091E920 00005812 */  mflo    $t3                        
/* 02E24 8091E924 016E2021 */  addu    $a0, $t3, $t6              
/* 02E28 8091E928 00042400 */  sll     $a0, $a0, 16               
/* 02E2C 8091E92C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02E30 8091E930 00042403 */  sra     $a0, $a0, 16               
/* 02E34 8091E934 02340019 */  multu   $s1, $s4                   
/* 02E38 8091E938 4600A482 */  mul.s   $f18, $f20, $f0            
/* 02E3C 8091E93C C65001A0 */  lwc1    $f16, 0x01A0($s2)          ## 000001A0
/* 02E40 8091E940 C64E0198 */  lwc1    $f14, 0x0198($s2)          ## 00000198
/* 02E44 8091E944 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02E48 8091E948 461A8402 */  mul.s   $f16, $f16, $f26           
/* 02E4C 8091E94C 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 02E50 8091E950 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02E54 8091E954 46127602 */  mul.s   $f24, $f14, $f18           
/* 02E58 8091E958 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 02E5C 8091E95C 0000C012 */  mflo    $t8                        
/* 02E60 8091E960 02582021 */  addu    $a0, $s2, $t8              
/* 02E64 8091E964 44058000 */  mfc1    $a1, $f16                  
/* 02E68 8091E968 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02E6C 8091E96C 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 02E70 8091E970 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
/* 02E74 8091E974 02330019 */  multu   $s1, $s3                   
/* 02E78 8091E978 C64A0D68 */  lwc1    $f10, 0x0D68($s2)          ## 00000D68
/* 02E7C 8091E97C 4610E203 */  div.s   $f8, $f28, $f16            
/* 02E80 8091E980 4600B48D */  trunc.w.s $f18, $f22                 
/* 02E84 8091E984 4600510D */  trunc.w.s $f4, $f10                  
/* 02E88 8091E988 44059000 */  mfc1    $a1, $f18                  
/* 02E8C 8091E98C 00004012 */  mflo    $t0                        
/* 02E90 8091E990 02488021 */  addu    $s0, $s2, $t0              
/* 02E94 8091E994 44072000 */  mfc1    $a3, $f4                   
/* 02E98 8091E998 00052C00 */  sll     $a1, $a1, 16               
/* 02E9C 8091E99C 00052C03 */  sra     $a1, $a1, 16               
/* 02EA0 8091E9A0 00073C00 */  sll     $a3, $a3, 16               
/* 02EA4 8091E9A4 00073C03 */  sra     $a3, $a3, 16               
/* 02EA8 8091E9A8 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 80926940
/* 02EAC 8091E9AC 4600418D */  trunc.w.s $f6, $f8                   
/* 02EB0 8091E9B0 44063000 */  mfc1    $a2, $f6                   
/* 02EB4 8091E9B4 00000000 */  nop
/* 02EB8 8091E9B8 00063400 */  sll     $a2, $a2, 16               
/* 02EBC 8091E9BC 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02EC0 8091E9C0 00063403 */  sra     $a2, $a2, 16               
/* 02EC4 8091E9C4 C6500D64 */  lwc1    $f16, 0x0D64($s2)          ## 00000D64
/* 02EC8 8091E9C8 C64A0D68 */  lwc1    $f10, 0x0D68($s2)          ## 00000D68
/* 02ECC 8091E9CC 4600C48D */  trunc.w.s $f18, $f24                 
/* 02ED0 8091E9D0 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 80926944
/* 02ED4 8091E9D4 4610E203 */  div.s   $f8, $f28, $f16            
/* 02ED8 8091E9D8 44059000 */  mfc1    $a1, $f18                  
/* 02EDC 8091E9DC 4600510D */  trunc.w.s $f4, $f10                  
/* 02EE0 8091E9E0 00052C00 */  sll     $a1, $a1, 16               
/* 02EE4 8091E9E4 00052C03 */  sra     $a1, $a1, 16               
/* 02EE8 8091E9E8 44072000 */  mfc1    $a3, $f4                   
/* 02EEC 8091E9EC 00000000 */  nop
/* 02EF0 8091E9F0 00073C00 */  sll     $a3, $a3, 16               
/* 02EF4 8091E9F4 00073C03 */  sra     $a3, $a3, 16               
/* 02EF8 8091E9F8 4600418D */  trunc.w.s $f6, $f8                   
/* 02EFC 8091E9FC 44063000 */  mfc1    $a2, $f6                   
/* 02F00 8091EA00 00000000 */  nop
/* 02F04 8091EA04 00063400 */  sll     $a2, $a2, 16               
/* 02F08 8091EA08 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 02F0C 8091EA0C 00063403 */  sra     $a2, $a2, 16               
/* 02F10 8091EA10 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 02F14 8091EA14 00118C00 */  sll     $s1, $s1, 16               
/* 02F18 8091EA18 00118C03 */  sra     $s1, $s1, 16               
/* 02F1C 8091EA1C 2A210029 */  slti    $at, $s1, 0x0029           
/* 02F20 8091EA20 5420FFA2 */  bnel    $at, $zero, .L8091E8AC     
/* 02F24 8091EA24 C6440188 */  lwc1    $f4, 0x0188($s2)           ## 00000188
/* 02F28 8091EA28 3C018092 */  lui     $at, %hi(D_80926C84)       ## $at = 80920000
/* 02F2C 8091EA2C C4366C84 */  lwc1    $f22, %lo(D_80926C84)($at) 
/* 02F30 8091EA30 3C053FA6 */  lui     $a1, 0x3FA6                ## $a1 = 3FA60000
/* 02F34 8091EA34 E65E0068 */  swc1    $f30, 0x0068($s2)          ## 00000068
/* 02F38 8091EA38 4407B000 */  mfc1    $a3, $f22                  
/* 02F3C 8091EA3C 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FA66666
/* 02F40 8091EA40 26440D6C */  addiu   $a0, $s2, 0x0D6C           ## $a0 = 00000D6C
/* 02F44 8091EA44 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F48 8091EA48 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 02F4C 8091EA4C 100001B2 */  beq     $zero, $zero, .L8091F118   
/* 02F50 8091EA50 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091EA54
/* 02F54 8091EA54 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 02F58 8091EA58 A64B01CC */  sh      $t3, 0x01CC($s2)           ## 000001CC
/* 02F5C 8091EA5C 3C048092 */  lui     $a0, %hi(D_80925CD0)       ## $a0 = 80920000
/* 02F60 8091EA60 8C845CD0 */  lw      $a0, %lo(D_80925CD0)($a0)  
/* 02F64 8091EA64 3C05C393 */  lui     $a1, 0xC393                ## $a1 = C3930000
/* 02F68 8091EA68 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02F6C 8091EA6C 3C073FA6 */  lui     $a3, 0x3FA6                ## $a3 = 3FA60000
/* 02F70 8091EA70 34E76666 */  ori     $a3, $a3, 0x6666           ## $a3 = 3FA66666
/* 02F74 8091EA74 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02F78 8091EA78 34A58000 */  ori     $a1, $a1, 0x8000           ## $a1 = C3938000
/* 02F7C 8091EA7C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 02F80 8091EA80 248401BC */  addiu   $a0, $a0, 0x01BC           ## $a0 = 809201BC
/* 02F84 8091EA84 3C0E8092 */  lui     $t6, %hi(D_80925CD0)       ## $t6 = 80920000
/* 02F88 8091EA88 8DCE5CD0 */  lw      $t6, %lo(D_80925CD0)($t6)  
/* 02F8C 8091EA8C 3C018092 */  lui     $at, %hi(D_80926C88)       ## $at = 80920000
/* 02F90 8091EA90 C4306C88 */  lwc1    $f16, %lo(D_80926C88)($at) 
/* 02F94 8091EA94 C5D201BC */  lwc1    $f18, 0x01BC($t6)          ## 809201BC
/* 02F98 8091EA98 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02F9C 8091EA9C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 02FA0 8091EAA0 46109200 */  add.s   $f8, $f18, $f16            
/* 02FA4 8091EAA4 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 02FA8 8091EAA8 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 02FAC 8091EAAC 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
/* 02FB0 8091EAB0 E6480028 */  swc1    $f8, 0x0028($s2)           ## 00000028
/* 02FB4 8091EAB4 C6460188 */  lwc1    $f6, 0x0188($s2)           ## 00000188
.L8091EAB8:
/* 02FB8 8091EAB8 864D016E */  lh      $t5, 0x016E($s2)           ## 0000016E
/* 02FBC 8091EABC 4600328D */  trunc.w.s $f10, $f6                  
/* 02FC0 8091EAC0 44085000 */  mfc1    $t0, $f10                  
/* 02FC4 8091EAC4 00000000 */  nop
/* 02FC8 8091EAC8 00084C00 */  sll     $t1, $t0, 16               
/* 02FCC 8091EACC 00095403 */  sra     $t2, $t1, 16               
/* 02FD0 8091EAD0 01510019 */  multu   $t2, $s1                   
/* 02FD4 8091EAD4 00006012 */  mflo    $t4                        
/* 02FD8 8091EAD8 018D2021 */  addu    $a0, $t4, $t5              
/* 02FDC 8091EADC 00042400 */  sll     $a0, $a0, 16               
/* 02FE0 8091EAE0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 02FE4 8091EAE4 00042403 */  sra     $a0, $a0, 16               
/* 02FE8 8091EAE8 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 02FEC 8091EAEC C64A0194 */  lwc1    $f10, 0x0194($s2)          ## 00000194
/* 02FF0 8091EAF0 3C018092 */  lui     $at, %hi(D_80926C8C)       ## $at = 80920000
/* 02FF4 8091EAF4 468024A0 */  cvt.s.w $f18, $f4                  
/* 02FF8 8091EAF8 C4306C8C */  lwc1    $f16, %lo(D_80926C8C)($at) 
/* 02FFC 8091EAFC 86480170 */  lh      $t0, 0x0170($s2)           ## 00000170
/* 03000 8091EB00 C648018C */  lwc1    $f8, 0x018C($s2)           ## 0000018C
/* 03004 8091EB04 4600510D */  trunc.w.s $f4, $f10                  
/* 03008 8091EB08 46109502 */  mul.s   $f20, $f18, $f16           
/* 0300C 8091EB0C 44192000 */  mfc1    $t9, $f4                   
/* 03010 8091EB10 00000000 */  nop
/* 03014 8091EB14 00195C00 */  sll     $t3, $t9, 16               
/* 03018 8091EB18 000B7403 */  sra     $t6, $t3, 16               
/* 0301C 8091EB1C 01D10019 */  multu   $t6, $s1                   
/* 03020 8091EB20 4600A182 */  mul.s   $f6, $f20, $f0             
/* 03024 8091EB24 00000000 */  nop
/* 03028 8091EB28 46064582 */  mul.s   $f22, $f8, $f6             
/* 0302C 8091EB2C 0000C012 */  mflo    $t8                        
/* 03030 8091EB30 03082021 */  addu    $a0, $t8, $t0              
/* 03034 8091EB34 00042400 */  sll     $a0, $a0, 16               
/* 03038 8091EB38 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0303C 8091EB3C 00042403 */  sra     $a0, $a0, 16               
/* 03040 8091EB40 02340019 */  multu   $s1, $s4                   
/* 03044 8091EB44 4600A482 */  mul.s   $f18, $f20, $f0            
/* 03048 8091EB48 C65001A0 */  lwc1    $f16, 0x01A0($s2)          ## 000001A0
/* 0304C 8091EB4C C64E0198 */  lwc1    $f14, 0x0198($s2)          ## 00000198
/* 03050 8091EB50 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 03054 8091EB54 461A8402 */  mul.s   $f16, $f16, $f26           
/* 03058 8091EB58 3C073ECC */  lui     $a3, 0x3ECC                ## $a3 = 3ECC0000
/* 0305C 8091EB5C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 03060 8091EB60 46127602 */  mul.s   $f24, $f14, $f18           
/* 03064 8091EB64 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3ECCCCCD
/* 03068 8091EB68 00004812 */  mflo    $t1                        
/* 0306C 8091EB6C 02492021 */  addu    $a0, $s2, $t1              
/* 03070 8091EB70 44058000 */  mfc1    $a1, $f16                  
/* 03074 8091EB74 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03078 8091EB78 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 0307C 8091EB7C C6440D64 */  lwc1    $f4, 0x0D64($s2)           ## 00000D64
/* 03080 8091EB80 02330019 */  multu   $s1, $s3                   
/* 03084 8091EB84 C6480D68 */  lwc1    $f8, 0x0D68($s2)           ## 00000D68
/* 03088 8091EB88 4604E483 */  div.s   $f18, $f28, $f4            
/* 0308C 8091EB8C 4600B28D */  trunc.w.s $f10, $f22                 
/* 03090 8091EB90 4600418D */  trunc.w.s $f6, $f8                   
/* 03094 8091EB94 44055000 */  mfc1    $a1, $f10                  
/* 03098 8091EB98 00005012 */  mflo    $t2                        
/* 0309C 8091EB9C 024A8021 */  addu    $s0, $s2, $t2              
/* 030A0 8091EBA0 44073000 */  mfc1    $a3, $f6                   
/* 030A4 8091EBA4 00052C00 */  sll     $a1, $a1, 16               
/* 030A8 8091EBA8 00052C03 */  sra     $a1, $a1, 16               
/* 030AC 8091EBAC 00073C00 */  sll     $a3, $a3, 16               
/* 030B0 8091EBB0 00073C03 */  sra     $a3, $a3, 16               
/* 030B4 8091EBB4 26040C6C */  addiu   $a0, $s0, 0x0C6C           ## $a0 = 80926940
/* 030B8 8091EBB8 4600940D */  trunc.w.s $f16, $f18                 
/* 030BC 8091EBBC 44068000 */  mfc1    $a2, $f16                  
/* 030C0 8091EBC0 00000000 */  nop
/* 030C4 8091EBC4 00063400 */  sll     $a2, $a2, 16               
/* 030C8 8091EBC8 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 030CC 8091EBCC 00063403 */  sra     $a2, $a2, 16               
/* 030D0 8091EBD0 C6440D64 */  lwc1    $f4, 0x0D64($s2)           ## 00000D64
/* 030D4 8091EBD4 C6480D68 */  lwc1    $f8, 0x0D68($s2)           ## 00000D68
/* 030D8 8091EBD8 4600C28D */  trunc.w.s $f10, $f24                 
/* 030DC 8091EBDC 26040C70 */  addiu   $a0, $s0, 0x0C70           ## $a0 = 80926944
/* 030E0 8091EBE0 4604E483 */  div.s   $f18, $f28, $f4            
/* 030E4 8091EBE4 44055000 */  mfc1    $a1, $f10                  
/* 030E8 8091EBE8 4600418D */  trunc.w.s $f6, $f8                   
/* 030EC 8091EBEC 00052C00 */  sll     $a1, $a1, 16               
/* 030F0 8091EBF0 00052C03 */  sra     $a1, $a1, 16               
/* 030F4 8091EBF4 44073000 */  mfc1    $a3, $f6                   
/* 030F8 8091EBF8 00000000 */  nop
/* 030FC 8091EBFC 00073C00 */  sll     $a3, $a3, 16               
/* 03100 8091EC00 00073C03 */  sra     $a3, $a3, 16               
/* 03104 8091EC04 4600940D */  trunc.w.s $f16, $f18                 
/* 03108 8091EC08 44068000 */  mfc1    $a2, $f16                  
/* 0310C 8091EC0C 00000000 */  nop
/* 03110 8091EC10 00063400 */  sll     $a2, $a2, 16               
/* 03114 8091EC14 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 03118 8091EC18 00063403 */  sra     $a2, $a2, 16               
/* 0311C 8091EC1C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 03120 8091EC20 00118C00 */  sll     $s1, $s1, 16               
/* 03124 8091EC24 00118C03 */  sra     $s1, $s1, 16               
/* 03128 8091EC28 2A210029 */  slti    $at, $s1, 0x0029           
/* 0312C 8091EC2C 5420FFA2 */  bnel    $at, $zero, .L8091EAB8     
/* 03130 8091EC30 C6460188 */  lwc1    $f6, 0x0188($s2)           ## 00000188
/* 03134 8091EC34 3C018092 */  lui     $at, %hi(D_80926C90)       ## $at = 80920000
/* 03138 8091EC38 C4206C90 */  lwc1    $f0, %lo(D_80926C90)($at)  
/* 0313C 8091EC3C 8658017A */  lh      $t8, 0x017A($s2)           ## 0000017A
/* 03140 8091EC40 3C073CF5 */  lui     $a3, 0x3CF5                ## $a3 = 3CF50000
/* 03144 8091EC44 44050000 */  mfc1    $a1, $f0                   
/* 03148 8091EC48 44060000 */  mfc1    $a2, $f0                   
/* 0314C 8091EC4C 2708FFFF */  addiu   $t0, $t8, 0xFFFF           ## $t0 = FFFFFFFF
/* 03150 8091EC50 E65E0068 */  swc1    $f30, 0x0068($s2)          ## 00000068
/* 03154 8091EC54 A648017A */  sh      $t0, 0x017A($s2)           ## 0000017A
/* 03158 8091EC58 34E7C28F */  ori     $a3, $a3, 0xC28F           ## $a3 = 3CF5C28F
/* 0315C 8091EC5C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03160 8091EC60 264401A0 */  addiu   $a0, $s2, 0x01A0           ## $a0 = 000001A0
/* 03164 8091EC64 3C053CA3 */  lui     $a1, 0x3CA3                ## $a1 = 3CA30000
/* 03168 8091EC68 3C073C75 */  lui     $a3, 0x3C75                ## $a3 = 3C750000
/* 0316C 8091EC6C 34E7C28F */  ori     $a3, $a3, 0xC28F           ## $a3 = 3C75C28F
/* 03170 8091EC70 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3CA3D70A
/* 03174 8091EC74 26440D6C */  addiu   $a0, $s2, 0x0D6C           ## $a0 = 00000D6C
/* 03178 8091EC78 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0317C 8091EC7C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 03180 8091EC80 8642017E */  lh      $v0, 0x017E($s2)           ## 0000017E
/* 03184 8091EC84 18400010 */  blez    $v0, .L8091ECC8            
/* 03188 8091EC88 28410028 */  slti    $at, $v0, 0x0028           
/* 0318C 8091EC8C 1020000E */  beq     $at, $zero, .L8091ECC8     
/* 03190 8091EC90 26440050 */  addiu   $a0, $s2, 0x0050           ## $a0 = 00000050
/* 03194 8091EC94 3C018092 */  lui     $at, %hi(D_80926C94)       ## $at = 80920000
/* 03198 8091EC98 C4366C94 */  lwc1    $f22, %lo(D_80926C94)($at) 
/* 0319C 8091EC9C 3C053D0F */  lui     $a1, 0x3D0F                ## $a1 = 3D0F0000
/* 031A0 8091ECA0 34A55C29 */  ori     $a1, $a1, 0x5C29           ## $a1 = 3D0F5C29
/* 031A4 8091ECA4 4406B000 */  mfc1    $a2, $f22                  
/* 031A8 8091ECA8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 031AC 8091ECAC 8E4701C0 */  lw      $a3, 0x01C0($s2)           ## 000001C0
/* 031B0 8091ECB0 8649017E */  lh      $t1, 0x017E($s2)           ## 0000017E
/* 031B4 8091ECB4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 031B8 8091ECB8 5521000E */  bnel    $t1, $at, .L8091ECF4       
/* 031BC 8091ECBC 3C0539EB */  lui     $a1, 0x39EB                ## $a1 = 39EB0000
/* 031C0 8091ECC0 1000000B */  beq     $zero, $zero, .L8091ECF0   
/* 031C4 8091ECC4 E65E01C0 */  swc1    $f30, 0x01C0($s2)          ## 000001C0
.L8091ECC8:
/* 031C8 8091ECC8 14400009 */  bne     $v0, $zero, .L8091ECF0     
/* 031CC 8091ECCC 3C018092 */  lui     $at, %hi(D_80926C98)       ## $at = 80920000
/* 031D0 8091ECD0 C4346C98 */  lwc1    $f20, %lo(D_80926C98)($at) 
/* 031D4 8091ECD4 3C018092 */  lui     $at, %hi(D_80926C9C)       ## $at = 80920000
/* 031D8 8091ECD8 C4366C9C */  lwc1    $f22, %lo(D_80926C9C)($at) 
/* 031DC 8091ECDC 4405A000 */  mfc1    $a1, $f20                  
/* 031E0 8091ECE0 26440050 */  addiu   $a0, $s2, 0x0050           ## $a0 = 00000050
/* 031E4 8091ECE4 4406B000 */  mfc1    $a2, $f22                  
/* 031E8 8091ECE8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 031EC 8091ECEC 8E4701C0 */  lw      $a3, 0x01C0($s2)           ## 000001C0
.L8091ECF0:
/* 031F0 8091ECF0 3C0539EB */  lui     $a1, 0x39EB                ## $a1 = 39EB0000
.L8091ECF4:
/* 031F4 8091ECF4 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 031F8 8091ECF8 3C073727 */  lui     $a3, 0x3727                ## $a3 = 37270000
/* 031FC 8091ECFC 34E7C5AC */  ori     $a3, $a3, 0xC5AC           ## $a3 = 3727C5AC
/* 03200 8091ED00 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 03204 8091ED04 34A5EDFA */  ori     $a1, $a1, 0xEDFA           ## $a1 = 39EBEDFA
/* 03208 8091ED08 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0320C 8091ED0C 264401C0 */  addiu   $a0, $s2, 0x01C0           ## $a0 = 000001C0
/* 03210 8091ED10 10000101 */  beq     $zero, $zero, .L8091F118   
/* 03214 8091ED14 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091ED18
/* 03218 8091ED18 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0321C 8091ED1C 4481D000 */  mtc1    $at, $f26                  ## $f26 = 5.00
/* 03220 8091ED20 3C018092 */  lui     $at, %hi(D_80926CA0)       ## $at = 80920000
/* 03224 8091ED24 C4366CA0 */  lwc1    $f22, %lo(D_80926CA0)($at) 
/* 03228 8091ED28 3C018092 */  lui     $at, %hi(D_80926CA4)       ## $at = 80920000
/* 0322C 8091ED2C C4346CA4 */  lwc1    $f20, %lo(D_80926CA4)($at) 
/* 03230 8091ED30 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 03234 8091ED34 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 03238 8091ED38 24130006 */  addiu   $s3, $zero, 0x0006         ## $s3 = 00000006
.L8091ED3C:
/* 0323C 8091ED3C 864A017E */  lh      $t2, 0x017E($s2)           ## 0000017E
/* 03240 8091ED40 1140000D */  beq     $t2, $zero, .L8091ED78     
/* 03244 8091ED44 00000000 */  nop
/* 03248 8091ED48 02340019 */  multu   $s1, $s4                   
/* 0324C 8091ED4C C64A01A0 */  lwc1    $f10, 0x01A0($s2)          ## 000001A0
/* 03250 8091ED50 4406B000 */  mfc1    $a2, $f22                  
/* 03254 8091ED54 8E470D68 */  lw      $a3, 0x0D68($s2)           ## 00000D68
/* 03258 8091ED58 461A5102 */  mul.s   $f4, $f10, $f26            
/* 0325C 8091ED5C 00006012 */  mflo    $t4                        
/* 03260 8091ED60 024C2021 */  addu    $a0, $s2, $t4              
/* 03264 8091ED64 44052000 */  mfc1    $a1, $f4                   
/* 03268 8091ED68 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0326C 8091ED6C 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
/* 03270 8091ED70 1000000B */  beq     $zero, $zero, .L8091EDA0   
/* 03274 8091ED74 00000000 */  nop
.L8091ED78:
/* 03278 8091ED78 02340019 */  multu   $s1, $s4                   
/* 0327C 8091ED7C C65201A0 */  lwc1    $f18, 0x01A0($s2)          ## 000001A0
/* 03280 8091ED80 4406A000 */  mfc1    $a2, $f20                  
/* 03284 8091ED84 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 03288 8091ED88 461A9402 */  mul.s   $f16, $f18, $f26           
/* 0328C 8091ED8C 00006812 */  mflo    $t5                        
/* 03290 8091ED90 024D2021 */  addu    $a0, $s2, $t5              
/* 03294 8091ED94 44058000 */  mfc1    $a1, $f16                  
/* 03298 8091ED98 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0329C 8091ED9C 248406AC */  addiu   $a0, $a0, 0x06AC           ## $a0 = 000006AC
.L8091EDA0:
/* 032A0 8091EDA0 02330019 */  multu   $s1, $s3                   
/* 032A4 8091EDA4 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 032A8 8091EDA8 00118C00 */  sll     $s1, $s1, 16               
/* 032AC 8091EDAC 00118C03 */  sra     $s1, $s1, 16               
/* 032B0 8091EDB0 2A210029 */  slti    $at, $s1, 0x0029           
/* 032B4 8091EDB4 00007812 */  mflo    $t7                        
/* 032B8 8091EDB8 024F8021 */  addu    $s0, $s2, $t7              
/* 032BC 8091EDBC A6000C70 */  sh      $zero, 0x0C70($s0)         ## 80926944
/* 032C0 8091EDC0 86190C70 */  lh      $t9, 0x0C70($s0)           ## 80926944
/* 032C4 8091EDC4 1420FFDD */  bne     $at, $zero, .L8091ED3C     
/* 032C8 8091EDC8 A6190C6C */  sh      $t9, 0x0C6C($s0)           ## 80926940
/* 032CC 8091EDCC 864B017E */  lh      $t3, 0x017E($s2)           ## 0000017E
/* 032D0 8091EDD0 E65E0D6C */  swc1    $f30, 0x0D6C($s2)          ## 00000D6C
/* 032D4 8091EDD4 3C0E8092 */  lui     $t6, %hi(D_80925CD0)       ## $t6 = 80920000
/* 032D8 8091EDD8 1160001F */  beq     $t3, $zero, .L8091EE58     
/* 032DC 8091EDDC 3C018092 */  lui     $at, %hi(D_80926CA8)       ## $at = 80920000
/* 032E0 8091EDE0 8DCE5CD0 */  lw      $t6, %lo(D_80925CD0)($t6)  
/* 032E4 8091EDE4 C4266CA8 */  lwc1    $f6, %lo(D_80926CA8)($at)  
/* 032E8 8091EDE8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 032EC 8091EDEC C5C801BC */  lwc1    $f8, 0x01BC($t6)           ## 809201BC
/* 032F0 8091EDF0 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 032F4 8091EDF4 3C053AC4 */  lui     $a1, 0x3AC4                ## $a1 = 3AC40000
/* 032F8 8091EDF8 46064280 */  add.s   $f10, $f8, $f6             
/* 032FC 8091EDFC 4406B000 */  mfc1    $a2, $f22                  
/* 03300 8091EE00 34A59BA6 */  ori     $a1, $a1, 0x9BA6           ## $a1 = 3AC49BA6
/* 03304 8091EE04 26440050 */  addiu   $a0, $s2, 0x0050           ## $a0 = 00000050
/* 03308 8091EE08 E64A0028 */  swc1    $f10, 0x0028($s2)          ## 00000028
/* 0330C 8091EE0C 8E470D64 */  lw      $a3, 0x0D64($s2)           ## 00000D64
/* 03310 8091EE10 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03314 8091EE14 E64401A0 */  swc1    $f4, 0x01A0($s2)           ## 000001A0
/* 03318 8091EE18 3C0539B7 */  lui     $a1, 0x39B7                ## $a1 = 39B70000
/* 0331C 8091EE1C 4406E000 */  mfc1    $a2, $f28                  
/* 03320 8091EE20 3C073792 */  lui     $a3, 0x3792                ## $a3 = 37920000
/* 03324 8091EE24 34E7CCF7 */  ori     $a3, $a3, 0xCCF7           ## $a3 = 3792CCF7
/* 03328 8091EE28 34A58034 */  ori     $a1, $a1, 0x8034           ## $a1 = 39B78034
/* 0332C 8091EE2C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 03330 8091EE30 26440D64 */  addiu   $a0, $s2, 0x0D64           ## $a0 = 00000D64
/* 03334 8091EE34 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 03338 8091EE38 4406E000 */  mfc1    $a2, $f28                  
/* 0333C 8091EE3C 3C073BA3 */  lui     $a3, 0x3BA3                ## $a3 = 3BA30000
/* 03340 8091EE40 34E7D70A */  ori     $a3, $a3, 0xD70A           ## $a3 = 3BA3D70A
/* 03344 8091EE44 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 03348 8091EE48 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0334C 8091EE4C 26440D68 */  addiu   $a0, $s2, 0x0D68           ## $a0 = 00000D68
/* 03350 8091EE50 100000B0 */  beq     $zero, $zero, .L8091F114   
/* 03354 8091EE54 E65E0060 */  swc1    $f30, 0x0060($s2)          ## 00000060
.L8091EE58:
/* 03358 8091EE58 8644015A */  lh      $a0, 0x015A($s2)           ## 0000015A
/* 0335C 8091EE5C 3C018092 */  lui     $at, %hi(D_80926CAC)       ## $at = 80920000
/* 03360 8091EE60 C4326CAC */  lwc1    $f18, %lo(D_80926CAC)($at) 
/* 03364 8091EE64 00042340 */  sll     $a0, $a0, 13               
/* 03368 8091EE68 00042400 */  sll     $a0, $a0, 16               
/* 0336C 8091EE6C 00042403 */  sra     $a0, $a0, 16               
/* 03370 8091EE70 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 03374 8091EE74 E65201A0 */  swc1    $f18, 0x01A0($s2)          ## 000001A0
/* 03378 8091EE78 46160202 */  mul.s   $f8, $f0, $f22             
/* 0337C 8091EE7C C65001A0 */  lwc1    $f16, 0x01A0($s2)          ## 000001A0
/* 03380 8091EE80 8644015A */  lh      $a0, 0x015A($s2)           ## 0000015A
/* 03384 8091EE84 00042340 */  sll     $a0, $a0, 13               
/* 03388 8091EE88 00042400 */  sll     $a0, $a0, 16               
/* 0338C 8091EE8C 46088180 */  add.s   $f6, $f16, $f8             
/* 03390 8091EE90 00042403 */  sra     $a0, $a0, 16               
/* 03394 8091EE94 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 03398 8091EE98 E64601A0 */  swc1    $f6, 0x01A0($s2)           ## 000001A0
/* 0339C 8091EE9C 3C018092 */  lui     $at, %hi(D_80926CB0)       ## $at = 80920000
/* 033A0 8091EEA0 C4226CB0 */  lwc1    $f2, %lo(D_80926CB0)($at)  
/* 033A4 8091EEA4 3C018092 */  lui     $at, %hi(D_80926CB4)       ## $at = 80920000
/* 033A8 8091EEA8 C42A6CB4 */  lwc1    $f10, %lo(D_80926CB4)($at) 
/* 033AC 8091EEAC 46020102 */  mul.s   $f4, $f0, $f2              
/* 033B0 8091EEB0 44071000 */  mfc1    $a3, $f2                   
/* 033B4 8091EEB4 26440050 */  addiu   $a0, $s2, 0x0050           ## $a0 = 00000050
/* 033B8 8091EEB8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 033BC 8091EEBC 46045480 */  add.s   $f18, $f10, $f4            
/* 033C0 8091EEC0 44059000 */  mfc1    $a1, $f18                  
/* 033C4 8091EEC4 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 033C8 8091EEC8 00000000 */  nop
/* 033CC 8091EECC C6400060 */  lwc1    $f0, 0x0060($s2)           ## 00000060
/* 033D0 8091EED0 C6500028 */  lwc1    $f16, 0x0028($s2)          ## 00000028
/* 033D4 8091EED4 3C01C37A */  lui     $at, 0xC37A                ## $at = C37A0000
/* 033D8 8091EED8 44811000 */  mtc1    $at, $f2                   ## $f2 = -250.00
/* 033DC 8091EEDC 46008200 */  add.s   $f8, $f16, $f0             
/* 033E0 8091EEE0 241800CE */  addiu   $t8, $zero, 0x00CE         ## $t8 = 000000CE
/* 033E4 8091EEE4 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 033E8 8091EEE8 461C0181 */  sub.s   $f6, $f0, $f28             
/* 033EC 8091EEEC E6480028 */  swc1    $f8, 0x0028($s2)           ## 00000028
/* 033F0 8091EEF0 C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 033F4 8091EEF4 26441010 */  addiu   $a0, $s2, 0x1010           ## $a0 = 00001010
/* 033F8 8091EEF8 E6460060 */  swc1    $f6, 0x0060($s2)           ## 00000060
/* 033FC 8091EEFC 4602503C */  c.lt.s  $f10, $f2                  
/* 03400 8091EF00 240538F7 */  addiu   $a1, $zero, 0x38F7         ## $a1 = 000038F7
/* 03404 8091EF04 45020084 */  bc1fl   .L8091F118                 
/* 03408 8091EF08 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
/* 0340C 8091EF0C E6420028 */  swc1    $f2, 0x0028($s2)           ## 00000028
/* 03410 8091EF10 E65E0060 */  swc1    $f30, 0x0060($s2)          ## 00000060
/* 03414 8091EF14 A24001D1 */  sb      $zero, 0x01D1($s2)         ## 000001D1
/* 03418 8091EF18 A6580158 */  sh      $t8, 0x0158($s2)           ## 00000158
/* 0341C 8091EF1C 0C01E245 */  jal     func_80078914              
/* 03420 8091EF20 A648017E */  sh      $t0, 0x017E($s2)           ## 0000017E
/* 03424 8091EF24 8FA901BC */  lw      $t1, 0x01BC($sp)           
/* 03428 8091EF28 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0342C 8091EF2C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 03430 8091EF30 01215021 */  addu    $t2, $t1, $at              
/* 03434 8091EF34 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 03438 8091EF38 4481E000 */  mtc1    $at, $f28                  ## $f28 = 7.00
/* 0343C 8091EF3C 3C018092 */  lui     $at, %hi(D_80926CB8)       ## $at = 80920000
/* 03440 8091EF40 C43A6CB8 */  lwc1    $f26, %lo(D_80926CB8)($at) 
/* 03444 8091EF44 3C018092 */  lui     $at, %hi(D_80926CBC)       ## $at = 80920000
/* 03448 8091EF48 C4386CBC */  lwc1    $f24, %lo(D_80926CBC)($at) 
/* 0344C 8091EF4C 3C01C38C */  lui     $at, 0xC38C                ## $at = C38C0000
/* 03450 8091EF50 4481B000 */  mtc1    $at, $f22                  ## $f22 = -280.00
/* 03454 8091EF54 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03458 8091EF58 4481A000 */  mtc1    $at, $f20                  ## $f20 = 3.00
/* 0345C 8091EF5C AFAA008C */  sw      $t2, 0x008C($sp)           
/* 03460 8091EF60 26530024 */  addiu   $s3, $s2, 0x0024           ## $s3 = 00000024
/* 03464 8091EF64 27B000E0 */  addiu   $s0, $sp, 0x00E0           ## $s0 = FFFFFF28
.L8091EF68:
/* 03468 8091EF68 44912000 */  mtc1    $s1, $f4                   ## $f4 = 0.00
/* 0346C 8091EF6C E7BE00C8 */  swc1    $f30, 0x00C8($sp)          
/* 03470 8091EF70 E7BE00CC */  swc1    $f30, 0x00CC($sp)          
/* 03474 8091EF74 46802020 */  cvt.s.w $f0, $f4                   
/* 03478 8091EF78 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0347C 8091EF7C 46180482 */  mul.s   $f18, $f0, $f24            
/* 03480 8091EF80 E7B200D0 */  swc1    $f18, 0x00D0($sp)          
/* 03484 8091EF84 461A0302 */  mul.s   $f12, $f0, $f26            
/* 03488 8091EF88 0C034348 */  jal     Matrix_RotateY              
/* 0348C 8091EF8C 00000000 */  nop
/* 03490 8091EF90 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 03494 8091EF94 27A400C8 */  addiu   $a0, $sp, 0x00C8           ## $a0 = FFFFFF10
/* 03498 8091EF98 0C0346BD */  jal     Matrix_MultVec3f              
/* 0349C 8091EF9C 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFFF28
/* 034A0 8091EFA0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 034A4 8091EFA4 4600E306 */  mov.s   $f12, $f28                 
/* 034A8 8091EFA8 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 034AC 8091EFAC 44818000 */  mtc1    $at, $f16                  ## $f16 = 4.00
/* 034B0 8091EFB0 27A600D4 */  addiu   $a2, $sp, 0x00D4           ## $a2 = FFFFFF1C
/* 034B4 8091EFB4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 034B8 8091EFB8 46100200 */  add.s   $f8, $f0, $f16             
/* 034BC 8091EFBC 240F012C */  addiu   $t7, $zero, 0x012C         ## $t7 = 0000012C
/* 034C0 8091EFC0 E7A800E4 */  swc1    $f8, 0x00E4($sp)           
/* 034C4 8091EFC4 8E6D0000 */  lw      $t5, 0x0000($s3)           ## 00000024
/* 034C8 8091EFC8 ACCD0000 */  sw      $t5, 0x0000($a2)           ## FFFFFF1C
/* 034CC 8091EFCC 8E6C0004 */  lw      $t4, 0x0004($s3)           ## 00000028
/* 034D0 8091EFD0 ACCC0004 */  sw      $t4, 0x0004($a2)           ## FFFFFF20
/* 034D4 8091EFD4 8E6D0008 */  lw      $t5, 0x0008($s3)           ## 0000002C
/* 034D8 8091EFD8 ACCD0008 */  sw      $t5, 0x0008($a2)           ## FFFFFF24
/* 034DC 8091EFDC C7AA00E0 */  lwc1    $f10, 0x00E0($sp)          
/* 034E0 8091EFE0 C7B000E4 */  lwc1    $f16, 0x00E4($sp)          
/* 034E4 8091EFE4 C7A600D4 */  lwc1    $f6, 0x00D4($sp)           
/* 034E8 8091EFE8 46145102 */  mul.s   $f4, $f10, $f20            
/* 034EC 8091EFEC 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 034F0 8091EFF0 46148202 */  mul.s   $f8, $f16, $f20            
/* 034F4 8091EFF4 46043480 */  add.s   $f18, $f6, $f4             
/* 034F8 8091EFF8 C7A400D8 */  lwc1    $f4, 0x00D8($sp)           
/* 034FC 8091EFFC 460A4181 */  sub.s   $f6, $f8, $f10             
/* 03500 8091F000 E7B200D4 */  swc1    $f18, 0x00D4($sp)          
/* 03504 8091F004 46062480 */  add.s   $f18, $f4, $f6             
/* 03508 8091F008 4616903C */  c.lt.s  $f18, $f22                 
/* 0350C 8091F00C E7B200D8 */  swc1    $f18, 0x00D8($sp)          
/* 03510 8091F010 45020003 */  bc1fl   .L8091F020                 
/* 03514 8091F014 C7A800E8 */  lwc1    $f8, 0x00E8($sp)           
/* 03518 8091F018 E7B600D8 */  swc1    $f22, 0x00D8($sp)          
/* 0351C 8091F01C C7A800E8 */  lwc1    $f8, 0x00E8($sp)           
.L8091F020:
/* 03520 8091F020 01F1C823 */  subu    $t9, $t7, $s1              
/* 03524 8091F024 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 03528 8091F028 46144282 */  mul.s   $f10, $f8, $f20            
/* 0352C 8091F02C C7B000DC */  lwc1    $f16, 0x00DC($sp)          
/* 03530 8091F030 3C018092 */  lui     $at, %hi(D_80926CC0)       ## $at = 80920000
/* 03534 8091F034 C4286CC0 */  lwc1    $f8, %lo(D_80926CC0)($at)  
/* 03538 8091F038 3C018092 */  lui     $at, %hi(D_80926CC4)       ## $at = 80920000
/* 0353C 8091F03C 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 03540 8091F040 468034A0 */  cvt.s.w $f18, $f6                  
/* 03544 8091F044 02003825 */  or      $a3, $s0, $zero            ## $a3 = FFFFFF28
/* 03548 8091F048 460A8100 */  add.s   $f4, $f16, $f10            
/* 0354C 8091F04C 46089402 */  mul.s   $f16, $f18, $f8            
/* 03550 8091F050 C42A6CC4 */  lwc1    $f10, %lo(D_80926CC4)($at) 
/* 03554 8091F054 E7A400DC */  swc1    $f4, 0x00DC($sp)           
/* 03558 8091F058 8EA51E10 */  lw      $a1, 0x1E10($s5)           ## 00001E10
/* 0355C 8091F05C 460A8100 */  add.s   $f4, $f16, $f10            
/* 03560 8091F060 0C246F97 */  jal     func_8091BE5C              
/* 03564 8091F064 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 03568 8091F068 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 0356C 8091F06C 00118C00 */  sll     $s1, $s1, 16               
/* 03570 8091F070 00118C03 */  sra     $s1, $s1, 16               
/* 03574 8091F074 2A21012C */  slti    $at, $s1, 0x012C           
/* 03578 8091F078 1420FFBB */  bne     $at, $zero, .L8091EF68     
/* 0357C 8091F07C AFB5008C */  sw      $s5, 0x008C($sp)           
/* 03580 8091F080 C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 03584 8091F084 E7B60014 */  swc1    $f22, 0x0014($sp)          
/* 03588 8091F088 8FA601BC */  lw      $a2, 0x01BC($sp)           
/* 0358C 8091F08C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 03590 8091F090 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 03594 8091F094 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 03598 8091F098 24D01C24 */  addiu   $s0, $a2, 0x1C24           ## $s0 = 00001C24
/* 0359C 8091F09C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00001C24
/* 035A0 8091F0A0 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 035A4 8091F0A4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 035A8 8091F0A8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 035AC 8091F0AC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 035B0 8091F0B0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 035B4 8091F0B4 2407005D */  addiu   $a3, $zero, 0x005D         ## $a3 = 0000005D
/* 035B8 8091F0B8 0C00C916 */  jal     Actor_SpawnAttached
              
/* 035BC 8091F0BC E7B20018 */  swc1    $f18, 0x0018($sp)          
/* 035C0 8091F0C0 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 035C4 8091F0C4 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 035C8 8091F0C8 C6480024 */  lwc1    $f8, 0x0024($s2)           ## 00000024
/* 035CC 8091F0CC E7B60010 */  swc1    $f22, 0x0010($sp)          
/* 035D0 8091F0D0 C644002C */  lwc1    $f4, 0x002C($s2)           ## 0000002C
/* 035D4 8091F0D4 46104280 */  add.s   $f10, $f8, $f16            
/* 035D8 8091F0D8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 035DC 8091F0DC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 035E0 8091F0E0 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 035E4 8091F0E4 44075000 */  mfc1    $a3, $f10                  
/* 035E8 8091F0E8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 035EC 8091F0EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00001C24
/* 035F0 8091F0F0 8FA501BC */  lw      $a1, 0x01BC($sp)           
/* 035F4 8091F0F4 2406005F */  addiu   $a2, $zero, 0x005F         ## $a2 = 0000005F
/* 035F8 8091F0F8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 035FC 8091F0FC E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 03600 8091F100 0C03E803 */  jal     Audio_SetBGM
              
/* 03604 8091F104 24040021 */  addiu   $a0, $zero, 0x0021         ## $a0 = 00000021
/* 03608 8091F108 8FA401BC */  lw      $a0, 0x01BC($sp)           
/* 0360C 8091F10C 0C00B33C */  jal     Flags_SetClear
              
/* 03610 8091F110 82A51CBC */  lb      $a1, 0x1CBC($s5)           ## 00001CBC
.L8091F114:
/* 03614 8091F114 86430158 */  lh      $v1, 0x0158($s2)           ## 00000158
glabel L8091F118
.L8091F118:
/* 03618 8091F118 C6400050 */  lwc1    $f0, 0x0050($s2)           ## 00000050
.L8091F11C:
/* 0361C 8091F11C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 03620 8091F120 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
/* 03624 8091F124 E6400058 */  swc1    $f0, 0x0058($s2)           ## 00000058
/* 03628 8091F128 10610008 */  beq     $v1, $at, .L8091F14C       
/* 0362C 8091F12C E6400054 */  swc1    $f0, 0x0054($s2)           ## 00000054
/* 03630 8091F130 240100CA */  addiu   $at, $zero, 0x00CA         ## $at = 000000CA
/* 03634 8091F134 10610005 */  beq     $v1, $at, .L8091F14C       
/* 03638 8091F138 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0363C 8091F13C 10610003 */  beq     $v1, $at, .L8091F14C       
/* 03640 8091F140 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 03644 8091F144 5461005F */  bnel    $v1, $at, .L8091F2C4       
/* 03648 8091F148 8FBF007C */  lw      $ra, 0x007C($sp)           
.L8091F14C:
/* 0364C 8091F14C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 03650 8091F150 00000000 */  nop
/* 03654 8091F154 3C018092 */  lui     $at, %hi(D_80926CC8)       ## $at = 80920000
/* 03658 8091F158 C4266CC8 */  lwc1    $f6, %lo(D_80926CC8)($at)  
/* 0365C 8091F15C 3C018092 */  lui     $at, %hi(D_80926CCC)       ## $at = 80920000
/* 03660 8091F160 4606003C */  c.lt.s  $f0, $f6                   
/* 03664 8091F164 00000000 */  nop
/* 03668 8091F168 45020056 */  bc1fl   .L8091F2C4                 
/* 0366C 8091F16C 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 03670 8091F170 C4326CCC */  lwc1    $f18, %lo(D_80926CCC)($at) 
/* 03674 8091F174 C6480050 */  lwc1    $f8, 0x0050($s2)           ## 00000050
/* 03678 8091F178 3C188092 */  lui     $t8, %hi(D_809263AC)       ## $t8 = 80920000
/* 0367C 8091F17C 271863AC */  addiu   $t8, $t8, %lo(D_809263AC)  ## $t8 = 809263AC
/* 03680 8091F180 4608903C */  c.lt.s  $f18, $f8                  
/* 03684 8091F184 00000000 */  nop
/* 03688 8091F188 4502004E */  bc1fl   .L8091F2C4                 
/* 0368C 8091F18C 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 03690 8091F190 8F090000 */  lw      $t1, 0x0000($t8)           ## 809263AC
/* 03694 8091F194 27B300B0 */  addiu   $s3, $sp, 0x00B0           ## $s3 = FFFFFEF8
/* 03698 8091F198 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0369C 8091F19C AE690000 */  sw      $t1, 0x0000($s3)           ## FFFFFEF8
/* 036A0 8091F1A0 8F080004 */  lw      $t0, 0x0004($t8)           ## 809263B0
/* 036A4 8091F1A4 AE680004 */  sw      $t0, 0x0004($s3)           ## FFFFFEFC
/* 036A8 8091F1A8 8F090008 */  lw      $t1, 0x0008($t8)           ## 809263B4
/* 036AC 8091F1AC AE690008 */  sw      $t1, 0x0008($s3)           ## FFFFFF00
/* 036B0 8091F1B0 8FAA01BC */  lw      $t2, 0x01BC($sp)           
/* 036B4 8091F1B4 01416021 */  addu    $t4, $t2, $at              
/* 036B8 8091F1B8 AFAC008C */  sw      $t4, 0x008C($sp)           
/* 036BC 8091F1BC 864D0158 */  lh      $t5, 0x0158($s2)           ## 00000158
/* 036C0 8091F1C0 29A100CA */  slti    $at, $t5, 0x00CA           
/* 036C4 8091F1C4 1420000B */  bne     $at, $zero, .L8091F1F4     
/* 036C8 8091F1C8 3C018092 */  lui     $at, %hi(D_80926CD0)       ## $at = 80920000
/* 036CC 8091F1CC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 036D0 8091F1D0 C42C6CD0 */  lwc1    $f12, %lo(D_80926CD0)($at) 
/* 036D4 8091F1D4 3C018092 */  lui     $at, %hi(D_80926CD4)       ## $at = 80920000
/* 036D8 8091F1D8 C4306CD4 */  lwc1    $f16, %lo(D_80926CD4)($at) 
/* 036DC 8091F1DC C64A0F3C */  lwc1    $f10, 0x0F3C($s2)          ## 00000F3C
/* 036E0 8091F1E0 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 036E4 8091F1E4 265001C8 */  addiu   $s0, $s2, 0x01C8           ## $s0 = 000001C8
/* 036E8 8091F1E8 46100500 */  add.s   $f20, $f0, $f16            
/* 036EC 8091F1EC 1000001C */  beq     $zero, $zero, .L8091F260   
/* 036F0 8091F1F0 E7AA00C0 */  swc1    $f10, 0x00C0($sp)          
.L8091F1F4:
/* 036F4 8091F1F4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 036F8 8091F1F8 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 036FC 8091F1FC 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03700 8091F200 00000000 */  nop
/* 03704 8091F204 4600010D */  trunc.w.s $f4, $f0                   
/* 03708 8091F208 3C018092 */  lui     $at, %hi(D_80926CD8)       ## $at = 80920000
/* 0370C 8091F20C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 03710 8091F210 C42C6CD8 */  lwc1    $f12, %lo(D_80926CD8)($at) 
/* 03714 8091F214 44112000 */  mfc1    $s1, $f4                   
/* 03718 8091F218 00000000 */  nop
/* 0371C 8091F21C 00118C00 */  sll     $s1, $s1, 16               
/* 03720 8091F220 00118C03 */  sra     $s1, $s1, 16               
/* 03724 8091F224 26310012 */  addiu   $s1, $s1, 0x0012           ## $s1 = 00000013
/* 03728 8091F228 00118C00 */  sll     $s1, $s1, 16               
/* 0372C 8091F22C 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 03730 8091F230 00118C03 */  sra     $s1, $s1, 16               
/* 03734 8091F234 02340019 */  multu   $s1, $s4                   
/* 03738 8091F238 3C018092 */  lui     $at, %hi(D_80926CDC)       ## $at = 80920000
/* 0373C 8091F23C C4266CDC */  lwc1    $f6, %lo(D_80926CDC)($at)  
/* 03740 8091F240 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 03744 8091F244 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 03748 8091F248 46060500 */  add.s   $f20, $f0, $f6             
/* 0374C 8091F24C 0000C812 */  mflo    $t9                        
/* 03750 8091F250 02598021 */  addu    $s0, $s2, $t9              
/* 03754 8091F254 C6120D74 */  lwc1    $f18, 0x0D74($s0)          ## 00000F3C
/* 03758 8091F258 46089401 */  sub.s   $f16, $f18, $f8            
/* 0375C 8091F25C E7B000C0 */  swc1    $f16, 0x00C0($sp)          
.L8091F260:
/* 03760 8091F260 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 03764 8091F264 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 03768 8091F268 C64A0050 */  lwc1    $f10, 0x0050($s2)          ## 00000050
/* 0376C 8091F26C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 03770 8091F270 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 03774 8091F274 46045182 */  mul.s   $f6, $f10, $f4             
/* 03778 8091F278 00000000 */  nop
/* 0377C 8091F27C 46123582 */  mul.s   $f22, $f6, $f18            
/* 03780 8091F280 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03784 8091F284 4600B306 */  mov.s   $f12, $f22                 
/* 03788 8091F288 C6080D70 */  lwc1    $f8, 0x0D70($s0)           ## 00000F38
/* 0378C 8091F28C 4600B306 */  mov.s   $f12, $f22                 
/* 03790 8091F290 46080400 */  add.s   $f16, $f0, $f8             
/* 03794 8091F294 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03798 8091F298 E7B000BC */  swc1    $f16, 0x00BC($sp)          
/* 0379C 8091F29C C60A0D78 */  lwc1    $f10, 0x0D78($s0)          ## 00000F40
/* 037A0 8091F2A0 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 037A4 8091F2A4 27A600BC */  addiu   $a2, $sp, 0x00BC           ## $a2 = FFFFFF04
/* 037A8 8091F2A8 460A0100 */  add.s   $f4, $f0, $f10             
/* 037AC 8091F2AC 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFEF8
/* 037B0 8091F2B0 E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 037B4 8091F2B4 8EA51E10 */  lw      $a1, 0x1E10($s5)           ## 00001E10
/* 037B8 8091F2B8 0C246F97 */  jal     func_8091BE5C              
/* 037BC 8091F2BC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 037C0 8091F2C0 8FBF007C */  lw      $ra, 0x007C($sp)           
.L8091F2C4:
/* 037C4 8091F2C4 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 037C8 8091F2C8 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 037CC 8091F2CC D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 037D0 8091F2D0 D7BA0048 */  ldc1    $f26, 0x0048($sp)          
/* 037D4 8091F2D4 D7BC0050 */  ldc1    $f28, 0x0050($sp)          
/* 037D8 8091F2D8 D7BE0058 */  ldc1    $f30, 0x0058($sp)          
/* 037DC 8091F2DC 8FB00064 */  lw      $s0, 0x0064($sp)           
/* 037E0 8091F2E0 8FB10068 */  lw      $s1, 0x0068($sp)           
/* 037E4 8091F2E4 8FB2006C */  lw      $s2, 0x006C($sp)           
/* 037E8 8091F2E8 8FB30070 */  lw      $s3, 0x0070($sp)           
/* 037EC 8091F2EC 8FB40074 */  lw      $s4, 0x0074($sp)           
/* 037F0 8091F2F0 8FB50078 */  lw      $s5, 0x0078($sp)           
/* 037F4 8091F2F4 03E00008 */  jr      $ra                        
/* 037F8 8091F2F8 27BD01B8 */  addiu   $sp, $sp, 0x01B8           ## $sp = 00000000
