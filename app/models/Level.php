<?php

class Level extends SmartLoquent {

    /**
     * The database collection used by the model.
     *
     * @var string
     */
    protected $collection = 'levels';
    protected $hidden = array('_id', 'deleted_at', 'created_at', 'updated_at');
    protected $guarded = array('key');
    public $timestamps = true;

    public function user() {
        return $this->belongsTo('User');
    }

}
