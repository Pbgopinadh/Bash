Git Commands and their explanation:

1.) Git clone -- very basic and intial joining days this git clone copies entire remote/online repository to our computer and also configures the that remote repo in our PC 
automatically and these remote repository can be seen using git remote -v

2.) Git remove -v -- this is used to see what remote repos like gitlab, github, bitbucket our directory is pushing to.

3.) git push -- pushing the changes we made to a file, folder etc in our computer is being pushed to the remote repo but before this we should commmit the changes.

4.) git commit -m "message about the changes" -- we should commmit the changes made to the files. but, how do i lets say say to git that i only want to commit the changes made to these files

5.) git add . or git add /filename including the path -- this is used to add the files that we are gonna commit. now, i want to make sure that there are no new changes left - how do i see that 

6.) git status -  this is going to show if the changes made are commited or not.

###### Git personal access tokens #### - tokens are used to authenticate to the repo.

we generate the token in the developer settings in the git repo and paste it when the terminal asks us to.

so if we just do git push multiple times there will be a prompt to enter your PAT.

after that the Vscode/system will use the PAT to authenticate to remote repo whenever we are pushing new changes made.