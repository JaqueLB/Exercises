algoritmo "Exercicio 21 - Programa de lucro,prejuizo,empate"
// Função : Receber o preço de custo e preço final de 20 produtos, informar se
// houve lucro, prejuizo ou empate, mostrar média de preços de custo
// e de preços de venda.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   custo,venda,lucro,prejuizo,mediaCusto,mediaVenda: real
   contador: inteiro
inicio
// Seção de Comandos
   para contador de 1 ate 40 faca
      escreval("Informe o preço de custo do produto:")
      leia(custo)
      mediaCusto<-mediaCusto+custo
      escreval("Informe o preço de venda do produto:")
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
   escreval("A média de preço de custo foi",mediaCusto)
   escreval("A média de preço de venda foi",mediaVenda)

fimalgoritmo
