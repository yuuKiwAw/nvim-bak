local status, cmake_tools = pcall(require, "cmake-tools")
if not status then
    return
end

cmake_tools.setup ({
    cmake_command = "cmake",
    cmake_build_directory = "build",
    cmake_build_directory_prefix = "build/", -- when cmake_build_directory is "", this option will be activated
    cmake_build_type = "Debug",
    cmake_generate_options = {  "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=on",
                                "-D", "CMAKE_TOOLCHAIN_FILE=D:/Program Files/vcpkg/scripts/buildsystems/vcpkg.cmake",
    },
    cmake_build_options = {},
    cmake_console_size = 10, -- cmake output window height
    cmake_show_console = "always", -- "always", "only_on_error"
    cmake_dap_configuration = { name = "cpp", type = "codelldb", request = "launch" }, -- dap configuration, optional
    cmake_variants_message = {
        short = { show = true },
        long = { show = true, max_length = 40 }
    }
})
