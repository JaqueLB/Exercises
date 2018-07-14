using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VerificarNumParaTriangulos // solicitar 3 numeros inteiros ao usuario (comp. de reta), verificar se podem formar triangulo, 
                                     // caso positivo classificar o tipo em euilatero, isoceles e escaleno
{
    class VerNumTriang
    {
        static void Main(string[] args)
        {
            // declarar as variaveis inteiras
            int ladoA;
            int ladoB;
            int ladoC;

            // explicar o programa ao usuário
            Console.WriteLine("Vamos verificar se 3 números inteiros podem formar um triângulo, ");
            Console.WriteLine("e, caso positivo, classificar em equilátero, isóceles ou escaleno.");

            // solicitar dados (os dados do ReadLine sempre vem em formato string, portanto devemos converter para a variavel de interesse, int).
            Console.WriteLine("\nInforme os três comprimentos de reta, números inteiros apenas: ");
            ladoA = Convert.ToInt32(Console.ReadLine()); // conversão dos dados lidos em dados do tipo int.
            ladoB = Convert.ToInt32(Console.ReadLine());
            ladoC = Convert.ToInt32(Console.ReadLine());
            
            // OBS: se quiser usar try catch para lidar com possíveis erros na conversão, todos os loops if devem ser inseridos também

            // teste a condição de existencia de um triangulo: soma de 2 lados deve ser maior que o 3º lado
            if ((ladoA < ladoB + ladoC) && (ladoB < ladoA + ladoC) && (ladoC < ladoA + ladoB))
            {
                Console.WriteLine("\nÉ possível construir um triângulo com os dados informados!");
                
                // testes para classificar em equilátero ou isóceles
                // primeiro vemos se é isóceles (caso geral, pelo menos 2 lados iguais)
                if (ladoA == ladoB || ladoB == ladoC || ladoC == ladoA)
                {
                    // se sim, o código entra no segundo loop para ver se é equilátero (caso especifico - todos os 3 lados iguais)
                    if ((ladoA == ladoB) && (ladoB == ladoC))
                    {
                        Console.WriteLine("\nO triângulo será equilátero, pois possui todos os lados iguais.");
                    }
                    else
                    {
                        Console.WriteLine("\nO triângulo será isóceles, pois possui dois lados iguais.");
                    }
                }
                // Se nenhum lado é igual, isto significa que todos são diferentes, portanto será um triangulo escaleno.
                else
                {
                    Console.WriteLine("\nO triângulo será escaleno, pois possui todos os lados diferentes.");
                }
            }
            // se não atingir as primeiras condições, o primeiro loop if vem direto para cá.
            else
            {
                Console.WriteLine("\nNão é possível construir um triângulo com os dados informados."); 
                Console.WriteLine("A soma de dois lados deve ser menor que o valor do lado restante.");
            }
            Console.WriteLine("\nObrigada por usar o programa! Pressione qualquer tecla para sair...");
            // aguarde o usuário pressionar qualquer tecla para sair.
            Console.ReadKey();
        }
    }
}