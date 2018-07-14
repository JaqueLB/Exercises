#include <stdio.h>
#include <stdlib.h>
int potencia(int x, int exp) {
    int i, aux = 1;
    if (exp == 0) {
        return 1;
    }
    else {
        for (i=0;i<exp;i++) {
            aux = x*x;
        }
        return aux;
    }
}
int main()
{
    int x, resultado;
    int exp;
    printf("\nInforme um numero inteiro: ");
    scanf("%d", &x);
    printf("\nInforme a potencia: ");
    scanf("%d", &exp);
    resultado = potencia(x, exp);
    printf("\nResultado: %d",resultado);
}
