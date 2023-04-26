using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpFeatures
{
    internal class Pwd
    {
        private static void Main(string[] args)
        {
            Console.Write("请设置你的密码：");
            string passWd = Console.ReadLine();
            var isFlag = 0;
            if (passWd.Length > 10)
            {
                isFlag = 1;
            }
            if (passWd.Length < 3)
            {
                isFlag = 2;
            }

            switch (isFlag)
            {
                case 1:
                    Console.WriteLine("The password is too long！");
                    break;
                case 2:
                    Console.WriteLine("The password is too short！");
                    break;
                default:
                    Console.WriteLine("The password is reasonable！");
                    break;
            }
        }
    }
}
