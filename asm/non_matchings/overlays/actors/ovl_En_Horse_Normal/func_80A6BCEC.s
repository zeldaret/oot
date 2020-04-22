glabel func_80A6BCEC
/* 00A9C 80A6BCEC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AA0 80A6BCF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00AA4 80A6BCF4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AA8 80A6BCF8 8C820150 */  lw      $v0, 0x0150($a0)           ## 00000150
/* 00AAC 80A6BCFC 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00AB0 80A6BD00 00807025 */  or      $t6, $a0, $zero            ## $t6 = 00000000
/* 00AB4 80A6BD04 1441000C */  bne     $v0, $at, .L80A6BD38       
/* 00AB8 80A6BD08 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00ABC 80A6BD0C 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 00AC0 80A6BD10 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00AC4 80A6BD14 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 00AC8 80A6BD18 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00ACC 80A6BD1C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00AD0 80A6BD20 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 00AD4 80A6BD24 25C500E4 */  addiu   $a1, $t6, 0x00E4           ## $a1 = 000000E4
/* 00AD8 80A6BD28 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00ADC 80A6BD2C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00AE0 80A6BD30 1000000F */  beq     $zero, $zero, .L80A6BD70   
/* 00AE4 80A6BD34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A6BD38:
/* 00AE8 80A6BD38 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00AEC 80A6BD3C 1441000B */  bne     $v0, $at, .L80A6BD6C       
/* 00AF0 80A6BD40 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00AF4 80A6BD44 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00AF8 80A6BD48 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 00AFC 80A6BD4C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00B00 80A6BD50 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 00B04 80A6BD54 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00B08 80A6BD58 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00B0C 80A6BD5C 24042804 */  addiu   $a0, $zero, 0x2804         ## $a0 = 00002804
/* 00B10 80A6BD60 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00B14 80A6BD64 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00B18 80A6BD68 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
.L80A6BD6C:
/* 00B1C 80A6BD6C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A6BD70:
/* 00B20 80A6BD70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B24 80A6BD74 03E00008 */  jr      $ra                        
/* 00B28 80A6BD78 00000000 */  nop
