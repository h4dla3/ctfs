from struct import *
import os

file = open('shellcode.com', 'r')
shellcode = file.read()
aaa = ' '.join((str(unpack_from('<h', shellcode, offset)[0])
for offset in xrange(0, len(shellcode), 2)))
print aaa
