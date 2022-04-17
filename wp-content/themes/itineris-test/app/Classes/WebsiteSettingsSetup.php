<?php

namespace App\Classes;

use function App\asset_path;

class WebsiteSettingsSetup extends BaseClass {
	protected function add_actions(): void {
		add_action( 'acf/init', [ $this, 'init_website_settings' ] );
	}

	/**
	 * Add ACF options pages
	 */
	public function init_website_settings() {
		$parent = acf_add_options_page( [
			'page_title' => 'Website General Settings',
			'menu_title' => 'Website Settings',
			'menu_slug'  => 'website-general-settings',
			'capability' => 'edit_posts',
			'redirect'   => false,
		] );
	}
}
