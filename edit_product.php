<?php
    $product_id = intval($_GET['product_id'] ?? 0);

    if ($product_id <= 0) {
        $_SESSION['flash']['message']['type'] = 'danger';
        $_SESSION['flash']['message']['text'] = "Грешен идентификатор на продукт!";
        header('Location: ./index.php?page=products');
        exit;
    }

    $query = "SELECT * FROM products WHERE id = :id";
    $stmt = $pdo->prepare($query);
    $stmt->execute([':id' => $product_id]);
    $product = $stmt->fetch();

    if (!$product) {
        $_SESSION['flash']['message']['type'] = 'danger';
        $_SESSION['flash']['message']['text'] = "Продуктът не беше намерен!";
        header('Location: ./index.php?page=products');
        exit;
    }
?>

<form class="border rounded p-4 w-50 mx-auto" method="POST" action="./handlers/handle_edit_product.php" enctype="multipart/form-data">
    <h3 class="text-center">Редактирай продукт</h3>
    
    <div class="mb-3">
        <label for="name" class="form-label">Име на продукта:</label>
        <input type="text" class="form-control" id="name" name="name" value="<?php echo htmlspecialchars($product['name']) ?? '' ?>" required>
    </div>

    <div class="mb-3">
        <label for="description" class="form-label">Описание на продукта:</label>
        <textarea class="form-control" id="description" name="description" rows="4" required><?php echo htmlspecialchars($product['description']) ?? '' ?></textarea>
    </div>

    <div class="mb-3">
        <label for="price" class="form-label">Цена:</label>
        <input type="number" step="0.01" class="form-control" id="price" name="price" value="<?php echo htmlspecialchars($product['price']) ?? '' ?>" required>
    </div>

    <div class="mb-3">
        <label for="image" class="form-label">Изображение:</label>
        <input type="file" class="form-control" id="image" name="image" accept="image/*">
    </div>

    <div class="mb-3 text-center">
        <img src="./uploads/<?php echo htmlspecialchars($product['image']) ?>" alt="<?php echo htmlspecialchars($product['name']) ?>" class="img-thumbnail" />
    </div>

    <input type="hidden" name="product_id" value="<?php echo $product['id'] ?? 0 ?>">

    <div class="d-flex justify-content-between">
        <button type="submit" class="btn btn-success">Редактирай</button>
        <a href="./handlers/handle_delete_product.php?product_id=<?php echo $product['id'] ?>" class="btn btn-danger" onclick="return confirm('Сигурни ли сте, че искате да изтриете този продукт?');">Изтрий</a>
    </div>
</form>
