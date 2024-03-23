# dart

**Basic Concepts:**

* **Variables & Data Types:**
  * Primitive Types (int, double, String, bool)
  * **Dynamic Type (var)**: Allows variables to hold different data types at runtime.
  * Typed Collections (List, Set, Map)
* **Operators:**
  * Arithmetic Operators (+, -, *, /, %)
  * Comparison Operators (==, !=, <, >, <=, >=)
  * Logical Operators (&&, ||, !)
  * Assignment Operators (=, +=, -=, *=, /=, %)
  * Bitwise Operators (&, |, ^, ~, <<, >>)
  * Cascade Notation (..)
* **Control Flow:**
  * if-else statements
  * switch statements
  * for loops
  * while loops
  * do-while loops
  * break and continue statements

**Intermediate Concepts:**

* **Functions:**
  * Defining and calling functions
  * Optional and named parameters
  * Arrow functions (syntactic sugar for single-line functions)
* **Classes & Objects:**
  * Defining classes and creating objects
  * Constructors (default, named, custom)
  * Methods (instance and static methods)
  * Properties (getters and setters)
  * Inheritance (single and multiple inheritance)
  * Polymorphism (method overriding)
* **Error Handling:**
  * try-catch blocks
  * throw statements
  * assert statements
* **Strings & Regular Expressions:**
  * String manipulation methods
  * Regular expressions for pattern matching

**Advanced Concepts:**

* **Pattern Matching:**
  * A powerful new feature in Dart 3 that allows for concise and expressive conditional logic.
  * You can use patterns to match against different types of data and extract values based on those matches.
  * Supported patterns include constants, types, is-checks, and more.
* **Records:**
  * A new type in Dart 3 that provides a concise way to define lightweight, immutable data structures.
  * Useful for encapsulating small sets of data without the overhead of full classes.
  * Records can have default values and destructuring capabilities.
* **Class Modifiers:**
  * Introduced in Dart 3 to provide more control over how classes and their members are exported or accessed.
  * Examples include `abstract`, `mixin`, `sealed`, and `late`.
* **Null Safety (Enhanced):**
  * Dart 3 enforces null safety even more strictly, preventing null-related errors at compile time.
  * Use of the null-safe operator (`?`) is now mandatory for accessing properties or calling methods on potentially null objects.
* **Asynchronous Programming:**
  * Futures: Handling asynchronous operations
  * Async/await syntax for cleaner async code
  * Streams: Processing data streams
  * Isolates: Running code concurrently in separate isolates
* **Generics:** Creating type-safe collections and functions
* **Metaprogramming:** Code that manipulates other code at runtime
* **Dart Packages & Libraries:** Exploring the rich ecosystem of reusable code
* **Typedefs:** Defining aliases for complex types
* **Symbols:** Unique and immutable objects for efficient comparisons
* **Enumerations (Enums):** Creating custom types with named constants