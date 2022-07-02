/*
 * The Legend of Zelda: Ocarina of Time ROM header
 */

.byte  0x80, 0x37, 0x12, 0x40   /* PI BSD Domain 1 register */
.word  0x0000000F               /* Clockrate setting */
.word  0x80000400               /* Entrypoint function (`entrypoint`) */
.word  0x0000144C               /* Revision */
.word  0x917D18F6               /* Checksum 1 */
.word  0x69BC5453               /* Checksum 2 */
.word  0x00000000               /* Unknown */
.word  0x00000000               /* Unknown */
.ascii "THE LEGEND OF ZELDA "   /* Internal ROM name */
.word  0x00000000               /* Unknown */
.word  0x0000004E               /* Cartridge */
.ascii "ZL"                     /* Cartridge ID */
.ascii "E"                      /* Region */
.byte  0x0F                     /* Version */
