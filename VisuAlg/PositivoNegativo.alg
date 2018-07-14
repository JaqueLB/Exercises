algoritmo "Exercicio 24 - Defina se num é positivo, negativo ou 0"
// Função : Ler um numero, verificar e informar se é positivo, negativo ou zero.
// Repetir se o usuário desejar inserir outros numeros.
// Autor : Jaqueline
// Data : 15/03/2016
// Seção de Declarações 
var
   programa: caractere
   numero: real
inicio
// Seção de Comandos
   programa<-"S"
   enquanto programa <> "N" faca
      escreval("Digite um numero:")
      leia(numero)
      se numero > 0 entao
         escreval(numero," é positivo.")
      senao
         se numero < 0 entao
            escreval(numero," é negativo.")
         senao
            escreval(numero," é igual a zero.")
         fimse
      fimse
      escreval("Deseja informar outro numero?")
      escreval("Se sim digite S, se não digite N.")
      leia(programa)
   fimenquanto
fimalgoritmo
