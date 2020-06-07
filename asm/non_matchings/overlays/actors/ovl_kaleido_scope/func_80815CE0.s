glabel func_80815CE0
/* 024C0 80815CE0 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 024C4 80815CE4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 024C8 80815CE8 27B00030 */  addiu   $s0, $sp, 0x0030           ## $s0 = FFFFFFD0
/* 024CC 80815CEC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 024D0 80815CF0 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 024D4 80815CF4 0C03EEE3 */  jal     GfxPrint_Ctor              
/* 024D8 80815CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 024DC 80815CFC 8FAE0060 */  lw      $t6, 0x0060($sp)           
/* 024E0 80815D00 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 024E4 80815D04 0C03EF07 */  jal     GfxPrint_Open              
/* 024E8 80815D08 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 024EC 80815D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 024F0 80815D10 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 024F4 80815D14 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 024F8 80815D18 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 024FC 80815D1C 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 02500 80815D20 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02504 80815D24 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02508 80815D28 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0250C 80815D2C 2406003C */  addiu   $a2, $zero, 0x003C         ## $a2 = 0000003C
/* 02510 80815D30 0C03ECEB */  jal     GfxPrint_SetColor
              
/* 02514 80815D34 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02518 80815D38 3C058083 */  lui     $a1, %hi(D_8082F4C0)       ## $a1 = 80830000
/* 0251C 80815D3C 3C068083 */  lui     $a2, %hi(D_8082F4C4)       ## $a2 = 80830000
/* 02520 80815D40 24C6F4C4 */  addiu   $a2, $a2, %lo(D_8082F4C4)  ## $a2 = 8082F4C4
/* 02524 80815D44 24A5F4C0 */  addiu   $a1, $a1, %lo(D_8082F4C0)  ## $a1 = 8082F4C0
/* 02528 80815D48 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0252C 80815D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02530 80815D50 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02534 80815D54 2405000F */  addiu   $a1, $zero, 0x000F         ## $a1 = 0000000F
/* 02538 80815D58 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0253C 80815D5C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 02540 80815D60 3C058083 */  lui     $a1, %hi(D_8082F4D0)       ## $a1 = 80830000
/* 02544 80815D64 3C068083 */  lui     $a2, %hi(D_8082F4D4)       ## $a2 = 80830000
/* 02548 80815D68 24C6F4D4 */  addiu   $a2, $a2, %lo(D_8082F4D4)  ## $a2 = 8082F4D4
/* 0254C 80815D6C 24A5F4D0 */  addiu   $a1, $a1, %lo(D_8082F4D0)  ## $a1 = 8082F4D0
/* 02550 80815D70 0C03EF2D */  jal     GfxPrint_Printf
              
/* 02554 80815D74 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02558 80815D78 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 0255C 80815D7C 2405001A */  addiu   $a1, $zero, 0x001A         ## $a1 = 0000001A
/* 02560 80815D80 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 02564 80815D84 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 02568 80815D88 3C058083 */  lui     $a1, %hi(D_8082F4DC)       ## $a1 = 80830000
/* 0256C 80815D8C 3C068083 */  lui     $a2, %hi(D_8082F4E0)       ## $a2 = 80830000
/* 02570 80815D90 24C6F4E0 */  addiu   $a2, $a2, %lo(D_8082F4E0)  ## $a2 = 8082F4E0
/* 02574 80815D94 24A5F4DC */  addiu   $a1, $a1, %lo(D_8082F4DC)  ## $a1 = 8082F4DC
/* 02578 80815D98 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0257C 80815D9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02580 80815DA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02584 80815DA4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 02588 80815DA8 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0258C 80815DAC 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 02590 80815DB0 3C058083 */  lui     $a1, %hi(D_8082F4E4)       ## $a1 = 80830000
/* 02594 80815DB4 3C068083 */  lui     $a2, %hi(D_8082F4E8)       ## $a2 = 80830000
/* 02598 80815DB8 24C6F4E8 */  addiu   $a2, $a2, %lo(D_8082F4E8)  ## $a2 = 8082F4E8
/* 0259C 80815DBC 24A5F4E4 */  addiu   $a1, $a1, %lo(D_8082F4E4)  ## $a1 = 8082F4E4
/* 025A0 80815DC0 0C03EF2D */  jal     GfxPrint_Printf
              
/* 025A4 80815DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025A8 80815DC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025AC 80815DCC 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 025B0 80815DD0 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 025B4 80815DD4 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 025B8 80815DD8 3C058083 */  lui     $a1, %hi(D_8082F4F4)       ## $a1 = 80830000
/* 025BC 80815DDC 3C068083 */  lui     $a2, %hi(D_8082F4F8)       ## $a2 = 80830000
/* 025C0 80815DE0 24C6F4F8 */  addiu   $a2, $a2, %lo(D_8082F4F8)  ## $a2 = 8082F4F8
/* 025C4 80815DE4 24A5F4F4 */  addiu   $a1, $a1, %lo(D_8082F4F4)  ## $a1 = 8082F4F4
/* 025C8 80815DE8 0C03EF2D */  jal     GfxPrint_Printf
              
/* 025CC 80815DEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025D0 80815DF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025D4 80815DF4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 025D8 80815DF8 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 025DC 80815DFC 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 025E0 80815E00 3C058083 */  lui     $a1, %hi(D_8082F4FC)       ## $a1 = 80830000
/* 025E4 80815E04 3C068083 */  lui     $a2, %hi(D_8082F500)       ## $a2 = 80830000
/* 025E8 80815E08 24C6F500 */  addiu   $a2, $a2, %lo(D_8082F500)  ## $a2 = 8082F500
/* 025EC 80815E0C 24A5F4FC */  addiu   $a1, $a1, %lo(D_8082F4FC)  ## $a1 = 8082F4FC
/* 025F0 80815E10 0C03EF2D */  jal     GfxPrint_Printf
              
/* 025F4 80815E14 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025F8 80815E18 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 025FC 80815E1C 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 02600 80815E20 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 02604 80815E24 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 02608 80815E28 3C058083 */  lui     $a1, %hi(D_8082F50C)       ## $a1 = 80830000
/* 0260C 80815E2C 3C068083 */  lui     $a2, %hi(D_8082F510)       ## $a2 = 80830000
/* 02610 80815E30 24C6F510 */  addiu   $a2, $a2, %lo(D_8082F510)  ## $a2 = 8082F510
/* 02614 80815E34 24A5F50C */  addiu   $a1, $a1, %lo(D_8082F50C)  ## $a1 = 8082F50C
/* 02618 80815E38 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0261C 80815E3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02620 80815E40 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02624 80815E44 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 02628 80815E48 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0262C 80815E4C 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 02630 80815E50 3C058083 */  lui     $a1, %hi(D_8082F518)       ## $a1 = 80830000
/* 02634 80815E54 3C068083 */  lui     $a2, %hi(D_8082F51C)       ## $a2 = 80830000
/* 02638 80815E58 24C6F51C */  addiu   $a2, $a2, %lo(D_8082F51C)  ## $a2 = 8082F51C
/* 0263C 80815E5C 24A5F518 */  addiu   $a1, $a1, %lo(D_8082F518)  ## $a1 = 8082F518
/* 02640 80815E60 0C03EF2D */  jal     GfxPrint_Printf
              
/* 02644 80815E64 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02648 80815E68 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 0264C 80815E6C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 02650 80815E70 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 02654 80815E74 24060011 */  addiu   $a2, $zero, 0x0011         ## $a2 = 00000011
/* 02658 80815E78 3C058083 */  lui     $a1, %hi(D_8082F524)       ## $a1 = 80830000
/* 0265C 80815E7C 3C068083 */  lui     $a2, %hi(D_8082F528)       ## $a2 = 80830000
/* 02660 80815E80 24C6F528 */  addiu   $a2, $a2, %lo(D_8082F528)  ## $a2 = 8082F528
/* 02664 80815E84 24A5F524 */  addiu   $a1, $a1, %lo(D_8082F524)  ## $a1 = 8082F524
/* 02668 80815E88 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0266C 80815E8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02670 80815E90 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02674 80815E94 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 02678 80815E98 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0267C 80815E9C 24060013 */  addiu   $a2, $zero, 0x0013         ## $a2 = 00000013
/* 02680 80815EA0 3C058083 */  lui     $a1, %hi(D_8082F52C)       ## $a1 = 80830000
/* 02684 80815EA4 3C068083 */  lui     $a2, %hi(D_8082F530)       ## $a2 = 80830000
/* 02688 80815EA8 24C6F530 */  addiu   $a2, $a2, %lo(D_8082F530)  ## $a2 = 8082F530
/* 0268C 80815EAC 24A5F52C */  addiu   $a1, $a1, %lo(D_8082F52C)  ## $a1 = 8082F52C
/* 02690 80815EB0 0C03EF2D */  jal     GfxPrint_Printf
              
/* 02694 80815EB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02698 80815EB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 0269C 80815EBC 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 026A0 80815EC0 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 026A4 80815EC4 24060013 */  addiu   $a2, $zero, 0x0013         ## $a2 = 00000013
/* 026A8 80815EC8 3C058083 */  lui     $a1, %hi(D_8082F53C)       ## $a1 = 80830000
/* 026AC 80815ECC 3C068083 */  lui     $a2, %hi(D_8082F540)       ## $a2 = 80830000
/* 026B0 80815ED0 24C6F540 */  addiu   $a2, $a2, %lo(D_8082F540)  ## $a2 = 8082F540
/* 026B4 80815ED4 24A5F53C */  addiu   $a1, $a1, %lo(D_8082F53C)  ## $a1 = 8082F53C
/* 026B8 80815ED8 0C03EF2D */  jal     GfxPrint_Printf
              
/* 026BC 80815EDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 026C0 80815EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 026C4 80815EE4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 026C8 80815EE8 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 026CC 80815EEC 24060015 */  addiu   $a2, $zero, 0x0015         ## $a2 = 00000015
/* 026D0 80815EF0 3C058083 */  lui     $a1, %hi(D_8082F550)       ## $a1 = 80830000
/* 026D4 80815EF4 3C068083 */  lui     $a2, %hi(D_8082F554)       ## $a2 = 80830000
/* 026D8 80815EF8 24C6F554 */  addiu   $a2, $a2, %lo(D_8082F554)  ## $a2 = 8082F554
/* 026DC 80815EFC 24A5F550 */  addiu   $a1, $a1, %lo(D_8082F550)  ## $a1 = 8082F550
/* 026E0 80815F00 0C03EF2D */  jal     GfxPrint_Printf
              
/* 026E4 80815F04 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 026E8 80815F08 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 026EC 80815F0C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 026F0 80815F10 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 026F4 80815F14 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 026F8 80815F18 3C058083 */  lui     $a1, %hi(D_8082F560)       ## $a1 = 80830000
/* 026FC 80815F1C 3C068083 */  lui     $a2, %hi(D_8082F564)       ## $a2 = 80830000
/* 02700 80815F20 24C6F564 */  addiu   $a2, $a2, %lo(D_8082F564)  ## $a2 = 8082F564
/* 02704 80815F24 24A5F560 */  addiu   $a1, $a1, %lo(D_8082F560)  ## $a1 = 8082F560
/* 02708 80815F28 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0270C 80815F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02710 80815F30 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02714 80815F34 2405000E */  addiu   $a1, $zero, 0x000E         ## $a1 = 0000000E
/* 02718 80815F38 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0271C 80815F3C 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 02720 80815F40 3C058083 */  lui     $a1, %hi(D_8082F570)       ## $a1 = 80830000
/* 02724 80815F44 3C068083 */  lui     $a2, %hi(D_8082F574)       ## $a2 = 80830000
/* 02728 80815F48 24C6F574 */  addiu   $a2, $a2, %lo(D_8082F574)  ## $a2 = 8082F574
/* 0272C 80815F4C 24A5F570 */  addiu   $a1, $a1, %lo(D_8082F570)  ## $a1 = 8082F570
/* 02730 80815F50 0C03EF2D */  jal     GfxPrint_Printf
              
/* 02734 80815F54 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02738 80815F58 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 0273C 80815F5C 24050017 */  addiu   $a1, $zero, 0x0017         ## $a1 = 00000017
/* 02740 80815F60 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 02744 80815F64 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 02748 80815F68 3C058083 */  lui     $a1, %hi(D_8082F580)       ## $a1 = 80830000
/* 0274C 80815F6C 3C068083 */  lui     $a2, %hi(D_8082F584)       ## $a2 = 80830000
/* 02750 80815F70 24C6F584 */  addiu   $a2, $a2, %lo(D_8082F584)  ## $a2 = 8082F584
/* 02754 80815F74 24A5F580 */  addiu   $a1, $a1, %lo(D_8082F580)  ## $a1 = 8082F580
/* 02758 80815F78 0C03EF2D */  jal     GfxPrint_Printf
              
/* 0275C 80815F7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02760 80815F80 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02764 80815F84 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 02768 80815F88 0C03ED07 */  jal     GfxPrint_SetPos
              
/* 0276C 80815F8C 24060018 */  addiu   $a2, $zero, 0x0018         ## $a2 = 00000018
/* 02770 80815F90 3C058083 */  lui     $a1, %hi(D_8082F58C)       ## $a1 = 80830000
/* 02774 80815F94 3C068083 */  lui     $a2, %hi(D_8082F590)       ## $a2 = 80830000
/* 02778 80815F98 24C6F590 */  addiu   $a2, $a2, %lo(D_8082F590)  ## $a2 = 8082F590
/* 0277C 80815F9C 24A5F58C */  addiu   $a1, $a1, %lo(D_8082F58C)  ## $a1 = 8082F58C
/* 02780 80815FA0 0C03EF2D */  jal     GfxPrint_Printf
              
/* 02784 80815FA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02788 80815FA8 0C03EF19 */  jal     GfxPrint_Close              
/* 0278C 80815FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02790 80815FB0 8FB80060 */  lw      $t8, 0x0060($sp)           
/* 02794 80815FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = FFFFFFD0
/* 02798 80815FB8 0C03EF05 */  jal     GfxPrint_Dtor              
/* 0279C 80815FBC AF020000 */  sw      $v0, 0x0000($t8)           ## 00000000
/* 027A0 80815FC0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 027A4 80815FC4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 027A8 80815FC8 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 027AC 80815FCC 03E00008 */  jr      $ra                        
/* 027B0 80815FD0 00000000 */  nop
