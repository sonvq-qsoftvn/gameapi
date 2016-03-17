<?php

class PaymentController extends BaseController {

    public $restful = true;

    /**
     * 	Create a new payment
     */
    public function store() {

        $input = Input::all();
        $payment = '';

        $validator = Validator::make($input, Payment::getCreateRules());

        if ($validator->passes()) {

            $user = Token::userFor(Input::get('token'));

            if (empty($user))
                return ApiResponse::json('User not found.');

            $payment = new Payment();
            $payment->user_id = $user->getKey();
            $payment->payload = Input::has('payload') ? $input['payload'] : '';
            $payment->value = Input::has('value') ? $input['value'] : '';
            $payment->payment_date = Input::has('payment_date') ? $input['payment_date'] : '';

            if (!$payment->save())
                $payment = ApiResponse::errorInternal('An error occured. Please, try again.');
        }
        else {
            return ApiResponse::validation($validator);
        }

        Log::info('<!> Created : ' . $payment);

        $paymentReturn = Payment::where('payload', '=', $payment->payload)->first();

        return ApiResponse::json($paymentReturn->toArray());
    }

    public function missingMethod($parameters = array()) {
        return ApiResponse::errorNotFound('Sorry, no method found');
    }

}
