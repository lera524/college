n = int(input("Кол-во: "))
l = list()

b = 0
num = 0

for i in range(n):
    m = int(input("Введите мощность:"))
    l.append(m)
    if(m > b):
        b = m
        num = i + 1

print("Всего: " + str(sum(l)))
print("Средняя: " + str(sum(l) / len(l)))
print("Наибольшая мощь: " + str(num))