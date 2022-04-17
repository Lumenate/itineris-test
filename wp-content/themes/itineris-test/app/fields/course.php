<?php

namespace App;

use Exception;
use StoutLogic\AcfBuilder\FieldsBuilder;

$general = new FieldsBuilder( 'course', [
	'hide_on_screen'        => [
		'the_content',
		'excerpt',
		'comments',
		'slug',
		'tags',
		'send-trackbacks',
	],
	'position'              => 'normal',
	'style'                 => 'default',
	'label_placement'       => 'top',
	'instruction_placement' => 'label',
] );

try {
    //General tab
	$general->addTab( 'General' )
	        ->addFields( require( 'course/general.php' ) );

	$general->setLocation( 'post_type', '==', 'course' );
} catch ( Exception $ex ) {
	//TODO: Some exception?
}

return $general;
