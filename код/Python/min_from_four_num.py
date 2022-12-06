# Напишите программу, которая определяет наименьшее из четырёх чисел.
a=int(input())
b=int(input())
c=int(input())
d=int(input())
if a <= b:
    x = a
else:
    x = b
if d <= c:
    y = d
else:
    y = c
if x <= y:
    print(x)
else:
    print(y)