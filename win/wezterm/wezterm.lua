local wezterm = require 'wezterm'

return {
  font = wezterm.font 'Fira Code',
  default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe', '-NoLogo' },
  color_scheme = "Dracula (Official)",
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
  -- Start-Process wezterm pwsh -Verb runAs
 
  use_fancy_tab_bar = false,

  window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 10.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = '#333333',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#333333',
  },

  colors = {
    tab_bar = {
      inactive_tab_edge = '#575757',
    },
  },
  -- new ssh key command: ssh-keygen -t ed25519
  ssh_domains = {
    {
      name = 'personalserver',
      remote_address = '141.147.6.37',
      username = 'ubuntu',
      multiplexing = 'None',
      ssh_option = {
        identityfile = 'C:\\Users\\anze\\.ssh\\firefly\\firefly',
      },
    },
    {
      name = 'perun',
      remote_address = '141.144.250.143',
      username = 'ubuntu',
      multiplexing = 'None',
      ssh_option = {
        identityfile = 'C:\\Users\\anze\\.ssh\\perun\\perun',
      },
    },
    {
      name = 'gamevm',
      remote_address = '130.61.243.217',
      username = 'ubuntu',
      multiplexing = 'None',
      ssh_option = {
        identityfile = 'C:\\Users\\anze\\.ssh\\gamevm\\gamevm',
      },
    },
    {
      name = 'serv00',
      remote_address = 's0.serv00.com',
      username = anze,
      multiplexing = 'None',
    },

  },
}

