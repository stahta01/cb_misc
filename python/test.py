#!/usr/bin/env python

import os
import platform
import sys


print platform.system()
if os.name == 'posix':
    print "posix"
elif os.name == 'nt':
    print "nt"
else:
    print "Unknown os.name"

if sys.platform.startswith('win'):
    print "platform windows"
elif sys.platform.startswith('cygwin'):
    print "platform cygwin"
elif sys.platform.startswith('msys'):
    print "platform msys"
else:
    print "Unknown sys.platform"



if os.popen('uname -o', 'r').read()[:-1].startswith('Msys'):
    print "uname -o is Msys"
