--[[ 

licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
license"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
aS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
kIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

@author Aqeel AlShafei
@data November 20 2022
@modified November 20 2022

]]

-- local lsp_flags = {
--   -- This is the default in Nvim 0.7+
--   debounce_text_changes = 150,
-- }

-- Treesitter ignore org files
require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',
  ignore_install = { 'org' },
})

require('orgmode').setup({
  org_agenda_files = {'~/orgs/**/*'},
  org_default_notes_file = '~/orgs/notes.org',
})
