Go to https://config.qmk.fm/

Upload the json

Make changes and compile

Download the json

Run qmk json2c path/to/json

Copy the keymap changes to keymap.c

Copy files in the directory to path/to/qmk_firmware/keyboards/sofle/keymaps/default

Flash with `qmk flash -kb sofle/rev1 -km default`
