<!DOCTYPE html>
<html>

<?php

$json = base64_decode($_REQUEST['data']);
$data = json_decode($json);

?>

<head>
  <link rel="shortcut icon" type="image/png" href="graphic.png"/>
  <title>Delad S&aring;ng: <?php echo utf8_decode($data->title)?></title>
</head>

<body>
<h1>N&aring;gon har delat en s&aring;ng med dig</h1>
<div>

<?php
if($data->title){
	echo "<h2>".utf8_decode($data->title)."</h2>";
	echo "<p>".utf8_decode($data->text)."</p>";
	echo "<p>".utf8_decode($data->melody)."</p>";
	echo "<p>".nl2br(utf8_decode($data->lyrics))."</p>";
	echo "<p>".nl2br(utf8_decode($data->about))."</p>";
}

if($data->Title){
	echo "<h2>".utf8_decode($data->Title)."</h2>";
	echo "<p>".utf8_decode($data->Text)."</p>";
	echo "<p>".utf8_decode($data->Melody)."</p>";
	echo "<p>".nl2br(utf8_decode($data->Lyrics))."</p>";
	echo "<p>".nl2br(utf8_decode($data->About))."</p>";
}



echo "<a href='sangbok://?sang=".$_REQUEST['data']."'>importera s&aring;ng till s&aring;ngboksappen</a>";
?>

<img src="graphic.png" style="display:inline;" />
<p><a href="https://play.google.com/store/apps/details?id=se.ahlvik.sangbok2">h&auml;mta appen fr&aring;n google play</a></p>
</div>
</body>
</html>