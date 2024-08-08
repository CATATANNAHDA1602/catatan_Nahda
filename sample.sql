# Ini untuk membuatt Database
CREATE DATABASE simple_database

#ini untuk menghapus databasae
DROP DATABASE

# ini untuk Create Database
CREATE DATABASE sample_database;

# ini untuk menghapus Create database
DROP DATABASE sample_database;

CREATE TABLE student (
    id bigint PRIMARY KEY AUTO_INCREMENT,
);
#AUTO_INCREMENT,berfungsi untuk menambahkan nilai 1

# PRIMARY KEY membuat identitasa atau nilai dari column yang di atur menjadi unique
# AUTO_INCREMENT membuat id ketika ada  data baru dia akan bertambah 1 karena dia integer
# contoh :
# data pertama dengan id 1. lalu kita membuat Record (Data) baru maka data baru akan,
# memiliki id 2 karena menggunakan KEYWORDS AUTO_INCREMENT
# VARCHAR memiliki tipe data string saat kita menggunakan varchar kita harus,
# mendefinisikan berapa panjang dari varchar tersebut.
# sebagai contoh  jika kita membuat varchar dengan panjang 3 maka kita tidak boleh,
# memasukkan huruf atau karakter lebih dari 3 dan di definisikan varchar (3)
dan keywords not null merupakan flagging atau tanda bahwa column tersebut tidak boleh kosong.
# Naming Convension table biasanya menggunakan plural atau jamak sebagai contoh students bukan student
# Naming Convension column harus snake_case sebagai contoh student_name
# CREATE TABLE students (
    id bignt PRIMARY  KEY AUTO_INCREMENT,
    name varchar(191) not null,
    grade varchar(191) not null
);

# Kalau values itu kalian bisa melakukan penambahan banyak sekaligus
# kalau value kalian hanya bisa menambahkan 1 record saja
INSERT INTO students (name, grade) VALUES 
('Nahrul Mukholidah', 'B'),
('Rocky', 'C');

# *Artinya kita memilih semua column untuk ditampilkan
SELECT * FROM students;

# WHERE keywords digunakan untuk sebagai filter
# dalam kasus ini kita ingin mencari students dengan grade C
SELECT * FROM students WHERE grade = 'C';

# * kita ganti menjadi nama column/field yang artinya kita hanya ingin menampilkan
# nama dari students
SELECT name FROM students;

# kalau kita tidak memasukkan keywords where maka kita akan melakukan update seluruh data
# jika kita menggunakan where atau kondisi kita akan merubah data yang ingin kita pilih saja
UPDATE students SET grade = 'D' WHERE grade = 'C';

# sama dengan update jika kita tidak menggunakan kondisi atau where maka kita akan menghapus
# semua data
# jika kita ingin menghapus data yang kita pilih maka gunakan where
DELETE FROM students where id = i;