//
//  EightQueens.swift
//  EightQueens
//
//  Created by John White on 6/18/16.
//  Copyright © 2016 TwoStupidKids. All rights reserved.
//

import Foundation

func EightQueens ()-> String{
    
    
    // keep track of the number of solutions found, positions in our loop,
    // and results holds readable output.
    var solutionsFound = 0
    var positionsChecked = 0
    var results : String = ""
    
    
    // Create 8 queen objects, initialized to rows 0 to 7
    let myQueens = (0...7).map { Queen(forRow: $0) }
    
    func isSafe( currentRow : Int, currentColumn : Int) -> Bool {
        positionsChecked++
        
        // iterate over all queens in previous rows
        for previousRow in 0..<currentRow {
            // CHECK VERTICAL: are we trying to place in the same column as any previously placed queen?
            if myQueens[previousRow].column == currentColumn {
                return false
            }
            // CHECK DIAGONAL: is the new queen diagonally reachable from any previous queen?
            let differenceInRows = currentRow - previousRow
            let differenceInColumns = currentColumn - myQueens[previousRow].column
            if (differenceInRows == differenceInColumns || differenceInRows == -differenceInColumns) {
                return false
            }
        }
        // it's safe! Set the column of the current queen
        myQueens[currentRow].column = currentColumn
        return true
        
    }
    
    func moveQueenAcrossRow(row: Int)  {
        for column in 0...7 {
            // move the queen column by column, checking if it's safe
            if isSafe(row, currentColumn: column) {
                // if we just placed the eighth queen safely, print the result
                if row == 7 {
                    solutionsFound++
                    results = results + printAnswer()
                    
                } else {
                    // recursive call - now move the queen in the NEXT row
                    moveQueenAcrossRow(row+1)
                }
            }
        }
    }
    
    func printAnswer() ->String{
        
        var results2 = ""
        
        results2 = results2 + "Answer: \(solutionsFound) "
        results2 = results2 + ("\n")
        
        // go backwards to print from top down
        for currentRow in Array((0...7).reverse()) {
            // print row number (use chess numbering)
            results2 = results2 + "\(currentRow+1) "
            for currentColumn in 0...7 {
                if (myQueens[currentRow].column == currentColumn)
                {
                    results2 = results2 + ("👑")
                } else {
                    results2 = results2 + (" x ")
                }
            }
            results2 = results2 + ("\n")
        }
        results2 = results2 + ("  A  B  C  D  E  F  G  H  \n")
        results2 = results2 + ("\n")
        return results2
    }
    
    // Begin with the first Queen on row 0
    moveQueenAcrossRow(0)
    results = results + ("Positions checked: \(positionsChecked)")
    
    
        return results
    
    
    

}