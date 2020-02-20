#!/bin/bash

IFS=',' read -r -a projects <<< "$GIT_PROJECTS"

echo "--------------------------------------------------------------------------"
printf "|%-21s|%-50s|\n" "Project" "Branch"
echo "--------------------------------------------------------------------------"
for project in "${projects[@]}"
do
  branch=$(git -C ~/Code/$project rev-parse --abbrev-ref HEAD 2>&1)
  printf "|%-21s|%-50s|\n" "$project" "$branch"
done