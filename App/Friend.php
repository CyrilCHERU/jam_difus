<?php

namespace App;

/**
 * Friend class, determine Friend Object
 * 
 */
class Friend
{
    /**
     * Lastname
     *
     * @var string
     */
    private $lastName;

    /**
     * Firstname
     *
     * @var string
     */
    private $firstName;

    /**
     * Address
     *
     * @var string
     */
    private $postAddress;

    /**
     * Phone number
     *
     * @var string
     */
    private $phone;

    /**
     * Prefered quote of Eddy Malou
     *
     * @var string
     */
    private $quote;

    /**
     * Get the value of lastName
     */
    public function getLastName()
    {
        return $this->lastName;
    }

    /**
     * Set the value of lastName
     *
     * @return  self
     */
    public function setLastName($lastName)
    {
        $this->lastName = $lastName;

        return $this;
    }

    /**
     * Get the value of firstName
     */
    public function getFirstName()
    {
        return $this->firstName;
    }

    /**
     * Set the value of firstName
     *
     * @return  self
     */
    public function setFirstName($firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * Get the value of address
     */
    public function getPostAddress()
    {
        return $this->postAddress;
    }

    /**
     * Set the value of address
     *
     * @return  self
     */
    public function setPostAddress($postAddress)
    {
        $this->postAddress = $postAddress;

        return $this;
    }

    /**
     * Get the value of phone
     */
    public function getPhone()
    {
        return $this->phone;
    }

    /**
     * Set the value of phone
     *
     * @return  self
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get the value of quote
     */
    public function getQuote()
    {
        return $this->quote;
    }

    /**
     * Set the value of quote
     *
     * @return  self
     */
    public function setQuote($quote)
    {
        $this->quote = $quote;

        return $this;
    }
}
