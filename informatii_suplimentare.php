<!-- Afiseaza toate tabelele din baza de date -->
<?php
    include 'header.php';
?>
    <br><hr>
    <h1 style="font-family: 'Vidaloka', serif;">Informații suplimentare</h1><hr><br>

    <p>Selectează o varianta.</p>
        
    <form method="POST" action="">
        <select name="tabel" class="selectField">
            <option value="0" selected disabled hidden>-- Alege --</option>
            <option value="licee">Licee</option>
            <option value="specializari">Specializari</option>
            <option value="profesori">Profesori</option>
            <option value="adrese">Adrese</option>
            <option value="catedre">Catedre</option>
        </select>

        <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
    </form>
    <br>

    <?php
        include 'functions/showTables.php';
        include 'footer.php';
    ?>