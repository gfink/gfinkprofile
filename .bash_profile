export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:$PATH
export PS1="\\u:\\W\[\e[0;35m\] \\@ \[\e[m\]> "
myhelp()
{
	echo "Go to Git repo I am working on (stochfw/ext)"
	echo "   cdgit"
	echo "cd .."
	echo "   .."
	echo "make clean;make"
	echo "   mcm"

	echo "Apple commands to remember"
	echo "   acom"
	
	echo "ls -l"
	echo "   ll"

	echo "tar -xzf $1"
	echo "   TAR $1"

	echo "Edit bash profile"
	echo "   epro"

	echo "Reload bash profile"
	echo "   rpro"
}
alias ..='cd ..'
TAR()
{
	tar -xzf $1
}
cdgit()
{
	cd ~/Desktop/gitproject/stochfw/ext
}

ll()
{
	ls -La
}

mcm()
{
	clear;
	make clean;
	echo "";
	make;
	echo "";
}

acom()
{
	echo "alt command D to show apps on bottom"
	echo "ctrl left and right to change screens"
}

epro()
{
	vim ~/.bash_profile;
	cp ~/.bash_profile ~/gfinkprofile;
}

rpro()
{
	. ~/.bash_profile
}

cpro()
{
	cp ~/gfinkprofile/.bash_profile ~/
}
