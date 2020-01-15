FROM alpine:latest

LABEL repository="http://github.com/robotology/gh-action-squash"
LABEL homepage="http://github.com/robotology/gh-action-squash"
LABEL "com.github.actions.name"="Squash PR"
LABEL "com.github.actions.description"="Squash all commits in a PR into the first one."
LABEL "com.github.actions.icon"="git-branch"
LABEL "com.github.actions.color"="orange"

RUN apk --no-cache add bash curl git jq

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
