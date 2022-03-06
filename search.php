 <!-- Afiseaza inregistrari in functie de filtrele alese de utilizator 
    Subiectul IV - Efectuarea interogarilor asupra bazei de date -->
<?php
    include 'header.php';
?>
    <br><hr>
    <h1 style="font-family: 'Vidaloka', serif;">Cauta licee</h1><hr><br>

    <p>Foloseşte filtrele de mai jos pentru a căuta licee.</p><hr><br>

    <!-- Jonctiuni -->
    <p>✦ Caută informatii despre un anumit liceu (adresă, număr de telefon, email).</p>
        
        <form method="POST" action="">

            <input type="text" name="nume_liceu" class="fields" placeholder="Caută aici liceul dorit...">
            <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
        
        </form>
        <br>

        <?php
            include 'functions/searchLiceeInfo.php';
        ?>

    <br>

    <p>✦ Caută informatii despre admitere.</p>
        
        <form method="POST" action="">

            <input type="text" name="nume_liceu2" class="fields" placeholder="Caută aici liceul dorit...">
            <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
        
        </form>
        <br>

        <?php
            include 'functions/searchLiceeAdmitere.php';
        ?>

    <br>

    <p>✦ Caută dupa județ</p>
        
        <form method="POST" action="" style="display: flex">
            <select name="judet" class="selectField">
                <option value="0" selected disabled hidden>-- Alege --</option>
                    <?php
                        include 'functions/searchJudet.php';
                    ?>

     <br>
    <p>✦ Caută dupa localitate</p>
    
    <form method="POST" action="" style="display: flex">
        <select name="localitate" class="selectField">
            <option value="0" selected disabled hidden>-- Alege --</option>
                <?php
                    include 'functions/searchLocalitate.php';
                ?>

    <!-- Reuniune -->
    <br>
    <p>✦ Afișează liceele care au o anumită specializare sau se află intr-un anumit județ.</p>
    <form method="POST" action="" style="display: flex">
        <select name="specializare" class="selectField">
            <option value="0" selected disabled hidden>-- Alege specializarea --</option>
                <?php
                    include 'functions/reuniune.php';
                ?>

    <!-- Diferenta -->
    <br>
    <p>✦ Afișează liceele dintr-o anumiă localitate care nu au deloc specializare de bilingv.</p>
    <form method="POST" action="" style="display: flex">
        <select name="localitate2" class="selectField">
            <option value="0" selected disabled hidden>-- Alege localitatea --</option>
                <?php
                    include 'functions/diferenta.php';
                ?>

    <!-- Selectie -->
    <br>
    <p>✦ Afișează liceele după tipul lor.</p>
    <form method="POST" action="" style="display: flex">
        <select name="tip" class="selectField">
            <option value="0" selected disabled hidden>-- Alege tipul --</option>
                <?php
                    include 'functions/selectie.php';
                ?>

    <!-- Proiectie -->
    <br>
    <p>✦ Afișează numărul de telefon al liceelor din județul ales.</p>
    <form method="POST" action="" style="display: flex">
        <select name="judet3" class="selectField">
            <option value="0" selected disabled hidden>-- Alege tipul --</option>
                <?php
                    include 'functions/proiectie.php';
                ?>

<?php
    include 'footer.php';
?>