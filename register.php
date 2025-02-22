<?php

?>

<?php if (isset($flash['error'])): ?>
    <div class="alert alert-danger">
        <?php echo $flash['error']; ?>
    </div>
<?php endif; ?>

<form class="border rounded p-4 w-50 mx-auto" method="POST" action="./handlers/handle_register.php">
    <h3 class="text-center">Регистрация</h3>
    
    <div class="mb-3">
        <label for="names" class="form-label">Имена</label>
        <input type="text" class="form-control" id="names" name="names" value="<?php echo $flash['data']['names'] ?? ''; ?>">
    </div>

    <div class="mb-3">
        <label for="username" class="form-label">Потребителско име</label>
        <input type="text" class="form-control" id="username" name="username" value="<?php echo $flash['data']['username'] ?? ''; ?>">
    </div>

    <div class="mb-3">
        <label for="password" class="form-label">Парола</label>
        <input type="password" class="form-control" id="password" name="password">
    </div>

    <div class="mb-3">
        <label for="repeat_password" class="form-label">Повтори парола</label>
        <input type="password" class="form-control" id="repeat_password" name="repeat_password">
    </div>

    <button type="submit" class="btn btn-primary mx-auto">Регистрирай се</button>
</form>
