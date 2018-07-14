#include <stdio.h>
#include <stdlib.h>

int main()
{
    struct Aluno {
        char nome[30];
        float altura, peso;
    } dados[7][50];

    float med_peso[7] = {0,0,0,0,0,0,0};
    float med_altura[7] = {0,0,0,0,0,0,0};
    int total_alunos[7] = {0,0,0,0,0,0,0};
    char aluno1[30], aluno2[30];
    int x, y;

    for (x=0;x<7;x++) {
        printf("\nQuantos alunos a turma %d tem? ", x+1);
        scanf("%d", &total_alunos[x]);
        for (y=0;y<total_alunos[x];y++) {
            printf("\n\nInforme nome, peso e altura do aluno %d, turma %d: ", y+1, x+1);
            scanf("%s   %f   %f", dados[x][y].nome, dados[x][y].altura, dados[x][y].peso);
            med_peso += dados[x][y].peso;
            med_altura += dados[x][y].altura;

        }
    }
    return 0;
}
