from typing import TypeVar, Generic

T = TypeVar("T")

# Upper bounds O, Lower bounds Ω, Tight bounds Θ

# +-------+----------+-------------+--------+--------------+-----------+------------+------------------+
# | input | constant | logarithmic | linear |  log-linear  | quadratic | polynomial |   exponential    |
# |   n   |   Θ(1)   |   Θ(log n)  |  Θ(n)  |  Θ(n log n)  |   Θ(n²)   |    Θ(nᶜ)   |    2 ^ Θ(nᶜ)     |
# | 1000  |     1    |    ≈ 10     |  1000  |   ≈ 10,000   | 1,000,000 |    1000ᶜ   |  2^1000 ≈ 10^301 |
# | Time  |    1ns   |    10ns     |  1μs   |     10μs     |    1ms    | 10^(3c-9)s | 10^281 millenia  |
# +-------+----------+-------------+--------+--------------+-----------+------------+------------------+

class StaticArray(Generic[T]) :
    def __init__(self, n: int) -> None :
       self.data : list[T | None] = [None] * n

    def get_at(self, i: int) -> T :
        if not (0 <= i < len(self.data)) : raise IndexError
        return self.data[i]
    
    def set_at(self, i: int, x : T) -> None :
        if not (0 <= i < len(self.data)) : raise IndexError
        self.data[i] = x

def birthday_match(students: list[tuple[str, str]]) -> tuple[str] | None :
    """
    Find a pair of students with the same birthday

    Args:
        students: Tuple of student (name birthday) tuples
    Returns:
        Tuple of student names of None
    """
    n = len(students)                               # O(1)
    record = StaticArray(n)                         # O(n)
    for k in range(n) :                             # n
        (name1, birthday1) = students[k]            # O(1)
        for i in range(k) :                         # k
            (name2, birthday2) = record.get_at(i)   # O(1)
            if birthday1 == birthday2 :             # O(1)
                return (name1, name2)               # O(1)
        record.set_at(k, (name1, birthday1))        # O(1)
    return None

if __name__ == "__main__" :
    students = [
        ("AshGrey", "2004-09-14"),
        ("Huaier", "2006-10-07"),
        ("Jack", "2004-09-14")
    ]
    print(birthday_match(students))