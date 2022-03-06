<!-- Search dupa nume -->
<!-- Jonctiune 2 -->

<?php

    include 'connectDB.php';
    
    if(!empty($_POST['nume_liceu2']))
    {
        $sql="select l.tip, l.denumire, a.localitate, a.judet, sl.nr_locuri, s.profil, s.nume, s.bilingv, sl.medie_admitere 
        from adrese a join licee l on a.id_liceu = l.id join specializari_licee sl on l.id = sl.id_liceu join specializari s on s.id = sl.id_specializare
        where l.denumire LIKE '".$_POST['nume_liceu2']."%'";

        $result = $conn->query($sql);

        if($result->num_rows > 0)
        {
            echo '<table id="licee">
                    <tr>
                        <th>Tip</th>
                        <th>Denumire</th>
                        <th>Localitate</th>
                        <th>Judet</th>
                        <th>Nr. Locuri</th>
                        <th>Profil</th>
                        <th>Specializare</th>
                        <th>Bilingv</th>
                        <th>Medie Admitere</th>
                    </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                        <td>".$row['localitate']."</td>
                        <td>".$row['judet']."</td>
                        <td>".$row['nr_locuri']."</td>
                        <td>".$row['profil']."</td>
                        <td>".$row['nume']."</td>
                        <td>".$row['bilingv']."</td>
                        <td>".$row['medie_admitere']."</td>
                    </tr>";
            
            echo "</table>";
        }
        else echo '<p style="color: #049faa; font-weight:bold;">Niciun rezultat.<p>';
    }

    $conn->close();

?>