algoritmo "Exercicio 24 - Defina se num � positivo, negativo ou 0"
// Fun��o : Ler um numero, verificar e informar se � positivo, negativo ou zero.
// Repetir se o usu�rio desejar inserir outros numeros.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   programa: caractere
   numero: real
inicio
// Se��o de Comandos
   programa<-"S"
   enquanto programa <> "N" faca
      escreval("Digite um numero:")
      leia(numero)
      se numero > 0 entao
         escreval(numero," � positivo.")
      senao
         se numero < 0 entao
            escreval(numero," � negativo.")
         senao
            escreval(numero," � igual a zero.")
         fimse
      fimse
      escreval("Deseja informar outro numero?")
      escreval("Se sim digite S, se n�o digite N.")
      leia(programa)
   fimenquanto
fimalgoritmo
