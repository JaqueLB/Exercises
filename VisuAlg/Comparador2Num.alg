algoritmo "Exercicio 14 - Comparar dois numeros e informar quem � o maior"
// Fun��o : Receber dois numeros, comparar e informar quem � o maior.
// Autor :  Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   numero1,numero2:inteiro
inicio
// Se��o de Comandos 
   escreva("Este programa compara dois numeros.")
   escreval()
   escreva("Informe o primeiro numero: ")
   leia(numero1)
   escreva("Informe o segundo numero: ")
   leia(numero2)
   se numero1 > numero2 entao
      escreva(numero1," � maior que",numero2)
   senao
      se numero1 < numero2 entao
         escreva(numero2," � maior que",numero1)
      senao
         escreva(numero1," � igual a",numero2)
      fimse
   fimse
fimalgoritmo
