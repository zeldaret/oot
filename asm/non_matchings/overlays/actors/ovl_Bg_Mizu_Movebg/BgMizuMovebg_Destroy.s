glabel BgMizuMovebg_Destroy
/* 00428 8089E058 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0042C 8089E05C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00430 8089E060 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00434 8089E064 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00438 8089E068 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0043C 8089E06C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00440 8089E070 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00444 8089E074 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00448 8089E078 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 0044C 8089E07C 944F001C */  lhu     $t7, 0x001C($v0)           ## 0000001C
/* 00450 8089E080 000FC303 */  sra     $t8, $t7, 12               
/* 00454 8089E084 3319000F */  andi    $t9, $t8, 0x000F           ## $t9 = 00000000
/* 00458 8089E088 2728FFFD */  addiu   $t0, $t9, 0xFFFD           ## $t0 = FFFFFFFD
/* 0045C 8089E08C 2D010005 */  sltiu   $at, $t0, 0x0005           
/* 00460 8089E090 10200019 */  beq     $at, $zero, .L8089E0F8     
/* 00464 8089E094 00084080 */  sll     $t0, $t0,  2               
/* 00468 8089E098 3C01808A */  lui     $at, %hi(jtbl_8089EC3C)       ## $at = 808A0000
/* 0046C 8089E09C 00280821 */  addu    $at, $at, $t0              
/* 00470 8089E0A0 8C28EC3C */  lw      $t0, %lo(jtbl_8089EC3C)($at)  
/* 00474 8089E0A4 01000008 */  jr      $t0                        
/* 00478 8089E0A8 00000000 */  nop
glabel L8089E0AC
/* 0047C 8089E0AC 9049017C */  lbu     $t1, 0x017C($v0)           ## 0000017C
/* 00480 8089E0B0 3C02808A */  lui     $v0, %hi(D_8089EE40)       ## $v0 = 808A0000
/* 00484 8089E0B4 2442EE40 */  addiu   $v0, $v0, %lo(D_8089EE40)  ## $v0 = 8089EE40
/* 00488 8089E0B8 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 0048C 8089E0BC 5140000F */  beql    $t2, $zero, .L8089E0FC     
/* 00490 8089E0C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00494 8089E0C4 904B0000 */  lbu     $t3, 0x0000($v0)           ## 8089EE40
/* 00498 8089E0C8 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 0049C 8089E0CC 1000000A */  beq     $zero, $zero, .L8089E0F8   
/* 004A0 8089E0D0 A04C0000 */  sb      $t4, 0x0000($v0)           ## 8089EE40
glabel L8089E0D4
/* 004A4 8089E0D4 904D017C */  lbu     $t5, 0x017C($v0)           ## 8089EFBC
/* 004A8 8089E0D8 3C02808A */  lui     $v0, %hi(D_8089EE40)       ## $v0 = 808A0000
/* 004AC 8089E0DC 2442EE40 */  addiu   $v0, $v0, %lo(D_8089EE40)  ## $v0 = 8089EE40
/* 004B0 8089E0E0 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 004B4 8089E0E4 51C00005 */  beql    $t6, $zero, .L8089E0FC     
/* 004B8 8089E0E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004BC 8089E0EC 904F0000 */  lbu     $t7, 0x0000($v0)           ## 8089EE40
/* 004C0 8089E0F0 31F8FFFE */  andi    $t8, $t7, 0xFFFE           ## $t8 = 00000000
/* 004C4 8089E0F4 A0580000 */  sb      $t8, 0x0000($v0)           ## 8089EE40
.L8089E0F8:
/* 004C8 8089E0F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8089E0FC:
/* 004CC 8089E0FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004D0 8089E100 03E00008 */  jr      $ra                        
/* 004D4 8089E104 00000000 */  nop


