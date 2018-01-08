#!/bin/bash

find ./$1 -type f | sed  -e 's/^/import "/g' -e 's/$/";/g'
