algoritmo "Exercicio 16 - Media de 3 notas, informar situa��o do aluno"
// Fun��o : Receber 3 notas, calcular a m�dia e informar a situa��o do aluno.
// Aprovado se media >= 7, reprovado se media <= 5 e recupera��o se media
// entre 5,1 e 6,9.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   nota1,nota2,nota3,media:real
inicio
// Se��o de Comandos 
   escreva("Este programa calcula a m�dia de 3 notas e")
   escreval()
   escreva("informa a situa��o do aluno")
   escreval()
   escreva("Informe a primeira nota: ")
   leia(nota1)
   escreva("Informe a segunda nota: ")
   leia(nota2)
   escreva("Informe a terceira nota: ")
   leia(nota3)
   media<-(nota1+nota2+nota3)/3
   se media >= 7 entao
      escreval("Aluno APROVADO. M�dia",media)
   senao
      se media <= 5 entao
         escreval("Aluno REPROVADO. M�dia",media)
      senao
         escreval("Aluno em RECUPERA��O. M�dia",media)
      fimse
   fimse
fimalgoritmo
