// Construir uma matriz 2x2, calcular e mostrar uma matriz resultante
// que sera a matriz multiplicada pelo meior numero da matriz.
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // vriaveis
    int matriz[2][2];
    int i, j, maior=0;
    // obter matriz
    for (i=0;i<2;i++)
    {
        for (j=0;j<2;j++)
        {
            printf("\nInsira o numero: ");
            scanf("%d",&matriz[i][j]);
            if (maior<matriz[i][j])
            {
                 maior=matriz[i][j];
            }
        }
    }
    // imprimir matriz
    printf("\n\nMatriz digitada:\n");
    for (i=0;i<2;i++)
    {
        for (j=0;j<2;j++)
        {
            printf("%d\t",matriz[i][j]);
        }
        printf("\n");
    }
    // informe maior numero
    printf("\n\nMaior numero: %d",maior);
    // exiba matriz resultante
    printf("\n\nMatriz resultante:\n");
    for (i=0;i<2;i++)
    {
        for (j=0;j<2;j++)
        {
            printf("%d\t",maior*matriz[i][j]);
        }
        printf("\n");
    }
    return 0;
}
