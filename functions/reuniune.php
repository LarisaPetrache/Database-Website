<?php
    
    include 'connectDB.php';

    $sql="select distinct nume from specializari";
    $result = $conn->query($sql);

    while($row = mysqli_fetch_array($result))
        echo "<option value=".$row['nume']." style='margin-left: 20px;'>".$row['nume']."</option>";

    echo '</select>
    
    <select name="judet2" class="selectField" style="margin-left: 20px;">
            <option value="0" selected disabled hidden>-- Alege județ --</option>';

        $sql="select distinct judet from adrese";
        $result = $conn->query($sql);

        while($row = mysqli_fetch_array($result))
            echo "<option value=".$row['judet']." style='margin-left: 20px;'>".$row['judet']."</option>";

    echo '</select>
            <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
        </form>
    <br>';

    if(!empty($_POST['specializare']) && !empty($_POST['judet2']))
    {
        $sql="select l.tip, l.denumire
        from licee l, specializari_licee a, specializari s
        where l.id = a.id_liceu and a.id_specializare = s.id and lower(nume) = '".$_POST['specializare']."'
        UNION select l.tip, l.denumire
            from licee l, adrese a
        where l.id = a.id_liceu and lower(a.judet) = '".$_POST['judet2']."'";

        $result = $conn->query($sql);

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

    $conn->close();
?>