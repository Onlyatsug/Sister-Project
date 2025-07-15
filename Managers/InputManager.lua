
Input = {}
-- definindo variaveis de Input
local moveInput = {
    x = 0,
    y = 0
}
local jumpInput
local attackInput
local distantAttackInput
local dashInput
local healInput

local camInput = {
    x = 0,
    y = 0
}

-- private functions
function OnMove()
    local function getAxis(negKey, posKey)
        if love.keyboard.isDown(negKey) and not love.keyboard.isDown(posKey) then
            return -1
        elseif love.keyboard.isDown(posKey) and not love.keyboard.isDown(negKey) then
            return 1
        else
            return 0
        end
    end
    moveInput.x = getAxis("a", "d")
    moveInput.y = getAxis("w", "s")
end

function OnCamMove()
    local function getAxis(negKey, posKey)
        if love.keyboard.isDown(negKey) and not love.keyboard.isDown(posKey) then
            return -1
        elseif love.keyboard.isDown(posKey) and not love.keyboard.isDown(negKey) then
            return 1
        else
            return 0
        end
    end
    camInput.x = getAxis("left", "right")
    camInput.y = getAxis("up", "down")
end

function OnJump()
    if love.keyboard.isDown("c") then
        jumpInput = true
    else
        jumpInput = false
    end    
end

function OnAttack()
    if love.keyboard.isDown("space") then
        attackInput = true
    else
        attackInput = false
    end    
end

function OnDistantAttack()
    if love.keyboard.isDown("v") then
        distantAttackInput = true
    else
        distantAttackInput = false
    end
end

function OnDash()
    if love.keyboard.isDown("lshift") then
        dashInput = true
    else
        dashInput = false
    end    
end

function onHeal()
    if love.keyboard.isDown("h") then
        healInput = true
    else
        healInput = false
    end
end

--public para usar em outros locais
function Input:GetMoveInput()
    return moveInput
end

function Input:GetCamInput()
    return camInput
end

function Input:GetJumpInput()
    return jumpInput
end

function Input:GetAttackInput()
    return attackInput
end

function Input:GetDistantAttackInput()
    return distantAttackInput
end

function Input:GetDashInput()
    return dashInput
end

function Input:GetHealInput()
    return healInput
end


-- funçao que atualiza as funções de Input a cada frame
function Input:update(dt)
    OnMove()
    OnCamMove()
    OnJump()
    OnAttack()
    OnDistantAttack()
    OnDash()
    onHeal()
end