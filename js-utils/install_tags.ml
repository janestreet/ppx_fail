let package_name = "ppx_fail"

let sections =
  [ ("lib",
    [ ("built_lib_ppx_fail", None)
    ],
    [ ("META", None)
    ])
  ; ("bin",
    [ ("built_exec_ppx", Some "../lib/ppx_fail/ppx")
    ],
    [])
  ]
