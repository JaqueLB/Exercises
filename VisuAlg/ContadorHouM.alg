algoritmo "Exercicio 19 - Nome e sexo, informa se H ou M, e quantos de cada"
// Fun��o : Ler o nome e o sexo de 56 pessoas, informar se cada uma � homem ou
// mulher, e no fim mostrar a quantidade total de homens e de mulheres.
// Autor :  Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   nome, sexo: caractere
   contador,homem,mulher: inteiro
inicio
// Se��o de Comandos 
   para contador de 1 ate 56 faca
      escreval("Informe o nome:")
      leia(nome)
      escreval("Informe o sexo (M ou H):")
      leia(sexo)
      se sexo = "M" entao
         escreval(nome," � mulher!")
         mulher<-mulher + 1
      senao
         escreval(nome," � homem!")
         homem<-homem + 1
      fimse
   fimpara
   escreval("Mulheres:",mulher," Homens:",homem)
      
fimalgoritmo
