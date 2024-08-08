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


CREATE TABLE classes (
    id bigint PRIMARY KEY AUTO_INCREMENT,
    name varchar(191) not null
);

CREATE TABLE teachers (
    id bigint PRIMARY KEY AUTO_INCREMENT,
    name varchar(191) not null
);

# column teacher_id pada table classes merupakan foreign key atau menghubung antara table,
# teachers dan classes dimana 1 kelas itu memiliki oleh 1 guru (One to One) atau
# 1 guru bisa punya banyak kelas (One to Many)
# cara mendefinisikan foreign key cukup dengan
# CONSTRAINT (column) FOREIGN KEY REFERENCE <table> (column) (option)

CREATE TABLE classes (
    id bigint PRIMARY KEY AUTO_INCREMENT,
    teacher_id bigint not null,
    name varcher(191) not null,

    CONSTRAINT
       FOREIGN KEY (teacher_id)
       REFERENCES teachers (id) ON DELETE CASCADE
);

INSERT INTO teacher (name) VALUE ('Roy');
# ketika kita mau menambahkan data relational kita perlu tahu dulu id dari parent table
# dalam kasus ini parent table adalah teacher,  dimana kita mau menambahkan kelas
# terhadap teacher dengan nama Roy dimana Roy memiliki 2 kelas yaitu sistem Informasi dan
# Teknik Informasi

INSERT INTO classes (teacher_id, name) VALUE
(1, 'Sistem informasi'),
(1, 'Teknik Informasi');


# dalam proses pengambilan data dari 2 atau lebih table kita perlu melakukan pemanggilan
# column dengan data <table>.<column>. jika data yang ingin kita tampilkan kita ganti nama,
# column gunakan AS sebagai alias atau pengganti sementara dari nama column
# dalam kasus ini kita mencoba mengambil data Guru berdasarkan column teacher_id yang ada di table classes dengan menggunakan
# inner join. dimana inner join membutuhkan foreign key sebagai kunci asing atau sebagai izin untuk mengakses table yang kita mau
# dalam hal ini table teachers yang akan kita ambil datanya.

SELECT
    classes.name as nama_kelas,
    teachers.name as nama_guru
FROM classes
INNER JOIN teachers on classes.teacher_id = teachers.id