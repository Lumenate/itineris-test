<?php
declare( strict_types=1 );

namespace App\PostTypes;

/**
 * Class AbstractPostType
 *
 */
abstract class AbstractPostType {

	/**
	 * AbstractCustomPostType constructor.
	 */
	public final function __construct() {
		register_post_type( $this->get_type(), $this->get_config() );
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
	protected abstract function get_type(): string;

	/**
	 * Get config for post type
	 *
	 * @return array
	 */
	protected abstract function get_config(): array;
}
