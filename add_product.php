<?php
    
?>

<form class="border rounded p-4 w-50 mx-auto" method="POST" action="./handlers/handle_add_product.php" enctype="multipart/form-data">
    <h3 class="text-center">Добави продукт</h3>

    <div class="mb-3">
        <label for="name" class="form-label">Име на продукт:</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    
    <div class="mb-3">
        <label for="description" class="form-label">Описание на продукт:</label>
        <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
    </div>
    
    <div class="mb-3">
        <label for="price" class="form-label">Цена:</label>
        <input type="number" step="0.01" class="form-control" id="price" name="price" required>
    </div>
    
    <div class="mb-3">
        <label for="image" class="form-label">Изображение:</label>
        <input type="file" class="form-control" id="image" name="image" accept="image/*" required>
    </div>
    
    <button type="submit" class="btn btn-success mx-auto">Добави</button>
</form>

<?php

    if (isset($_SESSION['flash'])) {
        echo '<div class="alert alert-' . $_SESSION['flash']['type'] . '">' . $_SESSION['flash']['message'] . '</div>';
        unset($_SESSION['flash']);
    }
?>
