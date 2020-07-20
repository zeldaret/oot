glabel func_800FA174
/* B71314 800FA174 AFA40000 */  sw    $a0, ($sp)
/* B71318 800FA178 308400FF */  andi  $a0, $a0, 0xff
/* B7131C 800FA17C 3C018017 */  lui   $at, %hi(D_8016E348)
/* B71320 800FA180 00240821 */  addu  $at, $at, $a0
/* B71324 800FA184 03E00008 */  jr    $ra
/* B71328 800FA188 A020E348 */   sb    $zero, %lo(D_8016E348)($at)

