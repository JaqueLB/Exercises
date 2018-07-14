algoritmo "Exercicio 36 - Media Ponderada"
// Função : Solicitar 3 notas do aluno, calcular a media ponderada de acordo
// com os pesos informados e informar classificação. A media varia de 0 a 10.
// Trabalho de Lab. Peso 2, Avaliacao Sem. Peso 3, Exame Final Peso 5.
// Classificacao: A - 8 a 10, B - 7 a 8, C - 6 a 7, D - 5 a 6, R - 0 a 5.
// Autor : Jaqueline
// Data : 06/04/2016
// Seção de Declarações 
var
   media,lab,sem,exame:real
   nome,classificacao:caracter
inicio
// Seção de Comandos
   escreval("*** Calculadora de Media Ponderada ***")
   escreval()
   escreval("*** Entrada de Dados ***")
   escreval()
   escreva("Digite o nome do aluno: ")
   leia(nome)
   escreva("Digite a nota do laboratorio: ")
   leia(lab)
   escreva("Digite a nota semestral: ")
   leia(sem)
   escreva("Digite a nota do exame: ")
   leia(exame)
   media<-((lab*2)+(sem*3)+(exame*5))/10
   se media >= 8 entao
      classificacao<-"A"
   senao
      se ((media >=7) e (media <8)) entao
         classificacao<-"B"
      senao
         se ((media >=6) e (media <7)) entao
            classificacao<-"C"
         senao
            se ((media >=5) e (media <6)) entao
               classificacao<-"D"
            senao
               classificacao<-"R"
            fimse
         fimse
      fimse
   fimse
   limpatela
   escreval("*** Media Final e Classificacao ***")
   escreval()
   escreval("Nome: ",nome)
   escreval("Media Final:",media)
   escreval("Classificacao: ",classificacao)
fimalgoritmo
