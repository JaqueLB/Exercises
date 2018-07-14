using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio5Modulo7numerosImparesN // adquirir um numero N, mostrar numeros impares entre 0 e N
{
    class NumImpar0aN
    {
        static void Main(string[] args)
        {
            int number = 0;
            int userNumber = 0;
            Console.WriteLine("Este programa exibe os numeros impares entre 0 e um número de sua escolha.\nPor favor, informe um número inteiro: ");
            // o método readline só le strings. então temos que converter para inteiro.
            userNumber = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Os números ímpares entre 0 e " + userNumber + " São:");
            for (number = 0; number <= userNumber; number++)
            {
                if (number % 2 != 0)
                {
                    Console.WriteLine(number);
                }
            }
            Console.ReadKey();
        }
    }
}
