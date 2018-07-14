#include <stdio.h>
#include <stdlib.h>
#define MAX 150

int main()
{
    int i;
    char linha[MAX];
    FILE *entrada, *saida;
    entrada = fopen("original.txt", "r");
    if (entrada) {
        saida = fopen("copia.txt", "w");
        for (i=1; i<4; i++) {
            fgets(linha, MAX, entrada);
            fputs(linha, saida);
        }
        printf("Informe a linha que deve ser inserida:\n");
        gets(linha);
        fputs(linha, saida);
        fgets(linha, MAX, entrada);
        while(!feof(entrada)) {
            fputs(linha, saida);
            fgets(linha, MAX, entrada);
        }
        fputs(linha, saida);
        fclose(entrada);
        fclose(saida);
    }
    else {
        printf("Erro ao abrir o arquivo original.txt\n");
    }
    return 0;
}
