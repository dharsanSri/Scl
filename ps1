bisection method:-
import sympy as sp
import numpy as np
import matplotlib.pyplot as plt

x = sp.symbols('x')

def bisection(f, a, b, tol=0.001):
    """
    Find the root of an equation using the Bisection method.

    Parameters:
    f (SymPy expression): The equation to solve.
    a (float): The lower bound.
    b (float): The upper bound.
    tol (float, optional): The tolerance. Defaults to 0.001.

    Returns:
    float: The root of the equation.
    """
    f_lambda = sp.lambdify(x, f, 'numpy')  # Create a lambda function for efficient evaluation

    while abs(b - a) > tol:
        c = a + (b - a) / 2
        if f_lambda(a) * f_lambda(c) < 0:
            b = c
        else:
            a = c

    return c

def plot_function(f, a, b):
    x = np.linspace(a, b, 400)
    y = sp.lambdify('x', f, 'numpy')(x)
    plt.plot(x, y)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Plot of f(x)')
    plt.grid(True)
    plt.axhline(0, color='black')
    plt.show()
    
def main():
    # Get user input
    a = float(input("Enter lower bound: "))
    b = float(input("Enter upper bound: "))
    eqn = input("Enter equation: ")

    # Validate input
    if a >= b:
        raise ValueError("Invalid bounds. Lower bound must be less than upper bound.")
        
    eqn = eqn.replace('^', '**')  # Replace ^ with ** for exponentiation
    eqn = eqn.replace('−', '-')
    
    # Convert equation to SymPy expression
    f = sp.sympify(eqn)
    # Find the root
    root = bisection(f, a, b)

    print("Root:", root)
    plot_function(f, a, b)
if __name__ == "__main__":
    main()
   ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   regular falsi:-
   import sympy as sp
import numpy as np
import matplotlib.pyplot as plt

x = sp.symbols('x')

def bisection(f, a, b, tol=0.001):
    """
    Find the root of an equation using the Bisection method.

    Parameters:
    f (SymPy expression): The equation to solve.
    a (float): The lower bound.
    b (float): The upper bound.
    tol (float, optional): The tolerance. Defaults to 0.001.

    Returns:
    float: The root of the equation.
    """
    f_lambda = sp.lambdify(x, f, 'numpy')  # Create a lambda function for efficient evaluation

    while abs(b - a) > tol:
        c = a + (b - a) / 2
        if f_lambda(a) * f_lambda(c) < 0:
            b = c
        else:
            a = c

    return c

def plot_function(f, a, b):
    x = np.linspace(a, b, 400)
    y = sp.lambdify('x', f, 'numpy')(x)
    plt.plot(x, y)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Plot of f(x)')
    plt.grid(True)
    plt.axhline(0, color='black')
    plt.show()
    
def main():
    # Get user input
    a = float(input("Enter lower bound: "))
    b = float(input("Enter upper bound: "))
    eqn = input("Enter equation: ")

    # Validate input
    if a >= b:
        raise ValueError("Invalid bounds. Lower bound must be less than upper bound.")
        
    eqn = eqn.replace('^', '**')  # Replace ^ with ** for exponentiation
    eqn = eqn.replace('−', '-')
    
    # Convert equation to SymPy expression
    f = sp.sympify(eqn)
    # Find the root
    root = bisection(f, a, b)

    print("Root:", root)
    plot_function(f, a, b)
if __name__ == "__main__":
    main()
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
import sympy as sp
import numpy as np
import matplotlib.pyplot as plt

x = sp.symbols('x')

def bisection(f, a, b, tol=0.001):
    """
    Find the root of an equation using the Bisection method.

    Parameters:
    f (SymPy expression): The equation to solve.
    a (float): The lower bound.
    b (float): The upper bound.
    tol (float, optional): The tolerance. Defaults to 0.001.

    Returns:
    float: The root of the equation.
    """
    f_lambda = sp.lambdify(x, f, 'numpy')  # Create a lambda function for efficient evaluation

    while abs(b - a) > tol:
        c = a + (b - a) / 2
        if f_lambda(a) * f_lambda(c) < 0:
            b = c
        else:
            a = c

    return c

def plot_function(f, a, b):
    x = np.linspace(a, b, 400)
    y = sp.lambdify('x', f, 'numpy')(x)
    plt.plot(x, y)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Plot of f(x)')
    plt.grid(True)
    plt.axhline(0, color='black')
    plt.show()
    
def main():
    # Get user input
    a = float(input("Enter lower bound: "))
    b = float(input("Enter upper bound: "))
    eqn = input("Enter equation: ")

    # Validate input
    if a >= b:
        raise ValueError("Invalid bounds. Lower bound must be less than upper bound.")
        
    eqn = eqn.replace('^', '**')  # Replace ^ with ** for exponentiation
    eqn = eqn.replace('−', '-')
    
    # Convert equation to SymPy expression
    f = sp.sympify(eqn)
    # Find the root
    root = bisection(f, a, b)

    print("Root:", root)
    plot_function(f, a, b)
if __name__ == "__main__":
    main()
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
fixed point:    
import sympy as sp
import numpy as np
import matplotlib.pyplot as plt

x = sp.symbols('x')

def bisection(f, a, b, tol=0.001):
    """
    Find the root of an equation using the Bisection method.

    Parameters:
    f (SymPy expression): The equation to solve.
    a (float): The lower bound.
    b (float): The upper bound.
    tol (float, optional): The tolerance. Defaults to 0.001.

    Returns:
    float: The root of the equation.
    """
    f_lambda = sp.lambdify(x, f, 'numpy')  # Create a lambda function for efficient evaluation

    while abs(b - a) > tol:
        c = a + (b - a) / 2
        if f_lambda(a) * f_lambda(c) < 0:
            b = c
        else:
            a = c

    return c

def plot_function(f, a, b):
    x = np.linspace(a, b, 400)
    y = sp.lambdify('x', f, 'numpy')(x)
    plt.plot(x, y)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.title('Plot of f(x)')
    plt.grid(True)
    plt.axhline(0, color='black')
    plt.show()
    
def main():
    # Get user input
    a = float(input("Enter lower bound: "))
    b = float(input("Enter upper bound: "))
    eqn = input("Enter equation: ")

    # Validate input
    if a >= b:
        raise ValueError("Invalid bounds. Lower bound must be less than upper bound.")
        
    eqn = eqn.replace('^', '**')  # Replace ^ with ** for exponentiation
    eqn = eqn.replace('−', '-')
    
    # Convert equation to SymPy expression
    f = sp.sympify(eqn)
    # Find the root
    root = bisection(f, a, b)

    print("Root:", root)
    plot_function(f, a, b)
if __name__ == "__main__":
    main()
    -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
