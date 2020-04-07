<?php

namespace App;

use PDO;

/**
 * Class FriendManager
 * Classe de gestion des amis
 */
class FriendManager
{

    /**
     * Variable de connection à la base de données
     *
     * @var [Database]
     */
    private $db;


    /**
     * Fonction constructeur, mise en place de la connexion
     *
     * @param [Database] $db
     */
    public function __construct($db)
    {
        $this->setDb($db);
    }

    /**
     * Instanciation d'une connexion à la base de données
     *
     * @param PDO $dbh
     * @return void
     */
    public function setDb(PDO $dbh)
    {
        $this->db = $dbh;
    }

    /**
     * Fonction de récupération de la liste des amis
     *
     * @return array
     */
    public function getAll()
    {
        $sql = "SELECT * FROM liste";

        $stmnt = $this->db->prepare($sql);
        $stmnt->execute();

        while ($row = $stmnt->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
        return $result;
    }

    /**
     * Fonction d'insertion d'un ami dans la base de données
     *
     * @param [object] $friend
     * @return void
     */
    public function insertFriend($friend)
    {
        $sql = "INSERT INTO liste (lastname, firstname, post_address, phone, quote) 
				VALUES (:lastname, :firstname, :post_address, :phone, :quote)
			";

        $stmnt = $this->db->prepare($sql);

        $lastName = $friend->getLastName();
        $firstName = $friend->getFirstName();
        $postAddress = $friend->getpostAddress();
        $phone = $friend->getphone();
        $quote = $friend->getquote();

        $stmnt->bindParam(':lastname', $lastName);
        $stmnt->bindParam(':firstname', $firstName);
        $stmnt->bindParam(':post_address', $postAddress);
        $stmnt->bindParam(':phone', $phone);
        $stmnt->bindParam(':quote', $quote);

        $stmnt->execute();
    }

    /**
     * Fonction de supression d'un Ami
     *
     * @param integer $id
     * @return void
     */
    public function remove($id)
    {
        $sql = "DELETE FROM liste WHERE id = :id";

        $stmnt = $this->db->prepare($sql);

        $stmnt->bindParam(':id', $id);

        $stmnt->execute();
    }
}
