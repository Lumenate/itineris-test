module.exports = {
  "bail": true,
  "cache": {
    "name": "bud.production",
    "type": "filesystem",
    "version": "pycw94gj13jgzuwqbhw_qavzize_",
    "cacheDirectory": "/private/var/www/wordpress/wp-content/themes/itineris-test/.budfiles/cache/webpack",
    "managedPaths": [
      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules"
    ],
    "buildDependencies": {
      "bud": [
        "/private/var/www/wordpress/wp-content/themes/itineris-test/package.json",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/.editorconfig",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/bud.config.js",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/composer.json",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/jsconfig.json",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/package-lock.json",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/tailwind.config.js",
        "/private/var/www/wordpress/wp-content/themes/itineris-test/theme.json"
      ]
    }
  },
  "context": "/private/var/www/wordpress/wp-content/themes/itineris-test",
  "infrastructureLogging": {
    "console": {
      "Console": {}
    }
  },
  "mode": "production",
  "module": {
    "noParse": {},
    "rules": [
      {
        "test": {},
        "include": [
          "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
        ],
        "parser": {
          "requireEnsure": false
        }
      },
      {
        "oneOf": [
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/babel-loader/lib/index.js",
                "options": {
                  "presets": [
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/preset-env/lib/index.js"
                    ],
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/preset-react/lib/index.js"
                    ]
                  ],
                  "plugins": [
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/plugin-transform-runtime/lib/index.js",
                      {
                        "helpers": false
                      }
                    ],
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/plugin-proposal-object-rest-spread/lib/index.js"
                    ],
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/plugin-syntax-dynamic-import/lib/index.js"
                    ],
                    [
                      "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/@babel/plugin-proposal-class-properties/lib/index.js"
                    ]
                  ]
                }
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/mini-css-extract-plugin/dist/loader.js"
              },
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/css-loader/dist/cjs.js",
                "options": {
                  "importLoaders": 1,
                  "sourceMap": false
                }
              },
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/postcss-loader/dist/cjs.js",
                "options": {
                  "postcssOptions": {
                    "plugins": [
                      [
                        "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/postcss-import/index.js"
                      ],
                      [
                        null
                      ],
                      [
                        null
                      ],
                      [
                        "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/postcss-preset-env/dist/index.cjs",
                        {
                          "stage": 1,
                          "features": {
                            "focus-within-pseudo-class": false
                          }
                        }
                      ]
                    ]
                  },
                  "sourceMap": true
                }
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/mini-css-extract-plugin/dist/loader.js"
              },
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/css-loader/dist/cjs.js",
                "options": {
                  "importLoaders": 1,
                  "localIdentName": "[name]__[local]___[hash:base64:5]",
                  "modules": true,
                  "sourceMap": false
                }
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "asset/resource",
            "generator": {
              "filename": "images/[name].[contenthash:6][ext]"
            }
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "asset/resource",
            "generator": {
              "filename": "images/[name].[contenthash:6][ext]"
            }
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "asset/resource",
            "generator": {
              "filename": "images/[name].[contenthash:6][ext]"
            }
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "asset",
            "generator": {
              "filename": "fonts/[name].[contenthash:6][ext]"
            }
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "json",
            "parser": {}
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "json",
            "parser": {}
          },
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/html-loader/dist/cjs.js"
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/csv-loader/index.js"
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "use": [
              {
                "loader": "/private/var/www/wordpress/wp-content/themes/itineris-test/node_modules/xml-loader/index.js"
              }
            ],
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ]
          },
          {
            "test": {},
            "include": [
              "/private/var/www/wordpress/wp-content/themes/itineris-test/resources"
            ],
            "type": "json",
            "parser": {}
          }
        ]
      }
    ],
    "unsafeCache": false
  },
  "name": "bud",
  "node": false,
  "output": {
    "assetModuleFilename": "[name].[contenthash:6][ext]",
    "chunkFilename": "[name].[contenthash:6].js",
    "filename": "[name].[contenthash:6].js",
    "path": "/private/var/www/wordpress/wp-content/themes/itineris-test/public",
    "pathinfo": false,
    "publicPath": ""
  },
  "optimization": {
    "emitOnErrors": false,
    "minimize": true,
    "minimizer": [
      "...",
      {
        "options": {
          "test": {},
          "parallel": true,
          "minimizer": {
            "options": {
              "preset": [
                "default",
                {
                  "discardComments": {
                    "removeAll": true
                  }
                }
              ]
            }
          }
        }
      }
    ],
    "runtimeChunk": "single",
    "splitChunks": {
      "cacheGroups": {
        "bud": {
          "chunks": "all",
          "test": {},
          "reuseExistingChunk": true,
          "priority": -10
        },
        "vendor": {
          "chunks": "all",
          "test": {},
          "reuseExistingChunk": true,
          "priority": -20
        }
      }
    }
  },
  "parallelism": 15,
  "performance": {
    "hints": false
  },
  "recordsPath": "/private/var/www/wordpress/wp-content/themes/itineris-test/.budfiles/bud/modules.json",
  "stats": "normal",
  "target": "browserslist:/private/var/www/wordpress/wp-content/themes/itineris-test/package.json",
  "plugins": [
    {
      "patterns": [
        {
          "from": "images/**/*",
          "context": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources",
          "noErrorOnMissing": true
        }
      ],
      "options": {}
    },
    {
      "options": {
        "assetHookStage": null,
        "basePath": "",
        "fileName": "manifest.json",
        "filter": null,
        "map": null,
        "publicPath": "",
        "removeKeyHash": {},
        "sort": null,
        "transformExtensions": {},
        "useEntryKeys": false,
        "useLegacyEmit": false,
        "writeToFileEmit": true
      }
    },
    {
      "_sortedModulesCache": {},
      "options": {
        "filename": "[name].[contenthash:6].css",
        "ignoreOrder": false,
        "runtime": true,
        "chunkFilename": "[name].[contenthash:6].css"
      },
      "runtimeOptions": {
        "linkType": "text/css"
      }
    },
    {
      "options": {
        "emitHtml": false,
        "publicPath": ""
      },
      "plugin": {
        "name": "EntrypointsManifestPlugin",
        "stage": null
      },
      "name": "entrypoints.json"
    },
    {
      "plugin": {
        "name": "WordPressDependenciesWebpackPlugin",
        "stage": null
      },
      "manifest": {},
      "usedDependencies": {},
      "fileName": "wordpress.json"
    },
    {
      "plugin": {
        "name": "MergedManifestPlugin"
      },
      "file": "entrypoints.json",
      "entrypointsName": "entrypoints.json",
      "wordpressName": "wordpress.json"
    },
    {
      "name": "WordPressExternalsWebpackPlugin",
      "stage": null,
      "externals": {
        "type": "window"
      }
    }
  ],
  "entry": {
    "app": {
      "import": [
        "@scripts/app",
        "@styles/app"
      ]
    },
    "editor": {
      "import": [
        "@scripts/editor",
        "@styles/editor"
      ]
    }
  },
  "resolve": {
    "alias": {
      "@src": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources",
      "@dist": "/private/var/www/wordpress/wp-content/themes/itineris-test/public",
      "@fonts": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources/fonts",
      "@images": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources/images",
      "@scripts": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources/scripts",
      "@styles": "/private/var/www/wordpress/wp-content/themes/itineris-test/resources/styles"
    },
    "extensions": [
      ".wasm",
      ".mjs",
      ".js",
      ".jsx",
      ".css",
      ".json",
      ".toml",
      ".yml"
    ],
    "modules": [
      "/private/var/www/wordpress/wp-content/themes/itineris-test/resources",
      "node_modules"
    ]
  }
}