require('onedark').setup({
    function_style = "italic",
    sidebars = { "qf", "vista_kind", "terminal", "packer" },

    colors = { hint = "orange0", error = "#ff0000" },

    overrides = function(c)
        return {
            htmlTag = { fg = c.red0, bg = "#282c34", sp = c.hint, style = "underline" },
            DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
            -- this will remove the highlight groups
            TSField = {},
        }
    end
})
