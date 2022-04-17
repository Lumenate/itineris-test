<?php

namespace App\PostTypes;

use function App\is_valid_image_array;
use WP_Post;
use WP_Term;

/**
 * Class CoursePostType
 * @package App\PostTypes
 */
final class CoursePostType extends AbstractPostType {

    const TYPE = 'course';

    /**
     * @return string
     */
    protected function get_type(): string {
        return self::TYPE;
    }

    /**
     * @return array
     */
    protected function get_config(): array {
        $labels = [
            'name'               => 'Course',
            'singular_name'      => 'course',
            'add_new'            => 'Add New',
            'add_new_item'       => 'Add New Course',
            'edit_item'          => 'Edit Course',
            'new_item'           => 'New Course',
            'view_item'          => 'View Course',
            'search_items'       => 'Search Course',
            'not_found'          => 'No Courses found',
            'not_found_in_trash' => 'No Course found in trash',
            'parent_item_colon'  => 'Parent Course',
            'menu_name'          => 'Course',
        ];

        $args = [
            'labels'              => $labels,
            'hierarchical'        => false,
            'supports'            => [
                'title',
                'editor',
                'revisions',
                'page-attributes',
            ],
            'show_ui'             => true,
            'show_in_menu'        => true,
            'menu_position'       => 5,
            'menu_icon'           => 'dashicons-welcome-learn-more',
            'show_in_nav_menus'   => true,
            'publicly_queryable'  => true,
            'exclude_from_search' => false,
            'query_var'           => true,
            'can_export'          => true,
            'has_archive'         => false,
            'rewrite'             => [
                'with_front' => false,
            ],
            'public'              => true,
            'capability_type'     => 'post',
        ];

        return $args;
    }

    protected function init(): void {
        add_action( 'admin_init', [ $this, 'page_attribute_support' ] );
        add_filter( 'manage_edit-course_sortable_columns', [ $this, 'extra_columns' ] );
        add_filter( 'nginx_purge_urls', [ $this, 'clear_course_page' ], 10, 3 );
        add_action( 'init', [ $this, 'register_default_category' ] );
        add_filter( 'manage_course_posts_columns', [ $this, 'acf_columns' ] );

    }

    /**
     * Register default category for course
     */
    function register_default_category(): void {
        register_taxonomy_for_object_type( 'category', self::TYPE );
    }

    public static function page_attribute_support() {
        add_post_type_support( self::TYPE, 'page-attributes' );
        add_post_type_support(self::TYPE, 'author');
    }

    public static function extra_columns( $sortable_columns ) {
        $sortable_columns['taxonomy-course_type']         = __( 'course_type' );
        $sortable_columns['taxonomy-campus']         = __( 'campus' );

        return $sortable_columns;
    }

    public static function acf_columns( $columns ) {
        $resultColumns = array_slice( $columns, 0, 1, true ) +
            [
                'photo' => 'Photo',
            ] +
            array_slice( $columns, 1, null, true );

        $resultColumns = array_slice( $resultColumns, 0, 6, true ) +
            [
                'course_type' => 'Course Type',
            ] +
            array_slice( $resultColumns, 6, null, true );

        return $resultColumns;
    }
}
