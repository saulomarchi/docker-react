start-dev-build:
	docker-compose -f docker-compose-dev.yml up --build

start-dev:
	docker-compose -f docker-compose-dev.yml up

test:
	docker exec -it frontend-web-1 npm run test

build-prod:
	# docker build -t frontend-web-prod .
	docker-compose up --build

start-prod:
	# docker run -p 3000:80 frontend-web-prod
	docker-compose up

rebasemaster:
	cd ~/Apps/docker-classes/frontend
	git fetch origin
	git checkout master
	git stash
	git rebase origin/master
	git push origin master
	git stash pop

# // RESET EVERYTHING
# // https://stackoverflow.com/questions/9646167/clean-up-a-fork-and-restart-it-from-the-upstream
# git fetch upstream
# git checkout master
# git reset --hard upstream/master
# git rebase upstream/master
# git push origin master --force

# # Rename the local branch to the new name
# git branch -m <old_name> <new_name>

# # Delete the old branch on remote - where <remote> is, for example, origin
# git push <remote> --delete <old_name>

# # Or shorter way to delete remote branch [:]
# git push <remote> :<old_name>

# # Prevent git from using the old name when pushing in the next step.
# # Otherwise, git will use the old upstream name instead of <new_name>.
# git branch --unset-upstream <new_name>

# # Push the new branch to remote
# git push <remote> <new_name>

# # Reset the upstream branch for the new_name local branch
# git push <remote> -u <new_name>