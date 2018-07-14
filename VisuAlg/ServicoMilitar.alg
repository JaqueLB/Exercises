algoritmo "Exercicio 21 - Dados de N pessoas, informa se Apto serviço militar"
// Função : Receber os dados (nome, sexo, idade, saude) de N pessoas, verificar
// e informar se a pessoa está apta ao serviço militar obrigatorio. Informar o
// total de aptos.
// Autor :
// Data : 15/03/2016
// Seção de Declarações 
var
   nome,sexo,saude,programa: caractere
   idade,apto: inteiro
inicio
// Seção de Comandos
   programa<-"S"
   enquanto programa <> "N" faca
      escreval("")
      escreval("Informe o nome do candidato:")
      leia(nome)
      escreval("Informe o sexo do candidato, M para mulher, H para homem:")
      leia(sexo)
      escreval("Informe a idade do candidato:")
      leia(idade)
      escreval("Informe a situação de saúde do candidato, S para saudável,")
      escreval("D para doente:")
      leia(saude)
      se sexo = "H" entao
         se idade >= 18 entao
            se saude = "S" entao
               escreval(nome," está apto ao serviço militar obrigatório.")
               apto<-apto+1
            senao
               escreval(nome," não está apto ao serviço militar obrigatório,")
               escreval("pois está doente.")
            fimse
         senao
            escreval(nome," não está apto ao serviço militar obrigatório,")
            escreval("pois é menor de idade.")
         fimse
      senao
         escreval(nome," não está apto ao serviço militar obrigatório,")
         escreval("pois é mulher.")
      fimse
      escreval("")
      escreval("Deseja incluir mais um candidao?")
      escreval("Digite S se sim, e N se não:")
      leia(programa)
   fimenquanto
   escreval("")
   escreval("Temos",apto," candidatos aptos!")
               
fimalgoritmo
