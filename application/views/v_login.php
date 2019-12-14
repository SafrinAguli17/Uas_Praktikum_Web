<html>
<head>
<title>Login Perpustakaan</title>
<link rel="stylesheet" type="text/css" href="assets/css/Login.css">
</head>
<body>
<form class="form-signin" action="<?php echo base_url().'index.php/login/auth'?>" method="post">

<div class="tampilan">
 <div class="kepala">
<div class="logo"></div>
<h2 class="judul">Login Perpustakaan</h2>
</div>
<div class="artikel">
<div class="kotak">
<p><input type="text" name="username" value="" placeholder="Masukan Username Anda" required autofocus></p>
<p><input type="password" name="password" value="" placeholder="Masukan Password Anda" required></p>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="remember-me"> Ingatkan saya
              </label>
<p class="submit"><input type="submit" name="commit" value="Login"></p>
</form>
</div>
</div>

 </div>
</div>
</body>
</html> 