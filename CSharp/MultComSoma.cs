using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio6Modulo7MultipComSomas // programa adquire 2 numeros do usuário, multiplica atraves de somas sucessivas, exibe resultado.
{
    class MultComSoma
    {
        static void Main(string[] args)
        {
            int number1 = 0;
            int number2 = 0;
            int result = 0;
            Console.WriteLine("Este programa multiplica 2 numeros inteiros.");
            Console.WriteLine("Por favor informe o primeiro numero: ");
            number1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Por favor informe o segundo numero: ");
            number2 = Convert.ToInt32(Console.ReadLine());
            for (int i = 0; i < number1; i++)
            {
                result += number2;
            }
            Console.WriteLine("O resultado da multiplicação é: " + result);
            Console.ReadKey();            
        }
    }
}
