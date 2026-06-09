MACROS

A macro is a shortcut name used to represent a value or a piece of code. It helps reduce repetitive coding and makes programs easier to read.

Example:
#define PI 3.14

Here, every occurrence of PI is replaced with 3.14 before the program is compiled.

----------------------------------------

ABSOLUTE PATH

An absolute path is the complete path to a file or folder starting from the root directory.

Example:
C:\Users\John\Documents\file.txt

or

/home/john/Documents/file.txt

Features:
• Shows the full location of a file.
• Does not depend on the current directory.
• Always points to the same file location.

----------------------------------------

RELATIVE PATH

A relative path specifies the location of a file or folder with respect to the current directory.

Example:
docs/file.txt

or

../file.txt

Features:
• Depends on the current directory.
• Shorter than an absolute path.
• Commonly used within projects.

----------------------------------------

DIFFERENCE BETWEEN ABSOLUTE AND RELATIVE PATH

Absolute Path:
• Complete file location.
• Starts from the root directory.
• Independent of the current directory.

Relative Path:
• File location relative to the current directory.
• Does not start from the root directory.
• Depends on the current directory.

Example:

Current Directory:
/home/john/projects

File Location:
/home/john/projects/docs/file.txt

Absolute Path:
/home/john/projects/docs/file.txt

Relative Path:
docs/file.txt
