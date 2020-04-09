#!/bin/sh
# Docker entrypoint script.

./example_app/bin/example_app eval "ExampleApp.Db.Release.migrate"

# run seeding, uncomment if you have seeding scripts
# ./example_app/bin/example_app eval "ExampleApp.Db.Release.seed"

# Start our app
./example_app/bin/example_app start