<?php 
 //WARNING: The contents of this file are auto-generated


	 $dictionary['Document']['fields']['autoincrement_id']['auto_increment'] = true; 


	 $dictionary['Document']['fields']['autoincrement_id'] =  array(
            'name' => 'autoincrement_id',
            'vname' => 'LBL_LABEL_OF_AUTO_INC_FIELD',
            'type' => 'int',
            'readonly' => true,
            'len' => 11,
            'auto_increment' => true,
           'disable_num_format' => true,
        );


	 $dictionary['Document']['indices']['NAME_FOR_INDEX'] = array(
            'name' => 'NAME_FOR_INDEX',
            'type' => 'unique',
            'fields' => array('autoincrement_id'),
        );

?>