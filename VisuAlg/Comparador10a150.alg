algoritmo "Exercicio 18 - Ler 80 num e informar total"
// Fun��o : Ler 80 numeros informados pelo usu�rio, e informar quantos numeros
// est�o entre 10 e 150 incuindo as extremidades.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   indice,num,intervalo: inteiro
inicio
// Se��o de Comandos
   para indice de 1 ate 80 faca
      escreval("Informe 80 n�meros quaisquer:")
      leia(num)
      se num >=10 entao
         se num <=150 entao
         intervalo<-intervalo + 1
         escreval("A quanridade de numeros entre 10 e 150 �:",intervalo)
         fimse
      fimse
   fimpara
fimalgoritmo
