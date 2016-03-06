<?php
session_start();
$image_details = $_SESSION['images'];
//print_r($image_details);

echo "<h2>Viewing Photos from " . $_SESSION['location'] . "</h2><hr>";

foreach($image_details as $view){
    foreach ($view['response']['photos']['items'] as $picture) {
    //if($picture['source']['name']== 'Instagram'){
    $img = base64_encode($picture['user']['photo']['prefix'] . 'width160' . $picture['user']['photo']['suffix']);
    $fname = $picture['user']['firstName'];
    $imgName = $picture['source']['name'];
    $imgUrl =  $picture['source']['url'];
    
    require_once 'dbase_connect.php';
    $sql = 'insert into images (Name,Image,Url)
            values (? , ? , ?)';

    $stmt = $conn->stmt_init();
    $stmt->prepare($sql);
    $stmt->bind_param('sss',$imgName,$img,$imgUrl);
    $stmt->execute();
    $stmt->close();
   
}}
?>
<h2>View Images</h2>
<?php
$end=5;

if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; }; 
$start = ($page-1) * $end; 
$sql = "SELECT Image, Url FROM images LIMIT $start, $end"; 
$result = $conn->query ($sql); //run the query
?> 
<table>
<tr><td>Image</td><td>Image Url</td></tr>
<form>
    <select name="page">
        <?php for($i=1; ($i<($end-1) && $i!=0); $i++){ ?>
        <option><?= $i;?></option>
        <?php } ?>
    </select>
    <input type="submit" value="Select Page to Display">
</form>
<?php 
while ($row = $result->fetch_assoc()) { 
    $img = base64_decode($row['Image']);
    ?> 
            <tr>
                <td><img src="<?=$img; ?>" height="150" width="140" /></td>
            <td><?php echo $row['Url']; ?></td>            
            </tr>
<?php 
}; 
?> 
</table>