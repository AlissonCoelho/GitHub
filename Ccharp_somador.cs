//C#
using System;
namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            int x;           //$s0
            int y;           //$s1  
            int soma = 0;    //$s2

            Console.WriteLine("Digite número x número:");
            x = int.Parse(Console.ReadLine());

            Console.WriteLine("Digite número y número:");
            y =  int.Parse(Console.ReadLine());



            for (int i /*$t0*/ = x; i <= y; i++)
            {
                soma = soma + i;
            }

            Console.WriteLine("Soma dos numeros inteiros de x ate y é: " + soma);

            Console.ReadKey();


        }
    }
}
