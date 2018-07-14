using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NumerosOrdemDecrescente // solicite 3 numeros ao usuário e mostre na tela em ordem decrescente
{
    class NumOrdemDecr
    {
        static void Main(string[] args)
        {
            // criar lista de numeros int
            List<int> numbers = new List<int>();
            // declarar 3 variaveis int
            int numberA;
            int numberB;
            int numberC;
            // solicitar cada numero ao usuário
            // deixar espaço para entrada do usuário e armazenamento na variavel int, já convertendo a string.
            Console.WriteLine("Por favor, informe 3 números: "); 
            numberA = Convert.ToInt32(Console.ReadLine()); 
            numberB = Convert.ToInt32(Console.ReadLine());
            numberC = Convert.ToInt32(Console.ReadLine());
            // adição de cada valor a lista int
            numbers.Add(numberA);
            numbers.Add(numberB);
            numbers.Add(numberC);
            // organizar a lista em ordem crescente (alfabetica)
            numbers.Sort();
            // reverter a ordem de disposição dos numeros, conseq. temos ordem decrescente por conta do Sort feito acima
            numbers.Reverse();
            // mostrar ao usuário os dados de forma decrescente
            // é neste ponto onde usamos as variaveis int, o foreach não aceita strings.
            Console.WriteLine("\nOs numeros foram arranjados em ordem decrescente:");
            foreach (int number in numbers) 
            {
                Console.WriteLine(number);
            }
            // aguarde o usuário acionar qualquer tecla para finalizar
            Console.ReadKey();
        }
    }
}
