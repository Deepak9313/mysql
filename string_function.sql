-- This File contains all the string functions
SELECT ASCII(Country) FROM test;
ASCII() :- SQL returns the ASCII value of character
Used to find the length below both are same
 |--CHAR_LENGTH() :- SQL returns the length of the specified word
 |--CHARACTER_LENGTH() : SQL returns the length of the specified word
CONCAT(col1,col2) :- Used to concatinate the column 
CONCAT_WS('+',"deepak","rana") :- Give you concatinate the string OUTPUT = deepak+rana
FIND_IN_SET('D','A','B','C','D') :- Used for searching OUTPUT = 4
FORMAT('0.987','Percent') :- Used for display the number in given format
INSERT(String1,Position,String2) :- Used to add the string at a given position
INSTR(String,character) :-This string function returns the index value of the first occurrence of the given character in the string.
LCASE(String) :- Used to convert string into lowercase
LEFT(String,Index_Position) :- It is used to cut the string from LEFT
LOCATE(Search_String,String Search_Position) :- This string function shows the index value of the first occurrence of the word in the given string.
LOWER() :- Same as LCASE()
LPAD(String,Number,'#') :- Used for padding from LEFT
LTRIM(Original_String,Trimmed String) :- used to cut the string from the left side
MID(Original String,Starting Position , Length) :- This string function extracts the sub-string from the given position of the original string.
POSITION(String IN Original_String) :- This string function finds the position of the first occurrence of the given string in the main string.
REPEAT(String,Repeat Number) :- This function used to repeat the string with defined number
REPLACE(Original String,sub_string) :- This string function cuts the given string by removing the given sub-string.
REVERSE(String) :- This give you a reverse string
RIGHT(String, Index_Position) :- This string function shows the right-most characters from the given string. It reads the characters from the right side to the given index position.
RPAD(String,size,symbol) :- This string function adds the given symbol to the right of the given string.
RTRIM(Original String) :- This string function cuts the given character or string from the right of the given original string. It also removes the space from the right of the specified string.
STRCMP(String1,String2) :- This string function compares the two specified strings with each other. This function returns 0 if both strings in SQL are similar, returns -1 if the first string is smaller than the second string, and returns 1 if the first string is bigger than the second string.
SUBSTR(Original String,String Position,Length) :- This string function extracts the sub-string from the given position of the original string.
SUBSTRING(Original String,Index,Starting Position) :- This string function shows the character of the given index value in the original string.
SUBSTRING_INDEX(Original_String, symbol, Starting_Position) :- This string function shows the substring before the given symbol in the original string.
UCASE(String) :- This string function allows users to convert the specified string into upper case letters or capital letters.
UPPER(String) :- This string function allows users to convert the specified string into the UPPER case letters. This function is also the same as the UCASE() string function.