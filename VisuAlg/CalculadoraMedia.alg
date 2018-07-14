algoritmo "Exercicio 16 - Media de 3 notas, informar situação do aluno"
// Função : Receber 3 notas, calcular a média e informar a situação do aluno.
// Aprovado se media >= 7, reprovado se media <= 5 e recuperação se media
// entre 5,1 e 6,9.
// Autor : Jaqueline L. Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   nota1,nota2,nota3,media:real
inicio
// Seção de Comandos 
   escreva("Este programa calcula a média de 3 notas e")
   escreval()
   escreva("informa a situação do aluno")
   escreval()
   escreva("Informe a primeira nota: ")
   leia(nota1)
   escreva("Informe a segunda nota: ")
   leia(nota2)
   escreva("Informe a terceira nota: ")
   leia(nota3)
   media<-(nota1+nota2+nota3)/3
   se media >= 7 entao
      escreval("Aluno APROVADO. Média",media)
   senao
      se media <= 5 entao
         escreval("Aluno REPROVADO. Média",media)
      senao
         escreval("Aluno em RECUPERAÇÃO. Média",media)
      fimse
   fimse
fimalgoritmo
