<?php

namespace App;

use PDO;
use PDOException;

/**
 * Classe d'accès à la base de données
 */
class Database
{
    /**
     * variables de connection à la base de données
     *
     * @var string
     */
    private static $dbHost = "localhost";
    private static $dbName = "friends";
    private static $dbUsername = "root";
    private static $dbUserPassword = "";

    /**
     * variable de la connection par defaut
     */
    private static $connection = null;

    /**
     * fonction de connection à la base de données
     *
     * @return l'état de la connection
     */
    public static function connect()
    {
        if (self::$connection == null) {
            try {
                self::$connection = new PDO("mysql:host=" . self::$dbHost . ";dbname=" . self::$dbName, self::$dbUsername, self::$dbUserPassword);
            } catch (PDOException $e) {
                echo 'Message d\'erreur SQL :' . ($e->getMessage()) . '<br/>';
            }
        }

        return self::$connection;
    }

    public static function exec($sql)
    {
        try {
            $dbcreate = new PDO("mysql:host=" . self::$dbHost . "," . self::$dbUsername . "," . self::$dbUserPassword);
            $dbcreate->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $dbcreate->exec($sql);
        } catch (PDOException $e) {
            echo "Erreur :" . $e->getMessage();
        }
    }

    /**
     * deconnection de la base
     */
    public static function disconnect()
    {
        self::$connection = null;
    }
}
