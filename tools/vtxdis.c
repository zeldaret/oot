#include <stdlib.h>
#include <stdint.h>
#include <getopt.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>
#include <sys/stat.h>
#include <errno.h>

#define VTXDIS_VER "0.2"

#define SWAP16(x) (((x & 0xFF00) >> 8) | ((x & 0x00FF) << 8))

typedef struct {
    int16_t pos[3];     /* 0x00 */
    int16_t flag;       /* 0x06 */
    int16_t tpos[2];    /* 0x08 */
    uint8_t cn[4];      /* 0x0C */
} Vtx;                  /* 0x10 */

static char *filename = NULL;
static char *data = NULL;
static int32_t offset = 0;
static int32_t data_len = 0;
static int16_t count = 0;

static const struct option cmdline_opts[] = {
    { "offset", required_argument, NULL, 'o', },
    { "length", required_argument, NULL, 'l', },
    { "file" , required_argument, NULL, 'f', },
    { "version", no_argument, NULL, '~', },
    { "help", no_argument, NULL, '?', },
    { "count", required_argument, NULL, 'c', },
    { 0, 0, 0, 0 },
};

static uint32_t parse_int(const char *num){
    uint32_t ret;
    char outnum[21];

    if(strlen(num) > 2 && num[0] == '0' && (num[1] == 'x' || num[1] == 'X')) {
        strncpy(outnum, &num[2], 20);
        sscanf(outnum, "%"SCNx32, &ret);
    } else if(strlen(num) == 0){
        ret =  -1;
    } else {
        strncpy(outnum, num, 20);
        sscanf(outnum, "%"SCNu32, &ret);
    }
    return ret;

}

static inline void print_usage(void)
{
    puts("vtxdis version " VTXDIS_VER "\n"
    "Usage:\n"
    "  vtxdis -f/--file FILE [options]\n"
    "  vtxdis -?/--help\n"
    "  vtxdis --version\n"
    "Options:\n"
    "  -f, --file       The file path to extract vertex data from.\n"
    "  -c, --count      The number of vertices to extract.\n"
    "  -l, --length     The amount of data to extract vertices from.\n"
    "  -o, --offset     The offset into file to start reading vertex data.\n"
    "  -?, --help       Prints this help message\n"
    "  --version        Prints the current version\n"
    );
}

static inline void print_version(void){
    puts("Version: " VTXDIS_VER);
}

static void print_vtx_data(Vtx *vtx, int vtx_cnt)
{
    puts("{");
    for(int i = 0; i < vtx_cnt; i++)
    {
        Vtx *v = &vtx[i];
        printf("    VTX(%d, %d, %d, %d, %d, %d, %d, %d, %d),\n", v->pos[0], v->pos[1], v->pos[2], v->tpos[0], v->tpos[1], v->cn[0], v->cn[1], v->cn[2], v->cn[3]);

    }
    puts("}");
}

static void parse_file(void)
{
    unsigned int alloc_size = 0;
    struct stat sbuffer;
    stat(filename, &sbuffer);
    if(errno != 0){
        perror("Count not stat file.");
        exit(1);
    }

    /* sanity checks */
    if(count > 0)
    {
        alloc_size = sizeof(Vtx) * count;
        if((offset > 0 && (offset + alloc_size) > sbuffer.st_size) || alloc_size > sbuffer.st_size)
        {
            puts("Requested data is beyond file boundaries.");
            exit(1);
        }
    }
    else if(data_len > 0)
    {
        alloc_size = data_len;

        if((offset > 0 && (offset + alloc_size) > sbuffer.st_size) || alloc_size > sbuffer.st_size)
        {
            puts("Requested data is beyond file boundaries.");
            exit(1);
        }
    }
    else
    {
        if (offset > 0)
        {
            alloc_size = sbuffer.st_size - offset;
        }
        else
        {
            alloc_size = sbuffer.st_size;
        }
    }

    if(alloc_size % sizeof(Vtx) != 0)
    {
        printf("Requested data size is not a multiple of sizeof(Vtx).  Requested size is %8x", alloc_size);
        exit(1);
    }

    FILE *file = fopen(filename, "rb");
    if(!file){
        perror("Could not open file");
        exit(1);
    }

    if(offset > 0){
        if(fseek(file, offset, SEEK_SET)){
            perror("Could not seek file");
            fclose(file);
            exit(1);
        }
    }

    Vtx *data = malloc(alloc_size);
    if(!data){
        fclose(file);
        perror("Could not allocate vtx data");
        exit(1);
    }

    if(!fread(data, alloc_size, 1, file)){
        perror("Could not read from file");
        fclose(file);
        free(data);
        exit(1);
    }

    fclose(file);

    unsigned int vtx_cnt = alloc_size / sizeof(Vtx);
    for(unsigned int i = 0; i < vtx_cnt; i++){
        Vtx *v = &data[i];

        v->pos[0] = SWAP16(v->pos[0]);
        v->pos[1] = SWAP16(v->pos[1]);
        v->pos[2] = SWAP16(v->pos[2]);
        v->flag = SWAP16(v->flag);
        v->tpos[0] = SWAP16(v->tpos[0]);
        v->tpos[1] = SWAP16(v->tpos[1]);
    }

    print_vtx_data(data, vtx_cnt);
    free(data);
}

int main(int argc, char **argv)
{
    int opt;

    while(1){
        opt = getopt_long(argc, argv, "o:l:f:c:v?", cmdline_opts, NULL);
        if(opt == -1){
            break;
        }
        switch(opt){
            case 'd':
                data = optarg;
                break;
            case '~':
                print_version();
                return 0;
            case '?':
                print_usage();
                return 0;
            case 'l':
                data_len = parse_int(optarg);
                break;
            case 'o':
                offset = parse_int(optarg);
                break;
            case 'f':
                filename = optarg;
                break;
            case 'c':
                count = parse_int(optarg);
                break;
        }
    }

    if (filename == NULL && data == NULL)
    {
        puts("Must specify -f or -d");
        print_usage();
        exit(1);
    }

    if(data_len < 0)
    {
        puts("Invalid -l/--length parameter passed.");
        print_usage();
        exit(1);
    }

    if(offset < 0)
    {
        puts("Invalid -o/--offset parameter passed.");
        print_usage();
        exit(1);
    }

    if(count < 0)
    {
        puts("Invalid -c/--count parameter passed.");
        print_usage();
        exit(1);
    }

    if(count > 0 && data_len > 0)
    {
        puts("Cannot specify both -c/--count and -l/--length.");
        print_usage();
        exit(1);
    }

    if(filename != NULL)
    {
        parse_file();
    }

    return 0;
}
