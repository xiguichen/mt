#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
from subprocess import check_output

moduleDir = sys.argv[1];
output = check_output(["find", "./" + moduleDir, "-type", "f" ])
print output

