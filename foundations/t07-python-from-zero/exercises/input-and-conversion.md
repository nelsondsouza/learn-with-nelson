# T07 Exercise — Input and Conversion

Create `src/profile.py`:

```python
name = input("What is your name? ")
print("Hello, " + name)

age_text = input("How old are you? ")
print(type(age_text))

age = int(age_text)
next_age = age + 1

print("Next year you will be", next_age)
```

Questions:

1. What type does `input()` return?
2. Why is `int()` needed?
3. What happens if you type `hello` where an integer is expected?
