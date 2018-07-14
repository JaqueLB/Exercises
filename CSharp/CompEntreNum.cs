using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ComparacaoEntreNumeros // programa que compara dois numeros
{
    class CompEntreNum
    {
        static void Main(string[] args)
        {
            int number1; // declaro as variaveis do tipo inteiro
            int number2;
            Console.WriteLine("Please enter two numbers (int): "); // peço ao usuário que informe os numeros
            number1 = Convert.ToInt32(Console.ReadLine()); // crio o espaço para a entrada de dados e converto as strings para int
            number2 = Convert.ToInt32(Console.ReadLine());
            if (number1 > number2) // faço as comparações.
                Console.WriteLine("The number A it's bigger than number B.");
            if (number1 == number2)
                Console.WriteLine("The number A it's equal to number B.");
            if (number1 < number2)
                Console.WriteLine("The number A it's smaller than number B.");
            Console.ReadKey(); // aguardo o usuário inserir qualquer tecla para finalizar o programa
        }
    }
}
