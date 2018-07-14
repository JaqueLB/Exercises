#include <stdio.h>
#include <stdlib.h>

int main()
{
   /* int matriz1[4][5] = {{1,2,3,4,5},{1,2,3,4,5},{1,2,3,4,5},{1,2,3,4,5}};
    int matriz2[5][2] = {{1,2},{1,2},{1,2},{1,2},{1,2}};
    int i,j,k,aux=0;
    int matrizR[4][2];
    for (i=0;i<4;i++){
        for (j=0;j<2;j++) {
            matrizR[i][j]=0;
            for (k=0;k<5;k++) {
                aux = aux + (matriz1[i][k] * matriz2[k][j]);
            }
            matrizR[i][j]=aux;
            aux=0;
        }
    }

    printf("\n\n");
    for (i=0;i<4;i++){
        for (j=0;j<2;j++) {
            printf("%d ",matrizR[i][j]);
        }
        printf("\n\n");
    }
    */

    float preco;
    int venda_med;

    printf("\nInforme o preco: ");
    scanf("%f",&preco);
    printf("\nInforme a venda media: ");
    scanf("%d",&venda_med);

    if (preco <30.00 && venda_med < 500) {
        preco = preco*1.1;
    }
    else {
        if (preco >=30.00 && preco< 80.00){
            if (venda_med >= 500 && venda_med< 1200){
                printf("Deu certo");
            }
        }
    }
    return 0;
}
