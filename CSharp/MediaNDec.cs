using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio6Modulo7MediaIntDec // este programa solicita 1 num inteiro (N) e N num decimais, calcula a media e exibe o resultado.
{
    class MediaNDec
    {
        static void Main(string[] args)
        {
            int numInt = 0;
            decimal soma = 0;
            decimal numbers = 0;
            decimal result = 0;
            Console.WriteLine("Este programa exibe a média de N números decimais.\n");
            Console.WriteLine("Por favor digite o numero N de decimais que ira precisar: ");
            numInt = Convert.ToInt32(Console.ReadLine());
            for (int i = 0; i < numInt; i++)
            {
                Console.WriteLine("Insira um numero decimal (use virgula como separador): ");
                numbers = Convert.ToDecimal(Console.ReadLine()); // converter para decimal. se quiser usar float, use convert.tosingle.
                soma += numbers;
            }
            result = soma/numInt;
            Console.WriteLine("A média dos numeros informados é: " + result);
            Console.ReadKey();            
        }
    }
}
