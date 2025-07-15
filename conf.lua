
WINDOW_WIDTH = 800
WINDOW_HEIGHT = 600

function love.conf(t)
    t.title = "Sister Project"
    t.version = "11.3"  -- Use the latest stable version of LÖVE
    t.window.width = WINDOW_WIDTH
    t.window.height = WINDOW_HEIGHT
    t.window.resizable = false
    t.window.fullscreen = false
end