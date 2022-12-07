# Напишите программу, которая считывает три числа и подсчитывает сумму только положительных чисел.

a=int(input())
b=int(input())
c=int(input())
sum = 0
if a >= 0:
    sum = sum + a
if b >= 0:
    sum = sum + b
if c >= 0:
    sum = sum + c
print(sum)