<?php



function format_dtime($date,$date_format){
    if($date != ""){
        $sec = strtotime($date);  
        $newdate = date ($date_format, $sec); 
    }
    else {
        $newdate = "";
    } 
    return $newdate;
}