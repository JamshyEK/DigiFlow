<?php 
 //WARNING: The contents of this file are auto-generated


	 $dictionary['Contact']['fields']['autoincrement_id']['auto_increment'] = true; 


	 $dictionary['Contact']['fields']['autoincrement_id'] =  array(
            'name' => 'autoincrement_id',
            'vname' => 'LBL_LABEL_OF_AUTO_INC_FIELD',
            'type' => 'int',
            'readonly' => true,
            'len' => 11,
            'auto_increment' => true,
           'disable_num_format' => true,
        );


	 $dictionary['Contact']['indices']['NAME_FOR_INDEX'] = array(
            'name' => 'NAME_FOR_INDEX',
            'type' => 'unique',
            'fields' => array('autoincrement_id'),
        );


 // created: 2020-05-21 18:22:03
$dictionary['Contact']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:22:02
$dictionary['Contact']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:22:02
$dictionary['Contact']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2020-05-21 18:22:01
$dictionary['Contact']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 
?>