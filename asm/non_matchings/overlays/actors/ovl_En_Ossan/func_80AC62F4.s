glabel func_80AC62F4
/* 03654 80AC62F4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03658 80AC62F8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0365C 80AC62FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03660 80AC6300 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03664 80AC6304 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03668 80AC6308 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 0366C 80AC630C 0C042F6F */  jal     func_8010BDBC              
/* 03670 80AC6310 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 03674 80AC6314 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 03678 80AC6318 54410016 */  bnel    $v0, $at, .L80AC6374       
/* 0367C 80AC631C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03680 80AC6320 0C041AF2 */  jal     Message_ShouldAdvance              
/* 03684 80AC6324 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 03688 80AC6328 50400012 */  beql    $v0, $zero, .L80AC6374     
/* 0368C 80AC632C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03690 80AC6330 920E0252 */  lbu     $t6, 0x0252($s0)           ## 00000252
/* 03694 80AC6334 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 03698 80AC6338 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0369C 80AC633C 000E7880 */  sll     $t7, $t6,  2               
/* 036A0 80AC6340 020FC021 */  addu    $t8, $s0, $t7              
/* 036A4 80AC6344 8F060200 */  lw      $a2, 0x0200($t8)           ## 00000200
/* 036A8 80AC6348 0C2B13B2 */  jal     func_80AC4EC8              
/* 036AC 80AC634C AFA60024 */  sw      $a2, 0x0024($sp)           
/* 036B0 80AC6350 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 036B4 80AC6354 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 036B8 80AC6358 A2000251 */  sb      $zero, 0x0251($s0)         ## 00000251
/* 036BC 80AC635C E60402D0 */  swc1    $f4, 0x02D0($s0)           ## 000002D0
/* 036C0 80AC6360 8CB901AC */  lw      $t9, 0x01AC($a1)           ## 000001AC
/* 036C4 80AC6364 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 036C8 80AC6368 0320F809 */  jalr    $ra, $t9                   
/* 036CC 80AC636C 00000000 */  nop
/* 036D0 80AC6370 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AC6374:
/* 036D4 80AC6374 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 036D8 80AC6378 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 036DC 80AC637C 03E00008 */  jr      $ra                        
/* 036E0 80AC6380 00000000 */  nop
