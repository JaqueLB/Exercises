algoritmo "Aula 9 - Nota Fiscal"
// Função :
// Autor :
// Data : 07/04/2016
// Seção de Declarações 
var
   notaFiscal:vetor[1..10] de inteiro // Vetor Nr Fiscal
   nomeCliente:vetor[1..10] de caracter // Vetor Nome do Cliente
   codItem:vetor[1..10,1..10] de inteiro // Matriz com Código do Item e Nr Nf
   valorItem:vetor[1..10] de real // Vetor com os preços
   i,j,k: inteiro // Indices auxiliares
inicio
// Seção de Comandos
   // Inicialização da variavel com os preços de cada item
   valorItem[1] <- 150.00
   valorItem[2] <- 25.00
   valorItem[3] <- 5.00
   valorItem[4] <- 50.00
   valorItem[5] <- 19.99
   valorItem[6] <- 37.90
   valorItem[7] <- 4.00
   valorItem[8] <- 17.00
   valorItem[9] <- 1.90
   valorItem[10] <- 100.00
   
   // Entrada de dados
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
      escreval("--------------------------------------------------------------")
      i<-i+1
   fimenquanto
   
   limpatela
   
   // Saida de Dados
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
                  escreval("Valor:",valorItem[k]:4:2) // formatação dois pontos
               // para exibir o numero correto de casas antes e após a virgula
               senao
                  escreval("Valor: 0.00")
               fimse
            fimse
         fimpara
      fimse
   fimpara
   escreval()
   escreval("--------------------------------------------------------------")
fimalgoritmo
