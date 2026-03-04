# Sudoku Solver using Haskell

## Project Description
This project implements a Sudoku Solver using the Haskell programming language.  
The program reads a Sudoku puzzle from a text file, checks whether the puzzle is valid, and then automatically solves the puzzle using a solving algorithm.

The solved Sudoku grid is displayed in the terminal.

## Features
- Solves standard **9×9 Sudoku puzzles**
- Reads puzzles from **text files**
- Checks if the puzzle grid size is correct
- Validates Sudoku constraints
- Automatically fills empty cells
- Displays the solved Sudoku grid

## Project Files
Sudoku.hs  
Contains the functions used to represent and manage the Sudoku grid.

SudokuSolver.hs  
Contains the algorithm used to solve the Sudoku puzzle.

SudokuMain.hs  
The main program that reads the puzzle file and runs the solver.

puzzles/  
This folder contains example Sudoku puzzle files.

## How to Run the Project

Step 1: Install Haskell (GHC)

Step 2: Open terminal in the project folder

Step 3: Run the following command

runghc SudokuMain.hs puzzles/sudoku01.txt

Step 4: The program will display the solved Sudoku puzzle in the terminal.

## Example Output

Initial Sudoku Puzzle

_ _ 3 _ 2 _ 6 _ _
9 _ _ 3 _ 5 _ _ 1
_ _ 1 8 _ 6 4 _ _

Solved Sudoku

4 8 3 9 2 1 6 5 7
9 6 7 3 4 5 8 2 1
2 5 1 8 7 6 4 9 3

## Conclusion
This project demonstrates how Haskell can be used to solve logical problems such as Sudoku using functional programming techniques.
