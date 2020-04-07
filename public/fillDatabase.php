<?php

use App\Friend;
use App\Database;
use Faker\Factory;
use App\FriendManager;

require "../vendor/autoload.php";

if ($_SERVER['REQUEST_METHOD'] == "GET") {
    // Connection à la base de données
    $db = Database::connect();

    // On vide la table à chaque création de fausses de données
    $db->query('TRUNCATE TABLE liste');

    // On prépare le faker pour générer les fausses données
    $faker = Factory::create('fr_FR');

    $faker->addProvider(new \Metrakit\EddyMalou\EddyMalouProvider($faker));
    $faker->addProvider(new \Metrakit\EddyMalou\TextProvider($faker));

    // Boucle de création de 50 amis
    for ($i = 0; $i < 50; $i++) {

        // Création d'un nouvel objet ami que l'on remplit avec les fausses données
        $friend = new Friend();
        $friend->setLastName(strtoupper($faker->lastName))
            ->setFirstName($faker->firstName)
            ->setPostAddress($faker->address())
            ->setPhone($faker->phoneNumber())
            ->setQuote($faker->sentence);

        // On passe l'objet à un manager chargé de le stocker en base de données
        $manager = new FriendManager($db);
        $manager->insertFriend($friend);
    }
}
