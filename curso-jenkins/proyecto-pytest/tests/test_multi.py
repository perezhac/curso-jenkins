import pytest

def multiplicar(a, b):
    """funcion que multiplica dos numeros"""
    return a * b

def test_suma():
    assert multiplicar(2,2) == 4 
    assert multiplicar(-1,1) == -1 
    assert multiplicar(0,100) == 0

