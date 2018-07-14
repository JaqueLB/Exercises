algoritmo "Exercicio 14 - Comparar dois numeros e informar quem é o maior"
// Função : Receber dois numeros, comparar e informar quem é o maior.
// Autor :  Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   numero1,numero2:inteiro
inicio
// Seção de Comandos 
   escreva("Este programa compara dois numeros.")
   escreval()
   escreva("Informe o primeiro numero: ")
   leia(numero1)
   escreva("Informe o segundo numero: ")
   leia(numero2)
   se numero1 > numero2 entao
      escreva(numero1," é maior que",numero2)
   senao
      se numero1 < numero2 entao
         escreva(numero2," é maior que",numero1)
      senao
         escreva(numero1," é igual a",numero2)
      fimse
   fimse
fimalgoritmo
