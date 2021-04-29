
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.14.0-20210329/packages.dhall sha256:32c90bbcd8c1018126be586097f05266b391f6aea9125cf10fba2292cb2b8c73
      with elmish-emotion =
        { dependencies =
          [ "colors"
          , "console"
          , "effect"
          , "foreign"
          , "foreign-object"
          , "numbers"
          , "prelude"
          , "psci-support"
          , "elmish"
          , "elmish-html"
          , "typelevel-prelude"
          , "unsafe-reference"
          ]
        , repo =
            "https://github.com/sigma-andex/purescript-react-basic-emotion.git"
        , version = "switch-to-elmish"
        }

in  upstream
