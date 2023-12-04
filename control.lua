
-- Function to check if there is iron ore at a given position
local function hasMagnetiteOre(surface, position)
    local entities = surface.find_entities_filtered{
        name = "magnetite-ore",
        area = {{position.x - 1, position.y - 1}, {position.x + 1, position.y + 1}}
    }
    return #entities > 0
end

-- Function to place a smaller, denser core inside each larger iron ore patch
local function placeCoreInsideIron(event)
    local surface = event.surface
    local area = event.area

    -- Define the smaller iron deposit resource
    local ironDepositResource = {
        name = "iron-deposit",
        amount = math.random(500, 800),  -- Adjust amount based on your preference
    }

    for x = area.left_top.x, area.right_bottom.x do
        for y = area.left_top.y, area.right_bottom.y do
            local position = {x = x, y = y}

            -- Check if there is iron ore at the position
            if hasMagnetiteOre(surface, position) then
                -- Place the smaller iron deposit inside the larger iron ore patch
                surface.create_entity{
                    name = ironDepositResource.name,
                    position = position,
                    amount = ironDepositResource.amount
                }
            end
        end
    end
end

-- Register the event to place the smaller iron deposit inside each larger iron ore patch
script.on_event(defines.events.on_chunk_generated, placeCoreInsideIron)
