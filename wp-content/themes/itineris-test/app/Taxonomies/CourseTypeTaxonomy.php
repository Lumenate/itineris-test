<?php

namespace App\Taxonomies;

/**
 * Class CourseTypeTaxonomy
 * @package App\Taxonomies
 */
class CourseTypeTaxonomy extends AbstractTaxonomy {

	const NAME = 'course_type';

    /**
     * @var array
     */
	protected $supported_post_types = [ 'course' ];

	/**
	 * Get post type name
	 *
	 * @return string
	 */
	protected function get_name(): string {
		return self::NAME;
	}

	/**
	 * Get config for post type
	 *
	 * @return array
	 */
	protected function get_config(): array {
		return [
			'hierarchical'      => true,
			'labels'            => [
				'name'              => 'Course Types',
				'singular_name'     => 'Course Type',
				'search_items'      => 'Search Course Type',
				'all_items'         => 'All Course Types',
				'parent_item'       => 'Parent Course Type',
				'parent_item_colon' => 'Course Type',
				'edit_item'         => 'Edit Course Type',
				'update_item'       => 'Update Course Type',
				'add_new_item'      => 'Add Course Type',
				'new_item_name'     => 'New Course Type',
				'menu_name'         => 'Course Types',
			],
			'show_ui'           => true,
			'show_admin_column' => true,
			'query_var'         => true,
			'rewrite'           => [ 'slug'       => 'course_type',
			                         'with_front' => false
			],
		];
	}
}
