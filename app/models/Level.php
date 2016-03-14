<?php

class Level extends SmartLoquent {

    /**
     * The database collection used by the model.
     *
     * @var string
     */
    protected $collection = 'levels';
    protected $hidden = array('_id');
    protected $guarded = array('key');
    public $timestamps = true;

    public function user() {
        return $this->belongsTo('User');
    }

}
