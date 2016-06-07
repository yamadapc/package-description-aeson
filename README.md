# package-description-aeson
Provides ToJSON and FromJSON instances for cabal files.  Currently only builds
with `aeson` HEAD. It's included as a submodule in this repository.

```
{
    "condBenchmarks": [],
    "condExecutables": [
        [
            "cabal-to-json",
            {
                "condTreeComponents": [],
                "condTreeData": {
                    "exeName": "",
                    "modulePath": "Main.hs",
                    "buildInfo": {
                        "buildable": true,
                        "targetBuildDepends": [
                            [
                                {
                                    "unPackageName": "Cabal"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "aeson"
                                },
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    10
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    10
                                                ]
                                            }
                                        }
                                    ]
                                }
                            ],
                            [
                                {
                                    "unPackageName": "aeson-pretty"
                                },
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    7,
                                                    2
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    7,
                                                    2
                                                ]
                                            }
                                        }
                                    ]
                                }
                            ],
                            [
                                {
                                    "unPackageName": "base"
                                },
                                {
                                    "tag": "IntersectVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "UnionVersionRanges",
                                            "contents": [
                                                {
                                                    "tag": "ThisVersion",
                                                    "contents": {
                                                        "versionTags": [],
                                                        "versionBranch": [
                                                            4,
                                                            8
                                                        ]
                                                    }
                                                },
                                                {
                                                    "tag": "LaterVersion",
                                                    "contents": {
                                                        "versionTags": [],
                                                        "versionBranch": [
                                                            4,
                                                            8
                                                        ]
                                                    }
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "EarlierVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    9
                                                ]
                                            }
                                        }
                                    ]
                                }
                            ],
                            [
                                {
                                    "unPackageName": "bytestring"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "containers"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "directory"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "filepath"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ]
                        ],
                        "buildTools": [],
                        "otherLanguages": [],
                        "oldExtensions": [],
                        "otherModules": [],
                        "ldOptions": [],
                        "ccOptions": [],
                        "includeDirs": [],
                        "extraGHCiLibs": [],
                        "extraLibs": [],
                        "installIncludes": [],
                        "sharedOptions": [],
                        "defaultExtensions": [],
                        "frameworks": [],
                        "includes": [],
                        "jsSources": [],
                        "hsSourceDirs": [
                            "src"
                        ],
                        "targetBuildRenaming": {
                            "tag": "Bin",
                            "contents": [
                                8,
                                {
                                    "unPackageName": "base"
                                },
                                [
                                    true,
                                    []
                                ],
                                {
                                    "tag": "Bin",
                                    "contents": [
                                        3,
                                        {
                                            "unPackageName": "aeson"
                                        },
                                        [
                                            true,
                                            []
                                        ],
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "Cabal"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "aeson-pretty"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        }
                                    ]
                                },
                                {
                                    "tag": "Bin",
                                    "contents": [
                                        4,
                                        {
                                            "unPackageName": "containers"
                                        },
                                        [
                                            true,
                                            []
                                        ],
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "bytestring"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                2,
                                                {
                                                    "unPackageName": "directory"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Bin",
                                                    "contents": [
                                                        1,
                                                        {
                                                            "unPackageName": "filepath"
                                                        },
                                                        [
                                                            true,
                                                            []
                                                        ],
                                                        {
                                                            "tag": "Tip",
                                                            "contents": []
                                                        },
                                                        {
                                                            "tag": "Tip",
                                                            "contents": []
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        "cSources": [],
                        "options": [
                            [
                                {
                                    "tag": "GHC",
                                    "contents": []
                                },
                                [
                                    "-ddump-splices"
                                ]
                            ]
                        ],
                        "cppOptions": [],
                        "profOptions": [],
                        "pkgconfigDepends": [],
                        "otherExtensions": [],
                        "extraLibDirs": [],
                        "defaultLanguage": {
                            "tag": "Haskell2010",
                            "contents": []
                        },
                        "customFieldsBI": []
                    }
                },
                "condTreeConstraints": [
                    [
                        {
                            "unPackageName": "Cabal"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "aeson"
                        },
                        {
                            "tag": "UnionVersionRanges",
                            "contents": [
                                {
                                    "tag": "ThisVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                },
                                {
                                    "tag": "LaterVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "aeson-pretty"
                        },
                        {
                            "tag": "UnionVersionRanges",
                            "contents": [
                                {
                                    "tag": "ThisVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            7,
                                            2
                                        ]
                                    }
                                },
                                {
                                    "tag": "LaterVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            7,
                                            2
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "base"
                        },
                        {
                            "tag": "IntersectVersionRanges",
                            "contents": [
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        }
                                    ]
                                },
                                {
                                    "tag": "EarlierVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            4,
                                            9
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "bytestring"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "containers"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "directory"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "filepath"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ]
                ]
            }
        ]
    ],
    "genPackageFlags": [],
    "packageDescription": {
        "homepage": "https://github.com/yamadapc/package-description-aeson",
        "dataDir": ".",
        "library": null,
        "copyright": "Copyright (c) 2015 Pedro Tacla Yamada",
        "testedWith": [],
        "extraSrcFiles": [],
        "category": "Development",
        "testSuites": [],
        "specVersionRaw": {
            "Right": {
                "tag": "UnionVersionRanges",
                "contents": [
                    {
                        "tag": "ThisVersion",
                        "contents": {
                            "versionTags": [],
                            "versionBranch": [
                                1,
                                10
                            ]
                        }
                    },
                    {
                        "tag": "LaterVersion",
                        "contents": {
                            "versionTags": [],
                            "versionBranch": [
                                1,
                                10
                            ]
                        }
                    }
                ]
            }
        },
        "licenseFiles": [
            "LICENSE"
        ],
        "maintainer": "tacla.yamada@gmail.com",
        "benchmarks": [],
        "pkgUrl": "",
        "extraDocFiles": [],
        "synopsis": "Provides ToJSON and FromJSON instances for cabal files",
        "package": {
            "pkgName": {
                "unPackageName": "package-description-aeson"
            },
            "pkgVersion": {
                "versionTags": [],
                "versionBranch": [
                    0,
                    1,
                    0,
                    0
                ]
            }
        },
        "stability": "",
        "author": "Pedro Tacla Yamada",
        "bugReports": "",
        "dataFiles": [],
        "license": {
            "tag": "MIT",
            "contents": []
        },
        "executables": [],
        "buildDepends": [],
        "extraTmpFiles": [],
        "buildType": {
            "tag": "Simple",
            "contents": []
        },
        "description": "",
        "sourceRepos": [],
        "customFieldsPD": []
    },
    "condTestSuites": [
        [
            "hspec",
            {
                "condTreeComponents": [],
                "condTreeData": {
                    "testInterface": {
                        "tag": "TestSuiteExeV10",
                        "contents": [
                            {
                                "versionTags": [],
                                "versionBranch": [
                                    1,
                                    0
                                ]
                            },
                            "Distribution/PackageDescription/AesonSpec.hs"
                        ]
                    },
                    "testName": "",
                    "testEnabled": false,
                    "testBuildInfo": {
                        "buildable": true,
                        "targetBuildDepends": [
                            [
                                {
                                    "unPackageName": "Cabal"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "aeson"
                                },
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    10
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    0,
                                                    10
                                                ]
                                            }
                                        }
                                    ]
                                }
                            ],
                            [
                                {
                                    "unPackageName": "base"
                                },
                                {
                                    "tag": "IntersectVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "UnionVersionRanges",
                                            "contents": [
                                                {
                                                    "tag": "ThisVersion",
                                                    "contents": {
                                                        "versionTags": [],
                                                        "versionBranch": [
                                                            4,
                                                            8
                                                        ]
                                                    }
                                                },
                                                {
                                                    "tag": "LaterVersion",
                                                    "contents": {
                                                        "versionTags": [],
                                                        "versionBranch": [
                                                            4,
                                                            8
                                                        ]
                                                    }
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "EarlierVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    9
                                                ]
                                            }
                                        }
                                    ]
                                }
                            ],
                            [
                                {
                                    "unPackageName": "containers"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "bytestring"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "aeson-pretty"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ],
                            [
                                {
                                    "unPackageName": "hspec"
                                },
                                {
                                    "tag": "AnyVersion",
                                    "contents": []
                                }
                            ]
                        ],
                        "buildTools": [],
                        "otherLanguages": [],
                        "oldExtensions": [],
                        "otherModules": [],
                        "ldOptions": [],
                        "ccOptions": [],
                        "includeDirs": [],
                        "extraGHCiLibs": [],
                        "extraLibs": [],
                        "installIncludes": [],
                        "sharedOptions": [],
                        "defaultExtensions": [],
                        "frameworks": [],
                        "includes": [],
                        "jsSources": [],
                        "hsSourceDirs": [
                            "src"
                        ],
                        "targetBuildRenaming": {
                            "tag": "Bin",
                            "contents": [
                                7,
                                {
                                    "unPackageName": "base"
                                },
                                [
                                    true,
                                    []
                                ],
                                {
                                    "tag": "Bin",
                                    "contents": [
                                        3,
                                        {
                                            "unPackageName": "aeson"
                                        },
                                        [
                                            true,
                                            []
                                        ],
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "Cabal"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "aeson-pretty"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        }
                                    ]
                                },
                                {
                                    "tag": "Bin",
                                    "contents": [
                                        3,
                                        {
                                            "unPackageName": "containers"
                                        },
                                        [
                                            true,
                                            []
                                        ],
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "bytestring"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        },
                                        {
                                            "tag": "Bin",
                                            "contents": [
                                                1,
                                                {
                                                    "unPackageName": "hspec"
                                                },
                                                [
                                                    true,
                                                    []
                                                ],
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                },
                                                {
                                                    "tag": "Tip",
                                                    "contents": []
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        "cSources": [],
                        "options": [],
                        "cppOptions": [],
                        "profOptions": [],
                        "pkgconfigDepends": [],
                        "otherExtensions": [],
                        "extraLibDirs": [],
                        "defaultLanguage": {
                            "tag": "Haskell2010",
                            "contents": []
                        },
                        "customFieldsBI": []
                    }
                },
                "condTreeConstraints": [
                    [
                        {
                            "unPackageName": "Cabal"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "aeson"
                        },
                        {
                            "tag": "UnionVersionRanges",
                            "contents": [
                                {
                                    "tag": "ThisVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                },
                                {
                                    "tag": "LaterVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "base"
                        },
                        {
                            "tag": "IntersectVersionRanges",
                            "contents": [
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        }
                                    ]
                                },
                                {
                                    "tag": "EarlierVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            4,
                                            9
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "containers"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "bytestring"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "aeson-pretty"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "hspec"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ]
                ]
            }
        ]
    ],
    "condLibrary": {
        "condTreeComponents": [],
        "condTreeData": {
            "libExposed": true,
            "requiredSignatures": [],
            "exposedModules": [
                [
                    "Distribution",
                    "PackageDescription",
                    "Aeson"
                ]
            ],
            "exposedSignatures": [],
            "libBuildInfo": {
                "buildable": true,
                "targetBuildDepends": [
                    [
                        {
                            "unPackageName": "Cabal"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ],
                    [
                        {
                            "unPackageName": "aeson"
                        },
                        {
                            "tag": "UnionVersionRanges",
                            "contents": [
                                {
                                    "tag": "ThisVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                },
                                {
                                    "tag": "LaterVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            0,
                                            10
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "base"
                        },
                        {
                            "tag": "IntersectVersionRanges",
                            "contents": [
                                {
                                    "tag": "UnionVersionRanges",
                                    "contents": [
                                        {
                                            "tag": "ThisVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        },
                                        {
                                            "tag": "LaterVersion",
                                            "contents": {
                                                "versionTags": [],
                                                "versionBranch": [
                                                    4,
                                                    8
                                                ]
                                            }
                                        }
                                    ]
                                },
                                {
                                    "tag": "EarlierVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            4,
                                            9
                                        ]
                                    }
                                }
                            ]
                        }
                    ],
                    [
                        {
                            "unPackageName": "containers"
                        },
                        {
                            "tag": "AnyVersion",
                            "contents": []
                        }
                    ]
                ],
                "buildTools": [],
                "otherLanguages": [],
                "oldExtensions": [],
                "otherModules": [],
                "ldOptions": [],
                "ccOptions": [],
                "includeDirs": [],
                "extraGHCiLibs": [],
                "extraLibs": [],
                "installIncludes": [],
                "sharedOptions": [],
                "defaultExtensions": [],
                "frameworks": [],
                "includes": [],
                "jsSources": [],
                "hsSourceDirs": [
                    "src"
                ],
                "targetBuildRenaming": {
                    "tag": "Bin",
                    "contents": [
                        4,
                        {
                            "unPackageName": "aeson"
                        },
                        [
                            true,
                            []
                        ],
                        {
                            "tag": "Bin",
                            "contents": [
                                1,
                                {
                                    "unPackageName": "Cabal"
                                },
                                [
                                    true,
                                    []
                                ],
                                {
                                    "tag": "Tip",
                                    "contents": []
                                },
                                {
                                    "tag": "Tip",
                                    "contents": []
                                }
                            ]
                        },
                        {
                            "tag": "Bin",
                            "contents": [
                                2,
                                {
                                    "unPackageName": "base"
                                },
                                [
                                    true,
                                    []
                                ],
                                {
                                    "tag": "Tip",
                                    "contents": []
                                },
                                {
                                    "tag": "Bin",
                                    "contents": [
                                        1,
                                        {
                                            "unPackageName": "containers"
                                        },
                                        [
                                            true,
                                            []
                                        ],
                                        {
                                            "tag": "Tip",
                                            "contents": []
                                        },
                                        {
                                            "tag": "Tip",
                                            "contents": []
                                        }
                                    ]
                                }
                            ]
                        }
                    ]
                },
                "cSources": [],
                "options": [
                    [
                        {
                            "tag": "GHC",
                            "contents": []
                        },
                        [
                            "-ddump-splices"
                        ]
                    ]
                ],
                "cppOptions": [],
                "profOptions": [],
                "pkgconfigDepends": [],
                "otherExtensions": [],
                "extraLibDirs": [],
                "defaultLanguage": {
                    "tag": "Haskell2010",
                    "contents": []
                },
                "customFieldsBI": []
            },
            "reexportedModules": []
        },
        "condTreeConstraints": [
            [
                {
                    "unPackageName": "Cabal"
                },
                {
                    "tag": "AnyVersion",
                    "contents": []
                }
            ],
            [
                {
                    "unPackageName": "aeson"
                },
                {
                    "tag": "UnionVersionRanges",
                    "contents": [
                        {
                            "tag": "ThisVersion",
                            "contents": {
                                "versionTags": [],
                                "versionBranch": [
                                    0,
                                    10
                                ]
                            }
                        },
                        {
                            "tag": "LaterVersion",
                            "contents": {
                                "versionTags": [],
                                "versionBranch": [
                                    0,
                                    10
                                ]
                            }
                        }
                    ]
                }
            ],
            [
                {
                    "unPackageName": "base"
                },
                {
                    "tag": "IntersectVersionRanges",
                    "contents": [
                        {
                            "tag": "UnionVersionRanges",
                            "contents": [
                                {
                                    "tag": "ThisVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            4,
                                            8
                                        ]
                                    }
                                },
                                {
                                    "tag": "LaterVersion",
                                    "contents": {
                                        "versionTags": [],
                                        "versionBranch": [
                                            4,
                                            8
                                        ]
                                    }
                                }
                            ]
                        },
                        {
                            "tag": "EarlierVersion",
                            "contents": {
                                "versionTags": [],
                                "versionBranch": [
                                    4,
                                    9
                                ]
                            }
                        }
                    ]
                }
            ],
            [
                {
                    "unPackageName": "containers"
                },
                {
                    "tag": "AnyVersion",
                    "contents": []
                }
            ]
        ]
    }
}
```

## License
This code is published under the MIT license for Pedro Tacla Yamada. For more
information please refer to the [LICENSE](/LICENSE) file.
