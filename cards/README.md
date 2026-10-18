## Description

Clara loves playing cards with her friends. To train her memory and logical reasoning, she came up with a small card game. She draws the top five cards from a well-shuffled deck and lays them in a row, from left to right, face down on the table.

She then glances at each card in the row for a brief moment, putting it back face down right away. Using only her memory, Clara must now say whether the row of cards is in ascending order, in descending order, or not sorted.

She has played so much that she's getting tired, and she no longer trusts her own judgment to know whether she got it right. So she has asked you to write a program that, given a sequence of five cards, determines whether it is sorted in ascending order, in descending order, or not sorted.

## Input Format

The input is a single line containing the five cards in the sequence. Each card is an integer between 1 and 13. All five cards are different.

## Output Format

Your program must print a single line with a single uppercase character: `C` if the sequence is in ascending order, `D` if it is in descending order, or `N` otherwise.

Do not print a newline after the character.

## Example

**Input**

    1 2 3 5 6

**Output**

    C