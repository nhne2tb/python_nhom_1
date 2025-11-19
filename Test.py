#MSSV: 0023413485
#Họ và Tên: Phan Nhật Phát
#Lớp: ĐHSTIN23C
tuyen_xe_bus = {
    1: {"ten_tuyen": "Tuyến số 1",
        "chuoi_diem_dung": ["S1", "S7", "S2"]
    },
    2: {"ten_tuyen": "Tuyến số 2",
        "chuoi_diem_dung": ["S10", "S7", "S3", "S8"]
    },
    3: {"ten_tuyen": "Tuyến số 3",
        "chuoi_diem_dung": ["S7", "S9", "S3", "S5", "S6"]
    }
}

# hàm bổ sung khi người dùng nhập không phải số nguyên, bắt ngoại lệ số nguyên
def nhap_so_nguyen(prompt):
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            print("Lỗi: Vui lòng nhập một số nguyên hợp lệ.")

# hàm thêm tuyến xe bus mới
def them_chuyen_bus(tuyen_xe_bus):
    print("Nhập thông tin tuyến xe bus mới")
    # Sử dụng hàm nhap_so_nguyen để đảm bảo so_hieu là số nguyên
    so_hieu = nhap_so_nguyen("Nhập số hiệu tuyến xe: ")
    
    if so_hieu in tuyen_xe_bus:
        print("Tuyến này đã tồn tại bạn chỉ cập nhật không thể thêm! Vui lòng nhập số hiệu khác.")
        return
    ten = input("Nhập tên tuyến xe: ")
    chuoi = input("Nhập chuỗi điểm dừng (mỗi chuỗi điểm dừng cách nhau bởi dấu phẩy): ")
    danh_sach_diem = [x.strip() for x in chuoi.split(",")]
    tuyen_moi = {
        "ten_tuyen": ten,
        "chuoi_diem_dung": danh_sach_diem
    }
    tuyen_xe_bus[so_hieu] = tuyen_moi
    print(f"Đã thêm tuyến xe {ten} ({so_hieu}) thành công.")

# hàm cập nhật chuỗi điểm dừng mới cho một tuyến xe bus
def cap_nhat(tuyen_xe_bus):
    # Sử dụng hàm nhap_so_nguyen
    so_hieu = nhap_so_nguyen("Nhập số hiệu tuyến xe bạn cần cập nhật: ")
    
    if so_hieu in tuyen_xe_bus:
        chuoi = input("Nhập chuỗi điểm dừng mới (mỗi chuỗi điểm dừng cách nhau bởi dấu phẩy): ")
        danh_sach_moi = [x.strip() for x in chuoi.split(",")]
        tuyen_xe_bus[so_hieu]["chuoi_diem_dung"] = danh_sach_moi
        print(f"Đã cập nhật điểm dừng cho {tuyen_xe_bus[so_hieu]['ten_tuyen']}.")
    else:
        print("Không tìm thấy tuyến xe bus cần cập nhật, bạn cần kiểm tra lại.")


# hàm nhận vào và kiểm tra tuyến đi qua điểm dừng vừa nhập
def kiem_tra_tram(tuyen_xe_bus):
    diem_dung = input("Nhập tên điểm dừng cần kiểm tra (ví dụ: S10): ").strip()
    tim_thay = False
    print(f"Các tuyến đi qua điểm dừng {diem_dung}:")
    for so_hieu, tuyen in tuyen_xe_bus.items():
        if diem_dung in tuyen["chuoi_diem_dung"]:
            print(f"- {tuyen['ten_tuyen']} ({so_hieu})")
            tim_thay = True
    if not tim_thay:
        print("Không có tuyến nào đi qua điểm dừng này.")


# hàm sắp xếp tuyến xe bus theo số lượng điểm dừng từ ít đến nhiều
def sap_xep_tuyen(tuyen_xe_bus):
    ds_tuyen = []
    for so_hieu, tuyen in tuyen_xe_bus.items():
        so_diem = len(tuyen["chuoi_diem_dung"])
        ds_tuyen.append((so_hieu, tuyen["ten_tuyen"], so_diem))

    # sắp xếp tăng dần theo phương pháp nổi bọt
    for i in range(len(ds_tuyen)):
        for j in range(i + 1, len(ds_tuyen)):
            if ds_tuyen[i][2] > ds_tuyen[j][2]:
                ds_tuyen[i], ds_tuyen[j] = ds_tuyen[j], ds_tuyen[i]

    print("Danh sách tuyến xe bus có trong trạm từ ít đến nhiều điểm dừng là:")
    for so, ten, so_diem in ds_tuyen:
        print(f"- {ten} Số hiệu ({so}) → {so_diem} điểm dừng")

# Chương trình chính
def main():
    while True:
        print("\nBạn hãy chọn chức năng")
        print("1. Thêm tuyến xe bus mới")
        print("2. Cập nhật lại chuỗi điểm dừng của tuyến xe")
        print("3. Nhập và kiểm tra tuyến đi qua điểm dừng đó ")
        print("4. Sắp xếp theo số điểm dừng từ ít đến nhiều điểm dừng")
        print("5. Thoát")
        
        # Nhận lựa chọn dưới dạng chuỗi
        lua_chon = input("Chọn chức năng (1-5): ")

        if lua_chon == "1":
            them_chuyen_bus(tuyen_xe_bus)
        elif lua_chon == "2":
            cap_nhat(tuyen_xe_bus)
        elif lua_chon == "3":
            kiem_tra_tram(tuyen_xe_bus)
        elif lua_chon == "4":
            sap_xep_tuyen(tuyen_xe_bus)
        elif lua_chon == "5":
            print("Kết thúc chương trình.")
            break
        else:
            print("Lựa chọn không hợp lệ! bạn hãy nhập lại.")


if __name__ == "__main__":
    main()