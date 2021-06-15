<h1 align="center">List Upload </h1>
<table border="2" cellspacing="" align="center" >
    <thead>
        <tr>
            <th>Judul</th>
            <th>Nama</th>
            <th>Deskripsi</th>
            <th>Gambar</th>
        </tr>
    </thead>
    <tbody>
            <!-- perulangan untuk seluruh item yang ada di database syntax ala blade-->
            <?php $__currentLoopData = $inputs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $input): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($input->namaBarang); ?></td>
                <td><?php echo e($input->namaPembeli); ?></td>
                <td><?php echo e($input->jumlah); ?></td>
                <td><?php echo e($input->harga); ?></td>
                <td>
                    <a href="/inputs/<?php echo e($input->id); ?>/edit">Edit</a>
                    <form action="/inputs/<?php echo e($input->id); ?>" method="post">
                        <?php echo method_field('DELETE'); ?>;
                        <?php echo csrf_field(); ?>
                        <input type="submit" value="Delete">
                    </form>
                    
                </td>
              
 
            </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           
    </tbody>
<a href="/inputs/create"><b>Create</a>

</table><?php /**PATH C:\Users\Wahyu Wastuguna\pemmobile\Project\Laravel\inputAPI\resources\views/inputs/index.blade.php ENDPATH**/ ?>