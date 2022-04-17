# TODO add more

alias ..="cd .."
alias ...="cd ../.."

# custom functions

## extract JIRA number from branch name
## Usage - in terminal type: gg this is a great new feature
gg() {
  BRANCH_NAME=$(git branch --show-current)
  JIRA_PREFIX=$(echo ${BRANCH_NAME} | cut -d "/" -f 2 | cut -d "-" -f 1)
  JIRA_NUMBER=$(echo ${BRANCH_NAME} | cut -d "/" -f 2 | cut -d "-" -f 2)
  
  git_command="git commit -am \"${JIRA_PREFIX}-${JIRA_NUMBER} ${@}\""
  read -p "Hit enter to run: $git_command"
  sh -c "$git_command"
}

# custom function END
