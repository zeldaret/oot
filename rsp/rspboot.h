#ifndef RSPBOOT_H
#define RSPBOOT_H

/* Memory addressing */
#define DMEM_START  (0x0000)
#define DMEM_SIZE   (0x1000)
#define DMEM_END    (DMEM_START + DMEM_SIZE)
#define IMEM_START  (DMEM_END)
#define IMEM_SIZE   (0x1000)
#define IMEM_END    (IMEM_START + IMEM_SIZE)

#define DMEM_START_VA (0x04000000 | DMEM_START)
#define IMEM_START_VA (0x04000000 | IMEM_START)
#define DMEM_END_VA   (0x04000000 | DMEM_END)
#define IMEM_END_VA   (0x04000000 | IMEM_END)

/* The first bytes of IMEM are reserved so that rspboot has space for
 * code that will load the new IMEM contents for the target ucode.
 */
#define RSPBOOT_RESERVED_IMEM   0x80

/* Entrypoint for ucodes loaded with rspboot */
#define RSPBOOT_ENTRYPOINT      (IMEM_START + RSPBOOT_RESERVED_IMEM)
#define RSPBOOT_ENTRYPOINT_VA   (0x04000000 | RSPBOOT_ENTRYPOINT)

/* OSTask structure */
#define OSTASK_ADDR (DMEM_END - OS_TASK_SIZE)

#endif
