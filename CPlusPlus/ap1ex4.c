#include <stdio.h>
#include <stdlib.h>

int main()
{
    // variaveis
    char loja[8][20];
    char produto[4][20];
    float preco[8][4];
    int i,j;
    // pegue os nomes dos produtos
    for (i=0;i<8;i++)
	{
	    printf("\nInsira o nome da loja %d: ", i+1);
        gets(loja[i]);
	}
	for (j=0;j<4;j++)
    {
        printf("\nInsira o nome do produto %d: ", j+1);
        gets(produto[j]);
    }
    for (i=0;i<8;i++)
    {
        for (j=0;j<4;j++)
        {
            printf("\nInsira o preco do produto %d na loja %s: ", j+1, loja[i]);
            scanf("%f",&preco[i][j]);
        }

    }
    // exiba os dados de produtos até 120.00 reais
    for (i=0;i<8;i++)
    {
        for (j=0;j<4;j++)
        {
            if (preco[i][j]<=120.00)
            {
                printf("\nProduto %s - Loja %s - %.2f\n", produto[j], loja[i], preco[i][j]);
            }
        }

    }
    return 0;
}
