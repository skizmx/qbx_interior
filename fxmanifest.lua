fx_version 'cerulean'
game 'gta5'

description 'QBX_Interior'
repository 'https://github.com/Qbox-project/qbx_interior'
version '1.1.0'

this_is_a_map 'yes'

shared_script '@ox_lib/init.lua'
client_script 'client/main.lua'
server_script 'server/main.lua'

files {
	'config/interior.lua',
	'stream/starter_shells_k4mb1.ytyp'
}

-- Default (included)
data_file 'DLC_ITYP_REQUEST' 'starter_shells_k4mb1.ytyp'

lua54 'yes'
use_experimental_fxv2_oal 'yes'