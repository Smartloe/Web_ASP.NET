using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;//为了使用GridView

/// <summary>
///ConnSql 的摘要说明
/// </summary>
public class ConnSql
{
	private string constr = ConfigurationManager.ConnectionStrings["library"].ConnectionString;//获取连接字符串
    private SqlConnection con;//定义连接类的实例
    private SqlCommand com;//定义用于执行SQL命令的实例
    private SqlParameter param;     //创建SQL参数
    public ConnSql()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public void Open()
    {
        #region
        con = new SqlConnection(constr);
        con.Open();
        #endregion
    }
    //定义Close()方法用于关闭数据库连接
    public void Close()
    {
        #region
        if (con != null)
        {
            con.Close();
            con.Dispose();
        }
        #endregion
    }
    public int RunSql(string sqltext)
    {
        #region
        Open();
        com = new SqlCommand(sqltext, con);
        int m = com.ExecuteNonQuery();
        Close();
        return m;
        #endregion
    }
   

    public DataTable RunSqlReturnTable(string sqltext)
    {
        #region
        Open();
        SqlDataAdapter sda = new SqlDataAdapter(sqltext, con);//定义对象实例sda
        DataTable table = new DataTable();
        sda.Fill(table);//将sda中的数据装载进table中
        Close();
        return table;//返回table        
        #endregion
    }
    /// <summary>
    /// 执行SQL语句，并返回第一行第一列结果
    /// </summary>
    /// <param name="strSql">SQL语句</param>
    /// <returns></returns>
    public string RunSqlReturnString(string sqltext)
    {
        #region
        string strReturn = "";
        Open();
        try
        {
            com = new SqlCommand(sqltext, con);
            strReturn = com.ExecuteScalar().ToString();
           
        }
        catch { }
        Close();
        return strReturn;
        #endregion
    }
    /// <summary>
    /// 执行存储过程
    /// </summary>
    /// <param name="procName">存储过程的名称</param>
    /// <returns>返回存储过程返回值</returns>
    public int RunProc(string procName)
    {
        #region
        com= CreateCommand(procName, null);
        com.ExecuteNonQuery();
        Close();
        return (int)com.Parameters["ReturnValue"].Value;
        #endregion
    }

    /// <summary>
    /// 执行存储过程
    /// </summary>
    /// <param name="procName">存储过程名称</param>
    /// <param name="prams">存储过程所需参数</param>
    /// <returns>返回存储过程返回值</returns>
    public int RunProc(string procName, SqlParameter[] prams)
    {
        #region
        com = CreateCommand(procName, prams);
        int rr = com.ExecuteNonQuery();
        Close();
        return (int)com.Parameters["ReturnValue"].Value;
        #endregion
    }
    /// <summary>
    /// 创建一个SqlCommand对象以此来执行存储过程
    /// </summary>
    /// <param name="procName">存储过程的名称</param>
    /// <param name="prams">存储过程所需参数</param>
    /// <returns>返回SqlCommand对象</returns>
    private SqlCommand CreateCommand(string procName, SqlParameter[] prams)
    {
        #region
        // 确认打开连接
        Open();
        com = new SqlCommand(procName, con);
        com.CommandType = CommandType.StoredProcedure;
        // 依次把参数传入存储过程
        if (prams != null)
        {
            foreach (SqlParameter parameter in prams)
                com.Parameters.Add(parameter);
        }
        // 加入返回参数
        com.Parameters.Add(
            new SqlParameter("ReturnValue", SqlDbType.Int, 4,
            ParameterDirection.ReturnValue, false, 0, 0,
            string.Empty, DataRowVersion.Default, null));
        return com;
        #endregion
    }
    /// <summary>
    /// 传入输入参数
    /// </summary>
    /// <param name="ParamName">存储过程名称</param>
    /// <param name="DbType">参数类型</param></param>
    /// <param name="Size">参数大小</param>
    /// <param name="Value">参数值</param>
    /// <returns>新的 parameter 对象</returns>
    public SqlParameter MakeInParam(string ParamName, SqlDbType DbType, int Size, object Value)
    {
        #region
        return MakeParam(ParamName, DbType, Size, ParameterDirection.Input, Value);
        #endregion
    }
    /// <summary>
    /// 生成存储过程参数
    /// </summary>
    /// <param name="ParamName">存储过程名称</param>
    /// <param name="DbType">参数类型</param>
    /// <param name="Size">参数大小</param>
    /// <param name="Direction">参数方向</param>
    /// <param name="Value">参数值</param>
    /// <returns>新的 parameter 对象</returns>
    public SqlParameter MakeParam(string ParamName, SqlDbType DbType, Int32 Size, ParameterDirection Direction, object Value)
    {
        #region

        if (Size > 0)
            param = new SqlParameter(ParamName, DbType, Size);
        else
            param = new SqlParameter(ParamName, DbType);

        param.Direction = Direction;
        if (!(Direction == ParameterDirection.Output && Value == null))
            param.Value = Value;

        return param;
        #endregion       
    }
    public static void BindDG(GridView dg, string id, string strSql, string Tname)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jxpj"].ConnectionString);
        SqlDataAdapter sda = new SqlDataAdapter(strSql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, Tname);
        dg.DataSource = ds.Tables[Tname];
        dg.DataKeyNames = new string[] { id };
        dg.DataBind();
    }
}