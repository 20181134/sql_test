<html>
    <head>
        <meta charset="utf-8">
        <title>追加</title>
</head>
<body>
    <?php
    $pdo = new PDO('mysql:host=localhost;dbname=test;character=utf8', 'admin', 'password');
    $sql=$pdo->prepare('insert into contents values(null, "Hello", 1)');
    if ($sql->execute()) {
        echo 'データを追加';
    } else {
        print_r($sql -> errorInfo());
    }
    ?>
    </body>
    </html>