---@class Interior
---@field model number|string
---@field offsets Offsets

---@class Offsets
---@field exit vector4 player spawn inside interior and exit locations

---@type table<string, Interior>
return {
    furnitured_midapart = {
        model = `furnitured_midapart`,
        offsets = {
            exit = vec4(1.39, -9.44, -0.52, 0),
            clothes = vec4(5.98, 9.34, -0.52, 1),
            stash = vec4(6.91, 3.9, -0.52, 271),
            logout = vec4(0.93, 1.23, -0.52, 90.0)
        }
    },

    standardmotel_shell = {
        model = `standardmotel_shell`,
        offsets = {
            exit = vec4(-0.03, -2.42, -0.56, 271)
        }
    },

    shell_v16low = {
        model = `shell_v16low`,
        offsets = {
            exit = vec4(4.78, -6.11, 0.65, 3)
        }
    },

    shell_v16mid = {
        model = `shell_v16mid`,
        offsets = {
            exit = vec4(1.45, -13.8, 0.49, 359)
        }
    },

    shell_trevor = {
        model = `shell_trevor`,
        offsets = {
            exit = vec4(0.21, -3.35, 1.41, 2)
        }
    },

    shell_trailer = {
        model = `shell_trailer`,
        offsets = {
            exit = vec4(-1.34, -1.51, 1.9, 2)
        }
    },

    shell_lester = {
        model = `shell_lester`,
        offsets = {
            exit = vec4(-1.61, -5.55, 0.11, 3)
        }
    },

    shell_ranch = {
        model = `shell_ranch`,
        offsets = {
            exit = vec4(-0.71, 5.57, 1.4, 272)
        }
    },

    container_shell = {
        model = `container_shell`,
        offsets = {
            exit = vec4(0.02, -5.23, 0.12, 3)
        }
    },

    modernhotel_shell = {
        model = `modernhotel_shell`,
        offsets = {
            exit = vec4(5.02, 3.68, 0.17, 186)
        }
    },

    shell_frankaunt = {
        model = `shell_frankaunt`,
        offsets = {
            exit = vec4(-0.26, -5.33, 0.71, 1)
        }
    },

    shell_garagem = {
        model = `shell_garagem`,
        offsets = {
            exit = vec4(13.23, 1.68, 1.0, 92)
        }
    },

    shell_michael = {
        model = `shell_michael`,
        offsets = {
            exit = vec4(-9.12, 5.65, 8.92, 269)
        }
    },

    shell_office1 = {
        model = `shell_office1`,
        offsets = {
            exit = vec4(1.28, 4.59, 1.05, 182)
        }
    },

    shell_store1 = {
        model = `shell_store1`,
        offsets = {
            exit = vec4(-2.67, 4.01, 0.09, 184)
        }
    },

    shell_warehouse1 = {
        model = `shell_warehouse1`,
        offsets = {
            exit = vec4(-8.34, 0.1, 0.04, 274)
        }
    },
}