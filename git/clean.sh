# Git에서 파일 크기 초과로 인한 업로드 제한시
# 아리 예제 명령으로 해결 할 수 있다.

ARG=$1

git rm --cached giant_file
git rm $ARG
git commit --amend -CHEAD
git push
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch' $ARG
