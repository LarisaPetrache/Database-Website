<!-- Meniu -->
<?php
    
    function meniu() {
        $meniu = array(
            '1' => array ('Admitere', 'index.php'),
            '2' => array ('Informații suplimentare', 'informatii_suplimentare.php'),
            '3' => array ('Caută licee', 'search.php')
            // '4' => array ('Calendar', 'events.php')
        );	
        
        $nr_meniuri = count($meniu);	
            for ($i=1; $i<=$nr_meniuri; $i++)
                echo "<a style='float: center;
                font-size: 23px;
                color: rgb(169, 165, 192);
                text-decoration: none;'
                href='".$meniu[$i][1]."'>&emsp;&emsp;".$meniu[$i][0]."</a>";
    }
?>