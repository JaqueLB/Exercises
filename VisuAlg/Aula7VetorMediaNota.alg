algoritmo "Aula 7 - Média de n alunos"
// Função :
// Autor :
// Data : 06/04/2016
// Seção de Declarações 
var
   nome:vetor[1..100] de caractere
   codAluno:vetor[1..100] de inteiro
   nota1,nota2:real
   media:vetor[1..100] de real
   i:inteiro
   resp:caractere
inicio
// Seção de Comandos
   i<-1
   resp<-"s"
   enquanto resp="s" faca
      escreval("*** Sistema para Cálculo de Médias ***")
      escreval()
      escreval("*** Entrada de Dados dos Alunos ***")
      escreval()
      escreva("Informe o código do aluno: ")
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
      // se sim, indicar para o indice onde a proxima informação vai entrar
      se resp = "s" entao
         i<-i+1
      fimse
      limpatela
   fimenquanto
   
   limpatela
   
   escreval("*** Relatório de Médias ***")
   escreval()
   para i de 1 ate 100 faca
      se codAluno[i]>0 entao // para omitir as entradas vazias
         escreval("Código:",codAluno[i])
         escreval("Nome: ",nome[i])
         escreval("Média:",media[i])
         escreval("--------------------------------------------------------------")
      fimse
   fimpara
fimalgoritmo
