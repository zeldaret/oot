glabel Math3D_CirSquareTouchesTriSquare
/* B42398 800CB1F8 AFA60008 */  sw    $a2, 8($sp)
/* B4239C 800CB1FC C7A40008 */  lwc1  $f4, 8($sp)
/* B423A0 800CB200 AFA7000C */  sw    $a3, 0xc($sp)
/* B423A4 800CB204 46006406 */  mov.s $f16, $f12
/* B423A8 800CB208 460C203C */  c.lt.s $f4, $f12
/* B423AC 800CB20C 46006486 */  mov.s $f18, $f12
/* B423B0 800CB210 46007006 */  mov.s $f0, $f14
/* B423B4 800CB214 46007086 */  mov.s $f2, $f14
/* B423B8 800CB218 45000003 */  bc1f  .L800CB228
/* B423BC 800CB21C C7A8000C */   lwc1  $f8, 0xc($sp)
/* B423C0 800CB220 10000007 */  b     .L800CB240
/* B423C4 800CB224 46002486 */   mov.s $f18, $f4
.L800CB228:
/* B423C8 800CB228 C7A60008 */  lwc1  $f6, 8($sp)
/* B423CC 800CB22C 4606603C */  c.lt.s $f12, $f6
/* B423D0 800CB230 00000000 */  nop   
/* B423D4 800CB234 45020003 */  bc1fl .L800CB244
/* B423D8 800CB238 460E403C */   c.lt.s $f8, $f14
/* B423DC 800CB23C 46003406 */  mov.s $f16, $f6
.L800CB240:
/* B423E0 800CB240 460E403C */  c.lt.s $f8, $f14
.L800CB244:
/* B423E4 800CB244 C7AA000C */  lwc1  $f10, 0xc($sp)
/* B423E8 800CB248 C7AC0010 */  lwc1  $f12, 0x10($sp)
/* B423EC 800CB24C 00001025 */  move  $v0, $zero
/* B423F0 800CB250 45020004 */  bc1fl .L800CB264
/* B423F4 800CB254 460A703C */   c.lt.s $f14, $f10
/* B423F8 800CB258 10000006 */  b     .L800CB274
/* B423FC 800CB25C 46004086 */   mov.s $f2, $f8
/* B42400 800CB260 460A703C */  c.lt.s $f14, $f10
.L800CB264:
/* B42404 800CB264 00000000 */  nop   
/* B42408 800CB268 45020003 */  bc1fl .L800CB278
/* B4240C 800CB26C 4612603C */   c.lt.s $f12, $f18
/* B42410 800CB270 46005006 */  mov.s $f0, $f10
.L800CB274:
/* B42414 800CB274 4612603C */  c.lt.s $f12, $f18
.L800CB278:
/* B42418 800CB278 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* B4241C 800CB27C 45020004 */  bc1fl .L800CB290
/* B42420 800CB280 460C803C */   c.lt.s $f16, $f12
/* B42424 800CB284 10000006 */  b     .L800CB2A0
/* B42428 800CB288 46006486 */   mov.s $f18, $f12
/* B4242C 800CB28C 460C803C */  c.lt.s $f16, $f12
.L800CB290:
/* B42430 800CB290 00000000 */  nop   
/* B42434 800CB294 45020003 */  bc1fl .L800CB2A4
/* B42438 800CB298 C7AC0014 */   lwc1  $f12, 0x14($sp)
/* B4243C 800CB29C 46006406 */  mov.s $f16, $f12
.L800CB2A0:
/* B42440 800CB2A0 C7AC0014 */  lwc1  $f12, 0x14($sp)
.L800CB2A4:
/* B42444 800CB2A4 4602603C */  c.lt.s $f12, $f2
/* B42448 800CB2A8 00000000 */  nop   
/* B4244C 800CB2AC 45020004 */  bc1fl .L800CB2C0
/* B42450 800CB2B0 460C003C */   c.lt.s $f0, $f12
/* B42454 800CB2B4 10000006 */  b     .L800CB2D0
/* B42458 800CB2B8 46006086 */   mov.s $f2, $f12
/* B4245C 800CB2BC 460C003C */  c.lt.s $f0, $f12
.L800CB2C0:
/* B42460 800CB2C0 00000000 */  nop   
/* B42464 800CB2C4 45020003 */  bc1fl .L800CB2D4
/* B42468 800CB2C8 460E9101 */   sub.s $f4, $f18, $f14
/* B4246C 800CB2CC 46006006 */  mov.s $f0, $f12
.L800CB2D0:
/* B42470 800CB2D0 460E9101 */  sub.s $f4, $f18, $f14
.L800CB2D4:
/* B42474 800CB2D4 C7AC0018 */  lwc1  $f12, 0x18($sp)
/* B42478 800CB2D8 460C203E */  c.le.s $f4, $f12
/* B4247C 800CB2DC 00000000 */  nop   
/* B42480 800CB2E0 45000013 */  bc1f  .L800CB330
/* B42484 800CB2E4 00000000 */   nop   
/* B42488 800CB2E8 460E8180 */  add.s $f6, $f16, $f14
/* B4248C 800CB2EC 4606603E */  c.le.s $f12, $f6
/* B42490 800CB2F0 00000000 */  nop   
/* B42494 800CB2F4 4500000E */  bc1f  .L800CB330
/* B42498 800CB2F8 00000000 */   nop   
/* B4249C 800CB2FC 460E1201 */  sub.s $f8, $f2, $f14
/* B424A0 800CB300 C7AC001C */  lwc1  $f12, 0x1c($sp)
/* B424A4 800CB304 460C403E */  c.le.s $f8, $f12
/* B424A8 800CB308 00000000 */  nop   
/* B424AC 800CB30C 45000008 */  bc1f  .L800CB330
/* B424B0 800CB310 00000000 */   nop   
/* B424B4 800CB314 460E0280 */  add.s $f10, $f0, $f14
/* B424B8 800CB318 460A603E */  c.le.s $f12, $f10
/* B424BC 800CB31C 00000000 */  nop   
/* B424C0 800CB320 45000003 */  bc1f  .L800CB330
/* B424C4 800CB324 00000000 */   nop   
/* B424C8 800CB328 03E00008 */  jr    $ra
/* B424CC 800CB32C 24020001 */   li    $v0, 1

.L800CB330:
/* B424D0 800CB330 03E00008 */  jr    $ra
/* B424D4 800CB334 00000000 */   nop   

