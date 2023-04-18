#include<stdio.h>

double calc(double a, double b, int operation) {
    double result = 0;
    switch (operation) {
        case 1:
            result = a + b;
            break;
        case 2:
            result = a - b;
            break;
        case 3:
            result = a * b;
            break;
        case 4:
            result = a / b;
            break;
    }
    return result;
}
