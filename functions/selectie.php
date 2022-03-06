<?php
    
    include 'connectDB.php';

    $sql="select distinct tip from licee";
    $result = $conn->query($sql);

    while($row = mysqli_fetch_array($result))
        echo '<option value="'.$row['tip'].'" style="margin-left: 20px;">'.$row['tip'].'</option>';

    echo '</select>
        <input type="submit" name="submit" value="Cauta" class="submit_btn" id="myButton">
    </form>
    <br>';

    if(!empty($_POST['tip']))
    {
        $sql= "select tip, denumire
        from licee
        where tip LIKE '".$_POST['tip']."%'";

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