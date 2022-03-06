<!-- Search function -->

<?php

    include 'connectDB.php';

    if(!empty($_POST['tabel'])){

        $tabel = $_POST['tabel'];

        if($tabel == "adrese")
        {
            echo "<h3> Adrese </h3>";
            $sql="select strada, numar, cod_postal, localitate, judet from adrese";
            $result = $conn->query($sql);

            echo '<table id="licee">
                        <tr>
                            <th>Strada</th>
                            <th>Numar</th>
                            <th>Cod Postal</th>
                            <th>Localitate</th>
                            <th>Judet</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
            echo "<tr>
                    <td>".$row['strada']."</td>
                    <td>".$row['numar']."</td>
                    <td>".$row['cod_postal']."</td>
                    <td>".$row['localitate']."</td>
                    <td>".$row['judet']."</td>
                </tr>";
            
            echo "</table>";
             
        }
        else if($tabel == "specializari")
        {
            echo "<h3> Specializari </h3>";
            $sql="select nume, profil, bilingv from specializari";
            $result = $conn->query($sql);
            
            echo '<table id="licee">
                        <tr>
                            <th>Nume</th>
                            <th>Profil</th>
                            <th>Bilingv</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
            echo "<tr>
                    <td>".$row['nume']."</td>
                    <td>".$row['profil']."</td>
                    <td>".$row['bilingv']."</td>
                </tr>";
            
            echo "</table>";
             
        }
        else if($tabel == "profesori")
        {
            echo "<h3> Profesori </h3>";
            $sql="select nume, prenume, email, telefon from profesori";
            $result = $conn->query($sql);
            
            echo '<table id="licee">
                        <tr>
                            <th>Nume</th>
                            <th>Prenume</th>
                            <th>Email</th>
                            <th>Telefon</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
            echo "<tr>
                    <td>".$row['nume']."</td>
                    <td>".$row['prenume']."</td>
                    <td>".$row['email']."</td>
                    <td>".$row['telefon']."</td>
                </tr>";
            
            echo "</table>";
             
        }
        else if($tabel == "catedre")
        {
            echo "<h3> Catedre </h3>";
            $sql="select denumire from catedre";
            $result = $conn->query($sql);
            
            echo '<table id="licee">
                        <tr>
                            <th>Denumire</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
            echo "<tr>
                    <td>".$row['denumire']."</td>
                </tr>";
            
            echo "</table>";
             
        }
        else if($tabel == "licee")
        {
            echo "<h3> Licee - date de contact </h3>";
            $sql="select tip, denumire, telefon, email, mediu from licee";

            $result = $conn->query($sql);

            echo '<table id="licee">
                        <tr>
                            <th>Tip</th>
                            <th>Denumire</th>
                            <th>Telefon</th>
                            <th>Email</th>
                            <th>Mediu</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                        <td>".$row['telefon']."</td>
                        <td>".$row['email']."</td>
                        <td>".$row['mediu']."</td>
                    </tr>";
            
            echo "</table>";
             
        }
        else echo '<p style="color: #049faa; font-weight:bold;">Selectati o varianta.<p>';
        
    }

    $conn->close();

?>