<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller; 
use App\User; 
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Auth; 
use Validator;

use Symfony\Component\HttpFoundation\Response;


class GateWay extends Controller
{
    public $successStatus = 200;
    
  CONST HTTP_OK = Response::HTTP_OK;
  CONST HTTP_CREATED = Response::HTTP_CREATED;
  CONST HTTP_UNAUTHORIZED = Response::HTTP_UNAUTHORIZED;

    
    public function register(Request $request) 
    { 
        $validator = Validator::make($request->all(), [ 
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed'
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors(),
                'errors' => $validator->errors()->all()], 401);            
        }
        $input = $request->all(); 
        $input['password'] = bcrypt($input['password']); 
        $user = User::create($input); 
        $success['token'] =  'Bearer '.$user->createToken('MyApp')-> accessToken; 
        $success['name'] =  $user->name;
        return response()->json(['success'=>$success], $this-> successStatus); 
    }

    public function details() 
    {   
        $response = Http::get('http://localhost/MicroServices/Category/index.php/get-all',[
            'hey'=> 'wedchgvweyckhahqwlbweuvclajx'
        ]);
        
        $response = $response->body();
//        return $response;
        return response()->json([
            'message' => 'Successfully ',
            'data' => $response
        ], 201);
    }
    public function login(Request $request){ 

    $credentials = [

        'email' => $request->email, 
        'password' => $request->password

    ];

    if( auth()->attempt($credentials) ){ 

      $user = Auth::user(); 
      
//      $token['token'] = $this->get_user_token($user,"TestToken");
      $token['token'] = 'Bearer '.$user->createToken('TestToken')->accessToken; 

      $response = self::HTTP_OK;

      return $this->get_http_response( "success", $token, $response );

    } else { 

      $error = "Unauthorized Access";

      $response = self::HTTP_UNAUTHORIZED;

      return $this->get_http_response( "Error", $error, $response );
    } 

  }
  
  public function get_http_response( string $status = null, $data = null, $response ){

    return response()->json([

        'status' => $status, 
        'data' => $data,

    ], $response);
  }
  
  
  
  //////////////////////////////////////////////////////////////////////
    public function login_dupricate(){ 
        if(Auth::attempt(['email' => request('email'), 
            'password' => request('password')])){ 
            $user = Auth::user(); 
            $success['token'] =  'Bearer '.$user->createToken('test')-> accessToken; 
            $sucess['user'] = $user;
            return response()->json(['success' => $success], $this-> successStatus); 
        } 
        else{ 
            return response()->json(['error'=>'Unauthorised'], 401); 
        } 
    }
}
