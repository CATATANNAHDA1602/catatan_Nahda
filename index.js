var object = "NODE JS"

console.log(object);
var name = "Catatan Nahda";
console.log (name);

//Ini adalah declaration variable dengan var dan init dengan value "John"
/*
Halo this is a comment multiline 
ini adalah komentar dengan banyak baris
*/

name = "Nahda"
console.log (name);

let data = "this is a simple string";
console.log(name)

data = "Nahda"
console.log(data);

let empty
console.log(empty);

const pi = 3.14 // variable dengan tipe data float (decimal)
const area = 10 // variable dengan tipe data integer (bilangan bulat)
const description = " ini adalah deskripsi variable dengan tipe data string tring"
console.log(typeof area); //=> " typeof untuk memastikan mengecek tipe apakah dari variable area
console.log (typeof description);
const sudahIstirahat = true; // => Variable dengan tipe data boolean (true/false)
console.log(typeof sudahIstirahat);

const profile ={
    name: "Nahda", // => Tipe data dari property name adalah string
    age:21, // => Tipe data dari age adalah number
    address: "Lampung", // => Tipe data dari address adalah string
    isMarried: false, // => Tipe data dari isMarried adalah false
    school: {
        Name: 'IAIN',
        year: 2024
    }
};

console.log(profile);
console.log(profile.name); // => Akses property name di dalam object profile
console.log(profile.school.name); // => Akses property name di dalam object profile
console.log(typeof profile)

// Array
const sampleArray =[
    70,
     "A",
      true,
       { name:"Nahda"} // => Array of Object
    ] 

 console.log(typeof sampleArray);

 // 70 itu merupakan element dari array  yang berlokasi di index ke 0
 
 const scores = [70, 80, 90, 95]; 

 /** 
  * setiap data di dalam Array memiliki index sebagai urutan atau lokasi data tersebut berada
  * 
  * dan Array itu sellau dimulai dengan index 0 yang artinya data pertama dalam array,
  * 
  * dalam contoh di atas index ke 0 adalah 70
  * 
  * 
  * 
*/ 
 console.log(scores[0]); // Akses Array menggunakan index

 scores[0] =50; 
    // => merubah isi elemen dari array index ke 0

    console.log(scores[0]); // output: 50

    const fruits =["apple", "banana", "kiwi"] ;

    fruits.push("orange");

    console.log(fruits); // => output apple, banana, kiwi, orange

    fruits.unshift("mango"); // => menambahkan element di awal array

    console.log(fruits); // => output mango, apple, banana, kiwi, orange

    fruits.pop(); // => output mango, apple, banana, kiwi

    fruits.shift(); // => menghapus element di awal array

    console.log(fruits); // => output apple, banana, kiwi

    console.log(fruits.length); // => memastikan panjang dari array

    const moreFruits = ["pineapple", "grape"];

    const allFruits = fruits.concat(moreFruits); // => menggabungkan 2 array menjadi satu

    console.log(allFruits); // => ouput apple, banana, kiwi, orange, grape

    

    /** 
     * let i = 0 adalah definisi dari index array yang mau kita mulai perulangannya. jika i ini isinya 0 
     * maka array akan di akses dari index ke 0.
     * 
     * i, foods.length adalah condition, yang berarti variable i itu tidak boleh kurang dari,
     * foodz.length atau dalam kasus ini index itu tidak boleh melebihi panjang array
     * 
     * i++ adalah post statement yang berarti, ketika condition i , foods.length itu terpenuhi,
     * maka nilai i akan ditambah 1.
     * 
     * ++ merupakan increment (atau menambah 1)
     * -- merupakan decrement (atau mengurang 1)
     * 
     * 
     * */
     const foods = ["noodle", "egg", "rice"];
    for (let i = 0; i < foods.length; i++) {
        console.log(foods[i]);   
    }
        console.log("Perulangan berhasil");

        const matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]

        ];

        console.log(matrix[1][2]); // => output [4, 5, 6]

        const matrixs = [
            [
                [1, 2, 3],
                [4, 5, 6],
            ],
            [
                [7, 8, 9],
                [10, 11, 12]
    
            ],
        ]
        

        console.log(matrix[1][2]); // => output 5

        for (let i = 0; i < matrix.length; i++) {
            for (let j = 0; j < matrix[i].length; j++) {
                console.log(matrix[i][j]);
            }
        
         }


         let n=5

         // segitiga kanan
         for (let i = 0; i < 5; i++) {
            let str = "*  "

            console.log(str.repeat(i));
         }

         //segitiga kiri
         let x = 10
         for (let i = 0; i < x; i++) {
            let str = "* "
            let space = " "
            console.log(space.repeat((x - i)) + str.repeat(i));

         }

         
         
          
         /** 
          * ketika variable dalam kondisi if () bernilai boolean cukup gunakan nama variable jika ingin,
          * memperiksa bahwa itu benar atau true. jika ingin memperiksa jika itu salah cukup gunakan !namaVariable
          * yang artinya ! melambangkan negativ value dalam kasus boolean negativ adalah false.
            */
         // const pertama 
         const isLoggedin = true;

         if (isLoggedin) { // => untuk tipe data boolean kita hanya cukup masukan kondisi true atau false
            console.log("Hallo Admin");
         } else {
            console.log ("Harap Login");
         }

         const baju = "putih";

         if (baju == "putih") { // => kalau tipe datanya  bukan boolen kita harus memakai operasi == atau ==/
            console.log("Baju bersih");
         } else if (baju == "Merah") {
            console.log("Baju warna merah");
         } else {
            console.log("Baju Kotor");

         }

         // Tugas Mandiri
         function segitiga1(baris){
            let pola = '';

            for(let i = 1; i <= baris; i++){
               for(let j = 1; j <= i; j++){
                  pola += '*';

               }

               return pola;

            }

            console.log(segitiga1(5));

         }

       

         

       
         

            





         
         