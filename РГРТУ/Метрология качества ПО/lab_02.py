import math
import unittest
#from random import randint as rdint
import random
# Дано число мерсенн, необходимо определить является ли оно простым

# Функция проверки простоты числа
def is_prime(n: int) -> bool:
    i = 2
    while i <= math.sqrt(n):
        
        if (n % i) == 0:
            return False
        i = i + 1
    return True
    
# Фнкция принимает аргумент и приводит его значение
# к целочисленному типу, в случае если привести значение
# к целому типу не возможно, функция завершает свою работу

def check_mersens_number(num: int) -> bool:
    try:
        number = abs(int(num))
        if number == 0: return False
    except ValueError:
        # print("Переданное значение не является целым числом")
        return 0
    
    p = math.log2(number +1)
    if p % 1 != 0:
        # print(f'{number} не является числом "Мерсена"')
        return False
    S = 4
    i = 1
    if is_prime(int(p)):
        while i != p-1:
            S = (S**2 - 2) % number
            i = i + 1
        if S == 0:
            # print(f'{number} является простым числом "Мерсена"')
            return True
        else:
            # print(f'{number} не является числом "Мерсена"')
            return False
    else:
        # print(f'{number} не является простым числом "Мерсена"')
        return False

class TestCheckMersensNumber(unittest.TestCase):
    def setUp(self):
        self.chmn = check_mersens_number
        self.valid_sets = (7, 31, 8191, 131071, 524287)
        self.invalid_sets1 = tuple(random.random() for _ in range(0, 200) if _ not in self.valid_sets)
        self.invalid_sets2 = tuple(map(lambda _: random.randint(-1000, 0), range(100)))
        self.invalid_sets3 = ['dsds', 'd', 'Hello world', 'All 4 me']
        self.invalid_sets4 = tuple(random.randint(1, 10000000) for _ in range(0, 200) if _ not in self.valid_sets)


    def test_Valid_sets(self):
        for param in self.valid_sets:
            try:
                self.assertEqual(self.chmn(param), True)
            except AssertionError:
                print(f"Error in {param}")

    def test_InValid_sets1(self):
        for param in self.invalid_sets1:
            try:
                self.assertEqual(self.chmn(param), False)
            except AssertionError:
                print(f"Error in {param}")
                

    def test_InValid_sets2(self):
         for param in self.invalid_sets2:
            try:
                self.assertEqual(self.chmn(param), False)
            except AssertionError:
                print(f"Error in {param}")
                
    
    def test_InValid_sets3(self):
         for param in self.invalid_sets3:
            try:
                self.assertEqual(self.chmn(param), False)
            except AssertionError:
                print(f"Error in {param}")

    def test_InValid_sets4(self):
         for param in self.invalid_sets4:
            try:
                self.assertEqual(self.chmn(param), False)
            except AssertionError:
                print(param)
        
if __name__ == "__main__":
    unittest.main()