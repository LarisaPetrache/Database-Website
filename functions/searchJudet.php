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

    if(!empty($_POST['judet']))
    {
        $sql="select l.tip, l.denumire, l.telefon, l.email, a.judet 
        from licee l JOIN adrese a on l.id = a.id_liceu 
        where a.judet LIKE '".$_POST['judet']."'";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            echo '<table id="licee">
                        <tr>
                            <th>Tip</th>
                            <th>Denumire</th>
                            <th>Telefon</th>
                            <th>Email</th>
                            <th>Judet</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                        <td>".$row['telefon']."</td>
                        <td>".$row['email']."</td>
                        <td>".$row['judet']."</td>
                    </tr>";
            
            echo "</table>";
        }
    }

    $conn->close();
?>