<?php

namespace App\Taxonomies;

/**
 * Class CampusTaxonomy
 * @package App\Taxonomies
 */
class CampusTaxonomy extends AbstractTaxonomy {

	const NAME = 'campus';

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
				'name'              => 'Campuses',
				'singular_name'     => 'Campus',
				'search_items'      => 'Search Campus',
				'all_items'         => 'All Campuses',
				'parent_item'       => 'Parent Campus',
				'parent_item_colon' => 'Campus',
				'edit_item'         => 'Edit Campus',
				'update_item'       => 'Update Campus',
				'add_new_item'      => 'Add Campus',
				'new_item_name'     => 'New Campus',
				'menu_name'         => 'Campuses',
			],
			'show_ui'           => true,
			'show_admin_column' => true,
			'query_var'         => true,
			'rewrite'           => [ 'slug'       => 'campus',
			                         'with_front' => false
			],
		];
	}
}
