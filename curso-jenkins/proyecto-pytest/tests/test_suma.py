import pytest

def suma(a, b):
    """funcion que suma dos numeros"""
    return a + b

def test_suma():
    assert suma(2,2) == 4 
    assert suma(-1,1) == 0 
    assert suma(0,0) == 0

def test_suma_fail():
    assert suma(4,2) == 6
