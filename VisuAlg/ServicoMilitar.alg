algoritmo "Exercicio 21 - Dados de N pessoas, informa se Apto servi�o militar"
// Fun��o : Receber os dados (nome, sexo, idade, saude) de N pessoas, verificar
// e informar se a pessoa est� apta ao servi�o militar obrigatorio. Informar o
// total de aptos.
// Autor :
// Data : 15/03/2016
// Se��o de Declara��es 
var
   nome,sexo,saude,programa: caractere
   idade,apto: inteiro
inicio
// Se��o de Comandos
   programa<-"S"
   enquanto programa <> "N" faca
      escreval("")
      escreval("Informe o nome do candidato:")
      leia(nome)
      escreval("Informe o sexo do candidato, M para mulher, H para homem:")
      leia(sexo)
      escreval("Informe a idade do candidato:")
      leia(idade)
      escreval("Informe a situa��o de sa�de do candidato, S para saud�vel,")
      escreval("D para doente:")
      leia(saude)
      se sexo = "H" entao
         se idade >= 18 entao
            se saude = "S" entao
               escreval(nome," est� apto ao servi�o militar obrigat�rio.")
               apto<-apto+1
            senao
               escreval(nome," n�o est� apto ao servi�o militar obrigat�rio,")
               escreval("pois est� doente.")
            fimse
         senao
            escreval(nome," n�o est� apto ao servi�o militar obrigat�rio,")
            escreval("pois � menor de idade.")
         fimse
      senao
         escreval(nome," n�o est� apto ao servi�o militar obrigat�rio,")
         escreval("pois � mulher.")
      fimse
      escreval("")
      escreval("Deseja incluir mais um candidao?")
      escreval("Digite S se sim, e N se n�o:")
      leia(programa)
   fimenquanto
   escreval("")
   escreval("Temos",apto," candidatos aptos!")
               
fimalgoritmo
