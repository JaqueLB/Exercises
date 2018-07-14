#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct RgCliente
{
    char cod[3];
    char nome[30];
    char fone[10];
    char end[30];
} varRgCliente;

struct RgReceb
{
    char cod_cli[3];
    char num_doc[3];
    char valor_doc[5];
    char data_em[11];
    char data_venc[11];
} varRgReceb;

 main()
{
    FILE *fp;
    fp = fopen("clientes.txt", "a+b");

    printf("\nDados do cliente");

    printf("\nEntre com o codigo: ");
    gets(varRgCliente.cod);

    printf("\nEntre com o nome: ");
    gets(varRgCliente.nome);

    printf("\nEntre com o endereco: ");
    gets(varRgCliente.end);

    printf("\nEntre com o fone: ");
    gets(varRgCliente.fone);


    fwrite(&varRgCliente, sizeof(varRgCliente), 1, fp);

    fclose(fp);

    FILE *fp1;
    fp1 = fopen("recebimentos.txt", "a+b");

    printf("\nDados do recebimento.");

    printf("\nEntre com o codigo do cliente: ");
    gets(varRgReceb.cod_cli);

    printf("\nEntre com o codigo do documento: ");
    gets(varRgReceb.num_doc);

    printf("\nEntre com o valor do documento: ");
    gets(varRgReceb.valor_doc);

    printf("\nEntre com a data de emissao: ");
    gets(varRgReceb.data_em);

    printf("\nEntre com a data de vencimento: ");
    gets(varRgReceb.data_venc);


    fwrite(&varRgReceb, sizeof(varRgReceb), 1, fp1);

    fclose(fp1);

}
