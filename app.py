def add(a, b):
    return a + b

def test_add():
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
    assert add(0, 0) == 0
    print("✅ Tous les tests sont passés !")

if __name__ == "__main__":
    test_add()
    print(f"🚀 Résultat : 3 + 5 = {add(3, 5)}")

