algoritmo "Exercicio 18 - Ler 80 num e informar total"
// Função : Ler 80 numeros informados pelo usuário, e informar quantos numeros
// estão entre 10 e 150 incuindo as extremidades.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   indice,num,intervalo: inteiro
inicio
// Seção de Comandos
   para indice de 1 ate 80 faca
      escreval("Informe 80 números quaisquer:")
      leia(num)
      se num >=10 entao
         se num <=150 entao
         intervalo<-intervalo + 1
         escreval("A quanridade de numeros entre 10 e 150 é:",intervalo)
         fimse
      fimse
   fimpara
fimalgoritmo
