#include <stdio.h>
#include <stdlib.h>

int main()
{
    //variaveis
    struct dados_habitante {
        float salario;
        int idade;
        char sexo;
        int filho;
    } habitante[100];
    int aux=0, i=0, k=0, media_id_m=0, media_filhos=0, menor_id=110, mediaId, mediaFilhos;
    float media_sal=0.00, maior_sal=0.00, mediaSal;
    // programa sai quando idade = 0
    do {
        printf("\nInforme os dados do habitante %d: \n", i+1);
        printf("\nDigite a idade: ");
        scanf("%d",&aux);
        if (aux!=0)
        {
            habitante[i].idade = aux;
            printf("\nDigite o salario: ");
            scanf(" %f",&habitante[i].salario);
            printf("\nDigite o sexo (f ou m): ");
            scanf(" %c",&habitante[i].sexo);
            printf("\nDigite o numero de filhos: ");
            scanf(" %d",&habitante[i].filho);

            // calcule a media de salario
            media_sal=(media_sal+habitante[i].salario);

            // calcule a media de filhos
            media_filhos=(media_filhos+habitante[i].filho);


            // media de idade das mulheres com salario menor que 1000,00
            if (habitante[i].salario<1000.00 && habitante[i].sexo=="f")
            {
                media_id_m=(media_id_m+habitante[i].idade);
                k++;
            }

            // maior salario
            if (habitante[i].salario>maior_sal)
            {
                maior_sal = habitante[i].salario;
            }
            // maior idade
            if (habitante[i].idade<menor_id)
            {
                menor_id = habitante[i].idade;
            }
            i++;
        }
        else
        {
            mediaId = media_id_m/(k+1);
            mediaSal = media_sal/(i+1);
            mediaFilhos = media_filhos/(i+1);
            printf("\nPessoas que participaram: %d",i+1);
			printf("\n");
			printf("\nMedia de idade de mulheres com salario < 1000.00: %d",mediaId);
			printf("\nMedia de salario da populacao: %.2f",mediaSal);
			printf("\nMedia de filhos da populacao: %d",mediaFilhos);
			printf("\nMaior salario: %.2f",maior_sal);
			printf("\nMenor idade: %d\n",menor_id);
        }
    } while (aux!=0);
    return 0;
}
