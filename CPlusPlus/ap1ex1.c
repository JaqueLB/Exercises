// Escreva um programa que recebe o numero de pe�as vendidas por cada vendedor e seu pre�o
// Existem apenas 10 vendedores, cada vendedor pode vender apenas 1 tipo de pe�a, ou seja
// para cada vendedor, existe apenas um pre�o associado � pe�a vendida.
// Calcular o total de pe�as vendidas, e o valor total de cada vendedor.
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int total, i, qtde[10];
    float preco[10], venda;

    for (i=0;i<10;i++) {
        printf("\nNumero de pecas vendidas pelo vendedor tipo %d\n", i+1);
        scanf("%d", &qtde[i]); // receba os valores do teclado, e armazene no vetor de quantidade de pe�as
        printf("\nPreco da peca tipo %d\n", i+1);
        scanf("%f", &preco[i]); // receba o pre�o de cada pe�a
        total = qtde[i] + total;
    }
    printf("\nA quantidade total de pecas vendidas eh: %d", total);
    for (i=0;i<10;i++) {
        venda = qtde[i]*preco[i];
        printf("\nO valor total de vendas do vendedor tipo %d eh: %.2f\n", i+1, venda);
    }
    return 0;
}
