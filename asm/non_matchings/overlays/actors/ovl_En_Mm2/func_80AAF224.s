glabel func_80AAF224
/* 003D4 80AAF224 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003D8 80AAF228 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003DC 80AAF22C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003E0 80AAF230 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 003E4 80AAF234 0C00BC65 */  jal     func_8002F194              
/* 003E8 80AAF238 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003EC 80AAF23C 10400005 */  beq     $v0, $zero, .L80AAF254     
/* 003F0 80AAF240 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003F4 80AAF244 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 003F8 80AAF248 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 003FC 80AAF24C 10000017 */  beq     $zero, $zero, .L80AAF2AC   
/* 00400 80AAF250 AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
.L80AAF254:
/* 00404 80AAF254 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 00408 80AAF258 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 0040C 80AAF25C 01F81023 */  subu    $v0, $t7, $t8              
/* 00410 80AAF260 00021400 */  sll     $v0, $v0, 16               
/* 00414 80AAF264 00021403 */  sra     $v0, $v0, 16               
/* 00418 80AAF268 04400003 */  bltz    $v0, .L80AAF278            
/* 0041C 80AAF26C 00021823 */  subu    $v1, $zero, $v0            
/* 00420 80AAF270 10000001 */  beq     $zero, $zero, .L80AAF278   
/* 00424 80AAF274 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000001
.L80AAF278:
/* 00428 80AAF278 28614301 */  slti    $at, $v1, 0x4301           
/* 0042C 80AAF27C 1020000A */  beq     $at, $zero, .L80AAF2A8     
/* 00430 80AAF280 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00434 80AAF284 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 00438 80AAF288 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 0043C 80AAF28C 4600203C */  c.lt.s  $f4, $f0                   
/* 00440 80AAF290 00000000 */  nop
/* 00444 80AAF294 45020005 */  bc1fl   .L80AAF2AC                 
/* 00448 80AAF298 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0044C 80AAF29C 44060000 */  mfc1    $a2, $f0                   
/* 00450 80AAF2A0 0C00BCB3 */  jal     func_8002F2CC              
/* 00454 80AAF2A4 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80AAF2A8:
/* 00458 80AAF2A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AAF2AC:
/* 0045C 80AAF2AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00460 80AAF2B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00464 80AAF2B4 03E00008 */  jr      $ra                        
/* 00468 80AAF2B8 00000000 */  nop
