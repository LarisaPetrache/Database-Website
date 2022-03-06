<?php
    
    include 'connectDB.php';

    $sql="select distinct judet from adrese";
    $result = $conn->query($sql);

    while($row = mysqli_fetch_array($result))
        echo "<option value=".$row['judet']." style='margin-left: 20px;'>".$row['judet']."</option>";

    echo '</select>
        <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
    </form>
    <br>';

    if(!empty($_POST['judet3']))
    {
        $sql= "select l.tip, l.denumire, l.telefon
        from licee l join adrese a on l.id = a.id_liceu
        where a.judet LIKE '".$_POST['judet3']."%'";

        $result = $conn->query($sql);

        echo '<table id="licee">
                    <tr>
                        <th>Tip</th>
                        <th>Denumire</th>
                        <th>Telefon</th>
                    </tr>';
        while($row = mysqli_fetch_array($result))
            echo "<tr>
                    <td>".$row['tip']."</td>
                    <td>".$row['denumire']."</td>
                    <td>".$row['telefon']."</td>
                </tr>";
        
        echo "</table>";
    }

    $conn->close();
?>