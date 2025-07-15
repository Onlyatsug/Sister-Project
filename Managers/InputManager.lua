require("conf")

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

-- private functions
function OnMove()
    if love.keyboard.isDown("w") then
        moveInput.y = -1
    elseif love.keyboard.isDown("s") then
        moveInput.y = 1 
    else
        moveInput.y = 0
    end

    if love.keyboard.isDown("a") then
        moveInput.x = -1
    elseif love.keyboard.isDown("d") then
        moveInput.x = 1
    else
        moveInput.x = 0
    end
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
    OnJump()
    OnAttack()
    OnDistantAttack()
    OnDash()
    onHeal()
end