#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a = 0, b = 0, c = 0;
    printf("Informe 3 valores inteiros e positivos para compor um triangulo:\n");
    printf("primeiro valor:\n");
    scanf("%d", &a);
    printf("segundo valor:\n");
    scanf("%d", &b);
    printf("terceiro valor:\n");
    scanf("%d", &c);
    if (a<(b+c) && b<(a+c) && c<(b+a))
    {
        if ((a==b) && (b==c))
        {
            printf("\nEste eh um triangulo equilatero!");
        }
        else if ((a!=b) && (b!=c) && (c!=a))
        {
            printf("\nEste eh um triangulo escaleno!");
        }
        else
        {
            printf("\nEste eh um triangulo isoceles!");
        }
    }
    else
    {
        printf("Estes valores nao formam um triangulo!");
    }
    return 0;
}
