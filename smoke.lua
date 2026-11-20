-- Syntax and structure smoke test; not a simulation of the live WoW or Polestar runtime.
local root = arg[1] or '.'
local folder = 'PolestarPack_FiveFriends4348'
local base = root .. '/addon/' .. folder .. '/'
local pack, guides, maps
local registry = {}
Polestar = {
  RegisterPack = function(m)
    assert(type(m) == 'table', 'Pack metadata missing')
    assert(m.id == 'five-friends-43-48', 'Wrong pack ID')
    assert(m.addon == folder, 'Wrong runtime addon name')
    assert(type(m.version) == 'string', 'Version missing')
    pack = m
  end,
  RegisterMapFrames = function(m, id)
    assert(pack, 'Map frames registered before pack')
    assert(id == pack.id, 'Map frames pack mismatch')
    maps = m
  end,
  RegisterGuide = function(g)
    assert(pack, 'Guide registered before pack')
    assert(g.pack == pack.id, 'Guide missing/wrong required pack field: ' .. tostring(g.id))
    assert(g.id:sub(1, #pack.id + 1) == pack.id .. '/', 'Guide outside pack')
    assert(not registry[g.id], 'Duplicate guide ID: ' .. g.id)
    assert(g.faction == 'Horde', 'Unexpected faction')
    assert(type(g.minLevel) == 'number' and type(g.maxLevel) == 'number' and g.minLevel <= g.maxLevel, 'Bad level bounds')
    assert(type(g.steps) == 'table' and #g.steps > 0, 'Guide has no steps')
    for i, step in ipairs(g.steps) do
      assert(type(step.goals) == 'table' and #step.goals > 0, 'Missing goals at ' .. g.id .. ' step ' .. i)
      for j, goal in ipairs(step.goals) do
        assert(type(goal.t) == 'string', 'Goal verb missing in ' .. g.id .. ' step ' .. i .. ' goal ' .. j)
      end
    end
    registry[g.id] = g
  end,
}

for _, name in ipairs({'Pack.lua', 'MapFrames.lua', 'Guides.lua'}) do
  local fn, err = loadfile(base .. name)
  assert(fn, name .. ': ' .. tostring(err))
  fn(folder)
end
assert(pack and maps, 'Expected pack and map frames')
local count = 0
for id, guide in pairs(registry) do
  count = count + 1
  if guide.next then
    assert(registry[guide.next] ~= nil, 'Broken next chapter link: ' .. id .. ' -> ' .. guide.next)
  end
end
assert(count == 8, 'Expected 8 registered guides; got ' .. count)
assert(registry['five-friends-43-48/01-preparation-dustwallow'].next == 'five-friends-43-48/04-uldaman', 'Uldaman not next')
print('PASS: Lua registered ' .. count .. ' guides, all links resolve, pack metadata correct.')
