import qualified Sudoku as S
import qualified SudokuSolver as Solver

main :: IO ()
main = do
    putStrLn "Enter puzzle file name (example: sudoku01.txt):"
    file <- getLine
    let path = "puzzles/" ++ file

    inpStr <- readFile path
    let grid = S.loadFromString inpStr

    putStrLn ""
    putStrLn "Initial Puzzle:"
    putStrLn (show grid)
    putStrLn ""

    if not (S.verifySize grid) then
        putStrLn "Cannot solve. Grid size not 9x9."
    else do
        putStrLn "Grid size verified."

        if not (S.isValidGrid grid) then
            putStrLn "Aborting. Initial grid violates Sudoku puzzle constraints."
        else do
            putStrLn "Initial grid puzzle constraints verified."
            putStrLn "Solving puzzle..."
            putStrLn ("Number of empty cells " ++ show (S.countEmpties grid))
            putStrLn ""

            let solvedGrid = Solver.solve grid

            putStrLn "Solved Sudoku:"
            putStrLn (show solvedGrid)
            putStrLn ""

            putStrLn ("Number of empty cells " ++ show (S.countEmpties solvedGrid))

            if S.isValidGrid solvedGrid then
                putStrLn "Solution verified."
            else
                putStrLn "Something went terribly wrong. Solution violates Sudoku constraints."