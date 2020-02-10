#!/usr/bin/python3

import os
import random
import string
import time


alnum = string.ascii_letters + string.digits

while True:
    print(''.join(random.choices(alnum, k=142*8)), flush=True)
    time.sleep(0.1)
    os.system('clear')
