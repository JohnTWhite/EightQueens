# EightQueens

xxxxxxxxxxXxxxxxxxxxxXxxxxxxxxxxxxxXxxxxxxxxX

The eight queens problem solved using Swift.

This question asks how many positions on an 8x8 chess board can 8 queens
be positioned so that they do not put any other queen in a position that
would compromise them to capture by another queen. There are 92 states of
the board in which these criteria are met. 

Queens are a class and have a row and column. These queens are stored in
an array and are checked to be safe when trying to be placed on the 
itterative row. If it is not safe the recursive function will immediately 
return false. 

If the eighth queen is succesfully placed this instance result will be
returned into a string containing all the instances of a succesful 
placement.

That ultimate result is returned into out UITextView. The result is only
calculated when the user Touches Up Inside our UIButton. Before that
our UITextView briefly describes the problem it is solving.

xxxxxxxxxxXxxxxxxxxxxXxxxxxxxxxxxxxXxxxxxxxxX

Refrences to the Eight Queens Problem:

https://www.youtube.com/watch?v=jPcBU0Z2Hj8
https://en.wikipedia.org/wiki/Eight_queens_puzzle


xxxxxxxxxxXxxxxxxxxxxXxxxxxxxxxxxxxXxxxxxxxxX
