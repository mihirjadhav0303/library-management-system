# Library Management System (C++ Mini Project)

**Practical 12 – Mini Project** | Name: Mihir Vinayak Jadhav

A console application that combines **OOP, STL, exception handling, file I/O and Git-based collaboration**.

## Features
- Add, list and search books (by title, author or ID)
- Issue and return books
- Data saved to / reloaded from `data/library.txt`
- Invalid operations handled with exceptions (duplicate ID, unknown ID, already issued/available, bad input)

## Concepts used
| Concept | Where |
|---|---|
| Classes & encapsulation | `Book` (private data, public methods), `Library` |
| STL | `vector<Book>`, `find_if`, `string` |
| Exceptions | `runtime_error`, `invalid_argument` thrown and caught in `main` |
| File I/O | `ifstream` / `ofstream`, format `id|title|author|1or0` |
| Git | feature-wise commits, `.gitignore`, this README |

## Build & run
```bash
make run      # interactive menu
make demo     # scripted demo (same as the practical output)
```
Needs `g++` with C++17.

## Project structure
```
src/Book.h, src/Library.h, src/main.cpp
data/sample_library.txt      sample data (loaded on first run)
docs/UML.md                  UML class diagram
```

## UML class diagram
See [docs/UML.md](docs/UML.md).

## Sample session
```
1. Add book  2. List books  3. Search books  4. Issue book  5. Return book  6. Save and exit
> 3  -> search "code"  -> 3 | Clean Code | Robert C. Martin | Available
> 4  -> issue 2        -> Book issued successfully.
> 4  -> issue 2 again  -> Error: Book is already issued.
```
