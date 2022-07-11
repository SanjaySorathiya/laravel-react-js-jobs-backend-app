<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\Property;
use Illuminate\Support\Facades\Validator;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PropertyJobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobsList = DB::table("jobs AS j")
                        ->select("j.*", "p.id as pid", "p.name")
                        ->leftjoin("properties AS p","p.id", "=", "j.property_id")
                        ->get();

        $message = "No records found!";
        if(isset($jobsList) && is_object($jobsList) && $jobsList->count() > 0) {
            $message = "";
        } else {
            $jobsList = [];
        }

        $response = [
            'message' => $message,
            'data'    => $jobsList,
            'success' => true
        ];

        return response()->json($response, 200);        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'summary'                   => 'required|string|max:150',
            'description'               => 'required|string|max:500',
            'property_id'               => 'required|numeric|gt:0',
        ], [
            'summary.required'          => 'Summary is required',
            'description.required'      => 'Description is required',
            'property_id.required'      => 'property_id is required'
        ]);

        if ($validator->fails()) {
            return response()->json(['msg' => $validator->errors(), 'data'=>[], 'status' =>false], 200);
        }
        
        $summary        = strip_tags($request->summary);
        $description    = strip_tags($request->description);
        $property_id    = $request->property_id;

        $last_id = DB::table('jobs')->insertGetId([
            'summary'           =>  $summary,
            'description'       =>  $description,
            'property_id'       =>  $property_id
        ]);

        $jobsInfo = [];
        $message  = 'Error! Please try after some time.';
        
        if($last_id > 0) {
            $message  = 'Property job logged successfully';
            $jobsInfo = DB::table("jobs AS j")
                            ->select("j.*", "p.id as pid", "p.name")
                            ->leftjoin("properties AS p","p.id", "=", "j.property_id")
                            ->where("j.id", $last_id)
                            ->first();            
        }
        
        $response = [
            'message' => $message,
            'data'    => $jobsInfo,
            'success' => true
        ];
        
        return response()->json($response, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    
    // List Properties
    public function get_property_list()
    {
        $list = Property::all();

        $message = "No records found!";
        if(isset($list) && is_object($list) && $list->count() > 0) {
            $message = "";
        } else {
            $list = [];
        }

        $response = [
            'message' => $message,
            'data'    => $list,
            'success' => true
        ];

        return response()->json($response, 200);        
    }    
}
