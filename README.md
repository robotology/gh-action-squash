# Nightly Merge Action

Squash all commits in a PR into the first one.

## Installation

To enable the action simply create the `.github/workflows/squash-pr.yml`
file with the following content:

```yml
name: 'Squash PR'

on:
  issue_comment:
    types: [created]

jobs:
  squash-pr:

    runs-on: ubuntu-latest

    steps:
    - name: Checkout
      uses: actions/checkout@v1

    - name: Rebase PR
      uses: robotology/gh-action-squash@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        <user>_TOKEN: ${{ secrets.<user>_TOKEN }}
```

Replace user token with a secret token for each user that should be allowed to
start the action.
