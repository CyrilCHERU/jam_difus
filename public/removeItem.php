<?php

use App\Database;
use App\FriendManager;

require "../vendor/autoload.php";

if ($_SERVER['REQUEST_METHOD'] == "GET") {
    $id = $_GET["idClicked"];

    $db = Database::connect();

    $manager = new FriendManager($db);
    $friends = $manager->remove($id);
}

echo "L'ami a été supprimé !";
