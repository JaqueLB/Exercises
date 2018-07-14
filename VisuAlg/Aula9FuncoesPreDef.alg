algoritmo "Aula 9 - Funcoes Pre Definidas"
// Função : Demonstrar o uso de funcoes pre definidas
// Autor : Jaqueline
// Data : 08/04/2016
// Seção de Declarações 
var
   nome,sobrenome: caracter
   qtletras,espaco: inteiro
   num,raiz,base,expoente,res: real
inicio
// Seção de Comandos
   escreva("Digite o nome e sobrenome: ")
   leia(nome)
   qtletras<-Compr(nome) // num de caracteres de nome
   espaco<-Pos(" ",nome)// retorna a posicao do espaco na cadeia de caracteres
   // digitada e armazenada em nome
   sobrenome<-Copia(nome,espaco+1,qtletras) // copiar de nome, posicao inicial
   // sera onde comeca o sobrenome (posicao apos o espaco), posicao final a
   // quantidade total de caracteres de nome
   escreval("Seu sobrenome eh ",sobrenome)
   
   // uso de funcoes matematicas
   escreval("Digite um numero para calcular a raiz quadrada:")
   leia(num)
   raiz<-Raizq(num)
   escreval("A raiz quadrada de",num," eh",raiz)
   escreval("Digite uma base e um expoente:")
   leia(base)
   leia(expoente)
   res<-Exp(base,expoente)
   escreval(base," elevado a",expoente," eh igual a",res)
   
fimalgoritmo
