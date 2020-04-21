glabel func_80AC6258
/* 035B8 80AC6258 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 035BC 80AC625C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 035C0 80AC6260 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 035C4 80AC6264 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 035C8 80AC6268 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 035CC 80AC626C 0C042F6F */  jal     func_8010BDBC              
/* 035D0 80AC6270 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 035D4 80AC6274 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 035D8 80AC6278 5441000F */  bnel    $v0, $at, .L80AC62B8       
/* 035DC 80AC627C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 035E0 80AC6280 0C041AF2 */  jal     func_80106BC8              
/* 035E4 80AC6284 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 035E8 80AC6288 1040000A */  beq     $v0, $zero, .L80AC62B4     
/* 035EC 80AC628C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 035F0 80AC6290 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 035F4 80AC6294 944E0EF4 */  lhu     $t6, 0x0EF4($v0)           ## 8015F554
/* 035F8 80AC6298 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 035FC 80AC629C 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 03600 80AC62A0 35CF0400 */  ori     $t7, $t6, 0x0400           ## $t7 = 00000400
/* 03604 80AC62A4 A44F0EF4 */  sh      $t7, 0x0EF4($v0)           ## 8015F554
/* 03608 80AC62A8 A0B80252 */  sb      $t8, 0x0252($a1)           ## 00000252
/* 0360C 80AC62AC 0C2B13B2 */  jal     func_80AC4EC8              
/* 03610 80AC62B0 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80AC62B4:
/* 03614 80AC62B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC62B8:
/* 03618 80AC62B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0361C 80AC62BC 03E00008 */  jr      $ra                        
/* 03620 80AC62C0 00000000 */  nop
