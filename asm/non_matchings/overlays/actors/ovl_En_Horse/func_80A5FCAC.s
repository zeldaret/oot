glabel func_80A5FCAC
/* 049BC 80A5FCAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 049C0 80A5FCB0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 049C4 80A5FCB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 049C8 80A5FCB8 AC800204 */  sw      $zero, 0x0204($a0)         ## 00000204
/* 049CC 80A5FCBC AC800218 */  sw      $zero, 0x0218($a0)         ## 00000218
/* 049D0 80A5FCC0 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 049D4 80A5FCC4 0C297F75 */  jal     func_80A5FDD4              
/* 049D8 80A5FCC8 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 049DC 80A5FCCC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 049E0 80A5FCD0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 049E4 80A5FCD4 3C088013 */  lui     $t0, %hi(D_801333E8)
/* 049E8 80A5FCD8 8C8F0228 */  lw      $t7, 0x0228($a0)           ## 00000228
/* 049EC 80A5FCDC 2485021C */  addiu   $a1, $a0, 0x021C           ## $a1 = 0000021C
/* 049F0 80A5FCE0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 049F4 80A5FCE4 ACAF0000 */  sw      $t7, 0x0000($a1)           ## 0000021C
/* 049F8 80A5FCE8 8C8E022C */  lw      $t6, 0x022C($a0)           ## 0000022C
/* 049FC 80A5FCEC 250833E8 */  addiu   $t0, %lo(D_801333E8)
/* 04A00 80A5FCF0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 04A04 80A5FCF4 ACAE0004 */  sw      $t6, 0x0004($a1)           ## 00000220
/* 04A08 80A5FCF8 8C8F0230 */  lw      $t7, 0x0230($a0)           ## 00000230
/* 04A0C 80A5FCFC ACAF0008 */  sw      $t7, 0x0008($a1)           ## 00000224
/* 04A10 80A5FD00 8C9801F0 */  lw      $t8, 0x01F0($a0)           ## 000001F0
/* 04A14 80A5FD04 24041844 */  addiu   $a0, $zero, 0x1844         ## $a0 = 00001844
/* 04A18 80A5FD08 0018C900 */  sll     $t9, $t8,  4               
/* 04A1C 80A5FD0C 07230005 */  bgezl   $t9, .L80A5FD24            
/* 04A20 80A5FD10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04A24 80A5FD14 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 04A28 80A5FD18 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 04A2C 80A5FD1C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 04A30 80A5FD20 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A5FD24:
/* 04A34 80A5FD24 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 04A38 80A5FD28 03E00008 */  jr      $ra                        
/* 04A3C 80A5FD2C 00000000 */  nop
