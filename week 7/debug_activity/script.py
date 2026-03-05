def average(values):
    total = 0
    for i in range(len(values)):
        total += values[i]
    return total / len(values)

numbers = [10, 20, 30]
print("Average:", average(numbers))
