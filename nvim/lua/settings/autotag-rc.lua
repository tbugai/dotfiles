local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then
  return
end

local filetypes = {
  "eruby",
  "html",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "svelte",
  "vue",
  "tsx",
  "jsx",
  "rescript",
  "xml",
  "php",
  "markdown",
  "glimmer",
  "handlebars",
  "hbs"
}

autotag.setup(
  {
    enable = true,
    filetypes = filetypes
  }
)
