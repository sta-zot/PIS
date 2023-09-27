```python
import math

def check_mersens_number(num):
    try:
        number = int(num)
    except ValueError:
        print(f' "{num}" invalid input. Expected number')
        return 0
    
    if ( math.log2(num + 1) % 1 ) == 0:
        return True
    else:
        return False
    
        
```