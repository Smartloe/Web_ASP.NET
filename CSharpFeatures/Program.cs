using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;

namespace CSharpFeatures
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Title = "my console";
            BackgroundColor = ConsoleColor.Green;
            var 恋爱指数1 = 恋爱指数.热恋;
            WriteLine(恋爱指数1);
            WriteLine(恋爱指数1 - 100);
            WriteLine((int)恋爱指数1 + 100);
            /*WriteLine("请按任意键继续. . .");*/
            WriteLine(0.234.ToString("p"));
            int isString = int.Parse("1234");
            WriteLine(isString);
            string strDatetime = Convert.ToString(DateTime.Now);
            WriteLine(strDatetime);
            /*拆箱和装箱*/
            WriteLine("拆箱和装箱");
            int i = 100;
            WriteLine(i);
            object objNum = i;//装箱
            WriteLine(objNum);
            int j = (int)objNum;//拆箱
            WriteLine(j);

            ReadKey();
        }
    }
}

public enum 恋爱指数
{
    单身 = 50,
    热恋 = 100,
    失恋 = 200,
    复合 = 0,
}