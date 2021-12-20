#import json

def fibonacci(event):
   n = event["Number"]
   
   if n == 0:
        return 0
   elif n == 1:
        return 1
   else:
        return fibonacci(n-1) + fibonacci(n-2)
for event in range(10 + 1):
    print(str(event)+  "\t" + str(fibonacci(event)))

print(fibonacciNumbers) 
