<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sidebar Menu with Dropdown</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
    
</style>
</head>
<body>

<i class="fas fa-bars menu-icon" onclick="toggleMenu()"></i>

<div class="sidebar">
    <i class="fas fa-bars sidebar-menu-icon" onclick="toggleMenu()"></i>
    <a href="#"><i class="fas fa-home"></i> Home</a>
    <a href="#">About</a>
    <div class="dropdown">
        <a href="#">Services <i class="fas fa-chevron-down dropdown-icon"></i></a>
        <div class="dropdown-content">
            <a href="#">Service 1</a>
            <a href="#">Service 2</a>
            <a href="#">Service 3</a>
        </div>
    </div>
    <div class="dropdown">
        <a href="#">Contact <i class="fas fa-chevron-down dropdown-icon"></i></a>
        <div class="dropdown-content">
            <a href="#">Contact Us</a>
            <a href="#">Support</a>
        </div>
    </div>
</div>

<div class="content">
    <h2>Main Content</h2>
    <p>This is where your main content goes.</p>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
<script>
    
</script>

</body>
</html>
