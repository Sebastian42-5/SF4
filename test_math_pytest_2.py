def is_even(num):
    return num % 2 == 0

def test_is_even_true():
    assert is_even(4) == True

def test_is_even_false():
    assert is_even(5) == True

# install pytest: pip install pytest
# run: pytest test_math_pytest.py