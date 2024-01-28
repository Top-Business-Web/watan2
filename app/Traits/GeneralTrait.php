<?php
namespace App\Traits;

trait GeneralTrait
{

    public function getCurrentLang()
    {
        return app()->getLocale();
    }

    public function returnError($code,$msg,$status = 400)
    {
        return response()->json([
            'data' => null,
            'msg' => $msg,
            'status' => $status,
        ],400);
    }


    public function returnSuccessMessage($msg = "",$data = null)
    {
        return [
            'data' => null,
            'msg' => $msg,
            'status' => 200,
        ];
    }

    public function returnData($key, $value, $msg = "")
    {
        return response()->json([
            $key => $value,
            'msg' => $msg,
            'status' => 200,
        ],200);
    }



    public function returnValidationError($code = "E001", $validator)
    {
        return $this->returnError($code, $validator->errors()->first());
    }


    public function returnCodeAccordingToInput($validator)
    {
        $inputs = array_keys($validator->errors()->toArray());
        $code = $this->getErrorCode($inputs[0]);
        return $code;
    }

    public function getErrorCode($input)
    {
        if ($input == "name")
            return 'E0011';

        else if ($input == "password")
            return 'E002';

        else if ($input == "mobile")
            return 'E003';

        else if ($input == "id_number")
            return 'E004';

        else if ($input == "birth_date")
            return 'E005';

        else if ($input == "agreement")
            return 'E006';

        else if ($input == "email")
            return 'E007';

        else if ($input == "city_id")
            return 'E008';

        else if ($input == "insurance_company_id")
            return 'E009';

        else if ($input == "activation_code")
            return 'E010';

        else if ($input == "longitude")
            return 'E011';

        else if ($input == "latitude")
            return 'E012';

        else if ($input == "id")
            return 'E013';

        else if ($input == "promocode")
            return 'E014';

        else if ($input == "doctor_id")
            return 'E015';

        else if ($input == "payment_method" || $input == "payment_method_id")
            return 'E016';

        else if ($input == "day_date")
            return 'E017';

        else if ($input == "specification_id")
            return 'E018';

        else if ($input == "importance")
            return 'E019';

        else if ($input == "type")
            return 'E020';

        else if ($input == "message")
            return 'E021';

        else if ($input == "reservation_no")
            return 'E022';

        else if ($input == "reason")
            return 'E023';

        else if ($input == "branch_no")
            return 'E024';

        else if ($input == "name_en")
            return 'E025';

        else if ($input == "name_ar")
            return 'E026';

        else if ($input == "gender")
            return 'E027';

        else if ($input == "nickname_en")
            return 'E028';

        else if ($input == "nickname_ar")
            return 'E029';

        else if ($input == "rate")
            return 'E030';

        else if ($input == "price")
            return 'E031';

        else if ($input == "information_en")
            return 'E032';

        else if ($input == "information_ar")
            return 'E033';

        else if ($input == "street")
            return 'E034';

        else if ($input == "branch_id")
            return 'E035';

        else if ($input == "insurance_companies")
            return 'E036';

        else if ($input == "photo")
            return 'E037';

        else if ($input == "logo")
            return 'E038';

        else if ($input == "working_days")
            return 'E039';

        else if ($input == "insurance_companies")
            return 'E040';

        else if ($input == "reservation_period")
            return 'E041';

        else if ($input == "nationality_id")
            return 'E042';

        else if ($input == "commercial_no")
            return 'E043';

        else if ($input == "nickname_id")
            return 'E044';

        else if ($input == "reservation_id")
            return 'E045';

        else if ($input == "attachments")
            return 'E046';

        else if ($input == "summary")
            return 'E047';

        else if ($input == "user_id")
            return 'E048';

        else if ($input == "mobile_id")
            return 'E049';

        else if ($input == "paid")
            return 'E050';

        else if ($input == "use_insurance")
            return 'E051';

        else if ($input == "doctor_rate")
            return 'E052';

        else if ($input == "provider_rate")
            return 'E053';

        else if ($input == "message_id")
            return 'E054';

        else if ($input == "hide")
            return 'E055';

        else if ($input == "checkoutId")
            return 'E056';

        else
            return "";
    }


    public function asiahawala_payment($transaction_ID,$merchant_code,$merchant_token,$url)
    {
        /***
         * The  following is an example of CURL code in PHP to check status of transaction,  making CURL call is very simple and can be achieved in all programming  languages.
         * -  Check if parameters are returned when  customer finished payment and redirected before making an API call
         * -  check if Customer transaction ID is existing in your system before making an  API call
         * -  make a CURL request to check the status of the transaction.
         * #if transaction exists then log the transaction in your  system and in Success message to customer
         * #if failed show message user to customer
         ***/
//        $transaction_ID = ‘Assign Transaction ID’;                                                        //Set transaction ID
//	    $merchant_code = ‘PUT Your Marchant Code’;                                             //Set Merchant code
//	    $merchant_token = ’PUT Your Token Here’;                                                     //Set Merchant Token the  same as merchantkey
	    /*** Change as appropriate
         * Testbed  or Sandbox Environment API url:
         * $url  =  ‘we will share URL when needed’;
         * Live or Production Environment API url:
         * $url  =  “we will share URL when needed” ;
         ***/
//	    $url = “we will share URL when needed”;
	    //check transaction parameters returned and  compare transaction id to your transaction ID before calling API
        if (isset($_GET['FTXNID']) && isset($_GET['transId']) && isset($_GET['statusCode'])) {

            //  check if transaction ID is existing on your system, if no transaction id is existing  then show message or redirect to error page

            $request = curl_init();
            curl_setopt_array($request, array(
                CURLOPT_URL => $url,
                CURLOPT_POST => TRUE,
                CURLOPT_POSTFIELDS => http_build_query(array
                (
                    'merchantCode' => $merchant_code,  //Merchant Code
                    'token' => $merchant_token,               //Merchant  Token
                    'transaction_id' => $transaction_ID      // Merchant  transaction ID
                )),
                CURLOPT_RETURNTRANSFER => TRUE
            ));
            $json_response = curl_exec($request);
            $status = curl_getinfo($request, CURLINFO_HTTP_CODE);
            $error = curl_error($request);
            curl_close($request);
            $response = json_decode($json_response, true);

            if (isset($response) && isset($response['statusValue'][0]) && isset($response['statusCode'][0])) {
                if (isset($response) && $response['statusValue'][0] == 'SUCCESS' && $response['statusCode'][0] == 'TS') {
                    /****  SUCESSFUL ***/
                    /*  Payment done
                    - Log or update customer’s transaction,  update system database
                    - show appropriate successful message to  customer. */
                    echo 'transaction successful';
                } else {
                    /****  FAILD
                     * The transaction is not successful, the user  has not confirmed the transaction or payment is not complete
                     * Show appropriate error message to user.  */
                    echo 'transaction Failed';
                }
            } else {
                // redirect user to error  page or show an error message because no parameters supplied
                echo 'There was a problem,  please contact administrator';
            }

        }
    }

    public function array_except($array, $keys) {
        return array_diff_key($array, array_flip((array) $keys));
    }

}
