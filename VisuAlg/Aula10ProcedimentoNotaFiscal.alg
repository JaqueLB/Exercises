algoritmo "Aula 10 - Procedimentos em Nota Fiscal com Precos Aleatorios"
// Fun��o : Usar procedimentos par subdivir o codigo da NF com Aleatorio
// Autor : Jaqueline
// Data : 08/04/2016
// Se��o de Declara��es 
var
   notaFiscal:vetor[1..10] de inteiro // Vetor Nr Fiscal
   nomeCliente:vetor[1..10] de caracter // Vetor Nome do Cliente
   codItem:vetor[1..10,1..10] de inteiro // Matriz com C�digo do Item e Nr Nf
   valorItem:vetor[1..10] de real // Vetor com os pre�os
   i,j,k: inteiro // Indices auxiliares

   // procedimento para gerar valores aleatorios
   procedimento aleatorios
   var
      valorAle: real // variavel para valores aleatorios, local
   inicio
      aleatorio on
         para i de 1 ate 10 faca
            valorAle <- Randi(2000)
            valorItem[i] <- valorAle
         fimpara
      aleatorio off
   fimprocedimento

   // procedimento para entrada de dados
   // variaveis se mantem globais pois sao usadas em outros locais.
   procedimento entradaDados
   inicio
      escreval("****** Entrada de Dados ******")
      escreval()
      escreval("Instrucoes: Para encerrar o programa e/ou ir para o relatorio,")
      escreval("digite 0 no numero da nota fiscal.")
      escreval("Para inserir a proxima nota fiscal, digite 0 no codigo do item.")
      escreval()
      i<-1
      enquanto i<11 faca
         escreva("Digite o numero da nota fiscal: ") // entrada nota fiscal
         leia(notaFiscal[i])
         se (notaFiscal[i] <> 0) entao // Se 0 o programa encerra
            escreva("Digite o nome do cliente: ")
            leia(nomeCliente[i])
            j<-1
            enquanto j<11 faca
               escreva("Digite o codigo do item: ") // entrada item
               leia(codItem[i,j])
               se (codItem[i,j]=0) entao
                  escreval("A nf foi encerrada.")
                  j<-10 // Se 0 a nf encerra
               fimse
               j<-j+1
            fimenquanto
         senao
            escreval("O programa foi encerrado.") // se 0 o programa encerra
            i<-10
         fimse
         escreval("-------------------------------------------------------")
         i<-i+1
      fimenquanto
   fimprocedimento

   // procedimento para saida dos dados
   procedimento saidaDados
   inicio
      escreval("***** Relatorio de Nota Fiscal *****")
      escreval()
      para i de 1 ate 10 faca
         se (notaFiscal[i]<>0) entao
            escreval("Numero da NF:",notaFiscal[i])
            escreval("Nome do Cliente:",nomeCliente[i])
            escreval("Itens da NF:")
            para j de 1 ate 10 faca
               se (codItem[i,j]<>0) entao
                  escreval("Item:",codItem[i,j])
                  k<-codItem[i,j]
                  se ((k>0) e (k<=10)) entao // exibe itens de 1 a 10
                     escreval("Valor:",valorItem[k]:4:2) // formata��o dois pontos
                  // para exibir o numero correto de casas antes e ap�s a virgula
                  senao
                     escreval("Valor: 0.00")
                  fimse
               fimse
            fimpara
         fimse
      fimpara
      escreval()
      escreval("--------------------------------------------------------------")
   fimprocedimento
   
inicio
// Se��o de Comandos
   aleatorios
   entradaDados
   limpatela
   saidaDados
fimalgoritmo
