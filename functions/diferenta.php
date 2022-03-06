<?php
    
    include 'connectDB.php';

    $sql="select distinct localitate from adrese";
    $result = $conn->query($sql);

    while($row = mysqli_fetch_array($result))
        echo '<option value="'.$row['localitate'].'" style="margin-left: 20px;">'.$row['localitate'].'</option>';

    echo '</select>
        <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
    </form>
    <br>';

    if(!empty($_POST['localitate2']))
    {
        $sql=" select  l.tip, l.denumire
        from licee l, adrese a
        where l.id = a.id_liceu and lower(a.localitate) LIKE '".$_POST['localitate2']."'
        and l.denumire NOT IN
        (select l.denumire
            from licee l, specializari_licee a, specializari s
            where l.id = a.id_liceu and a.id_specializare = s.id and s.bilingv is not null
            group by l.denumire
        );";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            echo '<table id="licee">
                        <tr>
                            <th>Tip</th>
                            <th>Denumire</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                    </tr>";
            
            echo "</table>";
        }
        else echo '<p style="color: #049faa; font-weight:bold;">Nu există licee fara specializare de bilingv în '.$_POST['localitate2'].'.<p>';
    }

    $conn->close();
?>