<?php

namespace App\Classes;

/**
 * Class BaseClass
 * @package Dabo\Classes
 */
abstract class BaseClass {
	/**
	 * BaseClass constructor.
	 */
	public function __construct() {
		$this->init();
		$this->add_actions();
		$this->add_filters();
		$this->remove_actions();
		$this->remove_filters();
		$this->after();
	}

	/**
	 * Init all items from one place
	 */
	protected function init(): void {
	}

	/**
	 * Adding actions
	 */
	protected function add_actions(): void {
	}

	/**
	 * Adding filters
	 */
	protected function add_filters(): void {
	}

	/**
	 * Actions to remove
	 */
	protected function remove_actions(): void {
	}

	/**
	 * Filters to remove
	 */
	protected function remove_filters(): void {
	}

	/**
	 * Calling after all other init methods
	 */
	protected function after(): void {
	}

}
