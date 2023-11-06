# Clean Github Action

Simply removes all files from the root directory.

This is useful to clean residue in workspaces
from previous self-hosted builds which can have a mix of root owned
files that are not able to be removed by the user running the action.

It seems the checkout action is run as the host user, but files created by other
actions is run by root.  The subsequent checkout is unable to remove the files
created from the previous run.  Action Runners does not automatically clean up.



## Usage

```
name: Build with Clean

on:
  push:
    branches-ignore:
      - master
jobs:
  build:
    runs-on: self-hosted
    steps:
      - uses: threeheartsdigital/action-clean@main
      - uses: actions/checkout@v2
      - run: echo Hello World
```
