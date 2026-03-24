def add(a, b):
    return a + b

def test_add_pass():
    assert add(2, 3) == 5

def test_add_fail():
    assert add(2, 3) == 6

# install pytest: pip install pytest
# run: pytest test_math_pytest.py