<?php
include ('config.php');
$username = $_POST['username'];
$password = $_POST['password'];


$querry = mysqli_query($koneksi,"SELECT * FROM tb_admin WHERE username_a = '$username' AND pw_a = '$password'");
if(mysqli_num_rows($querry)==1){
    // echo "Login Berhasil";
    header('Location:../app');
}
else if($username == '' || $password == ''){
    // echo "Login Gagal";
    header('Location:../index.php?error=2');
}
else{

    header('Location:../index.php?error=1');
    // echo "Login Gagal";
}

?> 