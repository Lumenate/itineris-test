<?php

namespace App;

use App\Taxonomies\CampusTaxonomy;
use App\Taxonomies\CourseTypeTaxonomy;
use StoutLogic\AcfBuilder\FieldsBuilder;

//General fields tab
$g = new FieldsBuilder( 'general' );
$g->addWysiwyg('content')
    ->addImage('featured_image')->setRequired()
    ->addText('duration')->setWidth( 50 )
    ->addText('course_code')->setWidth( 50 )
    ->addRepeater('Campuses', [
        'min'    => 1,
        'layout' => 'block',
    ])->addTaxonomy('campus', [
        'label'         => 'Campus',
        'taxonomy'      => CampusTaxonomy::NAME,
        'field_type'    => 'select',
        'return_format' => 'object',
    ])->endRepeater()
    ->addTaxonomy('course_type', [
        'label'         => 'Course Type',
        'taxonomy'      => CourseTypeTaxonomy::NAME,
        'field_type'    => 'select',
        'return_format' => 'object',
    ]);

return $g;
