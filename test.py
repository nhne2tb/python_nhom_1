# ==============================
# BÀI TẬP LẬP TRÌNH PYTHON CƠ BẢN
# ==============================

from datetime import datetime, date
import csv
from copy import deepcopy

# -------------------------------
# Câu 1. Khởi tạo biến, in id, type, giá trị
# -------------------------------
def cau1():
    a = 10          # int
    b = 3.14        # float
    c = "Hello"     # str
    l = [1, 2, 3]   # list

    print("Trước khi thay đổi:")
    for name, var in [('a', a), ('b', b), ('c', c), ('l', l)]:
        print(f"{name}: id={id(var)}, type={type(var)}, value={var}")

    # Thay đổi giá trị
    a = 20
    b = 9.81
    c = "Python"
    l.append(4)
    l = [7, 8, 9]  # đổi ô nhớ mới

    print("\nSau khi thay đổi:")
    for name, var in [('a', a), ('b', b), ('c', c), ('l', l)]:
        print(f"{name}: id={id(var)}, type={type(var)}, value={var}")

# -------------------------------
# Câu 2. number = biểu thức toán bất kỳ
# -------------------------------
def cau2():
    expr = input("Nhập biểu thức toán: ")
    try:
        number = eval(expr)
        print("Kết quả:", number)
        if isinstance(number, int):
            print("→ Kết quả bạn có được là số nguyên.")
        elif isinstance(number, float):
            print("→ Kết quả bạn có được là số thực.")
        else:
            print("→ Không phải số nguyên hoặc số thực.")
    except Exception as e:
        print("Lỗi:", e)

# -------------------------------
# Câu 3. Kiểm tra ngày tháng năm hợp lệ
# -------------------------------
def cau3():
    try:
        d = int(input("Ngày: "))
        m = int(input("Tháng: "))
        y = int(input("Năm: "))
        date(y, m, d)
        print("✅ Ngày/tháng/năm hợp lệ.")
    except:
        print("❌ Ngày/tháng/năm không hợp lệ.")

# -------------------------------
# Câu 4. Tính lãi suất đến khi > 5 tỷ
# -------------------------------
def cau4():
    try:
        value = float(input("Nhập số tiền ban đầu: "))
        year = 0
        while value <= 5_000_000_000:
            value *= 1.05
            year += 1
        print(f"Sau {year} năm bạn có hơn 5 tỷ ({value:,.0f} VND)")
    except:
        print("Vui lòng nhập số hợp lệ.")

# -------------------------------
# Câu 5. Giải phương trình ax+b=0
# -------------------------------
def cau5():
    a = float(input("Nhập a: "))
    b = float(input("Nhập b: "))
    if a == 0:
        if b == 0:
            print("Phương trình vô số nghiệm.")
        else:
            print("Phương trình vô nghiệm.")
    else:
        print("Nghiệm x =", -b/a)

# -------------------------------
# Câu 6. Kiểm tra số nguyên tố
# -------------------------------
def is_prime(n):
    if n < 2: return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0: return False
    return True

def cau6():
    n = int(input("Nhập số nguyên dương: "))
    print("Là số nguyên tố" if is_prime(n) else "Không phải số nguyên tố")

# -------------------------------
# Câu 7. Dãy N số → in các số nguyên tố
# -------------------------------
def cau7():
    arr = list(map(int, input("Nhập dãy số: ").split()))
    primes = [x for x in arr if is_prime(x)]
    print("Các số nguyên tố trong dãy:", primes)

# -------------------------------
# Câu 8. Nhập họ tên → tách lấy họ
# -------------------------------
def cau8():
    name = input("Nhập họ tên: ").strip()
    print("Họ là:", name.split()[0])

# -------------------------------
# Câu 9. Kiểm tra ngày sinh hợp lệ
# -------------------------------
def cau9():
    s = input("Nhập ngày sinh (dd/mm/yyyy): ")
    try:
        datetime.strptime(s, "%d/%m/%Y")
        print("Ngày sinh hợp lệ.")
    except:
        print("Ngày sinh không hợp lệ.")

# -------------------------------
# Câu 10. Chuẩn hóa ngày sinh
# -------------------------------
def cau10():
    s = input("Nhập ngày sinh: ")
    formats = ["%d/%m/%Y", "%Y-%m-%d", "%d-%m-%Y"]
    for fmt in formats:
        try:
            d = datetime.strptime(s, fmt)
            print("Hợp lệ. Chuẩn hóa:", d.strftime("%d/%m/%Y"))
            return
        except:
            pass
    print("Không chấp nhận được.")

# -------------------------------
# Câu 11. Tam giác Pascal
# -------------------------------
def pascal(n):
    row = [1]
    for _ in range(n):
        print(*row)
        row = [1] + [row[i] + row[i+1] for i in range(len(row)-1)] + [1]

def cau11():
    n = int(input("Nhập N: "))
    pascal(n)

# -------------------------------
# Câu 12. Nhập text → phân loại
# -------------------------------
def cau12():
    s = input("Nhập input của bạn: ").strip()
    try:
        int(s)
        print("Đây là SỐ NGUYÊN.")
    except:
        try:
            float(s)
            print("Đây là SỐ THỰC.")
        except:
            try:
                datetime.strptime(s, "%d/%m/%Y")
                print("Đây là NGÀY/THÁNG/NĂM.")
            except:
                print("OTHER")

# -------------------------------
# Câu 13. Bắt Exception cho bài 3,10 (đã có trong code trên)
# -------------------------------
# (Đã xử lý try/except ở cau3 và cau10)

# -------------------------------
# Câu 14. Đọc / ghi file text
# -------------------------------
def cau14():
    content = input("Nhập nội dung: ")
    with open("data.txt", "w", encoding="utf-8") as f:
        f.write(content)
    print("Đã ghi xong. Nội dung đọc lại:")
    with open("data.txt", "r", encoding="utf-8") as f:
        print(f.read())

# -------------------------------
# Câu 15. Đọc ghi file CSV
# -------------------------------
def cau15():
    data = [
        {"id": 1, "name": "An", "score": 8.5},
        {"id": 2, "name": "Bình", "score": 9.0},
    ]
    with open("data.csv", "w", newline='', encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=["id", "name", "score"])
        writer.writeheader()
        writer.writerows(data)
    print("Đã ghi file CSV.")

    with open("data.csv", "r", encoding="utf-8") as f:
        print(f.read())

# -------------------------------
# Câu 16. Lớp Stack, Queue
# -------------------------------
class Stack:
    def __init__(self): self.data = []
    def push(self, x): self.data.append(x)
    def pop(self): return self.data.pop() if self.data else None
    def peek(self): return self.data[-1]
    def __repr__(self): return f"Stack({self.data})"

class Queue:
    def __init__(self): self.data = []
    def enqueue(self, x): self.data.append(x)
    def dequeue(self): return self.data.pop(0) if self.data else None
    def __repr__(self): return f"Queue({self.data})"

def cau16():
    st = Stack()
    st.push(1); st.push(2)
    print(st)
    st.pop()
    print(st)

    q = Queue()
    q.enqueue("A"); q.enqueue("B")
    print(q)
    q.dequeue()
    print(q)

# -------------------------------
# Câu 17. Quản lý khóa học (OOP)
# -------------------------------
class Person:
    def __init__(self, name, year):
        self.name = name
        self.year = year

class Student(Person):
    def __init__(self, name, year):
        super().__init__(name, year)
        self.courses = {}

class Teacher(Person):
    pass

class Course:
    def __init__(self, name, credits, teacher):
        self.name = name
        self.credits = credits
        self.teacher = teacher
        self.students = {}

    def add_student(self, student, grade=None):
        self.students[student.name] = grade
        student.courses[self.name] = grade

def cau17():
    gv1 = Teacher("Thầy An", 1980)
    gv2 = Teacher("Cô Bình", 1985)
    gv3 = Teacher("Thầy Cường", 1982)

    k1 = Course("Python", 3, gv1)
    k2 = Course("CSDL", 3, gv2)
    k3 = Course("CTDL", 4, gv3)

    sv1 = Student("Nam", 2004)
    sv2 = Student("Hà", 2003)
    sv3 = Student("Linh", 2004)

    # Đăng ký khóa học
    k1.add_student(sv1, 8.5)
    k2.add_student(sv1, 7.0)
    k2.add_student(sv2, 8.0)
    k3.add_student(sv2, 7.5)
    k1.add_student(sv3, 9.2)

    # In danh sách khóa học của 1 sinh viên
    print("\nKhoá học của SV1:")
    for k, v in sv1.courses.items():
        print("-", k, "| điểm:", v)

    # In danh sách sinh viên 1 khóa
    print("\nSinh viên học Python:")
    for ten, diem in k1.students.items():
        print("-", ten, "| điểm:", diem)


# ==============================
# CHẠY DEMO (tùy chọn)
# ==============================
if __name__ == "__main__":
    print("Chạy từng câu bằng cách gọi hàm cauX() (X=1..17)")
    # Ví dụ:
    # cau1()
    # cau2()
