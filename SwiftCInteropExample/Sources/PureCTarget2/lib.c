#include <stdlib.h>
#include "lib.h"

int helloFromCTarget2(char **arr) {
    char *result = malloc(22);
    result = "Hello from C target 2";
    *arr = result;
    return 22;
}

int cTarget2UsingLibrary2() {
    return 100 + library2Function();
}