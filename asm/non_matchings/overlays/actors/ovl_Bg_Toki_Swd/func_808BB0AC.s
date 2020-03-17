glabel func_808BB0AC
/* 0026C 808BB0AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00270 808BB0B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00274 808BB0B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00278 808BB0B8 0C00BD04 */  jal     func_8002F410              
/* 0027C 808BB0BC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00280 808BB0C0 10400012 */  beq     $v0, $zero, .L808BB10C     
/* 00284 808BB0C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00288 808BB0C8 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0028C 808BB0CC 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 00290 808BB0D0 3C0F808C */  lui     $t7, %hi(BgTokiSwd_Draw)    ## $t7 = 808C0000
/* 00294 808BB0D4 2405182D */  addiu   $a1, $zero, 0x182D         ## $a1 = 0000182D
/* 00298 808BB0D8 11C00006 */  beq     $t6, $zero, .L808BB0F4     
/* 0029C 808BB0DC 25EFB1C4 */  addiu   $t7, $t7, %lo(BgTokiSwd_Draw) ## $t7 = 808BB1C4
/* 002A0 808BB0E0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 002A4 808BB0E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002A8 808BB0E8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002AC 808BB0EC 10000002 */  beq     $zero, $zero, .L808BB0F8   
/* 002B0 808BB0F0 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
.L808BB0F4:
/* 002B4 808BB0F4 AC8F0134 */  sw      $t7, 0x0134($a0)           ## 00000134
.L808BB0F8:
/* 002B8 808BB0F8 3C05808C */  lui     $a1, %hi(func_808BB128)    ## $a1 = 808C0000
/* 002BC 808BB0FC 0C22EB90 */  jal     func_808BAE40              
/* 002C0 808BB100 24A5B128 */  addiu   $a1, $a1, %lo(func_808BB128) ## $a1 = 808BB128
/* 002C4 808BB104 10000005 */  beq     $zero, $zero, .L808BB11C   
/* 002C8 808BB108 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BB10C:
/* 002CC 808BB10C 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 002D0 808BB110 8F021C44 */  lw      $v0, 0x1C44($t8)           ## 00001C44
/* 002D4 808BB114 AC440438 */  sw      $a0, 0x0438($v0)           ## 00000438
/* 002D8 808BB118 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808BB11C:
/* 002DC 808BB11C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002E0 808BB120 03E00008 */  jr      $ra                        
/* 002E4 808BB124 00000000 */  nop


