# GitDiffCommit
Script returning number of commit ahead between local repo and remote or between two hashes

How to run :
- DiffCommit_remote (based on th remote):
  ./DiffCommit_remote.sh <localpath to repo (required)> <remote/branch (optionnal)>

If no remote/branch given, it will perform a detection of the current branch of the local repo. It will automatically connect to "origin/<detected_branch>"

- DiffCommit_commit (based on commit hashes):
  ./DiffCommit_commit.sh <localpath to repo (required)> <oldcommityouwantotcompare (required)> <recentcommit(required)>
