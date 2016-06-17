<?php

class WheelController extends BaseController {

    public $restful = true;
    protected $arrayFirstWheel;
    protected $arraySecondWheel;
    protected $arrayThirdWheel;


    public function __construct() {
        $this->arrayFirstWheel = [
            '1500 stars',
            '1500 stars',
            '1500 stars',
            
            '2000 stars',
            '2000 stars',
            '2000 stars',
            
            '2500 stars',
            '2500 stars',
            
            '3000 stars',
            '3000 stars',
            
            '5000 stars',
            '5000 stars',
            
            'Mini game',
            'Mini game',
            
            'up',
            'up',
            
            '2 more turns',
            '2 more turns',
            
            '3 more turns',
            '3 more turns',
            
            '50 exp',
            '50 exp',
            
            '100 exp',
            '100 exp',
            '100 exp',
            
            '200 exp',
            '200 exp',

            'Dead slot',
            'Dead slot',
            'Dead slot',
            
            'Big Gift',
            'Big Gift'
        ];
        
        
        $this->arraySecondWheel = [
            '15000 stars',
            '20000 stars',
            '25000 stars',
            '30000 stars',
            '50000 stars',            
            'Mini Game',
            'Mini Game',
            'up',
            '2 more turns',            
            '3 more turns',
            '500 exp',
            '1000 exp',
            '2000 exp',
            'Dead slot',
            'Dead slot',
            'Awesome Gift'
        ];
        
        $this->arrayThirdWheel = [
            '150000 stars',
            '200000 stars',
            '250000 stars',
            'Amazing Gift',
            'Skull',
            '10000 exp',
            '20000 exp',
            'Jack spot'                       
        ];
    }
    public function start() {
        $input = Input::all();
        
        $paid = Input::has('paid')? $input['paid'] : 4;
        
        if ($paid == 1) {
            // Do the first round
            $arrayResult = array();
            $arrayResult['first_round'] = $arrayResult['second_round'] = $arrayResult['third_round'] = null;

            $secondResult = array_rand($this->arraySecondWheel, 1);    
            
            $arrayResult['second_round'] = $this->arraySecondWheel[$secondResult];
            
            if ($arrayResult['second_round'] == 'up') {
                $thirdResult = array_rand($this->arrayThirdWheel, 1);    
                $arrayResult['third_round'] = $this->arrayThirdWheel[$thirdResult];
            }

            return ApiResponse::json($arrayResult);
        } else if ($paid == 2) {
            // Do the first round
            $arrayResult = array();
            $arrayResult['first_round'] = $arrayResult['second_round'] = $arrayResult['third_round'] = null;            

            $thirdResult = array_rand($this->arrayThirdWheel, 1);    
            $arrayResult['third_round'] = $this->arrayThirdWheel[$thirdResult];

            return ApiResponse::json($arrayResult);
        } else if ($paid == 0) {
            // Do the first round
            $arrayResult = array();
            $arrayResult['first_round'] = $arrayResult['second_round'] = $arrayResult['third_round'] = null;
            $firstResult = array_rand($this->arrayFirstWheel, 1);
            $arrayResult['first_round'] = $this->arrayFirstWheel[$firstResult];

            if ($this->arrayFirstWheel[$firstResult] == 'up') {
                $secondResult = array_rand($this->arraySecondWheel, 1);    
                $arrayResult['second_round'] = $this->arraySecondWheel[$secondResult];

                if ($this->arrayFirstWheel[$secondResult] == 'up') {
                    $thirdResult = array_rand($this->arrayThirdWheel, 1);    
                    $arrayResult['third_round'] = $this->arrayThirdWheel[$thirdResult];
                }
            }        

            return ApiResponse::json($arrayResult);
        } else {
            return ApiResponse::json( 'Some input is missing', 412);
        }
        
    }

}
