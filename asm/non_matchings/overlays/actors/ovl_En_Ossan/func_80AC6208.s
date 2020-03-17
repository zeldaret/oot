glabel func_80AC6208
/* 03568 80AC6208 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0356C 80AC620C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03570 80AC6210 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03574 80AC6214 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03578 80AC6218 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0357C 80AC621C 0C042F6F */  jal     func_8010BDBC              
/* 03580 80AC6220 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 03584 80AC6224 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 03588 80AC6228 54410008 */  bnel    $v0, $at, .L80AC624C       
/* 0358C 80AC622C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03590 80AC6230 0C041AF2 */  jal     func_80106BC8              
/* 03594 80AC6234 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03598 80AC6238 10400003 */  beq     $v0, $zero, .L80AC6248     
/* 0359C 80AC623C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 035A0 80AC6240 0C2B13B2 */  jal     func_80AC4EC8              
/* 035A4 80AC6244 8FA50018 */  lw      $a1, 0x0018($sp)           
.L80AC6248:
/* 035A8 80AC6248 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AC624C:
/* 035AC 80AC624C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 035B0 80AC6250 03E00008 */  jr      $ra                        
/* 035B4 80AC6254 00000000 */  nop


