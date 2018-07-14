algoritmo "Exercicio 19 - Nome e sexo, informa se H ou M, e quantos de cada"
// Função : Ler o nome e o sexo de 56 pessoas, informar se cada uma é homem ou
// mulher, e no fim mostrar a quantidade total de homens e de mulheres.
// Autor :  Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   nome, sexo: caractere
   contador,homem,mulher: inteiro
inicio
// Seção de Comandos 
   para contador de 1 ate 56 faca
      escreval("Informe o nome:")
      leia(nome)
      escreval("Informe o sexo (M ou H):")
      leia(sexo)
      se sexo = "M" entao
         escreval(nome," é mulher!")
         mulher<-mulher + 1
      senao
         escreval(nome," é homem!")
         homem<-homem + 1
      fimse
   fimpara
   escreval("Mulheres:",mulher," Homens:",homem)
      
fimalgoritmo
