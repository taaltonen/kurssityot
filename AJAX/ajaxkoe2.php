<?php  

$host ="magnesium"; 
$user = "a16taaltonen"; 
$pass = "tuon5opriT12"; 
$dbname = "ska16taaltonen"; 

try  //yritetään ottaa yhteys 
{  
    $yhteys = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass); //luo PDO-olion 
}  
catch(PDOException $e) // jos ei onnistu (poikkeus) 
{  
    echo $e->getMessage(); //antaa ilmoituksen siitä, missä virhe 
} 

$sql = "SELECT * FROM pelaajat"; 
$vastaus = $yhteys->prepare($sql); 
$vastaus->execute(); 
$vastaukset = $vastaus->fetchAll(PDO::FETCH_ASSOC); 

echo json_encode($vastaukset);
?> 
</body> 
</html>