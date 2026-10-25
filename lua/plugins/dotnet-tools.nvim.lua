return {
    "tuliopaim/dotnet-tools.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-lua/plenary.nvim",
        "mfussenegger/nvim-dap"
    },
    config = function()
        require("dotnet-tools").setup({
            -- Path to the Rider script for opening files in JetBrains Rider
            -- rider_path = "/Applications/Rider.app/Contents/MacOS/rider",
            --
            -- Automatically build the project before debugging if DLL is missing or outdated
            auto_build = true,

            -- Path to launchSettings.json relative to project root
            launch_settings_path = "Properties/launchSettings.json",

            -- Paths to search for compiled DLLs (in order of preference)
            dll_search_paths = { "bin/Debug", "bin/Release" },

            -- Test runner preference: "tmux", "split", or nil (auto-detect)
            test_runner_preference = "split",

            -- When true (default), shows all launch profiles from all projects in a single flat list
            -- Format: "ProjectName: ProfileName"
            -- When false, prompts for project first, then profile (two-step selection)
            -- Flat mode is recommended for faster workflow when working with multiple projects
            flat_profiles = true,

            -- NuGet package management settings
            nuget = {
                -- Maximum number of search results to return
                search_limit = 20,

                -- Include prerelease versions when fetching package versions
                include_prerelease = false,
            },
        })
    end,
}
