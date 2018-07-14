#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
  float num1,num2,res;
  char op;
  char escolha='y';

  printf("Calculadora");
  printf("\nDigite o primeiro numero: ");
  scanf("%f", &num1);
  printf("\nDigite o operador (+,-,*,/): ");
  scanf(" %c", &op);
  printf("\nDigite o segundo numero: ");
  scanf("%f", &num2);

  while (escolha == 'y');
  {
    if (op == '+')
    {
      res=num1+num2;
      printf("%.2f", res);
    }
    if (op == '-')
    {
      res=num1-num2;
      printf("%.2f", res);
    }
    if (op == '*')
    {
      res=num1*num2;
      printf("%.2f", res);
    }
    if (op == '/')
    {
      if (num2>0)
      {
        res=num1/num2;
        printf("%.2f", res);
      }
      else
      {
        printf("\nDivisao por zero!!");
      }
    }
    printf("\nDeseja fazer outra operacao? (y/n): ");
    scanf(" %c", &escolha);
  }
}
