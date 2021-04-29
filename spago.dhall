{ name = "elmish-emotion-test"
, dependencies =
  [ "console", "effect", "elmish", "elmish-html", "elmish-emotion", "psci-support" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
