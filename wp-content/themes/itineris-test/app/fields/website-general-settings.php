<?php

namespace App;

use StoutLogic\AcfBuilder\FieldsBuilder;

$general = new FieldsBuilder( 'website_general_settings' );

$general
    ->addText('hero_title')
    ->addWysiwyg('hero_text')
    ->addText('hero_undersign')
    ->addImage('hero_image')
	->setLocation( 'options_page', '==', 'website-general-settings' );

return $general;
