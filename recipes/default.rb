git '/home/ubuntu/apps/pipe' do
	repository 'gitlab@gitlab.owlgrin.com:horntell/pipe.git'
	revision 'master'
	action :sync
end

# production configs are pulled from a separate private repo
git '/home/ubuntu/apps/pipe/config' do
	repository 'gitlab@gitlab.owlgrin.com:horntell/configs.git'
	revision 'pipe'
	action :sync
end

# cd's into the pipe directory, updates and comes back HOME
execute 'install/update node packages' do
	command 'cd /home/ubuntu/apps/pipe && npm install && cd'
end