algoritmo "Exercicio 25 - Comparar dois numeros"
// Função : Ler dois numeros, verificar e informar se eles são iguais ou
// diferentes, e se forem diferentes, informar o maior.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   num1,num2:real
inicio
// Seção de Comandos
   escreval("Digite dois numeros:")
   leia(num1)
   leia(num2)
   se num1 = num2 entao
      escreval("O numero",num1," é igual ao numero",num2)
   senao
      se num1 > num2 entao
         escreval("Eles são diferentes!")
         escreval("O numero",num1," é maior que o numero",num2)
      senao
         escreval("Eles são diferentes!")
         escreval("O numero",num2," é maior que o numero",num1)
      fimse
   fimse
fimalgoritmo
