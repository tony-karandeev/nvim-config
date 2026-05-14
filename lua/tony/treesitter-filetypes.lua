local parsersByFiletype = {
  'bash',
  'c',
  'cpp',
  'css',
  'diff',
  'dockerfile',
  'gitattributes',
  'gitcommit',
  'gitignore',
  gitconfig = 'git_config',
  gitrebase = 'git_rebase',
  'javascript',
  javascriptreact = 'jsx',
  'jq',
  'json',
  'lua',
  markdown = { 'markdown', 'markdown_inline' },
  'sql',
  'svelte',
  'swift',
  'typescript',
  typescriptreact = 'tsx',
  'vim',
  'yaml',
  'zig',
}

filetypes = {}
parsers = {}

for k, v in pairs(parsersByFiletype) do
  if type(k) == 'number' then
    table.insert(filetypes, v)
    table.insert(parsers, v)
  elseif type(k) == 'string' then
    table.insert(filetypes, k)
    if type(v) == 'string' then
      table.insert(parsers, v)
    elseif type(v) == 'table' then
      for pk, pv in ipairs(v) do
        if type(pv) ~= 'string' then
          error('Expected a parser name, got ' .. type(v))
        end
        table.insert(parsers, pv)
      end
    else
      error('Unexpected parser value type: ' .. type(v))
    end
  end
end

return {
  filetypes = filetypes,
  parsers = parsers,
}
