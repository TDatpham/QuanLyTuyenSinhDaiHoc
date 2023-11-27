<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        
      Application["online"] = 0;
        
        int count_visit;
       
      
            // Đọc dử liều từ file count.txt
            System.IO.StreamReader read = new System.IO.StreamReader(Server.MapPath("count.txt"));
            count_visit = int.Parse(read.ReadLine());
            read.Close();
         
            count_visit++;
 
        Application.Lock();

        // gán biến Application count_visit
        Application["sokhach"] = count_visit;

        // Mở khóa website
        Application.UnLock();

        // Lưu dử liệu vào file  count.txt
        System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("count.txt"));
        writer.WriteLine(count_visit);
        writer.Close();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    {

        Exception ex = HttpContext.Current.Server.GetLastError();
        if (ex.InnerException != null)
        {
            ex = ex.InnerException;
        }
        if (ex is HttpException)
        {
            if (((HttpException)ex).GetHttpCode() == 404)
            {
                Response.Redirect("~/PageNotFound.htm");
            }
            else
            {
                Response.Redirect("~/PageError.html");
            }
        }

        HttpContext.Current.Server.ClearError();
       
      
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

   
     Application["sokhach"] = (int)Application["sokhach"] + 1;
       
     Application["online"] = (int)Application["online"] + 1;
       Session.Timeout = 30;  
    }

    void Session_End(object sender, EventArgs e) 
    {
        Application["online"] = (int)Application["online"] - 1;

    }
       
</script>
