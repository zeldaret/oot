glabel func_80986570
/* 01990 80986570 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01994 80986574 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01998 80986578 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0199C 8098657C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019A0 80986580 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 019A4 80986584 3C0540E0 */  lui     $a1, 0x40E0                ## $a1 = 40E00000
/* 019A8 80986588 0C0295B2 */  jal     func_800A56C8              
/* 019AC 8098658C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 019B0 80986590 50400015 */  beql    $v0, $zero, .L809865E8     
/* 019B4 80986594 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 019B8 80986598 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 019BC 8098659C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 019C0 809865A0 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 019C4 809865A4 11E0000F */  beq     $t7, $zero, .L809865E4     
/* 019C8 809865A8 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 019CC 809865AC 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 019D0 809865B0 0C0107CD */  jal     func_80041F34              
/* 019D4 809865B4 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 019D8 809865B8 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 019DC 809865BC 3C188013 */  lui     $t8, 0x8013                ## $t8 = 80130000
/* 019E0 809865C0 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 019E4 809865C4 24430800 */  addiu   $v1, $v0, 0x0800           ## $v1 = 00000800
/* 019E8 809865C8 271833E8 */  addiu   $t8, $t8, 0x33E8           ## $t8 = 801333E8
/* 019EC 809865CC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 019F0 809865D0 3064FFFF */  andi    $a0, $v1, 0xFFFF           ## $a0 = 00000800
/* 019F4 809865D4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 019F8 809865D8 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 019FC 809865DC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01A00 809865E0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L809865E4:
/* 01A04 809865E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809865E8:
/* 01A08 809865E8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01A0C 809865EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01A10 809865F0 03E00008 */  jr      $ra                        
/* 01A14 809865F4 00000000 */  nop
