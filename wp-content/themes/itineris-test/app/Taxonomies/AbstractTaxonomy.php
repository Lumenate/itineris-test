<?php
declare( strict_types=1 );

namespace App\Taxonomies;

/**
 * Class AbstractTaxonomy
 */
abstract class AbstractTaxonomy {

	/**
	 * List of supported post types. Must be updated
	 *
	 * @var array
	 */
	protected $supported_post_types = [ 'post' ];

	/**
	 * AbstractCustomPostType constructor.
	 */
	public final function __construct() {
		if ( ! $this->supported_post_types ) {
			wp_die( 'Taxonomy does not have supported post types in ' . __CLASS__ );
		}
		register_taxonomy( $this->get_name(), $this->supported_post_types, $this->get_config() );
		$this->init();
	}

	/**
	 * Additional configuration for taxonomy
	 */
	protected function init(): void {
	}

	/**
	 * Get post type name
	 *
	 * @return string
	 */
	protected abstract function get_name(): string;

	/**
	 * Get config for post type
	 *
	 * @return array
	 */
	protected abstract function get_config(): array;
}
