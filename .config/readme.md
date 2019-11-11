## .jdots
my dotfiles

to install on a new machine:

* Clone this repo into your home directory
* Create the alias: `alias jdot='git --git-dir=$HOME/.jdots/ --work-tree=$HOME'`
* Run `jdot checkout` - if any conflicts exist, back up or delete the files and checkout again
* Run `jdot config --local status.showUntrackedFiles no` to avoid listing your entire home dir with `jdot status`
* The alias created above should be in any new bash terminals, since checkout created a bashrc
* Run any standard git commands substituting git with jdot to add new config files

