algoritmo "Exercicio 2 Aula 6"
// Fun��o : Contar quantos numeros primos existem entre os numeros informados.
// Autor : Jaqueline Lemes Botaro
// Data : 10/03/2016
// Se��o de Declara��es 
var
   numero,resto,quantrestos,quantprimos,contador:inteiro
inicio
// Se��o de Comandos 
   numero<-1
   quantprimos<-0
   enquanto (numero <> 0) faca
            resto<-0
            quantrestos<-0
            escreval("Digite um numero (caso deseje sair, digite 0): ")
            leia(numero)
            
            para contador de 1 ate numero faca
                 resto<-numero mod contador
                 se resto=0 entao
                    quantrestos<-quantrestos+1
                 fimse
            fimpara
            
            se quantrestos=2 entao
               escreval("O numero",numero," � primo.")
               quantprimos<-quantprimos+1
            senao
               escreval("O numero",numero," n�o � primo.")
            fimse
   fimenquanto
   escreval("A quantidade de numeros primos �:",quantprimos)
fimalgoritmo
