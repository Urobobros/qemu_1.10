#ifndef DEBUG_PRINT_H
#define DEBUG_PRINT_H
#include <stdio.h>
extern int debug_prints;
#define DPRINTF(...) do { if (debug_prints) fprintf(stderr, __VA_ARGS__); } while (0)
#endif /* DEBUG_PRINT_H */
