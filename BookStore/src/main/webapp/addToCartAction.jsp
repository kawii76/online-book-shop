<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");
int quantity=1;
int oproduct_price=0;
int oproduct_total=0;
int cart_total=0;

int z=0;
try{
	Connection con= ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from oproduct where id='"+product_id+"'");
	while(rs.next())
	{
		oproduct_price=rs.getInt(4);
		oproduct_total=oproduct_price;
	}
	ResultSet rs1=st.executeQuery("select *from cart where product_id='"+product_id+"' and email='"+email+"' and address is NULL");
	while(rs1.next())
	{
		cart_total=rs1.getInt(5);
		cart_total=cart_total+oproduct_total;
		quantity=rs1.getInt(3);  
		quantity=quantity+1;
		z=1;
	}
	if(z==1)
	{
		st.executeUpdate("update cart set total='"+cart_total+"',quantity='"+quantity+"' where product_id='"+product_id+"' and email='"+email+"' and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if(z==0)
	{
		PreparedStatement ps=con.prepareStatement("insert into cart(email,product_id,quantity,price,total) values(?,?,?,?,?)");
		ps.setString(1, email);
		ps.setString(2, product_id);
		ps.setInt(3, quantity);
		ps.setInt(4, oproduct_price);
		ps.setInt(5, oproduct_total);
		ps.executeUpdate();
		response.sendRedirect("home.jsp?msg=added");
	}
}

catch(Exception e)
{
	System.out.println(e);	
	response.sendRedirect("home.jsp?msg=invalid");
}
%>