<!DOCTYPE html>
<html lang="sv">
  <?php $json = base64_decode($_REQUEST['data']);
$data = json_decode($json); ?>
<head>
  <meta charset="utf-8">
  <link rel="shortcut icon" type="image/png" href="graphic.png"/>
  <title>Delad S&aring;ng: <?php echo utf8_decode($data->title)?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    /* Material-like App Styling */
    body {
      margin: 0;
      background: #F5F5F5;
      font-family: "Roboto", "Helvetica Neue", Arial, sans-serif;
      color: #222;
    }
    h1, h2 {
      color: #003D7A;
      font-weight: 500;
    }
    h1 {
      font-size: 2rem;
      margin-top: 2rem;
      text-align: center;
    }
    h2 {
      font-size: 1.5rem;
      margin-top: 1.5rem;
    }
    .card {
      background: white;
      border-radius: 18px;
      box-shadow: 0 2px 8px 0 rgba(0,61,122,0.10);
      max-width: 600px;
      margin: 2rem auto 0 auto;
      padding: 2rem;
      border: 1px solid #eee;
    }
    a {
      color: #003D7A;
      text-decoration: none;
      font-weight: 500;
      transition: color 0.2s;
    }
    a:hover, a:focus {
      color: #FECB00;
      text-decoration: underline;
    }
    .yellow-btn {
      display: inline-block;
      background: #FECB00;
      color: #003D7A;
      padding: 0.75em 1.5em;
      margin: 1em 0 0 0;
      border-radius: 999px;
      border: none;
      font-weight: bold;
      font-size: 1em;
      cursor: pointer;
      text-decoration: none;
      box-shadow: 0 1px 3px rgba(0,61,122,0.12);
      transition: background 0.2s, color 0.2s;
    }
    .yellow-btn:hover {
      background: #ffdc55;
      color: #003D7A;
    }
    p {
      line-height: 1.6;
      margin-top: 0.9em;
      margin-bottom: 0.9em;
    }
    @media (max-width: 700px) {
      .card {
        margin: 1em;
        padding: 1em;
      }
      h1 {
        font-size: 1.2rem;
      }
      h2 {
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>N&aring;gon har delat en s&aring;ng med dig</h1>
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
    ?>
    <a class="yellow-btn" href='sangbok://?sang=<?php echo $_REQUEST['data']; ?>'>Importera s&aring;ng till s&aring;ngboksappen</a>
    <p><a href="https://github.com/staffantan/Lagerbal/releases">H&auml;mta appen</a></p>
  </div>
</body>
</html>
