package Project1;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

public class RatesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        
        DAOFactory daoFactory = null;
        
        ServletContext context = request.getServletContext();
        
        if (context.getAttribute("daoFactory") == null) {
            daoFactory = new DAOFactory();
            context.setAttribute("daoFactory", daoFactory);
        }
        else {
            daoFactory = (DAOFactory)context.getAttribute("daoFactory");
        }
        
        Project1DAO dao = daoFactory.getProject1DAO();
        
        response.setContentType("application/json;charset=UTF-8");
        
        try ( PrintWriter out = response.getWriter() ) {
            
            String rate_date = request.getParameter("rate_date");
            System.err.println(rate_date);

            String json = dao.getRatesAsJSON(rate_date);
            
            out.println( json );
            
        }
        catch (Exception e) { e.printStackTrace(); }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Rates Servlet";
    }

}
