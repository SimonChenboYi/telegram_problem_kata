# Telegram Problem

## Task

Write a program that takes a number w, then accepts lines of text and outputs lines of text, where the output lines have as many words as possible but are never longer than w characters. Words may not be split, but you may assume that no single word is too long for a line.

### Input
* a number:  an integer "w"
* lines of text:  a string with line break(s) "\n"

### output
* lines of text: a string with line breaks, each line no longer than "w" characters, words may not be split

### Acceptance Cases

1. when w is larger than the length of input string
  * input: 100, "Banana Orange\nhello"
  * output: "Banana Orange\nhello"

2. when w is larger than the length of each lines
  * input: 15, "Banana Orange\nhello"
  * output: "Banana Orange\nhello"

3. when w is smaller than the length of one or more lines and match (excluded) the spaces between words  
  * input: 6, "Banana Orange\nhello"
  * output: "Banana\nhello"

4. when w is smaller than the length of one or more lines and match (included) the spaces between words  
  * input: 6, "Banana Orange\nhello"
  * output: "Banana \nhello"

5. when w is smaller than the length of one or more lines and need to avoid split words
  * input: 9, "Banana Orange\nhello\nafternoon Sunday"
  * output "Banana \nhello\nafternoon"
