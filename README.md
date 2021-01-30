# Preprocessing

```bash
$ g++ -E src/Greeting.cpp -o build/pre/Greeting.ii
$ g++ -E src/main.cpp -o build/pre/main.ii
```

# Compilation

```bash
$ g++ -S build/pre/Greeting.ii -o build/asm/Greeting.s
$ g++ -S build/pre/main.ii -o build/asm/main.s
```

# Assemble

```bash
$ as build/asm/Greeting.s -o build/obj/Greeting.o
$ as build/asm/main.s -o build/obj/main.o
```

# Linking

```bash
$ g++ build/obj/Greeting.o build/obj/main.o -o build/bin/app
```

# Run

```bash
$ cd build/bin/
$ ./app
```
