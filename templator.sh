#!/bin/bash

touch $1.txt

# Open file descriptor (fd) 3 for read/write on a text file.
exec 3<> $1.txt

    echo -e "Prompt [girlenginerd]: \n \n">&3
    echo -e "Response [ChatGPT]: \n \n">&3
    echo -e "Draft [BardGPT x girlenginerd]: \n">&3

exec 3>&-


