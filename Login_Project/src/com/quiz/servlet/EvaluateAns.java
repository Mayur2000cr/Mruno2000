package com.quiz.servlet;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EvaluateAns
 */
@WebServlet("/EvaluateAns")
public class EvaluateAns extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EvaluateAns() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int marks=0;
		String arr[]=new String[10];
		String ans[]=new String[10];
		int queCnt=Integer.parseInt(request.getParameter("queCnt"));
		System.out.println("quec="+queCnt);
		Scanner sc=new Scanner(System.in);
		for(int i=0; i<=queCnt; i++){
			arr[i]=request.getParameter("que"+i);
			ans[i]=request.getParameter("ans"+i);
			
			try {
				if(arr[i].contentEquals(ans[i]))
				{
					marks++;
				}
			} catch(Exception e) {}
		}
		response.sendRedirect("afterquiz.jsp?que="+(queCnt+1)+"&marks="+marks);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
