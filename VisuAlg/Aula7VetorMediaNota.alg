algoritmo "Aula 7 - M�dia de n alunos"
// Fun��o :
// Autor :
// Data : 06/04/2016
// Se��o de Declara��es 
var
   nome:vetor[1..100] de caractere
   codAluno:vetor[1..100] de inteiro
   nota1,nota2:real
   media:vetor[1..100] de real
   i:inteiro
   resp:caractere
inicio
// Se��o de Comandos
   i<-1
   resp<-"s"
   enquanto resp="s" faca
      escreval("*** Sistema para C�lculo de M�dias ***")
      escreval()
      escreval("*** Entrada de Dados dos Alunos ***")
      escreval()
      escreva("Informe o c�digo do aluno: ")
      leia(codAluno[i])
      escreva("Informe o nome do aluno: ")
      leia(nome[i])
      escreva("Informe a nota 1: ")
      leia(nota1)
      escreva("Informe a nota 2: ")
      leia(nota2)
      media[i]<-(nota1+nota2)/2
      escreval()
      escreva("Deseja inserir outro aluno? (s/n) ")
      leia(resp)
      // se sim, indicar para o indice onde a proxima informa��o vai entrar
      se resp = "s" entao
         i<-i+1
      fimse
      limpatela
   fimenquanto
   
   limpatela
   
   escreval("*** Relat�rio de M�dias ***")
   escreval()
   para i de 1 ate 100 faca
      se codAluno[i]>0 entao // para omitir as entradas vazias
         escreval("C�digo:",codAluno[i])
         escreval("Nome: ",nome[i])
         escreval("M�dia:",media[i])
         escreval("--------------------------------------------------------------")
      fimse
   fimpara
fimalgoritmo
