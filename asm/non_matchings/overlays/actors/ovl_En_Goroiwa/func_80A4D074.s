glabel func_80A4D074
/* 013D4 80A4D074 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 013D8 80A4D078 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013DC 80A4D07C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 013E0 80A4D080 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 013E4 80A4D084 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 013E8 80A4D088 00021203 */  sra     $v0, $v0,  8               
/* 013EC 80A4D08C 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 013F0 80A4D090 00021400 */  sll     $v0, $v0, 16               
/* 013F4 80A4D094 00021403 */  sra     $v0, $v0, 16               
/* 013F8 80A4D098 0C29304D */  jal     func_80A4C134              
/* 013FC 80A4D09C A7A2001E */  sh      $v0, 0x001E($sp)           
/* 01400 80A4D0A0 87A2001E */  lh      $v0, 0x001E($sp)           
/* 01404 80A4D0A4 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01408 80A4D0A8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0140C 80A4D0AC 50400004 */  beql    $v0, $zero, .L80A4D0C0     
/* 01410 80A4D0B0 848601CC */  lh      $a2, 0x01CC($a0)           ## 000001CC
/* 01414 80A4D0B4 1441000B */  bne     $v0, $at, .L80A4D0E4       
/* 01418 80A4D0B8 00000000 */  nop
/* 0141C 80A4D0BC 848601CC */  lh      $a2, 0x01CC($a0)           ## 000001CC
.L80A4D0C0:
/* 01420 80A4D0C0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01424 80A4D0C4 10C00004 */  beq     $a2, $zero, .L80A4D0D8     
/* 01428 80A4D0C8 00000000 */  nop
/* 0142C 80A4D0CC 848E01CA */  lh      $t6, 0x01CA($a0)           ## 000001CA
/* 01430 80A4D0D0 15C60004 */  bne     $t6, $a2, .L80A4D0E4       
/* 01434 80A4D0D4 00000000 */  nop
.L80A4D0D8:
/* 01438 80A4D0D8 0C293071 */  jal     func_80A4C1C4              
/* 0143C 80A4D0DC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01440 80A4D0E0 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80A4D0E4:
/* 01444 80A4D0E4 0C292F95 */  jal     func_80A4BE54              
/* 01448 80A4D0E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0144C 80A4D0EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01450 80A4D0F0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01454 80A4D0F4 03E00008 */  jr      $ra                        
/* 01458 80A4D0F8 00000000 */  nop


