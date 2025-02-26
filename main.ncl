# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let _js2n__-prdslib
  = import json-schema-lib
  in
let rec _js2n__-refsenv
    = {
      "_js2n__-:definitions/architecture!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "ARM32", "x64", "x86" ] ],
      "_js2n__-:definitions/branch!predicate"
        | doc m%"
          When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
          The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
          The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
          You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
          - branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
          - tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
          You can exclude tags and branches using the ! character. The order that you define patterns matters.
          - A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
          - A matching positive pattern after a negative match will include the Git ref again.
        "%
        = _js2n__-refsenv."_js2n__-:definitions/globs!predicate",
      "_js2n__-:definitions/concurrency!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.required [ "group" ],
              _js2n__-prdslib.records.record
                {
                  cancel-in-progress =
                    _js2n__-prdslib.oneOf
                        [ _js2n__-prdslib.isType '"Bool", _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate" ],
                  group = _js2n__-prdslib.isType '"String",
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/configuration!predicate" =
        _js2n__-prdslib.oneOf
            [
              _js2n__-prdslib.isType '"String",
              _js2n__-prdslib.isType '"Number",
              _js2n__-prdslib.isType '"Bool",
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType 'Record,
                  _js2n__-prdslib.records.record {} {} true _js2n__-refsenv."_js2n__-:definitions/configuration!predicate"
                ],
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType '"Array",
                  _js2n__-prdslib.arrays.arrayOf _js2n__-refsenv."_js2n__-:definitions/configuration!predicate"
                ]
            ],
      "_js2n__-:definitions/container!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.required [ "image" ],
              _js2n__-prdslib.records.record
                {
                  credentials =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.record
                            { password = _js2n__-prdslib.isType '"String", username = _js2n__-prdslib.isType '"String", } {} true
                            _js2n__-prdslib.always
                        ],
                  env = _js2n__-refsenv."_js2n__-:definitions/env!predicate",
                  image = _js2n__-prdslib.isType '"String",
                  options = _js2n__-prdslib.isType '"String",
                  ports =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType '"Array",
                          _js2n__-prdslib.arrays.arrayOf
                            (_js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"String" ]),
                          _js2n__-prdslib.arrays.minItems 1
                        ],
                  volumes =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType '"Array",
                          _js2n__-prdslib.arrays.arrayOf
                            (_js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.pattern "^[^:]+:[^:]+$" ]),
                          _js2n__-prdslib.arrays.minItems 1
                        ],
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/defaults!contract" =
        _js2n__-prdslib.contract_from_predicate
            (_js2n__-prdslib.allOf
              [
                _js2n__-prdslib.isType 'Record,
                _js2n__-prdslib.records.minProperties 1,
                _js2n__-prdslib.records.record
                  {
                    run =
                      _js2n__-prdslib.allOf
                          [
                            _js2n__-prdslib.isType 'Record,
                            _js2n__-prdslib.records.minProperties 1,
                            _js2n__-prdslib.records.record
                              {
                                shell = _js2n__-refsenv."_js2n__-:definitions/shell!predicate",
                                working-directory = _js2n__-refsenv."_js2n__-:definitions/working-directory!predicate",
                              } {} false _js2n__-prdslib.never
                          ],
                  } {} false _js2n__-prdslib.never
              ]),
      "_js2n__-:definitions/defaults!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.minProperties 1,
              _js2n__-prdslib.records.record
                {
                  run =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.minProperties 1,
                          _js2n__-prdslib.records.record
                            {
                              shell = _js2n__-refsenv."_js2n__-:definitions/shell!predicate",
                              working-directory = _js2n__-refsenv."_js2n__-:definitions/working-directory!predicate",
                            } {} false _js2n__-prdslib.never
                        ],
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/env!contract"
        | doc "To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv"
        = _js2n__-prdslib.contract_from_predicate
            (_js2n__-prdslib.oneOf
              [
                _js2n__-prdslib.allOf
                  [
                    _js2n__-prdslib.isType 'Record,
                    _js2n__-prdslib.records.record {} {} true
                      (_js2n__-prdslib.oneOf
                        [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"Bool" ])
                  ],
                _js2n__-refsenv."_js2n__-:definitions/stringContainingExpressionSyntax!predicate"
              ]),
      "_js2n__-:definitions/env!predicate"
        | doc "To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv"
        = _js2n__-prdslib.oneOf
            [
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType 'Record,
                  _js2n__-prdslib.records.record {} {} true
                    (_js2n__-prdslib.oneOf
                      [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"Bool" ])
                ],
              _js2n__-refsenv."_js2n__-:definitions/stringContainingExpressionSyntax!predicate"
            ],
      "_js2n__-:definitions/environment!predicate"
        | doc "The environment that the job references"
        = _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.required [ "name" ],
              _js2n__-prdslib.records.record { name = _js2n__-prdslib.isType '"String", url = _js2n__-prdslib.isType '"String", } {} false
                _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/event!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType '"String",
              _js2n__-prdslib.enum
                [
                  "branch_protection_rule",
                  "check_run",
                  "check_suite",
                  "create",
                  "delete",
                  "deployment",
                  "deployment_status",
                  "discussion",
                  "discussion_comment",
                  "fork",
                  "gollum",
                  "issue_comment",
                  "issues",
                  "label",
                  "member",
                  "milestone",
                  "page_build",
                  "project",
                  "project_card",
                  "project_column",
                  "public",
                  "pull_request",
                  "pull_request_review",
                  "pull_request_review_comment",
                  "pull_request_target",
                  "push",
                  "registry_package",
                  "release",
                  "status",
                  "watch",
                  "workflow_call",
                  "workflow_dispatch",
                  "workflow_run",
                  "repository_dispatch"
                ]
            ],
      "_js2n__-:definitions/eventObject!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.oneOf [ _js2n__-prdslib.isType 'Record, _js2n__-prdslib.isType 'Null ],
              _js2n__-prdslib.records.record {} {} true _js2n__-prdslib.always
            ],
      "_js2n__-:definitions/expressionSyntax!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.pattern "^\\$\\{\\{(.|[\r\n])*\\}\\}$" ],
      "_js2n__-:definitions/globs!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType '"Array",
              _js2n__-prdslib.arrays.arrayOf (_js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.minLength 1 ]),
              _js2n__-prdslib.arrays.minItems 1
            ],
      "_js2n__-:definitions/jobNeeds!predicate"
        | doc "Identifies any jobs that must complete successfully before this job will run. It can be a string or array of strings. If a job fails, all jobs that need it are skipped unless the jobs use a conditional statement that causes the job to continue."
        = _js2n__-prdslib.oneOf
            [
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType '"Array",
                  _js2n__-prdslib.arrays.arrayOf _js2n__-refsenv."_js2n__-:definitions/name!predicate",
                  _js2n__-prdslib.arrays.minItems 1
                ],
              _js2n__-refsenv."_js2n__-:definitions/name!predicate"
            ],
      "_js2n__-:definitions/machine!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "linux", "macos", "windows" ] ],
      "_js2n__-:definitions/name!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.pattern "^[_a-zA-Z][a-zA-Z0-9_-]*$" ],
      "_js2n__-:definitions/normalJob!predicate"
        | doc "Each job must have an id to associate with the job. The key job_id is a string and its value is a map of the job's configuration data. You must replace <job_id> with a string that is unique to the jobs object. The <job_id> must start with a letter or _ and contain only alphanumeric characters, -, or _."
        = _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.required [ "runs-on" ],
              _js2n__-prdslib.records.record
                {
                  concurrency =
                    _js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"String", _js2n__-refsenv."_js2n__-:definitions/concurrency!predicate" ],
                  container =
                    _js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"String", _js2n__-refsenv."_js2n__-:definitions/container!predicate" ],
                  continue-on-error =
                    _js2n__-prdslib.oneOf
                        [ _js2n__-prdslib.isType '"Bool", _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate" ],
                  defaults = _js2n__-refsenv."_js2n__-:definitions/defaults!predicate",
                  env = _js2n__-refsenv."_js2n__-:definitions/env!predicate",
                  environment =
                    _js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"String", _js2n__-refsenv."_js2n__-:definitions/environment!predicate" ],
                  "if" =
                    _js2n__-prdslib.anyOf
                        [ _js2n__-prdslib.isType '"Bool", _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"String" ],
                  name = _js2n__-prdslib.isType '"String",
                  needs = _js2n__-refsenv."_js2n__-:definitions/jobNeeds!predicate",
                  outputs =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.minProperties 1,
                          _js2n__-prdslib.records.record {} {} true (_js2n__-prdslib.isType '"String")
                        ],
                  permissions = _js2n__-refsenv."_js2n__-:definitions/permissions!predicate",
                  runs-on =
                    _js2n__-prdslib.oneOf
                        [
                          _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.isType '"String",
                              _js2n__-prdslib.enum
                                [
                                  "macos-10.15",
                                  "macos-11",
                                  "macos-12",
                                  "macos-12-xl",
                                  "macos-13",
                                  "macos-13-xl",
                                  "macos-latest",
                                  "macos-latest-xl",
                                  "self-hosted",
                                  "ubuntu-18.04",
                                  "ubuntu-20.04",
                                  "ubuntu-22.04",
                                  "ubuntu-latest",
                                  "ubuntu-latest-4-cores",
                                  "ubuntu-latest-8-cores",
                                  "ubuntu-latest-16-cores",
                                  "windows-2019",
                                  "windows-2022",
                                  "windows-latest",
                                  "windows-latest-8-cores"
                                ]
                            ],
                          _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.isType '"Array",
                              _js2n__-prdslib.anyOf
                                [
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items [ _js2n__-prdslib.const "self-hosted" ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 1,
                                      _js2n__-prdslib.arrays.minItems 1
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items
                                        [ _js2n__-prdslib.const "self-hosted", _js2n__-refsenv."_js2n__-:definitions/machine!predicate" ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 2,
                                      _js2n__-prdslib.arrays.minItems 2
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items
                                        [ _js2n__-prdslib.const "self-hosted", _js2n__-refsenv."_js2n__-:definitions/architecture!predicate" ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 2,
                                      _js2n__-prdslib.arrays.minItems 2
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items
                                        [
                                          _js2n__-prdslib.const "self-hosted",
                                          _js2n__-refsenv."_js2n__-:definitions/machine!predicate",
                                          _js2n__-refsenv."_js2n__-:definitions/architecture!predicate"
                                        ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 3,
                                      _js2n__-prdslib.arrays.minItems 3
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items
                                        [
                                          _js2n__-prdslib.const "self-hosted",
                                          _js2n__-refsenv."_js2n__-:definitions/architecture!predicate",
                                          _js2n__-refsenv."_js2n__-:definitions/machine!predicate"
                                        ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 3,
                                      _js2n__-prdslib.arrays.minItems 3
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items [ _js2n__-prdslib.const "linux" ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 1,
                                      _js2n__-prdslib.arrays.maxItems 2,
                                      _js2n__-prdslib.arrays.minItems 2
                                    ],
                                  _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.arrays.items [ _js2n__-prdslib.const "windows" ],
                                      _js2n__-prdslib.arrays.additionalItems (_js2n__-prdslib.isType '"String") 1,
                                      _js2n__-prdslib.arrays.maxItems 2,
                                      _js2n__-prdslib.arrays.minItems 2
                                    ]
                                ]
                            ],
                          _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.isType 'Record,
                              _js2n__-prdslib.records.record
                                {
                                  group = _js2n__-prdslib.isType '"String",
                                  labels =
                                    _js2n__-prdslib.oneOf
                                        [
                                          _js2n__-prdslib.isType '"String",
                                          _js2n__-prdslib.allOf
                                            [
                                              _js2n__-prdslib.isType '"Array",
                                              _js2n__-prdslib.arrays.arrayOf (_js2n__-prdslib.isType '"String")
                                            ]
                                        ],
                                } {} true _js2n__-prdslib.always
                            ],
                          _js2n__-refsenv."_js2n__-:definitions/stringContainingExpressionSyntax!predicate"
                        ],
                  services =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.record {} {} true _js2n__-refsenv."_js2n__-:definitions/container!predicate"
                        ],
                  steps =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType '"Array",
                          _js2n__-prdslib.arrays.arrayOf
                            (_js2n__-prdslib.allOf
                              [
                                _js2n__-prdslib.oneOf
                                  [
                                    _js2n__-prdslib.allOf
                                      [
                                        _js2n__-prdslib.isType 'Record,
                                        _js2n__-prdslib.records.required [ "uses" ],
                                        _js2n__-prdslib.records.record { uses = _js2n__-prdslib.isType '"String", } {} true
                                          _js2n__-prdslib.always
                                      ],
                                    _js2n__-prdslib.allOf
                                      [
                                        _js2n__-prdslib.isType 'Record,
                                        _js2n__-prdslib.records.required [ "run" ],
                                        _js2n__-prdslib.records.record { run = _js2n__-prdslib.isType '"String", } {} true
                                          _js2n__-prdslib.always
                                      ]
                                  ],
                                _js2n__-prdslib.allOf
                                  [
                                    _js2n__-prdslib.isType 'Record,
                                    _js2n__-prdslib.records.record
                                      {
                                        continue-on-error =
                                          _js2n__-prdslib.oneOf
                                              [
                                                _js2n__-prdslib.isType '"Bool",
                                                _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate"
                                              ],
                                        env = _js2n__-refsenv."_js2n__-:definitions/env!predicate",
                                        id = _js2n__-prdslib.isType '"String",
                                        "if" =
                                          _js2n__-prdslib.anyOf
                                              [
                                                _js2n__-prdslib.isType '"Bool",
                                                _js2n__-prdslib.isType '"Number",
                                                _js2n__-prdslib.isType '"String"
                                              ],
                                        name = _js2n__-prdslib.isType '"String",
                                        run = _js2n__-prdslib.isType '"String",
                                        shell = _js2n__-refsenv."_js2n__-:definitions/shell!predicate",
                                        timeout-minutes =
                                          _js2n__-prdslib.oneOf
                                              [
                                                _js2n__-prdslib.isType '"Number",
                                                _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate"
                                              ],
                                        uses = _js2n__-prdslib.isType '"String",
                                        with =
                                          _js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.records.record
                                                  { args = _js2n__-prdslib.isType '"String", entrypoint = _js2n__-prdslib.isType '"String", }
                                                  {} true _js2n__-prdslib.always,
                                                _js2n__-refsenv."_js2n__-:definitions/env!predicate"
                                              ],
                                        working-directory = _js2n__-refsenv."_js2n__-:definitions/working-directory!predicate",
                                      } {} false _js2n__-prdslib.never,
                                    _js2n__-prdslib.records.dependencies { shell = [ "run" ], working-directory = [ "run" ], }
                                  ]
                              ]),
                          _js2n__-prdslib.arrays.minItems 1
                        ],
                  strategy =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.required [ "matrix" ],
                          _js2n__-prdslib.records.record
                            {
                              fail-fast = _js2n__-prdslib.isType '"Bool",
                              matrix =
                                _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.oneOf
                                        [ _js2n__-prdslib.isType 'Record, _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate" ],
                                      _js2n__-prdslib.records.minProperties 1,
                                      _js2n__-prdslib.records.record {}
                                        {
                                          "^(in|ex)clude$" =
                                            _js2n__-prdslib.allOf
                                                [
                                                  _js2n__-prdslib.isType '"Array",
                                                  _js2n__-prdslib.arrays.arrayOf
                                                    (_js2n__-prdslib.allOf
                                                      [
                                                        _js2n__-prdslib.isType 'Record,
                                                        _js2n__-prdslib.records.record {} {} true
                                                          _js2n__-refsenv."_js2n__-:definitions/configuration!predicate"
                                                      ]),
                                                  _js2n__-prdslib.arrays.minItems 1
                                                ],
                                        } true
                                        (_js2n__-prdslib.oneOf
                                          [
                                            _js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"Array",
                                                _js2n__-prdslib.arrays.arrayOf _js2n__-refsenv."_js2n__-:definitions/configuration!predicate",
                                                _js2n__-prdslib.arrays.minItems 1
                                              ],
                                            _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate"
                                          ])
                                    ],
                              max-parallel = _js2n__-prdslib.anyOf [ _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"String" ],
                            } {} false _js2n__-prdslib.never
                        ],
                  timeout-minutes =
                    _js2n__-prdslib.oneOf
                        [ _js2n__-prdslib.isType '"Number", _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate" ],
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/path!predicate"
        | doc m%"
          When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
          The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
          You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
          - paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
          - paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
        "%
        = _js2n__-refsenv."_js2n__-:definitions/globs!predicate",
      "_js2n__-:definitions/permissions!contract"
        | doc "You can modify the default permissions granted to the GITHUB_TOKEN, adding or removing access as required, so that you only allow the minimum required access."
        = _js2n__-prdslib.contract_from_predicate
            (_js2n__-prdslib.oneOf
              [
                _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "read-all", "write-all" ] ],
                _js2n__-refsenv."_js2n__-:definitions/permissions-event!predicate"
              ]),
      "_js2n__-:definitions/permissions!predicate"
        | doc "You can modify the default permissions granted to the GITHUB_TOKEN, adding or removing access as required, so that you only allow the minimum required access."
        = _js2n__-prdslib.oneOf
            [
              _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "read-all", "write-all" ] ],
              _js2n__-refsenv."_js2n__-:definitions/permissions-event!predicate"
            ],
      "_js2n__-:definitions/permissions-event!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.record
                {
                  actions = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  checks = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  contents = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  deployments = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  discussions = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  id-token = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  issues = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  packages = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  pages = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  pull-requests = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  repository-projects = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  security-events = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                  statuses = _js2n__-refsenv."_js2n__-:definitions/permissions-level!predicate",
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/permissions-level!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "read", "write", "none" ] ],
      "_js2n__-:definitions/ref!predicate" =
        _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.oneOf
                [
                  _js2n__-prdslib.allOf
                    [
                      _js2n__-prdslib.isType 'Record,
                      _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.not
                            (_js2n__-prdslib.allOf
                              [
                                _js2n__-prdslib.records.required [ "branches", "branches-ignore" ],
                                _js2n__-prdslib.records.record {} {} true _js2n__-prdslib.always
                              ]),
                          _js2n__-prdslib.not
                            (_js2n__-prdslib.allOf
                              [
                                _js2n__-prdslib.records.required [ "tags", "tags-ignore" ],
                                _js2n__-prdslib.records.record {} {} true _js2n__-prdslib.always
                              ]),
                          _js2n__-prdslib.not
                            (_js2n__-prdslib.allOf
                              [
                                _js2n__-prdslib.records.required [ "paths", "paths-ignore" ],
                                _js2n__-prdslib.records.record {} {} true _js2n__-prdslib.always
                              ])
                        ]
                    ],
                  _js2n__-prdslib.isType 'Null
                ],
              _js2n__-prdslib.records.record
                {
                  branches = _js2n__-refsenv."_js2n__-:definitions/branch!predicate",
                  branches-ignore = _js2n__-refsenv."_js2n__-:definitions/branch!predicate",
                  paths = _js2n__-refsenv."_js2n__-:definitions/path!predicate",
                  paths-ignore = _js2n__-refsenv."_js2n__-:definitions/path!predicate",
                  tags = _js2n__-refsenv."_js2n__-:definitions/branch!predicate",
                  tags-ignore = _js2n__-refsenv."_js2n__-:definitions/branch!predicate",
                } {} true _js2n__-prdslib.always
            ],
      "_js2n__-:definitions/reusableWorkflowCallJob!predicate"
        | doc "Each job must have an id to associate with the job. The key job_id is a string and its value is a map of the job's configuration data. You must replace <job_id> with a string that is unique to the jobs object. The <job_id> must start with a letter or _ and contain only alphanumeric characters, -, or _."
        = _js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.required [ "uses" ],
              _js2n__-prdslib.records.record
                {
                  concurrency =
                    _js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"String", _js2n__-refsenv."_js2n__-:definitions/concurrency!predicate" ],
                  "if" =
                    _js2n__-prdslib.anyOf
                        [ _js2n__-prdslib.isType '"Bool", _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"String" ],
                  name = _js2n__-prdslib.isType '"String",
                  needs = _js2n__-refsenv."_js2n__-:definitions/jobNeeds!predicate",
                  permissions = _js2n__-refsenv."_js2n__-:definitions/permissions-event!predicate",
                  secrets =
                    _js2n__-prdslib.oneOf
                        [
                          _js2n__-refsenv."_js2n__-:definitions/env!predicate",
                          _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "inherit" ] ]
                        ],
                  strategy =
                    _js2n__-prdslib.allOf
                        [
                          _js2n__-prdslib.isType 'Record,
                          _js2n__-prdslib.records.required [ "matrix" ],
                          _js2n__-prdslib.records.record
                            {
                              fail-fast = _js2n__-prdslib.isType '"Bool",
                              matrix =
                                _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.oneOf
                                        [ _js2n__-prdslib.isType 'Record, _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate" ],
                                      _js2n__-prdslib.records.minProperties 1,
                                      _js2n__-prdslib.records.record {}
                                        {
                                          "^(in|ex)clude$" =
                                            _js2n__-prdslib.allOf
                                                [
                                                  _js2n__-prdslib.isType '"Array",
                                                  _js2n__-prdslib.arrays.arrayOf
                                                    (_js2n__-prdslib.allOf
                                                      [
                                                        _js2n__-prdslib.isType 'Record,
                                                        _js2n__-prdslib.records.record {} {} true
                                                          _js2n__-refsenv."_js2n__-:definitions/configuration!predicate"
                                                      ]),
                                                  _js2n__-prdslib.arrays.minItems 1
                                                ],
                                        } true
                                        (_js2n__-prdslib.oneOf
                                          [
                                            _js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"Array",
                                                _js2n__-prdslib.arrays.arrayOf _js2n__-refsenv."_js2n__-:definitions/configuration!predicate",
                                                _js2n__-prdslib.arrays.minItems 1
                                              ],
                                            _js2n__-refsenv."_js2n__-:definitions/expressionSyntax!predicate"
                                          ])
                                    ],
                              max-parallel = _js2n__-prdslib.anyOf [ _js2n__-prdslib.isType '"Number", _js2n__-prdslib.isType '"String" ],
                            } {} false _js2n__-prdslib.never
                        ],
                  uses =
                    _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.pattern "^(.+/)+(.+)\\.(ya?ml)(@.+)?$" ],
                  with = _js2n__-refsenv."_js2n__-:definitions/env!predicate",
                } {} false _js2n__-prdslib.never
            ],
      "_js2n__-:definitions/shell!predicate"
        | doc "You can override the default shell settings in the runner's operating system using the shell keyword. You can use built-in shell keywords, or you can define a custom set of shell options."
        = _js2n__-prdslib.anyOf
            [
              _js2n__-prdslib.isType '"String",
              _js2n__-prdslib.allOf
                [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "bash", "pwsh", "python", "sh", "cmd", "powershell" ] ]
            ],
      "_js2n__-:definitions/stringContainingExpressionSyntax!predicate" =
        _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.strings.pattern "^.*\\$\\{\\{(.|[\r\n])*\\}\\}.*$" ],
      "_js2n__-:definitions/types!predicate"
        | doc m%"
          Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
          You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
        "%
        = _js2n__-prdslib.allOf [ _js2n__-prdslib.isType '"Array", _js2n__-prdslib.arrays.minItems 1 ],
      "_js2n__-:definitions/working-directory!predicate"
        | doc "Using the working-directory keyword, you can specify the working directory of where to run the command."
        = _js2n__-prdslib.isType '"String",
    }
    in
  {
      concurrency
        | _js2n__-prdslib.contract_from_predicate
          (_js2n__-prdslib.oneOf [ _js2n__-prdslib.isType '"String", _js2n__-refsenv."_js2n__-:definitions/concurrency!predicate" ])
        | doc m%"
          Concurrency ensures that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression. The expression can use any context except for the secrets context. 
          You can also specify concurrency at the workflow level. 
          When a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled. To also cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.
        "%
        | optional,
      defaults
        | _js2n__-refsenv."_js2n__-:definitions/defaults!contract"
        | doc "A map of default settings that will apply to all jobs in the workflow."
        | optional,
      env
        | _js2n__-refsenv."_js2n__-:definitions/env!contract"
        | doc "A map of environment variables that are available to all jobs and steps in the workflow."
        | optional,
      jobs
        | _js2n__-prdslib.contract_from_predicate
          (_js2n__-prdslib.allOf
            [
              _js2n__-prdslib.isType 'Record,
              _js2n__-prdslib.records.minProperties 1,
              _js2n__-prdslib.records.record {}
                {
                  "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                    _js2n__-prdslib.oneOf
                        [
                          _js2n__-refsenv."_js2n__-:definitions/normalJob!predicate",
                          _js2n__-refsenv."_js2n__-:definitions/reusableWorkflowCallJob!predicate"
                        ],
                } false _js2n__-prdslib.never
            ])
        | doc m%"
          A workflow run is made up of one or more jobs. Jobs run in parallel by default. To run jobs sequentially, you can define dependencies on other jobs using the jobs.<job_id>.needs keyword.
          Each job runs in a fresh instance of the virtual environment specified by runs-on.
          You can run an unlimited number of jobs as long as you are within the workflow usage limits. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#usage-limits.
        "%,
      name
        | String
        | doc "The name of your workflow. GitHub displays the names of your workflows on your repository's actions page. If you omit this field, GitHub sets the name to the workflow's filename."
        | optional,
      on
        | _js2n__-prdslib.contract_from_predicate
          (_js2n__-prdslib.oneOf
            [
              _js2n__-refsenv."_js2n__-:definitions/event!predicate",
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType '"Array",
                  _js2n__-prdslib.arrays.arrayOf _js2n__-refsenv."_js2n__-:definitions/event!predicate",
                  _js2n__-prdslib.arrays.minItems 1
                ],
              _js2n__-prdslib.allOf
                [
                  _js2n__-prdslib.isType 'Record,
                  _js2n__-prdslib.records.record
                    {
                      branch_protection_rule =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "created", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      check_run =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "created", "rerequested", "completed", "requested_action" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      check_suite =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "completed", "requested", "rerequested" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      create = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      delete = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      deployment = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      deployment_status = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      discussion =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum
                                                  [
                                                    "created",
                                                    "edited",
                                                    "deleted",
                                                    "transferred",
                                                    "pinned",
                                                    "unpinned",
                                                    "labeled",
                                                    "unlabeled",
                                                    "locked",
                                                    "unlocked",
                                                    "category_changed",
                                                    "answered",
                                                    "unanswered"
                                                  ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      discussion_comment =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "created", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      fork = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      gollum = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      issue_comment =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "created", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      issues =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum
                                                  [
                                                    "opened",
                                                    "edited",
                                                    "deleted",
                                                    "transferred",
                                                    "pinned",
                                                    "unpinned",
                                                    "closed",
                                                    "reopened",
                                                    "assigned",
                                                    "unassigned",
                                                    "labeled",
                                                    "unlabeled",
                                                    "locked",
                                                    "unlocked",
                                                    "milestoned",
                                                    "demilestoned"
                                                  ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      label =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "created", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      member =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "added", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      merge_group =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "checks_requested" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      milestone =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "created", "closed", "opened", "edited", "deleted" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      page_build = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      project =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "created", "updated", "closed", "reopened", "edited", "deleted" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      project_card =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "created", "moved", "converted", "edited", "deleted" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      project_column =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "created", "updated", "moved", "deleted" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      public = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      pull_request =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum
                                                  [
                                                    "assigned",
                                                    "unassigned",
                                                    "labeled",
                                                    "unlabeled",
                                                    "opened",
                                                    "edited",
                                                    "closed",
                                                    "reopened",
                                                    "synchronize",
                                                    "converted_to_draft",
                                                    "ready_for_review",
                                                    "locked",
                                                    "unlocked",
                                                    "review_requested",
                                                    "review_request_removed",
                                                    "auto_merge_enabled",
                                                    "auto_merge_disabled"
                                                  ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } { "^(branche|tag|path)s(-ignore)?$" = _js2n__-prdslib.isType '"Array", } false _js2n__-prdslib.never,
                              _js2n__-refsenv."_js2n__-:definitions/ref!predicate"
                            ],
                      pull_request_review =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum [ "submitted", "edited", "dismissed" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      pull_request_review_comment =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "created", "edited", "deleted" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      pull_request_target =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum
                                                  [
                                                    "assigned",
                                                    "unassigned",
                                                    "labeled",
                                                    "unlabeled",
                                                    "opened",
                                                    "edited",
                                                    "closed",
                                                    "reopened",
                                                    "synchronize",
                                                    "converted_to_draft",
                                                    "ready_for_review",
                                                    "locked",
                                                    "unlocked",
                                                    "review_requested",
                                                    "review_request_removed",
                                                    "auto_merge_enabled",
                                                    "auto_merge_disabled"
                                                  ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } { "^(branche|tag|path)s(-ignore)?$" = _js2n__-prdslib.always, } false _js2n__-prdslib.never,
                              _js2n__-refsenv."_js2n__-:definitions/ref!predicate"
                            ],
                      push =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record {}
                                {
                                  "^(branche|tag|path)s(-ignore)?$" =
                                    _js2n__-prdslib.allOf
                                        [ _js2n__-prdslib.isType '"Array", _js2n__-prdslib.arrays.arrayOf (_js2n__-prdslib.isType '"String") ],
                                } false _js2n__-prdslib.never,
                              _js2n__-refsenv."_js2n__-:definitions/ref!predicate"
                            ],
                      registry_package =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "published", "updated" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      release =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [
                                                _js2n__-prdslib.isType '"String",
                                                _js2n__-prdslib.enum
                                                  [ "published", "unpublished", "created", "edited", "deleted", "prereleased", "released" ]
                                              ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                } {} true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                      repository_dispatch = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      schedule =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.isType '"Array",
                              _js2n__-prdslib.arrays.arrayOf
                                (_js2n__-prdslib.records.record
                                  {
                                    cron =
                                      _js2n__-prdslib.allOf
                                          [
                                            _js2n__-prdslib.isType '"String",
                                            _js2n__-prdslib.strings.pattern
                                              "^(((\\d+,)+\\d+|((\\d+|\\*)/\\d+|((JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)(-(JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC))?))|(\\d+-\\d+)|\\d+(-\\d+)?/\\d+(-\\d+)?|\\d+|\\*|(MON|TUE|WED|THU|FRI|SAT|SUN)(-(MON|TUE|WED|THU|FRI|SAT|SUN))?) ?){5}$"
                                          ],
                                  } {} false _js2n__-prdslib.never),
                              _js2n__-prdslib.arrays.minItems 1
                            ],
                      status = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      watch = _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate",
                      workflow_call =
                        _js2n__-prdslib.records.record
                            {
                              inputs =
                                _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.isType 'Record,
                                      _js2n__-prdslib.records.record {}
                                        {
                                          "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                                            _js2n__-prdslib.allOf
                                                [
                                                  _js2n__-prdslib.isType 'Record,
                                                  _js2n__-prdslib.records.required [ "type" ],
                                                  _js2n__-prdslib.records.record
                                                    {
                                                      "default" =
                                                        _js2n__-prdslib.anyOf
                                                            [
                                                              _js2n__-prdslib.isType '"Bool",
                                                              _js2n__-prdslib.isType '"Number",
                                                              _js2n__-prdslib.isType '"String"
                                                            ],
                                                      deprecationMessage = _js2n__-prdslib.isType '"String",
                                                      description = _js2n__-prdslib.isType '"String",
                                                      required = _js2n__-prdslib.isType '"Bool",
                                                      type =
                                                        _js2n__-prdslib.allOf
                                                            [
                                                              _js2n__-prdslib.isType '"String",
                                                              _js2n__-prdslib.enum [ "boolean", "number", "string" ]
                                                            ],
                                                    } {} false _js2n__-prdslib.never
                                                ],
                                        } false _js2n__-prdslib.never
                                    ],
                              secrets =
                                _js2n__-prdslib.records.record {}
                                    {
                                      "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                                        _js2n__-prdslib.allOf
                                            [
                                              _js2n__-prdslib.records.required [ "required" ],
                                              _js2n__-prdslib.records.record
                                                { description = _js2n__-prdslib.isType '"String", required = _js2n__-prdslib.isType '"Bool", }
                                                {} false _js2n__-prdslib.never
                                            ],
                                    } false _js2n__-prdslib.never,
                            } {} true _js2n__-prdslib.always,
                      workflow_dispatch =
                        _js2n__-prdslib.records.record
                            {
                              inputs =
                                _js2n__-prdslib.allOf
                                    [
                                      _js2n__-prdslib.isType 'Record,
                                      _js2n__-prdslib.records.record {}
                                        {
                                          "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                                            _js2n__-prdslib.allOf
                                                [
                                                  _js2n__-prdslib.isType 'Record,
                                                  _js2n__-prdslib.allOf
                                                    [
                                                      _js2n__-prdslib.ifThenElse
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "type" ],
                                                            _js2n__-prdslib.records.record { type = _js2n__-prdslib.const "string", } {} true
                                                              _js2n__-prdslib.always
                                                          ])
                                                        (_js2n__-prdslib.records.record { "default" = _js2n__-prdslib.isType '"String", } {}
                                                          true _js2n__-prdslib.always) _js2n__-prdslib.always,
                                                      _js2n__-prdslib.ifThenElse
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "type" ],
                                                            _js2n__-prdslib.records.record { type = _js2n__-prdslib.const "boolean", } {} true
                                                              _js2n__-prdslib.always
                                                          ])
                                                        (_js2n__-prdslib.records.record { "default" = _js2n__-prdslib.isType '"Bool", } {} true
                                                          _js2n__-prdslib.always) _js2n__-prdslib.always,
                                                      _js2n__-prdslib.ifThenElse
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "type" ],
                                                            _js2n__-prdslib.records.record { type = _js2n__-prdslib.const "number", } {} true
                                                              _js2n__-prdslib.always
                                                          ])
                                                        (_js2n__-prdslib.records.record { "default" = _js2n__-prdslib.isType '"Number", } {}
                                                          true _js2n__-prdslib.always) _js2n__-prdslib.always,
                                                      _js2n__-prdslib.ifThenElse
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "type" ],
                                                            _js2n__-prdslib.records.record { type = _js2n__-prdslib.const "environment", } {}
                                                              true _js2n__-prdslib.always
                                                          ])
                                                        (_js2n__-prdslib.records.record { "default" = _js2n__-prdslib.isType '"String", } {}
                                                          true _js2n__-prdslib.always) _js2n__-prdslib.always,
                                                      _js2n__-prdslib.ifThenElse
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "type" ],
                                                            _js2n__-prdslib.records.record { type = _js2n__-prdslib.const "choice", } {} true
                                                              _js2n__-prdslib.always
                                                          ])
                                                        (_js2n__-prdslib.allOf
                                                          [
                                                            _js2n__-prdslib.records.required [ "options" ],
                                                            _js2n__-prdslib.records.record {} {} true _js2n__-prdslib.always
                                                          ]) _js2n__-prdslib.always
                                                    ],
                                                  _js2n__-prdslib.records.required [ "description" ],
                                                  _js2n__-prdslib.records.record
                                                    {
                                                      "default" = _js2n__-prdslib.always,
                                                      deprecationMessage = _js2n__-prdslib.isType '"String",
                                                      description = _js2n__-prdslib.isType '"String",
                                                      options =
                                                        _js2n__-prdslib.allOf
                                                            [
                                                              _js2n__-prdslib.isType '"Array",
                                                              _js2n__-prdslib.arrays.arrayOf (_js2n__-prdslib.isType '"String"),
                                                              _js2n__-prdslib.arrays.minItems 1
                                                            ],
                                                      required = _js2n__-prdslib.isType '"Bool",
                                                      type =
                                                        _js2n__-prdslib.allOf
                                                            [
                                                              _js2n__-prdslib.isType '"String",
                                                              _js2n__-prdslib.enum [ "string", "choice", "boolean", "number", "environment" ]
                                                            ],
                                                    } {} false _js2n__-prdslib.never
                                                ],
                                        } false _js2n__-prdslib.never
                                    ],
                            } {} true _js2n__-prdslib.always,
                      workflow_run =
                        _js2n__-prdslib.allOf
                            [
                              _js2n__-prdslib.records.record
                                {
                                  types =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.arrays.arrayOf
                                            (_js2n__-prdslib.allOf
                                              [ _js2n__-prdslib.isType '"String", _js2n__-prdslib.enum [ "requested", "completed" ] ]),
                                          _js2n__-refsenv."_js2n__-:definitions/types!predicate"
                                        ],
                                  workflows =
                                    _js2n__-prdslib.allOf
                                        [
                                          _js2n__-prdslib.isType '"Array",
                                          _js2n__-prdslib.arrays.arrayOf (_js2n__-prdslib.isType '"String"),
                                          _js2n__-prdslib.arrays.minItems 1
                                        ],
                                } { "^branches(-ignore)?$" = _js2n__-prdslib.always, } true _js2n__-prdslib.always,
                              _js2n__-refsenv."_js2n__-:definitions/eventObject!predicate"
                            ],
                    } {} false _js2n__-prdslib.never
                ]
            ])
        | doc "The name of the GitHub event that triggers the workflow. You can provide a single event string, array of events, array of event types, or an event configuration map that schedules a workflow or restricts the execution of a workflow to specific files, tags, or branch changes. For a list of available events, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/events-that-trigger-workflows.",
      permissions | _js2n__-refsenv."_js2n__-:definitions/permissions!contract" | optional,
      run-name
        | String
        | doc "The name for workflow runs generated from the workflow. GitHub displays the workflow run name in the list of workflow runs on your repository's 'Actions' tab."
        | optional,
    }
