algoritmo "Exercicio 28 - Reajuste de sal�rio"
// Fun��o : Reajuste de sal�rio para 584 funcionarios com os seguintes criterios
// a) 50% para os que ganham menos de 3 salarios minimos
// b) 20% para os que ganham mais de 3 at� 10 salarios m�nimos
// c) 15% para os que ganham mais de 10 at� 20 salarios minimos
// d) 10% para os demais
// Ler o nome, o salario e o salario minimo, calcular o novo salario reajustado
// escrever o nome do funcionario, o reajuste e o novo salario.
// Calcular e exibir em quanto a empresa vai aumentar sua folha de pagamento.
// Autor : Jaqueline
// Data : 15/03/2016
// Se��o de Declara��es 
var
   salario,salarioMin,novoSalario,reajuste,reajusteTotal:real
   folha,novaFolha,folhaTotal:real
   nome,tecla:caractere
   contador:inteiro
inicio
// Se��o de Comandos
   tecla<-"x"
   escreval("**** Sistema de reajuste salarial ****")
   escreva("Digite o valor atual do sal�rio m�nimo: ")
   leia(salarioMin)
   para contador de 1 ate 584 faca
      limpatela
      escreval("Digite o nome:")
      leia(nome)
      escreval("Digite o sal�rio:")
      leia(salario)
      se salario < (3*salarioMin) entao
         reajuste<-0.5
         reajusteTotal<-salario*reajuste
         novoSalario<-salario+reajusteTotal
         folha<-folha+salario
         novaFolha<-novaFolha+novoSalario
         escreval("Nome:",nome)
         escreval("Reajuste de 50%. Valor:",reajusteTotal)
         escreval("Novo sal�rio:",novoSalario)
         escreval("Tecle enter para continuar...")
         leia(tecla)
      senao
         se salario >= (3*salarioMin) entao
            se salario <(10*salarioMin) entao
               reajuste<-0.2
               reajusteTotal<-salario*reajuste
               novoSalario<-salario+reajusteTotal
               folha<-folha+salario
               novaFolha<-novaFolha+novoSalario
               escreval("Nome:",nome)
               escreval("Reajuste de 20%. Valor:",reajusteTotal)
               escreval("Novo sal�rio:",novoSalario)
               escreval("Tecle enter para continuar...")
               leia(tecla)
            senao
               se salario >= (10*salarioMin) entao
                  se salario < (20*salarioMin) entao
                     reajuste<-0.15
                     reajusteTotal<-salario*reajuste
                     novoSalario<-salario+reajusteTotal
                     folha<-folha+salario
                     novaFolha<-novaFolha+novoSalario
                     escreval("Nome:",nome)
                     escreval("Reajuste de 15%. Valor:",reajusteTotal)
                     escreval("Novo sal�rio:",novoSalario)
                     escreval("Tecle enter para continuar...")
                     leia(tecla)
                  senao
                     reajuste<-0.1
                     reajusteTotal<-salario*reajuste
                     novoSalario<-salario+reajusteTotal
                     folha<-folha+salario
                     novaFolha<-novaFolha+novoSalario
                     escreval("Nome:",nome)
                     escreval("Reajuste de 10%. Valor:",reajusteTotal)
                     escreval("Novo sal�rio:",novoSalario)
                     escreval("Tecle enter para continuar...")
                     leia(tecla)
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimpara
   folhaTotal<-novaFolha-folha
   escreval("")
   escreval("A empresa aumentou a folha de pagamento em:",folhaTotal," reais")
fimalgoritmo
