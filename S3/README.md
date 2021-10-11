This contains a python file contains a functions which accept object and key and returns value. Example below:

Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
value = d

object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a

Steps:

1. Python needs to be installed on machine
2. getObjectkeyValue.py will requires 2 parameter object and key.

Testing Logs:

:~#python getObjectkeyValue.py

Enter the object:{"a":{"b":{"c":"d"}}}


Enter the key:"a/b/c"


Value is:d


:~#python getObjectkeyValue.py


Enter the object:{"x":{"y":{"z":"a"}}}


Enter the key:"x/y/z"


Value is:a



