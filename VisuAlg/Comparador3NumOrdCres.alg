algoritmo "Exercicio 30 - Ordem crescente de 3 numeros"
// Fun��o : Ler 3 numeros e escreve-los em ordem crescente
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   num1,num2,num3: real
inicio
// Se��o de Comandos
   escreval("Digite 3 n�meros:")
   leia(num1)
   leia(num2)
   leia(num3)
   se (num1=num2) e (num2=num3) entao
      escreval("Os tres numeros s�o iguais:",num1,",",num2,",",num3)
   senao
      se (num1=num2) ou (num2=num3) ou (num1=num3) entao
         escreval("Existem numeros iguais:",num1,",",num2,",",num3)
      senao
         se (num1>num2) e (num2>num3) e (num1>num3) entao
            escreval(num1,">",num2,">",num3)
         senao
            se (num1>num3) e (num3>num2) e (num1>num2) entao
               escreval(num1,">",num3,">",num2)
            senao
               se (num2>num1) e (num1>num3) e (num2>num3) entao
                  escreval(num2,">",num1,">",num3)
               senao
                  se (num2>num3) e (num3>num1) e (num2>num1) entao
                     escreval(num2,">",num3,">",num1)
                  senao
                     se (num3>num1) e (num1>num2) e (num3>num2) entao
                        escreval(num3,">",num1,">",num2)
                     senao
                        se (num3>num2) e (num2>num1) e (num3>num1) entao
                           escreval(num3,">",num2,">",num1)
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimalgoritmo
