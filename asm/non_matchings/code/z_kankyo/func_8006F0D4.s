glabel func_8006F0D4
/* AE6274 8006F0D4 00057080 */  sll   $t6, $a1, 2
/* AE6278 8006F0D8 01C57021 */  addu  $t6, $t6, $a1
/* AE627C 8006F0DC 000E71C0 */  sll   $t6, $t6, 7
/* AE6280 8006F0E0 00047840 */  sll   $t7, $a0, 1
/* AE6284 8006F0E4 01CFC021 */  addu  $t8, $t6, $t7
/* AE6288 8006F0E8 3C038017 */  lui   $v1, %hi(D_801759C0)
/* AE628C 8006F0EC 00781821 */  addu  $v1, $v1, $t8
/* AE6290 8006F0F0 946359C0 */  lhu   $v1, %lo(D_801759C0)($v1)
/* AE6294 8006F0F4 03E00008 */  jr    $ra
/* AE6298 8006F0F8 3062FFFF */   andi  $v0, $v1, 0xffff

