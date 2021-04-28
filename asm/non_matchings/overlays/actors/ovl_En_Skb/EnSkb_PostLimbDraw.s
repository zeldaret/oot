glabel EnSkb_PostLimbDraw
/* 01584 80AFDF24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01588 80AFDF28 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0158C 80AFDF2C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01590 80AFDF30 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01594 80AFDF34 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 01598 80AFDF38 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0159C 80AFDF3C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 015A0 80AFDF40 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 015A4 80AFDF44 0C018A29 */  jal     Collider_UpdateSpheres              
/* 015A8 80AFDF48 24A502A4 */  addiu   $a1, $a1, 0x02A4           ## $a1 = 000002A4
/* 015AC 80AFDF4C 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 015B0 80AFDF50 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 015B4 80AFDF54 8FA80030 */  lw      $t0, 0x0030($sp)           
/* 015B8 80AFDF58 90620283 */  lbu     $v0, 0x0283($v1)           ## 00000283
/* 015BC 80AFDF5C 2406000B */  addiu   $a2, $zero, 0x000B         ## $a2 = 0000000B
/* 015C0 80AFDF60 2464028C */  addiu   $a0, $v1, 0x028C           ## $a0 = 0000028C
/* 015C4 80AFDF64 384E0001 */  xori    $t6, $v0, 0x0001           ## $t6 = 00000001
/* 015C8 80AFDF68 15C0000A */  bne     $t6, $zero, .L80AFDF94     
/* 015CC 80AFDF6C 34590004 */  ori     $t9, $v0, 0x0004           ## $t9 = 00000004
/* 015D0 80AFDF70 240F0012 */  addiu   $t7, $zero, 0x0012         ## $t7 = 00000012
/* 015D4 80AFDF74 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 015D8 80AFDF78 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 015DC 80AFDF7C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 015E0 80AFDF80 2407000C */  addiu   $a3, $zero, 0x000C         ## $a3 = 0000000C
/* 015E4 80AFDF84 0C00CBD5 */  jal     BodyBreak_SetInfo              
/* 015E8 80AFDF88 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 015EC 80AFDF8C 1000000C */  beq     $zero, $zero, .L80AFDFC0   
/* 015F0 80AFDF90 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFDF94:
/* 015F4 80AFDF94 14590009 */  bne     $v0, $t9, .L80AFDFBC       
/* 015F8 80AFDF98 2464028C */  addiu   $a0, $v1, 0x028C           ## $a0 = 0000028C
/* 015FC 80AFDF9C 240A0012 */  addiu   $t2, $zero, 0x0012         ## $t2 = 00000012
/* 01600 80AFDFA0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 01604 80AFDFA4 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 01608 80AFDFA8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0160C 80AFDFAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01610 80AFDFB0 24070012 */  addiu   $a3, $zero, 0x0012         ## $a3 = 00000012
/* 01614 80AFDFB4 0C00CBD5 */  jal     BodyBreak_SetInfo              
/* 01618 80AFDFB8 AFA80014 */  sw      $t0, 0x0014($sp)           
.L80AFDFBC:
/* 0161C 80AFDFBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFDFC0:
/* 01620 80AFDFC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01624 80AFDFC4 03E00008 */  jr      $ra                        
/* 01628 80AFDFC8 00000000 */  nop
