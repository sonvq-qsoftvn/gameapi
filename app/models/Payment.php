<?php

class Payment extends SmartLoquent {

    protected $collection = 'payments';
    protected $guarded = array('key');
    protected $hidden = array('_id', 'updated_at', 'created_at');
    
    
    protected static $createRules = array(
        'payload' => 'required|unique:payments,payload',
        'payment_date' => 'required|date',
        'value' => 'required',
    );
    
    public static function getCreateRules() {
        return self::$createRules;         
    }

}
