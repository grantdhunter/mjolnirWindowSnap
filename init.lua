local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local grid = require "mjolnir.bg.grid"
local screen = require "mjolnir.screen"



---Windo snapping
grid.GRIDHEIGHT = 2
grid.GRIDWIDTH = 2
grid.MARGINX = 0
grid.MARGINY = 1
hotkey.bind({"cmd", "alt"}, "left", function()
        local win = window.focusedwindow()
        local win = window.focusedwindow()
        local x = grid.get(win).x
        local y = grid.get(win).y
        local w = grid.get(win).w
        local h = grid.get(win).h
        
        if x == 0 and y == 0 and w == 2 and h == 1 then
            grid.set(win,{x=0,y=0, w=1, h=1}, screen.mainscreen())
        elseif  x == 1 and y == 1 and w == 2 and h == 1 then
            grid.set(win,{x=0,y=0, w=1, h=1}, screen.mainscreen())
        else
            grid.set(win,{x=0,y=0, w=1, h=2}, screen.mainscreen())
        end
    end)
hotkey.bind({"cmd", "alt"}, "right", function()
        local win = window.focusedwindow()
        local win = window.focusedwindow()
        local x = grid.get(win).x
        local y = grid.get(win).y
        local w = grid.get(win).w
        local h = grid.get(win).h
        
        if x == 0 and y == 0 and w == 2 and h == 1 then
            grid.set(win,{x=1,y=0, w=1, h=1}, screen.mainscreen())
        elseif  x == 0 and y == 1 and w == 2 and h == 1 then
            grid.set(win,{x=1,y=1, w=1, h=1}, screen.mainscreen())
        else
            grid.set(win,{x=1,y=0, w=1, h=2}, screen.mainscreen())
        end
    end)

hotkey.bind({"cmd", "alt"}, "up", function()
        local win = window.focusedwindow()
        local x = grid.get(win).x
        local y = grid.get(win).y
        local w = grid.get(win).w
        local h = grid.get(win).h
        
        if x == 0 and y == 0 and w == 1 and h ==2 then
            grid.set(win,{x=0,y=0, w=1, h=1}, screen.mainscreen())
        elseif  x == 1 and y == 0 and w == 1 and h == 2 then
            grid.set(win,{x=1,y=0, w=1, h=1}, screen.mainscreen())
        else
            grid.set(win,{x=0,y=0, w=2, h=1}, screen.mainscreen())
        end
    end)


hotkey.bind({"cmd", "alt"}, "down", function()
        local win = window.focusedwindow()
        local x = grid.get(win).x
        local y = grid.get(win).y
        local w = grid.get(win).w
        local h = grid.get(win).h
        
        if x == 0 and y == 0 and w == 1 and h == 2 then
            grid.set(win,{x=0,y=1, w=1, h=1}, screen.mainscreen())
        elseif  x == 1 and y == 0 and w == 1 and h == 2 then
            grid.set(win,{x=1,y=1, w=1, h=1}, screen.mainscreen())
        else
            grid.set(win,{x=0,y=1, w=2, h=1}, screen.mainscreen())
        end
    end)
