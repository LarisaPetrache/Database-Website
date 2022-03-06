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

    if(!empty($_POST['localitate']))
    {
        $sql="select l.tip, l.denumire, l.telefon, l.email, a.localitate 
        from licee l JOIN adrese a on l.id = a.id_liceu 
        where a.localitate LIKE '".$_POST['localitate']."%'";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            echo '<table id="licee">
                        <tr>
                            <th>Tip</th>
                            <th>Denumire</th>
                            <th>Telefon</th>
                            <th>Email</th>
                            <th>Localitate</th>
                        </tr>';
            while($row = mysqli_fetch_array($result))
                echo "<tr>
                        <td>".$row['tip']."</td>
                        <td>".$row['denumire']."</td>
                        <td>".$row['telefon']."</td>
                        <td>".$row['email']."</td>
                        <td>".$row['localitate']."</td>
                    </tr>";
            
            echo "</table>";
        }
    }

    $conn->close();
?>