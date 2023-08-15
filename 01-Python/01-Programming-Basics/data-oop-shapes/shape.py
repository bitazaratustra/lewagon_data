'''
This class is used to pass the LeWagon exercises
'''

class Shape:
    # This class take a name and a color to define two variables

    '''Take a color and a name and save its in a local variable each other'''
    def __init__(self, color, name):
        self.color = color
        self.name = name

    def say_name(self):
        '''This function return the name of the object'''
        return f"My name is {self.name}"


class Rectangle(Shape):
    '''This class take a height and a width to define two variables'''

    def __init__(self, color, name, width, height):
        '''Take a width and a height and save it in a local variable'''
        super().__init__(color, name)
        self.width = width
        self.height = height

    def say_name(self):
        '''returns the name of the object'''
        return f"My name is {self.name} and I am a rectangle."

    def area(self):
        '''returns the area of the rectangle'''
        return self.width * self.height

    def perimeter(self):
        '''returns the perimeter of the rectangle'''
        return 2 * (self.width + self.height)




class Circle(Shape):
    # This class is used to pass the exercise
    '''Take a radius and save it in a local variable'''
    def __init__(self, color, name, radius):
        '''Take a radius and save it in a local variable'''
        super().__init__(color, name)
        self.radius = radius

    def say_name(self):
        '''returns the name of the object'''
        return f"My name is {self.name} and I am a circle."

    def area(self):
        '''returns the area of the circle'''
        return 3.14 * self.radius * self.radius

    def perimeter(self):
        '''returns the perimeter of the circle'''
        return 2 * 3.14 * self.radius
