<!-- Search dupa nume -->
<!-- Jonctiune 1 -->

<?php

    include 'connectDB.php';
    // Afisam in functie de campurile completate
    if(!empty($_POST['nume_liceu']))
    {
        $nume_liceu = $_POST['nume_liceu'];
        
        $sql="select l.tip, l.denumire, a.strada, a.numar, a.cod_postal, a.localitate, a.judet, l.telefon, l.email 
        from licee l join adrese a on l.id = a.id_liceu 
        where l.denumire LIKE '".$nume_liceu."%'";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            echo '<table id="licee">
                        <tr>
                            <th>Tip</th>
                            <th>Denumire</th>
                            <th>Strada</th>
                            <th>Numar</th>
                            <th>Cod postal</th>
                            <th>Localitate</th>
                            <th>Judet</th>
                            <th>Telefon</th>
                            <th>Email</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                        <td>".$row['strada']."</td>
                        <td>".$row['numar']."</td>
                        <td>".$row['cod_postal']."</td>
                        <td>".$row['localitate']."</td>
                        <td>".$row['judet']."</td>
                        <td>".$row['telefon']."</td>
                        <td>".$row['email']."</td>
                    </tr>";
            
            echo "</table>";
            
        }
        else echo '<p style="color: #049faa; font-weight:bold;">Niciun rezultat.<p>';
    }

    $conn->close();

?>