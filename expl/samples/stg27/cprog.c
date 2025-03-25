#include <stdio.h>

int main() {
    FILE *file = fopen("numbers.dat", "w");
    if (file == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    for (int i = 1; i <= 20; i++) {
        fprintf(file, "%d\n", i);
    }

    fclose(file);
    printf("File 'numbers.dat' created successfully.\n");
    return 0;
}
