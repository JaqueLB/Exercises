using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exercicio4Modulo7numerosPares // este programa escreve na tela todos os números pares entre 0 e 100.
{
    class NumPar0a100
    {
        static void Main(string[] args)
        {
            int number = 0;
            Console.WriteLine("Este programa informa todos os números pares entre 0 e 100");
            for (number = 0; number <= 100; number++)
            {
                if (number % 2 == 0) // se o numero é um multiplo de 2, o resto da divisão por 2 é 0, portanto o numero é par.
                {
                    Console.WriteLine(number);
                }
            }
            // aguardar o usuário apertar uma tecla para sair.
            Console.ReadKey();
        }
    }
}
