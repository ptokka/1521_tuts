#include <stdio.h>


#define ARRAY_WIDTH 3
#define ARRAY_HEIGHT 3
int main(void) {

    int array[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    };

    for (int row = 0; row < ARRAY_HEIGHT; row++) {
        for (int col = 0; col < ARRAY_WIDTH; col++) {

            // this is where our mips code will be
            printf("%d\n", array[row][col]);
        }
    }
    return 0;
}