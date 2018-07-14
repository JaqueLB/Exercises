#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *pf1;
    FILE *pf2;

    if((pf1 = fopen("clientes.txt", "w"))==NULL)
    {
        printf("\nNao consigo abrir o arquivo!");
        exit(1);
    }

    if((pf2 = fopen("recebimentos.txt", "w"))==NULL)
    {
        printf("\nNao consigo abrir o arquivo!");
        exit(1);
    }

    fclose(pf1);
    fclose(pf2);
    return 0;
}
