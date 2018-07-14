/* Escreva um programa que reserva passagens aereas.
Devera ler informações sobre o numero do voo
origem, destino e o numero de lugares disponiveis.
sao 12 lugares.*/
#include <stdio.h>
#include <stdlib.h>

int main()
{
    // variaveis
    int num[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
    int lugares[12] = {0,0,0,0,0,0,0,0,0,0,2,1};
    int op1, op2, i, voo;
    char origem[12][15] = {"sao paulo", "rio de janeiro", "belo horizonte", "vitoria", "londrina", "curitiba", "porto alegre", "aracaju", "salvador", "madrid", "paris", "londres"};
    char destino[12][15] = {"fortaleza", "salvador", "buenos aires", "cuiaba", "manaus", "rio branco", "alagoas", "marrocos", "canada", "roma", "madrid", "nova york"};
    // menu de consultas
    INICIO:
    printf("Escolha uma opcao:");
    printf("\n\n1 Consultar \n2 Efetuar reserva \n3 Sair");
    printf("\n\nDigite a opcao: ");
    scanf("%d",&op1);
    // escolha a opcao do menu e passe para o proximo menu
    switch (op1){
        case 1:
            op2=1;
            break;
        case 2:
            op2=2;
            break;
        case 3:
            exit(EXIT_FAILURE);
            break;
        default: // se informar opcao inexistente o programa retorna a execucao do menu.
            goto INICIO;
            break;
    }
    // segundo menu, se opcao 1, armazene a opçao pois sera usada na proxima condicional
    switch (op2){
        case 1:
            printf("\n4 Por numero do voo \n5 Por origem \n6 Por destino");
            printf("\n\nDigite a opcao: ");
            scanf("%d",&op2);
            break;
        case 2:
            printf("\nInforme o numero do voo: ");
            scanf("%i",&voo);
    }
    // condicionais caso opcao 1 (consultas)
    if (op2==4){
        printf("\n");
        for (i=0;i<=11;i++){
            printf("%d\n",num[i]);
        }
        printf("\n\n");
        goto INICIO;
    }
    if (op2==5){
        printf("\n");
        for (i=0;i<=11;i++){
            printf("%s\n",origem[i]);
        }
        printf("\n\n");
        goto INICIO;
    }
    if (op2==6){
        printf("\n");
        for (i=0;i<=11;i++){
            printf("%s\n",destino[i]);
        }
        printf("\n\n");
        goto INICIO;
    }
    // condicionais caso opcao 2 (confere o numero do voo)
   if(voo<1 && voo>12){
        printf("\nVoo inexistente\n");
        goto INICIO;
    }
    else {
        if(lugares[voo]>0){
            printf("\nReserva confirmada\n");
            lugares[voo]--;// apos reservar, diminua um lugar do voo.
			goto INICIO;
        }
        else {
            printf("\nVoo lotado\n");
			goto INICIO;
        }
    }
    return 0;
}
