<?php 
session_start();
require_once("FoursquareApi.php");
$date = date('Ymd');
// Set your client key and secret
$client_key = "LSWB35U115W2ZMTQJZYWBVAPBF55GKPVYFEVQMJYXMVCZMOR";
$client_secret = "E301YOUMH4PIQPDDOTCB3XZG0GIETI03V5SE5ZVPPM4TXO1J";
// Load the Foursquare API library

if($client_key=="" or $client_secret=="")
    {
echo 'Load client key and client secret from <a href="https://developer.foursquare.com/">foursquare</a>';
exit;
    }
$foursquare = new FoursquareApi($client_key,$client_secret);
$location = array_key_exists("location",$_GET) ? $_GET['location'] : "Cape Town";
?>
<!doctype html>
<html>
<head>
<title>Welcome to the Grid</title>
<link rel="stylesheet" type="text/css" href="gridcss.css">
</head>
<body>
<h1>The Grid, your portal to whats happening!</h1>
<p>Go on, search for facilities and venues near...
<form action="" method="GET">
        <input type="text" name="location" placeholder="Enter venue"/>
	<input type="submit" name = "search" value="Search!" />
</form>
<p>Searching for venues near <?php echo $location; ?></p>
<?php if(isset($_GET['search'])){?>
<a href="view.php">View images</a>
<?php 
$_SESSION['location'] = $location;
}?>
<hr />
<?php 
// Generate a latitude/longitude pair using Google Maps API
list($lat,$lng) = $foursquare->GeoLocate($location);
// Prepare parameters
$params = array("ll"=>"$lat,$lng");
// Perform a request to a public resource
$response = $foursquare->GetPublic("venues/search",$params);
$venues = json_decode($response);

 foreach($venues->response->venues as $venue): ?>
			
<div class="venue">
<?php 
if(isset($venue->categories['0']))
{
echo '<image class="icon" src="'.$venue->categories['0']->icon->prefix.'88.png"/>';
}else	echo '<image class="icon" src="https://foursquare.com/img/categories/building/default_88.png"/>';
echo '<a href="https://foursquare.com/v/'.$venue->id.'" target="_blank"/><b>';
echo $venue->name;
echo "</b></a><br/>";
if(isset($venue->categories['0']))
        {
	if(property_exists($venue->categories['0'],"name"))
	{
echo ' <i> '.$venue->categories['0']->name.'</i><br/>';
	}
	}
if(property_exists($venue->hereNow,"count"))
	{
echo ''.$venue->hereNow->count ." people currently here <br/> ";
	}
echo '<b><i>History</i></b> :'.$venue->stats->usersCount." visitors , ".$venue->stats->checkinsCount." visits ";
echo 'Latitude:' . $venue->location->lat . '<br>';
echo 'Longitude '. $venue->location->lng . '<br>'; 
echo 'Venue ID ' . $venue->id;
?>
</div>
<?php endforeach; 
foreach($venues->response->venues as $joint){
$url = 'https://api.foursquare.com/v2/venues/';
$url .= $joint->id;
$url .= '/photos?';
$url .= "client_id={$client_key}";
$url .= "&client_secret={$client_secret}";
$url .= "&v={$date}";
$json = file_get_contents($url);
$data = json_decode($json, TRUE);    
$images[] = $data;
$_SESSION['images'] = $images;
}
    

?>
	
</body>
</html>
