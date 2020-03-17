glabel func_80B04C7C
/* 003EC 80B04C7C 27BDFE28 */  addiu   $sp, $sp, 0xFE28           ## $sp = FFFFFE28
/* 003F0 80B04C80 3C0E80B0 */  lui     $t6, %hi(D_80B07180)       ## $t6 = 80B00000
/* 003F4 80B04C84 8DCE7180 */  lw      $t6, %lo(D_80B07180)($t6)  
/* 003F8 80B04C88 3C0F80B0 */  lui     $t7, %hi(D_80B07184)       ## $t7 = 80B00000
/* 003FC 80B04C8C 3C1880B0 */  lui     $t8, %hi(D_80B07188)       ## $t8 = 80B00000
/* 00400 80B04C90 8DEF7184 */  lw      $t7, %lo(D_80B07184)($t7)  
/* 00404 80B04C94 8F187188 */  lw      $t8, %lo(D_80B07188)($t8)  
/* 00408 80B04C98 3C1980B0 */  lui     $t9, %hi(D_80B0718C)       ## $t9 = 80B00000
/* 0040C 80B04C9C 8F39718C */  lw      $t9, %lo(D_80B0718C)($t9)  
/* 00410 80B04CA0 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00414 80B04CA4 AFAF0030 */  sw      $t7, 0x0030($sp)           
/* 00418 80B04CA8 AFB8002C */  sw      $t8, 0x002C($sp)           
/* 0041C 80B04CAC AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00420 80B04CB0 93AD0031 */  lbu     $t5, 0x0031($sp)           
/* 00424 80B04CB4 93AC0035 */  lbu     $t4, 0x0035($sp)           
/* 00428 80B04CB8 93A80034 */  lbu     $t0, 0x0034($sp)           
/* 0042C 80B04CBC 93A90030 */  lbu     $t1, 0x0030($sp)           
/* 00430 80B04CC0 93AA002C */  lbu     $t2, 0x002C($sp)           
/* 00434 80B04CC4 93AB0028 */  lbu     $t3, 0x0028($sp)           
/* 00438 80B04CC8 93AF0029 */  lbu     $t7, 0x0029($sp)           
/* 0043C 80B04CCC 93AE002D */  lbu     $t6, 0x002D($sp)           
/* 00440 80B04CD0 93B80036 */  lbu     $t8, 0x0036($sp)           
/* 00444 80B04CD4 A3AD01C1 */  sb      $t5, 0x01C1($sp)           
/* 00448 80B04CD8 A3AC01BD */  sb      $t4, 0x01BD($sp)           
/* 0044C 80B04CDC A3A801BC */  sb      $t0, 0x01BC($sp)           
/* 00450 80B04CE0 A3A901C0 */  sb      $t1, 0x01C0($sp)           
/* 00454 80B04CE4 A3AA01C4 */  sb      $t2, 0x01C4($sp)           
/* 00458 80B04CE8 A3AB01C8 */  sb      $t3, 0x01C8($sp)           
/* 0045C 80B04CEC 93AB0033 */  lbu     $t3, 0x0033($sp)           
/* 00460 80B04CF0 93AA0037 */  lbu     $t2, 0x0037($sp)           
/* 00464 80B04CF4 93A9002A */  lbu     $t1, 0x002A($sp)           
/* 00468 80B04CF8 93A8002E */  lbu     $t0, 0x002E($sp)           
/* 0046C 80B04CFC 93AC002F */  lbu     $t4, 0x002F($sp)           
/* 00470 80B04D00 93AD002B */  lbu     $t5, 0x002B($sp)           
/* 00474 80B04D04 93B90032 */  lbu     $t9, 0x0032($sp)           
/* 00478 80B04D08 A3AF01C9 */  sb      $t7, 0x01C9($sp)           
/* 0047C 80B04D0C A3AE01C5 */  sb      $t6, 0x01C5($sp)           
/* 00480 80B04D10 A3B801BE */  sb      $t8, 0x01BE($sp)           
/* 00484 80B04D14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00488 80B04D18 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 0048C 80B04D1C 240F0003 */  addiu   $t7, $zero, 0x0003         ## $t7 = 00000003
/* 00490 80B04D20 27B80038 */  addiu   $t8, $sp, 0x0038           ## $t8 = FFFFFE60
/* 00494 80B04D24 AFAE01CC */  sw      $t6, 0x01CC($sp)           
/* 00498 80B04D28 AFA001D0 */  sw      $zero, 0x01D0($sp)         
/* 0049C 80B04D2C AFAF01D4 */  sw      $t7, 0x01D4($sp)           
/* 004A0 80B04D30 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 004A4 80B04D34 27A50020 */  addiu   $a1, $sp, 0x0020           ## $a1 = FFFFFE48
/* 004A8 80B04D38 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 004AC 80B04D3C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 004B0 80B04D40 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 004B4 80B04D44 A3AB01C3 */  sb      $t3, 0x01C3($sp)           
/* 004B8 80B04D48 A3AA01BF */  sb      $t2, 0x01BF($sp)           
/* 004BC 80B04D4C A3A901CA */  sb      $t1, 0x01CA($sp)           
/* 004C0 80B04D50 A3A801C6 */  sb      $t0, 0x01C6($sp)           
/* 004C4 80B04D54 A3AC01C7 */  sb      $t4, 0x01C7($sp)           
/* 004C8 80B04D58 A3AD01CB */  sb      $t5, 0x01CB($sp)           
/* 004CC 80B04D5C 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 004D0 80B04D60 A3B901C2 */  sb      $t9, 0x01C2($sp)           
/* 004D4 80B04D64 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004D8 80B04D68 8FA20020 */  lw      $v0, 0x0020($sp)           
/* 004DC 80B04D6C 27BD01D8 */  addiu   $sp, $sp, 0x01D8           ## $sp = 00000000
/* 004E0 80B04D70 03E00008 */  jr      $ra                        
/* 004E4 80B04D74 00000000 */  nop


