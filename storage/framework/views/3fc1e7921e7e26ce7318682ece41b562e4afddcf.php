<h1>Create Data Laptop</h1>

<form action="/inputs" method="POST">
    <?php echo csrf_field(); ?>
   Judul    : <input type="text" name="namaBarang"><br>
   Nama     : <input type="text" name="namaPembeli"><br>
   Deskripsi : <input type="longtext" name="jumlah"><br>
   Gambar : <input type="text" name="harga"><br>

    <input type="submit"   value="Upload">
</form><?php /**PATH C:\Users\Wahyu Wastuguna\Downloads\DwiUtamaFlutter\Laravel\hotel\resources\views/inputs/create.blade.php ENDPATH**/ ?>