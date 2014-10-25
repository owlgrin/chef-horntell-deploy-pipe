git '/home/ubuntu/apps/pipe' do
	repository 'gitlab@gitlab.owlgrin.com:horntell/pipe.git'
	revision 'master'
	action :sync
end

git '/home/ubuntu/apps/pipe/config' do
	repository 'gitlab@gitlab.owlgrin.com:horntell/configs.git'
	revision 'pipe'
	action :sync
end

execute 'install/update node packages' do
	command 'npm install -g node-gyp'
	command 'cd /home/ubuntu/apps/pipe && npm update && cd'
end