<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informatii licee</title>
    <link rel="stylesheet" href="style.css">
    <!-- Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <!-- Font2 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
    <!-- Font3 -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Vidaloka&display=swap" rel="stylesheet">
</head>
<body>

    <?php
        include 'functions/connectDB.php';
    ?>

    <div class="menu">
        <img src="images/icon1.png" alt="school" id="icon-school" style="padding-right: 20px;">
        <h1>Informații licee</h1>
    </div>

    <div class="menu2">
        <?php
            include 'functions/meniu.php';
            meniu();
        ?>
    </div>

    <div class="container">
