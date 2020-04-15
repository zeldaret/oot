glabel DemoDu_Init
/* 023E0 8096BEB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 023E4 8096BEB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 023E8 8096BEB8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023EC 8096BEBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 023F0 8096BEC0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 023F4 8096BEC4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 023F8 8096BEC8 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 023FC 8096BECC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 02400 8096BED0 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 02404 8096BED4 0C00AC78 */  jal     ActorShape_Init
              
/* 02408 8096BED8 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 0240C 8096BEDC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 02410 8096BEE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02414 8096BEE4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 02418 8096BEE8 10410007 */  beq     $v0, $at, .L8096BF08       
/* 0241C 8096BEEC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 02420 8096BEF0 10410009 */  beq     $v0, $at, .L8096BF18       
/* 02424 8096BEF4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02428 8096BEF8 1041000B */  beq     $v0, $at, .L8096BF28       
/* 0242C 8096BEFC 00000000 */  nop
/* 02430 8096BF00 1000000D */  beq     $zero, $zero, .L8096BF38   
/* 02434 8096BF04 00000000 */  nop
.L8096BF08:
/* 02438 8096BF08 0C25A8D8 */  jal     func_8096A360              
/* 0243C 8096BF0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02440 8096BF10 1000000C */  beq     $zero, $zero, .L8096BF44   
/* 02444 8096BF14 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096BF18:
/* 02448 8096BF18 0C25ACF9 */  jal     func_8096B3E4              
/* 0244C 8096BF1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02450 8096BF20 10000008 */  beq     $zero, $zero, .L8096BF44   
/* 02454 8096BF24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096BF28:
/* 02458 8096BF28 0C25AE8B */  jal     func_8096BA2C              
/* 0245C 8096BF2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02460 8096BF30 10000004 */  beq     $zero, $zero, .L8096BF44   
/* 02464 8096BF34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096BF38:
/* 02468 8096BF38 0C25A79B */  jal     func_80969E6C              
/* 0246C 8096BF3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02470 8096BF40 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8096BF44:
/* 02474 8096BF44 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02478 8096BF48 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0247C 8096BF4C 03E00008 */  jr      $ra                        
/* 02480 8096BF50 00000000 */  nop
