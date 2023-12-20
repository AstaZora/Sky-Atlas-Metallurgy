-- control.lua
local function isWithinRadius(position, center, radius)
    local dx = position.x - center.x
    local dy = position.y - center.y
    return dx * dx + dy * dy <= radius * radius
end
-- Function to generate "magnetite-ore" based on iron deposit parameters
local function generateMagnetiteOre(chunk_center, nauvis_surface)
    if chunk_center and chunk_center.x and chunk_center.y then
        local radius_factor = 0.75  -- Adjust the factor to control the radius relative to "iron-deposit"
        local radius = 5 * radius_factor  -- Adjust radius based on your preference

        local chunk_center_position = {x = chunk_center.x + 16, y = chunk_center.y + 16}

        -- Check if the chunk center is within the radius of an "iron-deposit" entity
        if isWithinRadius(chunk_center_position, chunk_center_position, radius) then
            -- Calculate the iron deposit value at the given position
            local ironDepositEntities = nauvis_surface.find_entities_filtered{
                name = "iron-deposit",
                area = {{chunk_center_position.x - 1, chunk_center_position.y - 1}, {chunk_center_position.x + 1, chunk_center_position.y + 1}}
            }

            local ironDepositValue = 0
            for _, entity in pairs(ironDepositEntities) do
                ironDepositValue = ironDepositValue + entity.amount
            end

            -- Check conditions for placing magnetite
            if ironDepositValue > 1000 and math.random() < 0.5 then
                -- Calculate the amount of "magnetite-ore" based on iron deposit value
                local magnetiteOreAmount = ironDepositValue * 0.1  -- 10% of iron deposit value
                magnetiteOreAmount = math.max(0, math.min(magnetiteOreAmount, 6000))  -- Clamp between 0 and 6000

                nauvis_surface.create_entity{
                    name = "magnetite-ore",
                    amount = magnetiteOreAmount,
                    position = chunk_center_position,
                }
            end
        end
    end
end
script.on_event(defines.events.on_chunk_generated, generateMagnetiteOre)