#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float juros_composto(float principal, float taxa, int meses) {
    float anterior = 0.0;
    float montante;
    float juros;
    float parcela;
    int i;

    for(i = 1;i <= meses;i++){
        montante = principal * pow((1 + taxa), i);
        juros = montante - principal - anterior;

        anterior += juros;

        parcela = montante/meses;

        printf("Mes: %d - Montante: %.2f - Juros %.2f - Parcela: %.2f\n", i, montante, juros, parcela);
  }

}

int main()
{
    float valor, valor_final;
    int op, op1, parc;
    printf("\nInsira o valor da compra: ");
    scanf("%f", &valor);
    if (valor < 100.00) {
        INICIO_1:
        printf("Escolha uma opcao de pagamento:");
        printf("\n\n1 A vista com 10 porc de desconto \n2 Em 2 vezes sem juros");
        printf("\n\nDigite a opcao: ");
        scanf("%d",&op);
    }
    else {
        INICIO_2:
        printf("Escolha uma opcao de pagamento:");
        printf("\n\n1 A vista com 10 porcento de desconto \n2 Em 2 vezes sem juros \n3 De 3 a 10 vezes com juros de 10 porcento a.m.");
        printf("\n\nDigite a opcao: ");
        scanf("%d",&op1);
    }
    switch(op) {
        case 1:
            valor_final = valor*0.9;
            printf("\nO valor final da compra eh: %.2f",valor_final);
            break;
        case 2:
            valor_final = valor/2;
            printf("\nO valor de cada parcela eh: %.2f",valor_final);
            printf("\nValor total da compra: %.2f",valor);
            break;
    }
    switch(op1) {
        case 1:
            valor_final = valor*0.9;
            printf("\nO valor final da compra eh: %.2f",valor_final);
            break;
        case 2:
            valor_final = valor/2;
            printf("\nO valor de cada parcela eh: %.2f",valor_final);
            printf("\nValor total da compra: %.2f",valor);
            break;
        case 3:
            printf("Informe o numero de parcelas: ");
            scanf("%d",&parc);
            juros_composto(valor,0.1,parc);
            break;
    }
    return 0;
}
