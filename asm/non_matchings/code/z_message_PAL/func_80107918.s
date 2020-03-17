glabel func_80107918
/* B7EAB8 80107918 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EABC 8010791C A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAC0 80107920 24837FFF */  addiu $v1, $a0, 0x7fff
/* B7EAC4 80107924 846363E1 */  lh    $v1, 0x63e1($v1)
/* B7EAC8 80107928 A42363DF */  sh    $v1, 0x63df($at)
/* B7EACC 8010792C 03E00008 */  jr    $ra
/* B7EAD0 80107930 A42363DD */   sh    $v1, 0x63dd($at)
.L80107934:
glabel L80107934
/* B7EAD4 80107934 34018000 */  li    $at, 32768
/* B7EAD8 80107938 00811021 */  addu  $v0, $a0, $at
/* B7EADC 8010793C 904B62FD */  lbu   $t3, 0x62fd($v0)
/* B7EAE0 80107940 24010005 */  li    $at, 5
/* B7EAE4 80107944 240500FF */  li    $a1, 255
/* B7EAE8 80107948 15610006 */  bne   $t3, $at, .L80107964
/* B7EAEC 8010794C 24817FFF */   addiu $at, $a0, 0x7fff
/* B7EAF0 80107950 A42063E1 */  sh    $zero, 0x63e1($at)
/* B7EAF4 80107954 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EAF8 80107958 A42363DF */  sh    $v1, 0x63df($at)
/* B7EAFC 8010795C 03E00008 */  jr    $ra
/* B7EB00 80107960 A42363DD */   sh    $v1, 0x63dd($at)
.L80107964:
/* B7EB04 80107964 24817FFF */  addiu $at, $a0, 0x7fff
/* B7EB08 80107968 A42563E1 */  sh    $a1, 0x63e1($at)
/* B7EB0C 8010796C 844363E0 */  lh    $v1, 0x63e0($v0)
/* B7EB10 80107970 A42363DF */  sh    $v1, 0x63df($at)
/* B7EB14 80107974 A42363DD */  sh    $v1, 0x63dd($at)
/* B7EB18 80107978 03E00008 */  jr    $ra
/* B7EB1C 8010797C 00000000 */   nop   


