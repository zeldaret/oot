.late_rodata
glabel jtbl_80AAEC50
.word L80AADC20
.word L80AADC20
.word L80AADC20
.word L80AADC20
.word L80AADAF0
.word L80AADB78
.word L80AADBD0

.text
glabel func_80AADAA0
/* 00330 80AADAA0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00334 80AADAA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00338 80AADAA8 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 0033C 80AADAAC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00340 80AADAB0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00344 80AADAB4 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00348 80AADAB8 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 0034C 80AADABC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00350 80AADAC0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00354 80AADAC4 0C042F6F */  jal     func_8010BDBC              
/* 00358 80AADAC8 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 0035C 80AADACC 2C410007 */  sltiu   $at, $v0, 0x0007           
/* 00360 80AADAD0 10200053 */  beq     $at, $zero, .L80AADC20     
/* 00364 80AADAD4 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00368 80AADAD8 0002C080 */  sll     $t8, $v0,  2               
/* 0036C 80AADADC 3C0180AB */  lui     $at, %hi(jtbl_80AAEC50)       ## $at = 80AB0000
/* 00370 80AADAE0 00380821 */  addu    $at, $at, $t8              
/* 00374 80AADAE4 8C38EC50 */  lw      $t8, %lo(jtbl_80AAEC50)($at)  
/* 00378 80AADAE8 03000008 */  jr      $t8                        
/* 0037C 80AADAEC 00000000 */  nop
glabel L80AADAF0
/* 00380 80AADAF0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00384 80AADAF4 0C041AF2 */  jal     func_80106BC8              
/* 00388 80AADAF8 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 0038C 80AADAFC 10400048 */  beq     $v0, $zero, .L80AADC20     
/* 00390 80AADB00 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00394 80AADB04 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 00398 80AADB08 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 0039C 80AADB0C 2409202D */  addiu   $t1, $zero, 0x202D         ## $t1 = 0000202D
/* 003A0 80AADB10 01194021 */  addu    $t0, $t0, $t9              
/* 003A4 80AADB14 910804BD */  lbu     $t0, 0x04BD($t0)           ## 000104BD
/* 003A8 80AADB18 8FAA0020 */  lw      $t2, 0x0020($sp)           
/* 003AC 80AADB1C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 003B0 80AADB20 1500000C */  bne     $t0, $zero, .L80AADB54     
/* 003B4 80AADB24 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 003B8 80AADB28 A549010E */  sh      $t1, 0x010E($t2)           ## 0000010E
/* 003BC 80AADB2C 8CEB0254 */  lw      $t3, 0x0254($a3)           ## 00000254
/* 003C0 80AADB30 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 003C4 80AADB34 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 003C8 80AADB38 01616024 */  and     $t4, $t3, $at              
/* 003CC 80AADB3C ACEC0254 */  sw      $t4, 0x0254($a3)           ## 00000254
/* 003D0 80AADB40 24050006 */  addiu   $a1, $zero, 0x0006         ## $a1 = 00000006
/* 003D4 80AADB44 0C2AB5DC */  jal     func_80AAD770              
/* 003D8 80AADB48 24E60258 */  addiu   $a2, $a3, 0x0258           ## $a2 = 00000258
/* 003DC 80AADB4C 10000008 */  beq     $zero, $zero, .L80AADB70   
/* 003E0 80AADB50 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
.L80AADB54:
/* 003E4 80AADB54 240D202C */  addiu   $t5, $zero, 0x202C         ## $t5 = 0000202C
/* 003E8 80AADB58 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = FFFFE660
/* 003EC 80AADB5C A5CD010E */  sh      $t5, 0x010E($t6)           ## 0000010E
/* 003F0 80AADB60 946F0F26 */  lhu     $t7, 0x0F26($v1)           ## FFFFF586
/* 003F4 80AADB64 35F81000 */  ori     $t8, $t7, 0x1000           ## $t8 = 00001000
/* 003F8 80AADB68 A4780F26 */  sh      $t8, 0x0F26($v1)           ## FFFFF586
/* 003FC 80AADB6C 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
.L80AADB70:
/* 00400 80AADB70 1000002B */  beq     $zero, $zero, .L80AADC20   
/* 00404 80AADB74 AFB9001C */  sw      $t9, 0x001C($sp)           
glabel L80AADB78
/* 00408 80AADB78 0C041AF2 */  jal     func_80106BC8              
/* 0040C 80AADB7C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00410 80AADB80 50400028 */  beql    $v0, $zero, .L80AADC24     
/* 00414 80AADB84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00418 80AADB88 0C023C23 */  jal     func_8008F08C              
/* 0041C 80AADB8C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00420 80AADB90 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00424 80AADB94 0C021344 */  jal     Item_Give              
/* 00428 80AADB98 2405002C */  addiu   $a1, $zero, 0x002C         ## $a1 = 0000002C
/* 0042C 80AADB9C 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00430 80AADBA0 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00434 80AADBA4 94680EF6 */  lhu     $t0, 0x0EF6($v1)           ## 8015F556
/* 00438 80AADBA8 240401F4 */  addiu   $a0, $zero, 0x01F4         ## $a0 = 000001F4
/* 0043C 80AADBAC 35090800 */  ori     $t1, $t0, 0x0800           ## $t1 = 00000800
/* 00440 80AADBB0 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00444 80AADBB4 A4690EF6 */  sh      $t1, 0x0EF6($v1)           ## 8015F556
/* 00448 80AADBB8 8FAB0020 */  lw      $t3, 0x0020($sp)           
/* 0044C 80AADBBC 240A202E */  addiu   $t2, $zero, 0x202E         ## $t2 = 0000202E
/* 00450 80AADBC0 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 00454 80AADBC4 A56A010E */  sh      $t2, 0x010E($t3)           ## 0000010E
/* 00458 80AADBC8 10000015 */  beq     $zero, $zero, .L80AADC20   
/* 0045C 80AADBCC AFAC001C */  sw      $t4, 0x001C($sp)           
glabel L80AADBD0
/* 00460 80AADBD0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00464 80AADBD4 0C041AF2 */  jal     func_80106BC8              
/* 00468 80AADBD8 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 0046C 80AADBDC 10400010 */  beq     $v0, $zero, .L80AADC20     
/* 00470 80AADBE0 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00474 80AADBE4 8FAD0020 */  lw      $t5, 0x0020($sp)           
/* 00478 80AADBE8 2401202E */  addiu   $at, $zero, 0x202E         ## $at = 0000202E
/* 0047C 80AADBEC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00480 80AADBF0 95A2010E */  lhu     $v0, 0x010E($t5)           ## 0000010E
/* 00484 80AADBF4 10410003 */  beq     $v0, $at, .L80AADC04       
/* 00488 80AADBF8 2401202C */  addiu   $at, $zero, 0x202C         ## $at = 0000202C
/* 0048C 80AADBFC 54410008 */  bnel    $v0, $at, .L80AADC20       
/* 00490 80AADC00 AFA0001C */  sw      $zero, 0x001C($sp)         
.L80AADC04:
/* 00494 80AADC04 8CEE0254 */  lw      $t6, 0x0254($a3)           ## 00000254
/* 00498 80AADC08 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 0049C 80AADC0C 24E60258 */  addiu   $a2, $a3, 0x0258           ## $a2 = 00000258
/* 004A0 80AADC10 35CF0001 */  ori     $t7, $t6, 0x0001           ## $t7 = 00000001
/* 004A4 80AADC14 0C2AB5DC */  jal     func_80AAD770              
/* 004A8 80AADC18 ACEF0254 */  sw      $t7, 0x0254($a3)           ## 00000254
/* 004AC 80AADC1C AFA0001C */  sw      $zero, 0x001C($sp)         
glabel L80AADC20
.L80AADC20:
/* 004B0 80AADC20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AADC24:
/* 004B4 80AADC24 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 004B8 80AADC28 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004BC 80AADC2C 03E00008 */  jr      $ra                        
/* 004C0 80AADC30 00000000 */  nop
