test -f "$TESTDIR/.zcompdump" && rm "$TESTDIR/.zcompdump"

source "$TESTDIR/../up.zsh"
export ENV_AUTHORIZATION_FILE="$PWD/.env_auth"
