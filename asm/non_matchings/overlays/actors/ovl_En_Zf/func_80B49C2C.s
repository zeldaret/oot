glabel func_80B49C2C
/* 05BDC 80B49C2C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 05BE0 80B49C30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05BE4 80B49C34 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 05BE8 80B49C38 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 05BEC 80B49C3C 0C00CDE0 */  jal     func_80033780              
/* 05BF0 80B49C40 3C064416 */  lui     $a2, 0x4416                ## $a2 = 44160000
/* 05BF4 80B49C44 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 05BF8 80B49C48 1040007B */  beq     $v0, $zero, .L80B49E38     
/* 05BFC 80B49C4C 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 05C00 80B49C50 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05C04 80B49C54 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 05C08 80B49C58 0C00B69E */  jal     func_8002DA78              
/* 05C0C 80B49C5C AFA70024 */  sw      $a3, 0x0024($sp)           
/* 05C10 80B49C60 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 05C14 80B49C64 3C06C100 */  lui     $a2, 0xC100                ## $a2 = C1000000
/* 05C18 80B49C68 848F00B6 */  lh      $t7, 0x00B6($a0)           ## 000000B6
/* 05C1C 80B49C6C 004F4823 */  subu    $t1, $v0, $t7              
/* 05C20 80B49C70 25F83FFF */  addiu   $t8, $t7, 0x3FFF           ## $t8 = 00003FFF
/* 05C24 80B49C74 00094C00 */  sll     $t1, $t1, 16               
/* 05C28 80B49C78 A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 05C2C 80B49C7C 00094C03 */  sra     $t1, $t1, 16               
/* 05C30 80B49C80 A7A9001A */  sh      $t1, 0x001A($sp)           
/* 05C34 80B49C84 A7A00018 */  sh      $zero, 0x0018($sp)         
/* 05C38 80B49C88 0C2D1016 */  jal     func_80B44058              
/* 05C3C 80B49C8C 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 05C40 80B49C90 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 05C44 80B49C94 87A80018 */  lh      $t0, 0x0018($sp)           
/* 05C48 80B49C98 10400002 */  beq     $v0, $zero, .L80B49CA4     
/* 05C4C 80B49C9C 87A9001A */  lh      $t1, 0x001A($sp)           
/* 05C50 80B49CA0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
.L80B49CA4:
/* 05C54 80B49CA4 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05C58 80B49CA8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 05C5C 80B49CAC 3C064100 */  lui     $a2, 0x4100                ## $a2 = 41000000
/* 05C60 80B49CB0 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 05C64 80B49CB4 A7A80018 */  sh      $t0, 0x0018($sp)           
/* 05C68 80B49CB8 0C2D1016 */  jal     func_80B44058              
/* 05C6C 80B49CBC A7A9001A */  sh      $t1, 0x001A($sp)           
/* 05C70 80B49CC0 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 05C74 80B49CC4 87A80018 */  lh      $t0, 0x0018($sp)           
/* 05C78 80B49CC8 10400004 */  beq     $v0, $zero, .L80B49CDC     
/* 05C7C 80B49CCC 87A9001A */  lh      $t1, 0x001A($sp)           
/* 05C80 80B49CD0 35080002 */  ori     $t0, $t0, 0x0002           ## $t0 = 00000002
/* 05C84 80B49CD4 00084400 */  sll     $t0, $t0, 16               
/* 05C88 80B49CD8 00084403 */  sra     $t0, $t0, 16               
.L80B49CDC:
/* 05C8C 80B49CDC 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 05C90 80B49CE0 44813000 */  mtc1    $at, $f6                   ## $f6 = 90.00
/* 05C94 80B49CE4 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 05C98 80B49CE8 84F900B6 */  lh      $t9, 0x00B6($a3)           ## 000000B6
/* 05C9C 80B49CEC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 05CA0 80B49CF0 4606203C */  c.lt.s  $f4, $f6                   
/* 05CA4 80B49CF4 A4F90032 */  sh      $t9, 0x0032($a3)           ## 00000032
/* 05CA8 80B49CF8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 05CAC 80B49CFC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05CB0 80B49D00 45010003 */  bc1t    .L80B49D10                 
/* 05CB4 80B49D04 3C064307 */  lui     $a2, 0x4307                ## $a2 = 43070000
/* 05CB8 80B49D08 5501000A */  bnel    $t0, $at, .L80B49D34       
/* 05CBC 80B49D0C 8FAA001C */  lw      $t2, 0x001C($sp)           
.L80B49D10:
/* 05CC0 80B49D10 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 05CC4 80B49D14 A7A80018 */  sh      $t0, 0x0018($sp)           
/* 05CC8 80B49D18 0C2D1016 */  jal     func_80B44058              
/* 05CCC 80B49D1C A7A9001A */  sh      $t1, 0x001A($sp)           
/* 05CD0 80B49D20 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 05CD4 80B49D24 87A80018 */  lh      $t0, 0x0018($sp)           
/* 05CD8 80B49D28 10400006 */  beq     $v0, $zero, .L80B49D44     
/* 05CDC 80B49D2C 87A9001A */  lh      $t1, 0x001A($sp)           
/* 05CE0 80B49D30 8FAA001C */  lw      $t2, 0x001C($sp)           
.L80B49D34:
/* 05CE4 80B49D34 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 05CE8 80B49D38 854B0000 */  lh      $t3, 0x0000($t2)           ## 00000000
/* 05CEC 80B49D3C 55610006 */  bnel    $t3, $at, .L80B49D58       
/* 05CF0 80B49D40 84EC00B6 */  lh      $t4, 0x00B6($a3)           ## 000000B6
.L80B49D44:
/* 05CF4 80B49D44 0C2D2084 */  jal     func_80B48210              
/* 05CF8 80B49D48 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05CFC 80B49D4C 1000003B */  beq     $zero, $zero, .L80B49E3C   
/* 05D00 80B49D50 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 05D04 80B49D54 84EC00B6 */  lh      $t4, 0x00B6($a3)           ## 000000B6
.L80B49D58:
/* 05D08 80B49D58 00081C00 */  sll     $v1, $t0, 16               
/* 05D0C 80B49D5C 00031C03 */  sra     $v1, $v1, 16               
/* 05D10 80B49D60 258D3FFF */  addiu   $t5, $t4, 0x3FFF           ## $t5 = 00003FFF
/* 05D14 80B49D64 15000009 */  bne     $t0, $zero, .L80B49D8C     
/* 05D18 80B49D68 A4ED0032 */  sh      $t5, 0x0032($a3)           ## 00000032
/* 05D1C 80B49D6C 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 05D20 80B49D70 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 05D24 80B49D74 006E1821 */  addu    $v1, $v1, $t6              
/* 05D28 80B49D78 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 05D2C 80B49D7C 30630001 */  andi    $v1, $v1, 0x0001           ## $v1 = 00000000
/* 05D30 80B49D80 00031C00 */  sll     $v1, $v1, 16               
/* 05D34 80B49D84 10000001 */  beq     $zero, $zero, .L80B49D8C   
/* 05D38 80B49D88 00031C03 */  sra     $v1, $v1, 16               
.L80B49D8C:
/* 05D3C 80B49D8C 05200003 */  bltz    $t1, .L80B49D9C            
/* 05D40 80B49D90 00091023 */  subu    $v0, $zero, $t1            
/* 05D44 80B49D94 10000001 */  beq     $zero, $zero, .L80B49D9C   
/* 05D48 80B49D98 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
.L80B49D9C:
/* 05D4C 80B49D9C 28412000 */  slti    $at, $v0, 0x2000           
/* 05D50 80B49DA0 14200008 */  bne     $at, $zero, .L80B49DC4     
/* 05D54 80B49DA4 306F0001 */  andi    $t7, $v1, 0x0001           ## $t7 = 00000000
/* 05D58 80B49DA8 05200003 */  bltz    $t1, .L80B49DB8            
/* 05D5C 80B49DAC 00091023 */  subu    $v0, $zero, $t1            
/* 05D60 80B49DB0 10000001 */  beq     $zero, $zero, .L80B49DB8   
/* 05D64 80B49DB4 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
.L80B49DB8:
/* 05D68 80B49DB8 28416000 */  slti    $at, $v0, 0x6000           
/* 05D6C 80B49DBC 1420000C */  bne     $at, $zero, .L80B49DF0     
/* 05D70 80B49DC0 00000000 */  nop
.L80B49DC4:
/* 05D74 80B49DC4 11E00006 */  beq     $t7, $zero, .L80B49DE0     
/* 05D78 80B49DC8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05D7C 80B49DCC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05D80 80B49DD0 0C2D26D8 */  jal     func_80B49B60              
/* 05D84 80B49DD4 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 05D88 80B49DD8 10000018 */  beq     $zero, $zero, .L80B49E3C   
/* 05D8C 80B49DDC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B49DE0:
/* 05D90 80B49DE0 0C2D26D8 */  jal     func_80B49B60              
/* 05D94 80B49DE4 3C05C100 */  lui     $a1, 0xC100                ## $a1 = C1000000
/* 05D98 80B49DE8 10000014 */  beq     $zero, $zero, .L80B49E3C   
/* 05D9C 80B49DEC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B49DF0:
/* 05DA0 80B49DF0 05200003 */  bltz    $t1, .L80B49E00            
/* 05DA4 80B49DF4 00091023 */  subu    $v0, $zero, $t1            
/* 05DA8 80B49DF8 10000001 */  beq     $zero, $zero, .L80B49E00   
/* 05DAC 80B49DFC 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
.L80B49E00:
/* 05DB0 80B49E00 28415FFF */  slti    $at, $v0, 0x5FFF           
/* 05DB4 80B49E04 1020000A */  beq     $at, $zero, .L80B49E30     
/* 05DB8 80B49E08 30780001 */  andi    $t8, $v1, 0x0001           ## $t8 = 00000000
/* 05DBC 80B49E0C 13000006 */  beq     $t8, $zero, .L80B49E28     
/* 05DC0 80B49E10 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05DC4 80B49E14 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 05DC8 80B49E18 0C2D26D8 */  jal     func_80B49B60              
/* 05DCC 80B49E1C 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 05DD0 80B49E20 10000006 */  beq     $zero, $zero, .L80B49E3C   
/* 05DD4 80B49E24 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B49E28:
/* 05DD8 80B49E28 0C2D26D8 */  jal     func_80B49B60              
/* 05DDC 80B49E2C 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
.L80B49E30:
/* 05DE0 80B49E30 10000002 */  beq     $zero, $zero, .L80B49E3C   
/* 05DE4 80B49E34 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B49E38:
/* 05DE8 80B49E38 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B49E3C:
/* 05DEC 80B49E3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05DF0 80B49E40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 05DF4 80B49E44 03E00008 */  jr      $ra                        
/* 05DF8 80B49E48 00000000 */  nop
