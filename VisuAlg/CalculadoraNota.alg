algoritmo "Exercicio 5 - Calculadora de Media Aritmetica"
// Função : Calcular a media aritmetica de tres notas do aluno, ler o nome do
// aluno e as notas, mostrar nome e media.
// Autor : Jaqueline L. Botaro
// Data : 04/03/2016
// Seção de Declarações 
var
   nome: caractere
   nota1,nota2,nota3,media: real

inicio
// Seção de Comandos
   escreva("Calculadora de Media Aritmetica.")
   escreval("")
   escreva("Digite o nome do aluno: ")
   leia(nome)
   escreva("Digite a primeira nota: ")
   leia(nota1)
   escreva("Digite a segunda nota: ")
   leia(nota2)
   escreva("Digite a terceira nota: ")
   leia(nota3)
   media<-(nota1+nota2+nota3)/3
   escreval("")
   escreva("Aluno: ",nome)
   escreval("")
   escreva("Media: ",media)
fimalgoritmo
