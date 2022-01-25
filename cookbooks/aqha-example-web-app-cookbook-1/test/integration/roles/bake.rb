name "bake"
description "Test role for aqha-example-web-app which installs application."

run_list(
  "recipe[aqha-example-web-app::default]"
)

default_attributes(
  "aqha" => {
    "deploy_mode" => "BAKE",
    "environment_name" => "dev"
  }
)
