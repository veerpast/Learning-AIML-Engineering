# Object-Oriented Programming (OOP) in Python - Corey Schafer https://www.youtube.com/watch?v=ZDa-Z5JzLYM&list=PL-osiE80TeTsqhIuOqKhwlXsIBIdSeYtc&index=1

class Employee:
    def __init__(self , first , last , pay):
        self.first = first
        self.last = last
        self.pay = pay
        self.email = first + '.' + last + '@gmail.com'


emp_1 = Employee('Veer' , 'Pratap' , 100000)
print(emp_1.email)
print(emp_1.first)
        