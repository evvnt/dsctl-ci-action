#!/usr/bin/env bash

# Switch to use a stable release of dsctl once it's available
git clone https://github.com/evvnt/dsctl.git
cd dsctl
bundle install --without development test
cd ..

CMD="dsctl/bin/dsctl $COMMAND $SCHEMAS_PATH"
echo "Running: $CMD"
eval $CMD
