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

execute 'install node packages' do
	command 'npm update /home/ubuntu/apps/pipe'
end