#!/bin/sh

echo "1. Preprocessing"

g++ -E src/Greeting.cpp -o build/pre/Greeting.ii
g++ -E src/main.cpp -o build/pre/main.ii

echo "2. Compilation"

g++ -S build/pre/Greeting.ii -o build/asm/Greeting.s
g++ -S build/pre/main.ii -o build/asm/main.s

echo "3. Assembly"

as build/asm/Greeting.s -o build/obj/Greeting.o
as build/asm/main.s -o build/obj/main.o

echo "4. Linking"

g++ build/obj/Greeting.o build/obj/main.o -o build/bin/app
