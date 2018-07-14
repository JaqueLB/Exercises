using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExemploContatosTelefonicos
{
    class Program
    {
        static void Main(string[] args)
        {
            // titulo da janela
            Console.Title = "Agenda Telefônica Console";
            Program.CriarMenu();
        }
        // método para aguardar uma tecla antes de sair
        private static void wait()
        {
            Console.WriteLine("\nPressione qualquer tecla para continuar...");
            Console.ReadKey();
        }
        // métoodo como menu, para permitir inserção de dados
        static void CriarMenu()
        {
            ConsoleKey key;
            bool opcao;
            opcao = true;
            while (opcao)
            {
                // limpe a tela
                Console.Clear();
                // montagem do menu
                Console.WriteLine("********** Contatos **********");
                Console.WriteLine("Escolha uma das opções abaixo:");
                Console.WriteLine("1 - Incluir");
                Console.WriteLine("2 - Listar");
                Console.WriteLine("S - Sair");
                Console.Write("Opção: ");
                // setup das teclas escolhidas
                key = Console.ReadKey().Key;
                switch (key)
                {
                    case ConsoleKey.NumPad1:
                        Program.AddContato();
                        break;
                    case ConsoleKey.NumPad2:
                        Program.ListContato();
                        break;
                    case ConsoleKey.S:
                        opcao = false;
                        break;
                }
            }
        }
        // método para inserir contatos
        static void AddContato()
        {
            Contatos contato = new Contatos();
            try
            {   // limpe a tela
                Console.Clear();
                Console.WriteLine("Preencha os dados abaixo:");
                Console.Write("ID: ");
                // armazene o dado informado em ID, na lista contato, já convertido de string para inteiro
                contato.ID = Convert.ToInt32(Console.ReadLine());
                Console.Write("Nome: ");
                contato.Nome = Console.ReadLine();
                Console.Write("Telefone: ");
                contato.Telefone = Console.ReadLine();
                Console.Write("Email: ");
                contato.Email = Console.ReadLine();
                Program.SalvarContatos(contato);
            }
            catch (Exception message)
            {
                Console.WriteLine(message);
            }
        }
        // método para salvar contatos, onde 'c' é o contato a ser salvo
        static void SalvarContatos(Contatos c)
        {
            FileStream fs;
            byte[] byteArray;
            string strContato;
            string CONST_PATH_ARQUIVO_DADOS = @"C:\Users\Jaque\Documents\Visual Studio 2015\Projects\C#\ExemploContatosTelefonicos\ExemploContatosTelefonicos\MeusContatos.txt";
            try
            {
                fs = new FileStream(CONST_PATH_ARQUIVO_DADOS, FileMode.Append, FileAccess.Write);

                if (fs.CanWrite)
                {
                    // cria uma linha com os atributos separados por TAB
                    strContato = Program.ParseContato(c);

                    // para salvar o registro no arquivo utilizando a classe FileStream,
                    // será necessário utilizar uma classe para converter texto em bytes
                    byteArray = Encoding.ASCII.GetBytes(strContato);

                    fs.Write(byteArray, 0, byteArray.Length);
                    fs.Close();
                }
            }
            catch (Exception message)
            {
                throw message;
            }
        }
        // método para listar os contatos existentes
        static void ListContato()
        {
            StreamReader sr;
            string CONST_PATH_ARQUIVO_DADOS = @"C:\Users\Jaque\Documents\Visual Studio 2015\Projects\C#\ExemploContatosTelefonicos\ExemploContatosTelefonicos\MeusContatos.txt";
            try
            {
                sr = new StreamReader(CONST_PATH_ARQUIVO_DADOS);
                if (sr.BaseStream.CanRead)
                {
                    Console.WriteLine();
                    while (!sr.EndOfStream)
                    {
                        Console.WriteLine(sr.ReadLine());
                    }
                }
                sr.Close();
                Program.wait();
            }
            catch (Exception message)
            {
                Console.WriteLine(message);
            }
        }
        // método para escrever os atributos do contato como uma linha para o arquivo, separando com TAB
        // onde 'c' é o contato a ser transformado, retornando string com os dados do contato
        static string ParseContato(Contatos c)
        {
            // objeto para trabalhar com concatenação de texto
            StringBuilder strBuilder;

            try
            {
                strBuilder = new StringBuilder();

                // separa todos os atributos com TAB, representado pelo comando \t
                strBuilder.Append(c.ID);
                strBuilder.Append("\t");
                strBuilder.Append(c.Nome);
                strBuilder.Append("\t");
                strBuilder.Append(c.Telefone);
                strBuilder.Append("\t");
                strBuilder.Append(c.Email);
                strBuilder.Append("\t");

                // toda linha de um arquivo para o .Net é pelo comando \r
                strBuilder.Append("\r\n");

                return strBuilder.ToString();
            }
            catch (Exception message)
            {
                throw message;
            }
        }
    }
    class Contatos // criar nova classe
    { // criar atributos
        private int id;
        private string nome;
        private string telefone;
        private string email;
        // criar propriedades com get/set
        public int ID
        {
            get { return id; }
            set { id = value; }
        }
        public string Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        public string Telefone
        {
            get { return telefone; }
            set { telefone = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
    }
}
