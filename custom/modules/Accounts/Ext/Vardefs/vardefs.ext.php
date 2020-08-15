<?php 
 //WARNING: The contents of this file are auto-generated


	 $dictionary['Account']['fields']['autoincrement_id']['auto_increment'] = true; 


	 $dictionary['Account']['fields']['autoincrement_id'] =  array(
            'name' => 'autoincrement_id',
            'vname' => 'LBL_LABEL_OF_AUTO_INC_FIELD',
            'type' => 'int',
            'readonly' => true,
            'len' => 11,
            'auto_increment' => true,
           'disable_num_format' => true,
        );


	 $dictionary['Account']['indices']['NAME_FOR_INDEX'] = array(
            'name' => 'NAME_FOR_INDEX',
            'type' => 'unique',
            'fields' => array('autoincrement_id'),
        );


 // created: 2020-05-21 18:21:57
$dictionary['Account']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:21:56
$dictionary['Account']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:21:55
$dictionary['Account']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:21:54
$dictionary['Account']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 
?>