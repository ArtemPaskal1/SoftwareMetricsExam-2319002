import unittest
from factorial_module import factorial

class TestFactorial(unittest.TestCase):

    def test_basic_cases(self):
        self.assertEqual(factorial(0), 1)
        self.assertEqual(factorial(1), 1)
        self.assertEqual(factorial(5), 120)
        self.assertEqual(factorial(10), 3628800)

    def test_invalid_inputs(self):
        with self.assertRaises(ValueError):
            factorial(-1)
        with self.assertRaises(ValueError):
            factorial(-100)

    def test_large_inputs(self):
        self.assertEqual(factorial(20), 2432902008176640000)

if __name__ == "__main__":
    unittest.main()
