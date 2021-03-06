package match;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteMatch")
public class DeleteMatch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteMatch() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		long id = Long.parseLong(request.getParameter("id"));
		MatchBean matBean = new MatchBean();
		matBean.deleteMatch(id);
		response.sendRedirect("GetMatches");
	}

}