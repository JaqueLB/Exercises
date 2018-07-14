algoritmo "Exercicio 2 Aula 6"
// Função : Contar quantos numeros primos existem entre os numeros informados.
// Autor : Jaqueline Lemes Botaro
// Data : 10/03/2016
// Seção de Declarações 
var
   numero,resto,quantrestos,quantprimos,contador:inteiro
inicio
// Seção de Comandos 
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
               escreval("O numero",numero," é primo.")
               quantprimos<-quantprimos+1
            senao
               escreval("O numero",numero," não é primo.")
            fimse
   fimenquanto
   escreval("A quantidade de numeros primos é:",quantprimos)
fimalgoritmo
