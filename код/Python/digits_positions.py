# Напишите программу для нахождения цифр четырёхзначного числа.
n=int(input())
d=n % 10 # Цифра в позиции единиц
c=(n // 10) % 10 # Цифра в позиции десятков
b=(n // 100) % 10 # Цифра в позиции сотен
a=n // 1000  # Цифра в позиции тысяч
print('Цифра в позиции тысяч равна', a)
print('Цифра в позиции сотен равна', b)
print('Цифра в позиции десятков равна', c)
print('Цифра в позиции единиц равна', d)