using System;

namespace HelloDocker
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("==================================");
            Console.WriteLine("Welcome to GitHub Codespaces");
            Console.WriteLine("Learning Docker with C#");
            Console.WriteLine("==================================");

            Console.Write("Enter your name: ");
            string name = Console.ReadLine();

            Console.WriteLine($"Hello {name}!");
            Console.WriteLine("I am ready to learn Docker!");
        }
    }
}