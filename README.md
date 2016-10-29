# utility

1. Set up Vundle: </br>
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

2. Install Plugin "YouCompleteMe": </br>
$ git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe </br>
$ cd ~/.vim/bundle/YouCompleteMe </br>
$ ./install.py --clang-completer </br>
For more information, please visit https://github.com/valloric/youcompleteme.

3. Install Plugins: </br>
Launch vim and run :PluginInstall

4. File Descriptions: </br>
	- Makefile
	- .vimrc contains optional runtime configuration settings to initialize Vim when it starts.
	- All \*.vim files in the ftplugin directory are configuration files for the corresponding programming languages; </br>
		Now C/C++, Java, Shell, Python, MATLAB, R and LaTeX are supported.
	- install.sh is the shell script that installs necessary packages after installing the OS.
