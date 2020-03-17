glabel func_8091ADA8
/* 05398 8091ADA8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0539C 8091ADAC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 053A0 8091ADB0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 053A4 8091ADB4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 053A8 8091ADB8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 053AC 8091ADBC AFA60040 */  sw      $a2, 0x0040($sp)           
/* 053B0 8091ADC0 C4A40260 */  lwc1    $f4, 0x0260($a1)           ## 00000260
/* 053B4 8091ADC4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 053B8 8091ADC8 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 053BC 8091ADCC 87AE0042 */  lh      $t6, 0x0042($sp)           
/* 053C0 8091ADD0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 053C4 8091ADD4 C4A60264 */  lwc1    $f6, 0x0264($a1)           ## 00000264
/* 053C8 8091ADD8 24015555 */  addiu   $at, $zero, 0x5555         ## $at = 00005555
/* 053CC 8091ADDC 01C10019 */  multu   $t6, $at                   
/* 053D0 8091ADE0 46083281 */  sub.s   $f10, $f6, $f8             
/* 053D4 8091ADE4 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 053D8 8091ADE8 2407002B */  addiu   $a3, $zero, 0x002B         ## $a3 = 0000002B
/* 053DC 8091ADEC E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 053E0 8091ADF0 C4B00268 */  lwc1    $f16, 0x0268($a1)          ## 00000268
/* 053E4 8091ADF4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 053E8 8091ADF8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 053EC 8091ADFC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 053F0 8091AE00 00007812 */  mflo    $t7                        
/* 053F4 8091AE04 AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 053F8 8091AE08 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 053FC 8091AE0C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 05400 8091AE10 0C00C916 */  jal     Actor_SpawnAttached
              
/* 05404 8091AE14 E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 05408 8091AE18 87B90042 */  lh      $t9, 0x0042($sp)           
/* 0540C 8091AE1C 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 05410 8091AE20 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 05414 8091AE24 00194040 */  sll     $t0, $t9,  1               
/* 05418 8091AE28 00A84821 */  addu    $t1, $a1, $t0              
/* 0541C 8091AE2C A53801A4 */  sh      $t8, 0x01A4($t1)           ## 000001A4
/* 05420 8091AE30 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 05424 8091AE34 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 05428 8091AE38 03E00008 */  jr      $ra                        
/* 0542C 8091AE3C 00000000 */  nop

