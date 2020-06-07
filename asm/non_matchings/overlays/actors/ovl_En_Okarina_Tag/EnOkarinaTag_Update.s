glabel EnOkarinaTag_Update
/* 00B88 80ABF8A8 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00B8C 80ABF8AC AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00B90 80ABF8B0 AFA40048 */  sw      $a0, 0x0048($sp)           
/* 00B94 80ABF8B4 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00B98 80ABF8B8 8C99014C */  lw      $t9, 0x014C($a0)           ## 0000014C
/* 00B9C 80ABF8BC 0320F809 */  jalr    $ra, $t9                   
/* 00BA0 80ABF8C0 00000000 */  nop
/* 00BA4 80ABF8C4 3C0E8016 */  lui     $t6, %hi(gGameInfo)
/* 00BA8 80ABF8C8 8DCEFA90 */  lw      $t6, %lo(gGameInfo)($t6)
/* 00BAC 80ABF8CC 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 00BB0 80ABF8D0 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00BB4 80ABF8D4 85CF12D4 */  lh      $t7, 0x12D4($t6)           ## 801612D4
/* 00BB8 80ABF8D8 51E0003A */  beql    $t7, $zero, .L80ABF9C4     
/* 00BBC 80ABF8DC 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00BC0 80ABF8E0 8482015A */  lh      $v0, 0x015A($a0)           ## 0000015A
/* 00BC4 80ABF8E4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BC8 80ABF8E8 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 00BCC 80ABF8EC 1040001F */  beq     $v0, $zero, .L80ABF96C     
/* 00BD0 80ABF8F0 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00BD4 80ABF8F4 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 00BD8 80ABF8F8 17000031 */  bne     $t8, $zero, .L80ABF9C0     
/* 00BDC 80ABF8FC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00BE0 80ABF900 84880032 */  lh      $t0, 0x0032($a0)           ## 00000032
/* 00BE4 80ABF904 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00BE8 80ABF908 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 00BEC 80ABF90C 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00BF0 80ABF910 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 00BF4 80ABF914 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00BF8 80ABF918 84890034 */  lh      $t1, 0x0034($a0)           ## 00000034
/* 00BFC 80ABF91C 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 00C00 80ABF920 240A0078 */  addiu   $t2, $zero, 0x0078         ## $t2 = 00000078
/* 00C04 80ABF924 240B0078 */  addiu   $t3, $zero, 0x0078         ## $t3 = 00000078
/* 00C08 80ABF928 240C0078 */  addiu   $t4, $zero, 0x0078         ## $t4 = 00000078
/* 00C0C 80ABF92C 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00C10 80ABF930 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 00C14 80ABF934 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 00C18 80ABF938 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00C1C 80ABF93C AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00C20 80ABF940 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00C24 80ABF944 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 00C28 80ABF948 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00C2C 80ABF94C E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00C30 80ABF950 E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00C34 80ABF954 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00C38 80ABF958 8CAE0000 */  lw      $t6, 0x0000($a1)           ## 00000000
/* 00C3C 80ABF95C 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00C40 80ABF960 AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 00C44 80ABF964 10000017 */  beq     $zero, $zero, .L80ABF9C4   
/* 00C48 80ABF968 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80ABF96C:
/* 00C4C 80ABF96C 848F0032 */  lh      $t7, 0x0032($a0)           ## 00000032
/* 00C50 80ABF970 C48C0024 */  lwc1    $f12, 0x0024($a0)          ## 00000024
/* 00C54 80ABF974 C48E0028 */  lwc1    $f14, 0x0028($a0)          ## 00000028
/* 00C58 80ABF978 8C86002C */  lw      $a2, 0x002C($a0)           ## 0000002C
/* 00C5C 80ABF97C 84870030 */  lh      $a3, 0x0030($a0)           ## 00000030
/* 00C60 80ABF980 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 00C64 80ABF984 84980034 */  lh      $t8, 0x0034($a0)           ## 00000034
/* 00C68 80ABF988 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 00C6C 80ABF98C 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 00C70 80ABF990 AFAA0034 */  sw      $t2, 0x0034($sp)           
/* 00C74 80ABF994 AFA90030 */  sw      $t1, 0x0030($sp)           
/* 00C78 80ABF998 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00C7C 80ABF99C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00C80 80ABF9A0 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00C84 80ABF9A4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00C88 80ABF9A8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 00C8C 80ABF9AC E7A0001C */  swc1    $f0, 0x001C($sp)           
/* 00C90 80ABF9B0 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 00C94 80ABF9B4 8CAB0000 */  lw      $t3, 0x0000($a1)           ## 00000000
/* 00C98 80ABF9B8 0C018FA7 */  jal     DebugDisplay_AddObject
              
/* 00C9C 80ABF9BC AFAB0038 */  sw      $t3, 0x0038($sp)           
.L80ABF9C0:
/* 00CA0 80ABF9C0 8FBF0044 */  lw      $ra, 0x0044($sp)           
.L80ABF9C4:
/* 00CA4 80ABF9C4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00CA8 80ABF9C8 03E00008 */  jr      $ra                        
/* 00CAC 80ABF9CC 00000000 */  nop
