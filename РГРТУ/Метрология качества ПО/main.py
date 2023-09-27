import math
import unittest
# Дано число мерсенн, необходимо определить является ли оно простым

# Функция проверки простоты числа
def isprime(n):
    i = 2
    while i <= math.sqrt(n):
        if (n % i) == 0:
            return False
        i = i + 1
    return True
    
# Фнкция принимает аргумент и приводит его значение
# к целочисленному типу, в случае если привести значение
# к целому типу не возможно, функция завершает свою работу

def check_mersens_number(num):
    try:
        number = int(num)
    except ValueError:
        return 0
    
    p = math.log2(number +1)
    if p % 1 != 0:
        return False
    S = 4
    i = 1
    
    if isprime(int(p)):
       
        while i != p-1:
            S = (S**2 - 2) % number
            i =i + 1
        if S == 0:
            
            return True
        else:
            
            return False
    else:
        return False
    
    
class TestCheckMersensNumber(unittest.TestCase):
    def setUp(self):
        self.chmn = check_mersens_number

    def test_MersensPrimeNum(self):
        self.assertEqual(self.chmn(8191), True)

    def test_MersensNum(self):
        self.assertEqual(self.chmn(4095), False)

    def test_NotMersensNum(self):
        self.assertEqual(self.chmn(8056), False)
    
    def test_NotMersensPrimeNum(self):
        self.assertEqual(self.chmn(17), False)

    def test_MersensNumWithNotNumber(self):
        self.assertEqual(self.chmn("twuenty"), False)
        
if __name__ == "__main__":
    unittest.main()