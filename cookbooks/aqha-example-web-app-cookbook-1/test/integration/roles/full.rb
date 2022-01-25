name "full"
description "Test role for aqha-example-web-app which installs and configures application."

run_list(
  "recipe[aqha-example-web-app::default]"
)

default_attributes(
  "aqha" => {
    "deploy_mode" => "FULL",
    "environment_name" => "staging"
  }
)
