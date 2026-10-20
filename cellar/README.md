# Cellar

## Description

You have a collection of n special wines on a shelf in your cellar.

The wines are numbered from 1 to n, in sequence. The price of the i-th wine is pi.

These wines are the kind that get better every year. Therefore, suppose that today is year 1 and the price of the i-th wine is `pi * y`, where y is the year.

You want to sell all your bottles, but you can only sell 1 bottle per year. And there's more: each year, you can only sell either the leftmost or the rightmost bottle on your shelf. Also, you cannot reorder the bottles.

What is the maximum amount of money you can make from selling the bottles?

## Input format

The input consists of several test cases.

Each test case begins with a line containing the integer n (0<=n<=300), indicating the number of bottles.

n lines follow. Each line contains the price of the i-th bottle.

The input ends when there are no more test cases.

## Output format

For each test case, print a single line containing an integer representing the maximum value obtained from selling the bottles.