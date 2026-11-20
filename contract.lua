-- Check the compiled payload against the RegisterGuide and goal rules in
-- Polestar/Core/Guides.lua (public registry contract, format 5, Nov 2026).
-- This deliberately catches malformed compiled payloads, not just Lua syntax.
local root = arg[1] or '.'
local folder = 'PolestarPack_FiveFriends4348'
local base = root .. '/addon/' .. folder .. '/'
local registered = {}
local pid = 'five-friends-43-48'
local pack
local function str(v) return type(v) == 'string' and v ~= '' end
local function num(v) return type(v) == 'number' end
local required = {
  accept = { quest = 'number', title = 'string' },
  complete = { quest = 'number', title = 'string' },
  turnin = { quest = 'number', title = 'string' },
  collect = { item = 'number', itemName = 'string' },
  task = { text = 'string' },
  note = { text = 'string' },
  level = { level = 'number' },
  kill = { target = 'string' },
  ['goto'] = { map = 'number', x = 'number', y = 'number' },
  talk = { npc = 'number', npcName = 'string' },
  interact = { object = 'number', objName = 'string' },
  use = { item = 'number', itemName = 'string' },
}
local goalCount = 0
Polestar = {
  RegisterPack = function(p)
    assert(p.addon == folder and p.id == pid and p.format == 5, 'Invalid pack registration')
    pack = p
    return true
  end,
  RegisterMapFrames = function(m, id)
    assert(pack ~= nil and id == pid and type(m) == 'table', 'Bad map frame registration')
    return true
  end,
  RegisterGuide = function(g)
    assert(pack, 'Guide registered before pack')
    assert(g.pack == pid, tostring(g.id) .. ': missing or invalid required pack field')
    assert(str(g.id) and g.id:sub(1, #pid + 1) == pid .. '/', 'Bad guide id')
    assert(str(g.title), 'Missing guide title')
    assert(type(g.steps) == 'table' and #g.steps > 0, 'No guide steps')
    assert(not registered[g.id], 'Duplicate guide id')
    assert(g.minLevel <= g.maxLevel, 'Bad guide level bounds')
    for i, step in ipairs(g.steps) do
      assert(type(step) == 'table' and type(step.goals) == 'table' and #step.goals > 0, g.id .. ' step ' .. i .. ': no goals')
      for j, goal in ipairs(step.goals) do
        local ctx = g.id .. ' step ' .. i .. ' goal ' .. j
        assert(type(goal) == 'table', ctx .. ': not a table')
        local rules = required[goal.t]
        assert(rules, ctx .. ': unknown verb ' .. tostring(goal.t))
        for field, want in pairs(rules) do
          assert(type(goal[field]) == want and (want ~= 'string' or str(goal[field])), ctx .. ': ' .. goal.t .. ' needs ' .. field)
        end
        if goal.x ~= nil or goal.y ~= nil then
          assert(num(goal.map) and num(goal.x) and num(goal.y), ctx .. ': coordinates need map x y')
          assert(goal.x >= 0 and goal.x <= 100 and goal.y >= 0 and goal.y <= 100, ctx .. ': coordinates outside 0-100')
        end
        assert(goal.f == nil or goal.f == 'e', ctx .. ': bad frame')
        if goal.r ~= nil then assert(num(goal.r) and goal.r > 0, ctx .. ': bad radius') end
        if goal.oi ~= nil then assert(num(goal.oi) and goal.oi >= 1, ctx .. ': bad objective index') end
        if goal.count ~= nil then assert(num(goal.count), ctx .. ': bad count') end
        if goal.rewards ~= nil then
          assert(type(goal.rewards) == 'table', ctx .. ': bad rewards')
          assert(goal.rewards.xp == nil or num(goal.rewards.xp), ctx .. ': bad reward xp')
          assert(goal.rewards.money == nil or num(goal.rewards.money), ctx .. ': bad reward money')
        end
        goalCount = goalCount + 1
      end
    end
    registered[g.id] = g
    return true
  end,
}
for _, file in ipairs({'Pack.lua', 'MapFrames.lua', 'Guides.lua'}) do
  local fn, err = loadfile(base .. file)
  assert(fn, tostring(err))
  fn(folder)
end
local count = 0
for _, g in pairs(registered) do
  count = count + 1
  if g.next then assert(registered[g.next], 'Broken next link for ' .. g.id) end
end
assert(count == 8, 'Expected eight guides, got ' .. count)
assert(goalCount >= 200, 'Incomplete goal data')
print('PASS: ' .. count .. ' guides, ' .. goalCount .. ' valid goals, correct pack ownership and chapter links.')
