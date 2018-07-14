algoritmo "Exercicio 33 - Salario hora/aula"
// Função : Calcular o salario de professor de acordo com horas trabalhadas.
// Solicitar horas trabalhadas e nivel.
// Dados:
// Professor Nivel 1 - 12 reais h/aula
// Professor Nivel 2 - 17 reais h/aula
// Professor Nivel 3 - 25 reais h/aula
// Autor : Jaqueline L. Botaro
// Data : 06/04/2016
// Seção de Declarações 
var
   salario,nivel,hora:inteiro
inicio
// Seção de Comandos
   escreval("*** Escola APRENDER ***")
   escreval()
   escreval("*** Sistema de Calculo de Salarios ***")
   escreval()
   escreva("Digite o nivel do professor (1/2/3): ")
   leia(nivel)
   escreva("Digite as horas inteiras trabalhadas: ")
   leia(hora)
   se nivel = 1 entao
      salario<-hora*12
      escreval("Salario:",salario)
   senao
      se nivel = 2 entao
         salario<-hora*17
         escreval("Salario:",salario)
      senao
         salario<-hora*25
         escreval("Salario:",salario)
      fimse
   fimse
fimalgoritmo
