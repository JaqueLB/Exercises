algoritmo "Exercicio 21 - Programa de lucro,prejuizo,empate"
// Fun��o : Receber o pre�o de custo e pre�o final de 20 produtos, informar se
// houve lucro, prejuizo ou empate, mostrar m�dia de pre�os de custo
// e de pre�os de venda.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   custo,venda,lucro,prejuizo,mediaCusto,mediaVenda: real
   contador: inteiro
inicio
// Se��o de Comandos
   para contador de 1 ate 40 faca
      escreval("Informe o pre�o de custo do produto:")
      leia(custo)
      mediaCusto<-mediaCusto+custo
      escreval("Informe o pre�o de venda do produto:")
      leia(venda)
      mediaVenda<-mediaVenda+venda
      se custo < venda entao
         lucro<-venda-custo
         escreval("Houve um lucro de",lucro)
      senao
           se custo > venda entao
              prejuizo<-custo-venda
              escreval("Houve um prejuizo de",prejuizo)
           senao
              se custo = venda entao
                 escreval("Esta venda saiu empatada.")
              fimse
           fimse
      fimse
   fimpara
   mediaCusto<-mediaCusto/40
   mediaVenda<-mediaVenda/40
   escreval("A m�dia de pre�o de custo foi",mediaCusto)
   escreval("A m�dia de pre�o de venda foi",mediaVenda)

fimalgoritmo
